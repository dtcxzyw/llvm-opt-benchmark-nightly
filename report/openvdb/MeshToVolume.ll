Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/MeshToVolume?download=true
inline.NumInlined: 61374
inline.NumDeleted: 19461
loop-unroll.NumCompletelyUnrolled: 236
loop-unroll.NumRuntimeUnrolled: 314
loop-unroll.NumUnrolled: 950
begin_hunk_0_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.als = lshr i32 %.sroa.0985.4.extract.trunc1000, 2
  %i.alt = and i32 %i.als, 992
  %i.alu = or disjoint i32 %i.alt, %i.alr         ; 2 uses
  %i.alv = or disjoint i32 %i.alu, %i.afd         ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alo, i64 262144
  %i.alx = lshr i32 %i.alu, 6
  %i.aly = zext nneg i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw [8 x i8], ptr %i.alw, i64 %i.aly
  %i.ama = load i64, ptr %i.alz, align 8, !tbaa !791
  %i.amb = and i32 %i.alv, 63
  %i.amc = zext nneg i32 %i.amb to i64
  %i.amd = shl nuw i64 1, %i.amc
  %i.ame = and i64 %i.ama, %i.amd
  %.not.i.i.i460 = icmp eq i64 %i.ame, 0
  br i1 %.not.i.i.i460, label %.noexc109.thread, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.amf = zext nneg i32 %i.alv to i64
  %i.amg = getelementptr inbounds nuw [8 x i8], ptr %i.alo, i64 %i.amf
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !570 ; 3 uses
  %.sroa.0.0.insert.insert.i.i.i464 = and i64 %.sroa.0985.0, -545460846720
  store i64 %.sroa.0.0.insert.insert.i.i.i464, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  store i32 %i.aeu, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  store ptr %i.amh, ptr %i.ar, align 8, !tbaa !1212
  %i.ami = shl i32 %.sroa.0985.0.extract.trunc987, 5
  %i.amj = and i32 %i.ami, 3840
  %i.amk = shl i32 %.sroa.0985.4.extract.trunc1000, 1
  %i.aml = and i32 %i.amk, 240
  %i.amm = or disjoint i32 %i.aml, %i.amj         ; 2 uses
  %i.amn = or disjoint i32 %i.amm, %i.aff         ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amh, i64 32768
  %i.amp = lshr i32 %i.amm, 6
  %i.amq = zext nneg i32 %i.amp to i64
  %i.amr = getelementptr inbounds nuw [8 x i8], ptr %i.amo, i64 %i.amq
  %i.ams = load i64, ptr %i.amr, align 8, !tbaa !791
  %i.amt = and i32 %i.amn, 63
  %i.amu = zext nneg i32 %i.amt to i64
  %i.amv = shl nuw i64 1, %i.amu
  %i.amw = and i64 %i.ams, %i.amv
  %.not.i.i742 = icmp eq i64 %i.amw, 0
  br i1 %.not.i.i742, label %.noexc109.thread, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.amx = zext nneg i32 %i.amn to i64
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %i.amh, i64 %i.amx
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i746 = and i64 %.sroa.0985.0, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i746, ptr %i.ad, align 8
  store i32 %i.aer, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.amz, ptr %i.as, align 8, !tbaa !1339
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %i.anb = load atomic i32, ptr %i.ana seq_cst, align 4
  %.not.i.i.i748 = icmp eq i32 %i.anb, 0
  br i1 %.not.i.i.i748, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i749, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.amz)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i749 unwind label %bb.ib

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i749: ; preds = %bb.fd, %bb.fc
  %i.anc = load ptr, ptr %i.amz, align 8, !tbaa !570 ; 2 uses
  %i.and = icmp eq ptr %i.anc, null
  br i1 %i.and, label %bb.fe, label %.thread.i108.sink.split

bb.fe:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i749
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amz, i64 12 ; 4 uses
  %i.anf = atomicrmw xchg ptr %i.ane, i8 1 seq_cst, align 1
  %i.ang = trunc i8 %i.anf to i1
  br i1 %i.ang, label %.lr.ph.i.i.i.i.i755, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i752

.lr.ph.i.i.i.i.i755:                              ; preds = %bb.fe, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i757
  %.sroa.0.02.i.i.i.i.i756 = phi i32 [ %.sroa.0.1.i.i.i.i.i758, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i757 ], [ 1, %bb.fe ] ; 8 uses
  %i.anh = icmp slt i32 %.sroa.0.02.i.i.i.i.i756, 17
  br i1 %i.anh, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %.lr.ph.i.i.i.i.i755
  %i.ani = icmp sgt i32 %.sroa.0.02.i.i.i.i.i756, 0
  br i1 %i.ani, label %.lr.ph.i.i.i.i.i.i.i760.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i759

.lr.ph.i.i.i.i.i.i.i760.preheader:                ; preds = %bb.ff
  %xtraiter1813 = and i32 %.sroa.0.02.i.i.i.i.i756, 7 ; 2 uses
  %lcmp.mod1814.not = icmp eq i32 %xtraiter1813, 0
  br i1 %lcmp.mod1814.not, label %.lr.ph.i.i.i.i.i.i.i760.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i760.prol

.lr.ph.i.i.i.i.i.i.i760.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i760.preheader, %.lr.ph.i.i.i.i.i.i.i760.prol
  %.01.i.i.i.i.i.i.i761.prol = phi i32 [ %i.anj, %.lr.ph.i.i.i.i.i.i.i760.prol ], [ %.sroa.0.02.i.i.i.i.i756, %.lr.ph.i.i.i.i.i.i.i760.preheader ]
  %prol.iter1815 = phi i32 [ %prol.iter1815.next, %.lr.ph.i.i.i.i.i.i.i760.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i760.preheader ]
  %i.anj = add nsw i32 %.01.i.i.i.i.i.i.i761.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter1815.next = add i32 %prol.iter1815, 1 ; 2 uses
  %prol.iter1815.cmp.not = icmp eq i32 %prol.iter1815.next, %xtraiter1813
  br i1 %prol.iter1815.cmp.not, label %.lr.ph.i.i.i.i.i.i.i760.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i760.prol, !llvm.loop !11734

.lr.ph.i.i.i.i.i.i.i760.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i760.prol, %.lr.ph.i.i.i.i.i.i.i760.preheader
  %.01.i.i.i.i.i.i.i761.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i756, %.lr.ph.i.i.i.i.i.i.i760.preheader ], [ %i.anj, %.lr.ph.i.i.i.i.i.i.i760.prol ]
  %i.ank = icmp ult i32 %.sroa.0.02.i.i.i.i.i756, 8
  br i1 %i.ank, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i759, label %.lr.ph.i.i.i.i.i.i.i760

.lr.ph.i.i.i.i.i.i.i760:                          ; preds = %.lr.ph.i.i.i.i.i.i.i760.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i760
  %.01.i.i.i.i.i.i.i761 = phi i32 [ %i.anl, %.lr.ph.i.i.i.i.i.i.i760 ], [ %.01.i.i.i.i.i.i.i761.unr, %.lr.ph.i.i.i.i.i.i.i760.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.anl = add nsw i32 %.01.i.i.i.i.i.i.i761, -8
  call void @llvm.x86.sse2.pause()
  %i.anm = icmp sgt i32 %.01.i.i.i.i.i.i.i761, 8
  br i1 %i.anm, label %.lr.ph.i.i.i.i.i.i.i760, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i759, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i759: ; preds = %.lr.ph.i.i.i.i.i.i.i760.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i760, %bb.ff
  %i.ann = shl i32 %.sroa.0.02.i.i.i.i.i756, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i757

bb.fg:                                            ; preds = %.lr.ph.i.i.i.i.i755
  %i.ano = call noundef i32 @sched_yield() #23    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i757

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i757: ; preds = %bb.fg, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i759
  %.sroa.0.1.i.i.i.i.i758 = phi i32 [ %i.ann, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i759 ], [ %.sroa.0.02.i.i.i.i.i756, %bb.fg ]
  %i.anp = atomicrmw xchg ptr %i.ane, i8 1 seq_cst, align 1
  %i.anq = trunc i8 %i.anp to i1
  br i1 %i.anq, label %.lr.ph.i.i.i.i.i755, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i752, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i752: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i757, %bb.fe
  %i.anr = load ptr, ptr %i.amz, align 8, !tbaa !570 ; 2 uses
  %i.ans = icmp eq ptr %i.anr, null
  br i1 %i.ans, label %bb.fh, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i753

bb.fh:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i752
  %i.ant = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.fi unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i754 ; 2 uses

bb.fi:                                            ; preds = %bb.fh
  store ptr %i.ant, ptr %i.amz, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i753

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i754: ; preds = %bb.fh
  %i.anu = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ane release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i753: ; preds = %bb.fi, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i752
  %i.anv = phi ptr [ %i.ant, %bb.fi ], [ %i.anr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i752 ]
  store atomic i8 0, ptr %i.ane release, align 4
  br label %.thread.i108.sink.split

.noexc109:                                        ; preds = %bb.dy
  br i1 %.not.i107, label %.noexc109.thread, label %.thread.i108

.thread.i108.sink.split:                          ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i749, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i753, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i477, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i481, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i501, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i505
  %.sink1622 = phi ptr [ %i.ajl, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i477 ], [ %i.agx, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i501 ], [ %i.ahq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i505 ], [ %i.ake, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i481 ], [ %i.anv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i753 ], [ %i.anc, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i749 ]
  %.0.i.i2031150.ph = phi ptr [ %i.aji, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i477 ], [ %i.agu, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i501 ], [ %i.agu, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i505 ], [ %i.aji, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i481 ], [ %i.amz, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i753 ], [ %i.amz, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i749 ]
  store ptr %.sink1622, ptr %i.ac, align 8, !tbaa !3205
  br label %.thread.i108

.thread.i108:                                     ; preds = %.noexc109, %.thread.i108.sink.split
  %.0.i.i2031150 = phi ptr [ %.0.i.i2031150.ph, %.thread.i108.sink.split ], [ %i.afg, %.noexc109 ]
  %i.anw = getelementptr inbounds nuw i8, ptr %.0.i.i2031150, i64 80
  %i.anx = load i32, ptr %i.anw, align 4, !tbaa !543
  %i.any = sext i32 %i.anx to i64
  br label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit110

.noexc109.thread:                                 ; preds = %bb.fb, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i453, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i452, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i202, %bb.ew, %bb.fa, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i454, %bb.ey, %bb.ea, %bb.ek, %bb.ej, %.noexc109
  %.sroa.0985.4.extract.trunc.pre-phi = phi i32 [ %.sroa.0985.4.extract.trunc1000, %bb.fb ], [ %.sroa.0985.4.extract.trunc1000, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i453 ], [ %.sroa.0985.4.extract.trunc1000, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i452 ], [ %.sroa.0985.4.extract.trunc1000, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i202 ], [ %.sroa.0985.4.extract.trunc1000, %bb.ew ], [ %.sroa.0985.4.extract.trunc1000, %bb.fa ], [ %.sroa.0985.4.extract.trunc1000, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i454 ], [ %.sroa.0985.4.extract.trunc1000, %bb.ey ], [ %.sroa.0985.4.extract.trunc1003, %bb.ea ], [ %.sroa.0985.4.extract.trunc1000, %bb.ek ], [ %.sroa.0985.4.extract.trunc1000, %bb.ej ], [ %.sroa.0985.4.extract.trunc1006, %.noexc109 ]
  %i.anz = phi i32 [ %i.aev, %bb.fb ], [ %i.afk, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i453 ], [ %i.afk, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i452 ], [ %i.afk, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i202 ], [ %i.afk, %bb.ew ], [ %i.aev, %bb.fa ], [ %i.afk, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i454 ], [ %i.afk, %bb.ey ], [ %i.afk, %bb.ea ], [ %i.aev, %bb.ek ], [ %i.aev, %bb.ej ], [ %i.afk, %.noexc109 ]
  %i.aoa = phi i32 [ %i.aeu, %bb.fb ], [ %i.afl, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i453 ], [ %i.afl, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i452 ], [ %i.afl, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i202 ], [ %i.afl, %bb.ew ], [ %i.afl, %bb.fa ], [ %i.afl, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i454 ], [ %i.afl, %bb.ey ], [ %i.aeu, %bb.ea ], [ %i.aeu, %bb.ek ], [ %i.afl, %bb.ej ], [ %i.afl, %.noexc109 ]
  %i.aob = add nsw i32 %.sroa.0985.4.extract.trunc.pre-phi, -8 ; 2 uses
  %.sroa.0985.4.insert.ext = zext i32 %i.aob to i64
  %.sroa.0985.4.insert.shift = shl nuw i64 %.sroa.0985.4.insert.ext, 32
  %.sroa.0985.4.insert.mask = and i64 %.sroa.0985.0, 4294967295
  %.sroa.0985.4.insert.insert = or disjoint i64 %.sroa.0985.4.insert.shift, %.sroa.0985.4.insert.mask
  %i.aoc = icmp sgt i32 %.sroa.0.0.copyload.i90, %.sroa.0985.0.extract.trunc987
  br i1 %i.aoc, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit110, label %.lr.ph.i101, !llvm.loop !11725

_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit110: ; preds = %.lr.ph.i101, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i102, %.noexc109.thread, %.lr.ph.i101.preheader, %.thread.i108, %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit84
  %.2.i106 = phi i64 [ %i.any, %.thread.i108 ], [ -1, %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit84 ], [ -1, %.lr.ph.i101.preheader ], [ -1, %.noexc109.thread ], [ -1, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i102 ], [ -1, %.lr.ph.i101 ]
  %i.aod = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01273
  store i64 %.2.i106, ptr %i.aod, align 8, !tbaa !791
  %i.aoe = load i64, ptr %i.az, align 4           ; 7 uses
  %i.aof = trunc i64 %i.aoe to i32                ; 8 uses
  %i.aog = lshr i64 %i.aoe, 32
  %i.aoh = trunc nuw i64 %i.aog to i32            ; 8 uses
  %.sroa.0.0.copyload.i116 = load i32, ptr %i.am, align 8
  %.sroa.5.0.copyload.i120 = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !570
  %.sroa.6.0.copyload.i122 = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0.copyload.i124 = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0.copyload.i126 = load i32, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !570 ; 2 uses
  %i.aoi = icmp sgt i32 %.sroa.0.0.copyload.i116, %i.aof
  br i1 %i.aoi, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136, label %.lr.ph.i127.preheader

.lr.ph.i127.preheader:                            ; preds = %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit110
  %.sroa.4.0.copyload.i118 = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.aoj = icmp sgt i32 %.sroa.4.0.copyload.i118, %i.aoh
  br i1 %i.aoj, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.lr.ph

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.lr.ph: ; preds = %.lr.ph.i127.preheader
  %4 = load i32, ptr %i.bd, align 4, !tbaa !543   ; 2 uses
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.promoted1262 = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.promoted1261 = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4
  %i.aok = icmp sge i32 %.sroa.6.0.copyload.i122, %i.aof
  %i.aol = icmp sge i32 %.sroa.7.0.copyload.i124, %i.aoh
  %5 = and i32 %i.aof, -8
  %6 = load i32, ptr %i.ad, align 8
  %7 = icmp eq i32 %5, %6
  %8 = and i32 %i.aoh, -8
  %9 = load i32, ptr %i.an, align 4
  %10 = icmp eq i32 %8, %9
  %i.aom = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.aon = and i32 %i.aof, -128
  %i.aoo = and i32 %i.aoh, -128
  %i.aop = and i32 %i.aof, -4096
  %i.aoq = and i32 %i.aoh, -4096
  %i.aor = load ptr, ptr %i.ae, align 8           ; 5 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 56
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aor, i64 60
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aor, i64 16
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aor, i64 8 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aor, i64 52
  %.sroa.0.0.insert.insert.i.i534 = and i64 %i.aoe, -17587891081216
  %i.aox = shl i32 %i.aof, 3
  %i.aoy = and i32 %i.aox, 31744
  %i.aoz = lshr i32 %i.aoh, 2
  %i.apa = and i32 %i.aoz, 992
  %i.apb = or disjoint i32 %i.apa, %i.aoy         ; 3 uses
  %i.apc = lshr i32 %i.apb, 6
  %i.apd = zext nneg i32 %i.apc to i64            ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i540 = and i64 %i.aoe, -545460846720 ; 2 uses
  %i.ape = shl i32 %i.aof, 5
  %i.apf = and i32 %i.ape, 3840
  %i.apg = shl i32 %i.aoh, 1
  %i.aph = and i32 %i.apg, 240
  %i.api = or disjoint i32 %i.aph, %i.apf         ; 4 uses
  %i.apj = lshr i32 %i.api, 6
  %i.apk = zext nneg i32 %i.apj to i64            ; 3 uses
  %i.apl = load ptr, ptr %i.as, align 8           ; 2 uses
  %.not.i133 = icmp eq ptr %i.apl, null
  %.fr1265 = freeze i1 %i.aol
  %.fr1266 = freeze i1 %i.aok
  %i.apm = and i1 %.fr1265, %.fr1266
  br i1 %i.apm, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.preheader, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.preheader: ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.lr.ph
  %.sroa.211068.012641702 = add i32 %4, 8
  %i.apn = icmp sge i32 %.sroa.211068.012641702, %.sroa.5.0.copyload.i120
  %.fr1402 = freeze i1 %i.apn
  br i1 %.fr1402, label %.lr.ph1705, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136

.lr.ph1705:                                       ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.preheader
  %brmerge1293.not1318 = select i1 %7, i1 %10, i1 false
  %.sroa.211068.012641705 = add nsw i32 %4, 8     ; 2 uses
  %.not1706 = icmp slt i32 %.sroa.8.0.copyload.i126, %.sroa.211068.012641705
  br i1 %.not1706, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph1705, %.noexc135.thread
  %.sroa.211068.012641704 = phi i32 [ %.sroa.211068.01264, %.noexc135.thread ], [ %.sroa.211068.012641705, %.lr.ph1705 ] ; 10 uses
  %i.apo = phi i32 [ %i.awv, %.noexc135.thread ], [ %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.promoted1262, %.lr.ph1705 ] ; 11 uses
  %i.app = phi i32 [ %i.aww, %.noexc135.thread ], [ %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.promoted1261, %.lr.ph1705 ] ; 11 uses
  %i.apq = and i32 %.sroa.211068.012641704, -8    ; 4 uses
  %i.apr = icmp eq i32 %i.apq, %i.aom
  %or.cond1295 = select i1 %brmerge1293.not1318, i1 %i.apr, i1 false
  br i1 %or.cond1295, label %.noexc135, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i217

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i217: ; preds = %bb.fj
  %i.aps = load i32, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4, !tbaa !543
  %i.apt = icmp eq i32 %i.aon, %i.aps
  %i.apu = load i32, ptr %i.ao, align 8
  %i.apv = icmp eq i32 %i.aoo, %i.apu
  %or.cond1297 = select i1 %i.apt, i1 %i.apv, i1 false
  %i.apw = and i32 %.sroa.211068.012641704, -128  ; 5 uses
  %i.apx = icmp eq i32 %i.apw, %i.app
  %or.cond1299 = select i1 %or.cond1297, i1 %i.apx, i1 false
  br i1 %or.cond1299, label %bb.fk, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread.i218

bb.fk:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i217
  %i.apy = load ptr, ptr %i.ar, align 8, !tbaa !1212 ; 2 uses
  %i.apz = lshr i32 %.sroa.211068.012641704, 3
  %i.aqa = and i32 %i.apz, 15
  %i.aqb = or disjoint i32 %i.aqa, %i.api         ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apy, i64 32768
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.aqc, i64 %i.apk
  %i.aqe = load i64, ptr %i.aqd, align 8, !tbaa !791
  %i.aqf = and i32 %i.aqb, 63
  %i.aqg = zext nneg i32 %i.aqf to i64
  %i.aqh = shl nuw i64 1, %i.aqg
  %i.aqi = and i64 %i.aqe, %i.aqh
  %.not.i.i570 = icmp eq i64 %i.aqi, 0
  br i1 %.not.i.i570, label %.noexc135.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aqj = zext nneg i32 %i.aqb to i64
  %i.aqk = getelementptr inbounds nuw [8 x i8], ptr %i.apy, i64 %i.aqj
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i574 = and i64 %i.aoe, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i574, ptr %i.ad, align 8
  store i32 %i.apq, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.aql, ptr %i.as, align 8, !tbaa !1339
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 8
  %i.aqn = load atomic i32, ptr %i.aqm seq_cst, align 4
  %.not.i.i.i576 = icmp eq i32 %i.aqn, 0
  br i1 %.not.i.i.i576, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i577, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.aql)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i577 unwind label %bb.ib

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i577: ; preds = %bb.fm, %bb.fl
  %i.aqo = load ptr, ptr %i.aql, align 8, !tbaa !570 ; 2 uses
  %i.aqp = icmp eq ptr %i.aqo, null
  br i1 %i.aqp, label %bb.fn, label %.thread.i134.sink.split

bb.fn:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i577
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aql, i64 12 ; 4 uses
  %i.aqr = atomicrmw xchg ptr %i.aqq, i8 1 seq_cst, align 1
  %i.aqs = trunc i8 %i.aqr to i1
  br i1 %i.aqs, label %.lr.ph.i.i.i.i.i583, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i580

.lr.ph.i.i.i.i.i583:                              ; preds = %bb.fn, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i585
  %.sroa.0.02.i.i.i.i.i584 = phi i32 [ %.sroa.0.1.i.i.i.i.i586, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i585 ], [ 1, %bb.fn ] ; 8 uses
  %i.aqt = icmp slt i32 %.sroa.0.02.i.i.i.i.i584, 17
  br i1 %i.aqt, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %.lr.ph.i.i.i.i.i583
  %i.aqu = icmp sgt i32 %.sroa.0.02.i.i.i.i.i584, 0
  br i1 %i.aqu, label %.lr.ph.i.i.i.i.i.i.i588.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i587

.lr.ph.i.i.i.i.i.i.i588.preheader:                ; preds = %bb.fo
  %xtraiter1828.a = and i32 %.sroa.0.02.i.i.i.i.i584, 7 ; 2 uses
  %lcmp.mod1829.not.a = icmp eq i32 %xtraiter1828.a, 0
  br i1 %lcmp.mod1829.not.a, label %.lr.ph.i.i.i.i.i.i.i588.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i588.prol

.lr.ph.i.i.i.i.i.i.i588.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i588.preheader, %.lr.ph.i.i.i.i.i.i.i588.prol
  %.01.i.i.i.i.i.i.i589.prol = phi i32 [ %i.aqv, %.lr.ph.i.i.i.i.i.i.i588.prol ], [ %.sroa.0.02.i.i.i.i.i584, %.lr.ph.i.i.i.i.i.i.i588.preheader ]
  %prol.iter1830.a = phi i32 [ %prol.iter1830.next.a, %.lr.ph.i.i.i.i.i.i.i588.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i588.preheader ]
  %i.aqv = add nsw i32 %.01.i.i.i.i.i.i.i589.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter1830.next.a = add i32 %prol.iter1830.a, 1 ; 2 uses
  %prol.iter1830.cmp.not.a = icmp eq i32 %prol.iter1830.next.a, %xtraiter1828.a
  br i1 %prol.iter1830.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.i588.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i588.prol, !llvm.loop !11735

.lr.ph.i.i.i.i.i.i.i588.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i588.prol, %.lr.ph.i.i.i.i.i.i.i588.preheader
  %.01.i.i.i.i.i.i.i589.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i584, %.lr.ph.i.i.i.i.i.i.i588.preheader ], [ %i.aqv, %.lr.ph.i.i.i.i.i.i.i588.prol ]
  %i.aqw = icmp ult i32 %.sroa.0.02.i.i.i.i.i584, 8
  br i1 %i.aqw, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i587, label %.lr.ph.i.i.i.i.i.i.i588

.lr.ph.i.i.i.i.i.i.i588:                          ; preds = %.lr.ph.i.i.i.i.i.i.i588.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i588
  %.01.i.i.i.i.i.i.i589 = phi i32 [ %i.aqx, %.lr.ph.i.i.i.i.i.i.i588 ], [ %.01.i.i.i.i.i.i.i589.unr, %.lr.ph.i.i.i.i.i.i.i588.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.aqx = add nsw i32 %.01.i.i.i.i.i.i.i589, -8
  call void @llvm.x86.sse2.pause()
  %i.aqy = icmp sgt i32 %.01.i.i.i.i.i.i.i589, 8
  br i1 %i.aqy, label %.lr.ph.i.i.i.i.i.i.i588, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i587, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i587: ; preds = %.lr.ph.i.i.i.i.i.i.i588.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i588, %bb.fo
  %i.aqz = shl i32 %.sroa.0.02.i.i.i.i.i584, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i585

bb.fp:                                            ; preds = %.lr.ph.i.i.i.i.i583
  %i.ara = call noundef i32 @sched_yield() #23    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i585

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i585: ; preds = %bb.fp, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i587
  %.sroa.0.1.i.i.i.i.i586 = phi i32 [ %i.aqz, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i587 ], [ %.sroa.0.02.i.i.i.i.i584, %bb.fp ]
  %i.arb = atomicrmw xchg ptr %i.aqq, i8 1 seq_cst, align 1
  %i.arc = trunc i8 %i.arb to i1
  br i1 %i.arc, label %.lr.ph.i.i.i.i.i583, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i580, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i580: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i585, %bb.fn
  %i.ard = load ptr, ptr %i.aql, align 8, !tbaa !570 ; 2 uses
  %i.are = icmp eq ptr %i.ard, null
  br i1 %i.are, label %bb.fq, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i581

bb.fq:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i580
  %i.arf = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.fr unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i582 ; 2 uses

bb.fr:                                            ; preds = %bb.fq
  store ptr %i.arf, ptr %i.aql, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i581

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i582: ; preds = %bb.fq
  %i.arg = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.aqq release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i581: ; preds = %bb.fr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i580
  %i.arh = phi ptr [ %i.arf, %bb.fr ], [ %i.ard, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i580 ]
  store atomic i8 0, ptr %i.aqq release, align 4
  br label %.thread.i134.sink.split

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread.i218: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i217
  %i.ari = load i32, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8, !tbaa !543
  %i.arj = icmp eq i32 %i.aop, %i.ari
  %i.ark = load i32, ptr %i.ap, align 4
  %i.arl = icmp eq i32 %i.aoq, %i.ark
  %or.cond1301 = select i1 %i.arj, i1 %i.arl, i1 false
  %i.arm = and i32 %.sroa.211068.012641704, -4096 ; 4 uses
  %i.arn = icmp eq i32 %i.arm, %i.apo
  %or.cond1303 = select i1 %or.cond1301, i1 %i.arn, i1 false
  br i1 %or.cond1303, label %bb.fs, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i219

bb.fs:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread.i218
  %i.aro = load ptr, ptr %i.aq, align 8, !tbaa !1172 ; 2 uses
  %i.arp = lshr i32 %.sroa.211068.012641704, 7
  %i.arq = and i32 %i.arp, 31
  %i.arr = or disjoint i32 %i.arq, %i.apb         ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aro, i64 262144
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %i.ars, i64 %i.apd
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !791
  %i.arv = and i32 %i.arr, 63
  %i.arw = zext nneg i32 %i.arv to i64
  %i.arx = shl nuw i64 1, %i.arw
  %i.ary = and i64 %i.aru, %i.arx
  %.not.i.i.i.i222 = icmp eq i64 %i.ary, 0
  br i1 %.not.i.i.i.i222, label %.noexc135.thread, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.arz = zext nneg i32 %i.arr to i64
  %i.asa = getelementptr inbounds nuw [8 x i8], ptr %i.aro, i64 %i.arz
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !570 ; 3 uses
  store i64 %.sroa.0.0.insert.insert.i.i.i540, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  store i32 %i.apw, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  store ptr %i.asb, ptr %i.ar, align 8, !tbaa !1212
  %i.asc = lshr i32 %.sroa.211068.012641704, 3
  %i.asd = and i32 %i.asc, 15
  %i.ase = or disjoint i32 %i.asd, %i.api         ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asb, i64 32768
  %i.asg = getelementptr inbounds nuw [8 x i8], ptr %i.asf, i64 %i.apk
  %i.ash = load i64, ptr %i.asg, align 8, !tbaa !791
  %i.asi = and i32 %i.ase, 63
  %i.asj = zext nneg i32 %i.asi to i64
  %i.ask = shl nuw i64 1, %i.asj
  %i.asl = and i64 %i.ash, %i.ask
  %.not.i.i546 = icmp eq i64 %i.asl, 0
  br i1 %.not.i.i546, label %.noexc135.thread, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.asm = zext nneg i32 %i.ase to i64
  %i.asn = getelementptr inbounds nuw [8 x i8], ptr %i.asb, i64 %i.asm
  %i.aso = load ptr, ptr %i.asn, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i550 = and i64 %i.aoe, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i550, ptr %i.ad, align 8
  store i32 %i.apq, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.aso, ptr %i.as, align 8, !tbaa !1339
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 8
  %i.asq = load atomic i32, ptr %i.asp seq_cst, align 4
  %.not.i.i.i552 = icmp eq i32 %i.asq, 0
  br i1 %.not.i.i.i552, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i553, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.aso)
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.auh = icmp eq ptr %.19.i.i.i.i.i525, %i.aov
  br i1 %i.auh, label %.noexc135.thread, label %bb.gf

bb.gf:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i528
  %i.aui = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i525, i64 32
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !543 ; 2 uses
  %i.auk = icmp slt i32 %i.atu, %i.auj
  br i1 %i.auk, label %.noexc135.thread, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aul = icmp sgt i32 %i.atu, %i.auj
  br i1 %i.aul, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aum = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i525, i64 36
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !543 ; 2 uses
  %i.auo = icmp slt i32 %i.atp, %i.aun
  br i1 %i.auo, label %.noexc135.thread, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aup = icmp sgt i32 %i.atp, %i.aun
  br i1 %i.aup, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i529

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i529: ; preds = %bb.gi
  %i.auq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i525, i64 40
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !543
  %i.aus = icmp slt i32 %i.atq, %i.aur
  br i1 %i.aus, label %.noexc135.thread, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i529, %bb.gi, %bb.gg
  %i.aut = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i525, i64 48
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !1098 ; 4 uses
  %i.auv = icmp eq ptr %i.auu, null
  br i1 %i.auv, label %.noexc135.thread, label %bb.gj

bb.gj:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530
  store i64 %.sroa.0.0.insert.insert.i.i534, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  store i32 %i.arm, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.auu, ptr %i.aq, align 8, !tbaa !1172
  %i.auw = lshr i32 %.sroa.211068.012641704, 7
  %i.aux = and i32 %i.auw, 31
  %i.auy = or disjoint i32 %i.aux, %i.apb         ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auu, i64 262144
  %i.ava = getelementptr inbounds nuw [8 x i8], ptr %i.auz, i64 %i.apd
  %i.avb = load i64, ptr %i.ava, align 8, !tbaa !791
  %i.avc = and i32 %i.auy, 63
  %i.avd = zext nneg i32 %i.avc to i64
  %i.ave = shl nuw i64 1, %i.avd
  %i.avf = and i64 %i.avb, %i.ave
  %.not.i.i.i536 = icmp eq i64 %i.avf, 0
  br i1 %.not.i.i.i536, label %.noexc135.thread, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.avg = zext nneg i32 %i.auy to i64
  %i.avh = getelementptr inbounds nuw [8 x i8], ptr %i.auu, i64 %i.avg
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !570 ; 3 uses
  store i64 %.sroa.0.0.insert.insert.i.i.i540, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  store i32 %i.apw, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  store ptr %i.avi, ptr %i.ar, align 8, !tbaa !1212
  %i.avj = lshr i32 %.sroa.211068.012641704, 3
  %i.avk = and i32 %i.avj, 15
  %i.avl = or disjoint i32 %i.avk, %i.api         ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avi, i64 32768
  %i.avn = getelementptr inbounds nuw [8 x i8], ptr %i.avm, i64 %i.apk
  %i.avo = load i64, ptr %i.avn, align 8, !tbaa !791
  %i.avp = and i32 %i.avl, 63
  %i.avq = zext nneg i32 %i.avp to i64
  %i.avr = shl nuw i64 1, %i.avq
  %i.avs = and i64 %i.avo, %i.avr
  %.not.i.i766 = icmp eq i64 %i.avs, 0
  br i1 %.not.i.i766, label %.noexc135.thread, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.avt = zext nneg i32 %i.avl to i64
  %i.avu = getelementptr inbounds nuw [8 x i8], ptr %i.avi, i64 %i.avt
  %i.avv = load ptr, ptr %i.avu, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i770 = and i64 %i.aoe, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i770, ptr %i.ad, align 8
  store i32 %i.apq, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.avv, ptr %i.as, align 8, !tbaa !1339
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 8
  %i.avx = load atomic i32, ptr %i.avw seq_cst, align 4
  %.not.i.i.i772 = icmp eq i32 %i.avx, 0
  br i1 %.not.i.i.i772, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i773, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.avv)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i773 unwind label %bb.ib

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i773: ; preds = %bb.gm, %bb.gl
  %i.avy = load ptr, ptr %i.avv, align 8, !tbaa !570 ; 2 uses
  %i.avz = icmp eq ptr %i.avy, null
  br i1 %i.avz, label %bb.gn, label %.thread.i134.sink.split

bb.gn:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i773
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avv, i64 12 ; 4 uses
  %i.awb = atomicrmw xchg ptr %i.awa, i8 1 seq_cst, align 1
  %i.awc = trunc i8 %i.awb to i1
  br i1 %i.awc, label %.lr.ph.i.i.i.i.i779, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i776

.lr.ph.i.i.i.i.i779:                              ; preds = %bb.gn, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i781
  %.sroa.0.02.i.i.i.i.i780 = phi i32 [ %.sroa.0.1.i.i.i.i.i782, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i781 ], [ 1, %bb.gn ] ; 8 uses
  %i.awd = icmp slt i32 %.sroa.0.02.i.i.i.i.i780, 17
  br i1 %i.awd, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %.lr.ph.i.i.i.i.i779
  %i.awe = icmp sgt i32 %.sroa.0.02.i.i.i.i.i780, 0
  br i1 %i.awe, label %.lr.ph.i.i.i.i.i.i.i784.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i783

.lr.ph.i.i.i.i.i.i.i784.preheader:                ; preds = %bb.go
  %xtraiter1822 = and i32 %.sroa.0.02.i.i.i.i.i780, 7 ; 2 uses
  %lcmp.mod1823.not = icmp eq i32 %xtraiter1822, 0
  br i1 %lcmp.mod1823.not, label %.lr.ph.i.i.i.i.i.i.i784.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i784.prol

.lr.ph.i.i.i.i.i.i.i784.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i784.preheader, %.lr.ph.i.i.i.i.i.i.i784.prol
  %.01.i.i.i.i.i.i.i785.prol = phi i32 [ %i.awf, %.lr.ph.i.i.i.i.i.i.i784.prol ], [ %.sroa.0.02.i.i.i.i.i780, %.lr.ph.i.i.i.i.i.i.i784.preheader ]
  %prol.iter1824 = phi i32 [ %prol.iter1824.next, %.lr.ph.i.i.i.i.i.i.i784.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i784.preheader ]
  %i.awf = add nsw i32 %.01.i.i.i.i.i.i.i785.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter1824.next = add i32 %prol.iter1824, 1 ; 2 uses
  %prol.iter1824.cmp.not = icmp eq i32 %prol.iter1824.next, %xtraiter1822
  br i1 %prol.iter1824.cmp.not, label %.lr.ph.i.i.i.i.i.i.i784.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i784.prol, !llvm.loop !11737

.lr.ph.i.i.i.i.i.i.i784.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i784.prol, %.lr.ph.i.i.i.i.i.i.i784.preheader
  %.01.i.i.i.i.i.i.i785.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i780, %.lr.ph.i.i.i.i.i.i.i784.preheader ], [ %i.awf, %.lr.ph.i.i.i.i.i.i.i784.prol ]
  %i.awg = icmp ult i32 %.sroa.0.02.i.i.i.i.i780, 8
  br i1 %i.awg, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i783, label %.lr.ph.i.i.i.i.i.i.i784

.lr.ph.i.i.i.i.i.i.i784:                          ; preds = %.lr.ph.i.i.i.i.i.i.i784.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i784
  %.01.i.i.i.i.i.i.i785 = phi i32 [ %i.awh, %.lr.ph.i.i.i.i.i.i.i784 ], [ %.01.i.i.i.i.i.i.i785.unr, %.lr.ph.i.i.i.i.i.i.i784.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.awh = add nsw i32 %.01.i.i.i.i.i.i.i785, -8
  call void @llvm.x86.sse2.pause()
  %i.awi = icmp sgt i32 %.01.i.i.i.i.i.i.i785, 8
  br i1 %i.awi, label %.lr.ph.i.i.i.i.i.i.i784, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i783, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i783: ; preds = %.lr.ph.i.i.i.i.i.i.i784.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i784, %bb.go
  %i.awj = shl i32 %.sroa.0.02.i.i.i.i.i780, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i781

bb.gp:                                            ; preds = %.lr.ph.i.i.i.i.i779
  %i.awk = call noundef i32 @sched_yield() #23    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i781

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i781: ; preds = %bb.gp, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i783
  %.sroa.0.1.i.i.i.i.i782 = phi i32 [ %i.awj, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i783 ], [ %.sroa.0.02.i.i.i.i.i780, %bb.gp ]
  %i.awl = atomicrmw xchg ptr %i.awa, i8 1 seq_cst, align 1
  %i.awm = trunc i8 %i.awl to i1
  br i1 %i.awm, label %.lr.ph.i.i.i.i.i779, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i776, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i776: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i781, %bb.gn
  %i.awn = load ptr, ptr %i.avv, align 8, !tbaa !570 ; 2 uses
  %i.awo = icmp eq ptr %i.awn, null
  br i1 %i.awo, label %bb.gq, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i777

bb.gq:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i776
  %i.awp = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.gr unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i778 ; 2 uses

bb.gr:                                            ; preds = %bb.gq
  store ptr %i.awp, ptr %i.avv, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i777

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i778: ; preds = %bb.gq
  %i.awq = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.awa release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i777: ; preds = %bb.gr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i776
  %i.awr = phi ptr [ %i.awp, %bb.gr ], [ %i.awn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i776 ]
  store atomic i8 0, ptr %i.awa release, align 4
  br label %.thread.i134.sink.split

.noexc135:                                        ; preds = %bb.fj
  br i1 %.not.i133, label %.noexc135.thread, label %.thread.i134

.thread.i134.sink.split:                          ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i773, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i777, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i553, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i557, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i577, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i581
  %.sink1623 = phi ptr [ %i.asr, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i553 ], [ %i.aqo, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i577 ], [ %i.arh, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i581 ], [ %i.atk, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i557 ], [ %i.awr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i777 ], [ %i.avy, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i773 ]
  %.0.i.i2201157.ph = phi ptr [ %i.aso, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i553 ], [ %i.aql, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i577 ], [ %i.aql, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i581 ], [ %i.aso, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i557 ], [ %i.avv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i777 ], [ %i.avv, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i773 ]
  store ptr %.sink1623, ptr %i.ac, align 8, !tbaa !3205
  br label %.thread.i134

.thread.i134:                                     ; preds = %.noexc135, %.thread.i134.sink.split
  %.0.i.i2201157 = phi ptr [ %.0.i.i2201157.ph, %.thread.i134.sink.split ], [ %i.apl, %.noexc135 ]
  %i.aws = getelementptr inbounds nuw i8, ptr %.0.i.i2201157, i64 80
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !543
  %i.awu = sext i32 %i.awt to i64
  br label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136

.noexc135.thread:                                 ; preds = %bb.gk, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i529, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i528, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i219, %bb.gf, %bb.gj, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530, %bb.gh, %bb.fk, %bb.ft, %bb.fs, %.noexc135
  %i.awv = phi i32 [ %i.arm, %bb.gk ], [ %i.apo, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i529 ], [ %i.apo, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i528 ], [ %i.apo, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i219 ], [ %i.apo, %bb.gf ], [ %i.arm, %bb.gj ], [ %i.apo, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530 ], [ %i.apo, %bb.gh ], [ %i.apo, %bb.fk ], [ %i.apo, %bb.ft ], [ %i.apo, %bb.fs ], [ %i.apo, %.noexc135 ]
  %i.aww = phi i32 [ %i.apw, %bb.gk ], [ %i.app, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i529 ], [ %i.app, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i528 ], [ %i.app, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i219 ], [ %i.app, %bb.gf ], [ %i.app, %bb.gj ], [ %i.app, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530 ], [ %i.app, %bb.gh ], [ %i.app, %bb.fk ], [ %i.apw, %bb.ft ], [ %i.app, %bb.fs ], [ %i.app, %.noexc135 ]
  %.sroa.211068.01264 = add nsw i32 %.sroa.211068.012641704, 8 ; 2 uses
  %.not = icmp slt i32 %.sroa.8.0.copyload.i126, %.sroa.211068.01264
  br i1 %.not, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136, label %bb.fj

_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136: ; preds = %.noexc135.thread, %.lr.ph1705, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.preheader, %.lr.ph.i127.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.lr.ph, %.thread.i134, %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit110
  %.2.i132 = phi i64 [ %i.awu, %.thread.i134 ], [ -1, %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit110 ], [ -1, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.lr.ph ], [ -1, %.lr.ph.i127.preheader ], [ -1, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.preheader ], [ -1, %.lr.ph1705 ], [ -1, %.noexc135.thread ]
  %i.awx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01273
  store i64 %.2.i132, ptr %i.awx, align 8, !tbaa !791
  %i.awy = load i64, ptr %i.az, align 4           ; 7 uses
  %i.awz = trunc i64 %i.awy to i32                ; 8 uses
  %i.axa = lshr i64 %i.awy, 32
  %i.axb = trunc nuw i64 %i.axa to i32            ; 8 uses
  %.sroa.0.0.copyload.i142 = load i32, ptr %i.am, align 8
  %.sroa.5.0.copyload.i146 = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !570 ; 2 uses
  %.sroa.6.0.copyload.i148 = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0.copyload.i150 = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0.copyload.i152 = load i32, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !570
  %i.axc = icmp sgt i32 %.sroa.0.0.copyload.i142, %i.awz
  br i1 %i.axc, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136
  %.sroa.4.0.copyload.i144 = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.axd = icmp sgt i32 %.sroa.4.0.copyload.i144, %i.axb
  br i1 %i.axd, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.lr.ph

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.lr.ph: ; preds = %.lr.ph.i153.preheader
  %11 = load i32, ptr %i.bd, align 4, !tbaa !543  ; 2 uses
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.promoted1268 = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.promoted1267 = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4
  %i.axe = icmp sge i32 %.sroa.6.0.copyload.i148, %i.awz
  %i.axf = icmp sge i32 %.sroa.7.0.copyload.i150, %i.axb
  %12 = and i32 %i.awz, -8
  %13 = load i32, ptr %i.ad, align 8
  %14 = icmp eq i32 %12, %13
  %15 = and i32 %i.axb, -8
  %16 = load i32, ptr %i.an, align 4
  %17 = icmp eq i32 %15, %16
  %i.axg = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.axh = and i32 %i.awz, -128
  %i.axi = and i32 %i.axb, -128
  %i.axj = and i32 %i.awz, -4096
  %i.axk = and i32 %i.axb, -4096
  %i.axl = load ptr, ptr %i.ae, align 8           ; 5 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 56
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axl, i64 60
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axl, i64 16
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axl, i64 8 ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axl, i64 52
  %.sroa.0.0.insert.insert.i.i610 = and i64 %i.awy, -17587891081216
  %i.axr = shl i32 %i.awz, 3
  %i.axs = and i32 %i.axr, 31744
  %i.axt = lshr i32 %i.axb, 2
  %i.axu = and i32 %i.axt, 992
  %i.axv = or disjoint i32 %i.axu, %i.axs         ; 3 uses
  %i.axw = lshr i32 %i.axv, 6
  %i.axx = zext nneg i32 %i.axw to i64            ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i616 = and i64 %i.awy, -545460846720 ; 2 uses
  %i.axy = shl i32 %i.awz, 5
  %i.axz = and i32 %i.axy, 3840
  %i.aya = shl i32 %i.axb, 1
  %i.ayb = and i32 %i.aya, 240
  %i.ayc = or disjoint i32 %i.ayb, %i.axz         ; 4 uses
  %i.ayd = lshr i32 %i.ayc, 6
  %i.aye = zext nneg i32 %i.ayd to i64            ; 3 uses
  %i.ayf = load ptr, ptr %i.as, align 8           ; 2 uses
  %.not.i159 = icmp eq ptr %i.ayf, null
  %.fr1271 = freeze i1 %i.axf
  %.fr1272 = freeze i1 %i.axe
  %i.ayg = and i1 %.fr1271, %.fr1272
  br i1 %i.ayg, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.preheader, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.preheader: ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.lr.ph
  %i.ayh = add i32 %11, -8
  %i.ayi = icmp sle i32 %i.ayh, %.sroa.8.0.copyload.i152
  %.fr1403 = freeze i1 %i.ayi
  br i1 %.fr1403, label %.lr.ph1709, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162

.lr.ph1709:                                       ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.preheader
  %brmerge1306.not1320 = select i1 %14, i1 %17, i1 false
  %.sroa.211114.012701709 = add nsw i32 %11, -8   ; 2 uses
  %.not15451710 = icmp slt i32 %.sroa.211114.012701709, %.sroa.5.0.copyload.i146
  br i1 %.not15451710, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph1709, %.noexc161.thread
  %.sroa.211114.012701708 = phi i32 [ %.sroa.211114.01270, %.noexc161.thread ], [ %.sroa.211114.012701709, %.lr.ph1709 ] ; 10 uses
  %i.ayj = phi i32 [ %i.bfq, %.noexc161.thread ], [ %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.promoted1268, %.lr.ph1709 ] ; 11 uses
  %i.ayk = phi i32 [ %i.bfr, %.noexc161.thread ], [ %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.promoted1267, %.lr.ph1709 ] ; 11 uses
  %i.ayl = and i32 %.sroa.211114.012701708, -8    ; 4 uses
  %i.aym = icmp eq i32 %i.ayl, %i.axg
  %or.cond1308 = select i1 %brmerge1306.not1320, i1 %i.aym, i1 false
  br i1 %or.cond1308, label %.noexc161, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i234

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i234: ; preds = %bb.gs
  %i.ayn = load i32, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4, !tbaa !543
  %i.ayo = icmp eq i32 %i.axh, %i.ayn
  %i.ayp = load i32, ptr %i.ao, align 8
  %i.ayq = icmp eq i32 %i.axi, %i.ayp
  %or.cond1310 = select i1 %i.ayo, i1 %i.ayq, i1 false
  %i.ayr = and i32 %.sroa.211114.012701708, -128  ; 5 uses
  %i.ays = icmp eq i32 %i.ayr, %i.ayk
  %or.cond1312 = select i1 %or.cond1310, i1 %i.ays, i1 false
  br i1 %or.cond1312, label %bb.gt, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread.i235

bb.gt:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i234
  %i.ayt = load ptr, ptr %i.ar, align 8, !tbaa !1212 ; 2 uses
  %i.ayu = lshr i32 %.sroa.211114.012701708, 3
  %i.ayv = and i32 %i.ayu, 15
  %i.ayw = or disjoint i32 %i.ayv, %i.ayc         ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayt, i64 32768
  %i.ayy = getelementptr inbounds nuw [8 x i8], ptr %i.ayx, i64 %i.aye
  %i.ayz = load i64, ptr %i.ayy, align 8, !tbaa !791
  %i.aza = and i32 %i.ayw, 63
  %i.azb = zext nneg i32 %i.aza to i64
  %i.azc = shl nuw i64 1, %i.azb
  %i.azd = and i64 %i.ayz, %i.azc
  %.not.i.i646 = icmp eq i64 %i.azd, 0
  br i1 %.not.i.i646, label %.noexc161.thread, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aze = zext nneg i32 %i.ayw to i64
  %i.azf = getelementptr inbounds nuw [8 x i8], ptr %i.ayt, i64 %i.aze
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i650 = and i64 %i.awy, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i650, ptr %i.ad, align 8
  store i32 %i.ayl, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.azg, ptr %i.as, align 8, !tbaa !1339
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 8
  %i.azi = load atomic i32, ptr %i.azh seq_cst, align 4
  %.not.i.i.i652 = icmp eq i32 %i.azi, 0
  br i1 %.not.i.i.i652, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i653, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.azg)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i653 unwind label %bb.ib

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i653: ; preds = %bb.gv, %bb.gu
  %i.azj = load ptr, ptr %i.azg, align 8, !tbaa !570 ; 2 uses
  %i.azk = icmp eq ptr %i.azj, null
  br i1 %i.azk, label %bb.gw, label %.thread.i160.sink.split

bb.gw:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i653
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azg, i64 12 ; 4 uses
  %i.azm = atomicrmw xchg ptr %i.azl, i8 1 seq_cst, align 1
  %i.azn = trunc i8 %i.azm to i1
  br i1 %i.azn, label %.lr.ph.i.i.i.i.i659, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i656

.lr.ph.i.i.i.i.i659:                              ; preds = %bb.gw, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i661
  %.sroa.0.02.i.i.i.i.i660 = phi i32 [ %.sroa.0.1.i.i.i.i.i662, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i661 ], [ 1, %bb.gw ] ; 8 uses
  %i.azo = icmp slt i32 %.sroa.0.02.i.i.i.i.i660, 17
  br i1 %i.azo, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %.lr.ph.i.i.i.i.i659
  %i.azp = icmp sgt i32 %.sroa.0.02.i.i.i.i.i660, 0
  br i1 %i.azp, label %.lr.ph.i.i.i.i.i.i.i664.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i663

.lr.ph.i.i.i.i.i.i.i664.preheader:                ; preds = %bb.gx
  %xtraiter1837.a = and i32 %.sroa.0.02.i.i.i.i.i660, 7 ; 2 uses
  %lcmp.mod1838.not.a = icmp eq i32 %xtraiter1837.a, 0
  br i1 %lcmp.mod1838.not.a, label %.lr.ph.i.i.i.i.i.i.i664.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i664.prol

.lr.ph.i.i.i.i.i.i.i664.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i664.preheader, %.lr.ph.i.i.i.i.i.i.i664.prol
  %.01.i.i.i.i.i.i.i665.prol = phi i32 [ %i.azq, %.lr.ph.i.i.i.i.i.i.i664.prol ], [ %.sroa.0.02.i.i.i.i.i660, %.lr.ph.i.i.i.i.i.i.i664.preheader ]
  %prol.iter1839.a = phi i32 [ %prol.iter1839.next.a, %.lr.ph.i.i.i.i.i.i.i664.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i664.preheader ]
  %i.azq = add nsw i32 %.01.i.i.i.i.i.i.i665.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter1839.next.a = add i32 %prol.iter1839.a, 1 ; 2 uses
  %prol.iter1839.cmp.not.a = icmp eq i32 %prol.iter1839.next.a, %xtraiter1837.a
  br i1 %prol.iter1839.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.i664.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i664.prol, !llvm.loop !11738

.lr.ph.i.i.i.i.i.i.i664.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i664.prol, %.lr.ph.i.i.i.i.i.i.i664.preheader
  %.01.i.i.i.i.i.i.i665.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i660, %.lr.ph.i.i.i.i.i.i.i664.preheader ], [ %i.azq, %.lr.ph.i.i.i.i.i.i.i664.prol ]
  %i.azr = icmp ult i32 %.sroa.0.02.i.i.i.i.i660, 8
  br i1 %i.azr, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i663, label %.lr.ph.i.i.i.i.i.i.i664

.lr.ph.i.i.i.i.i.i.i664:                          ; preds = %.lr.ph.i.i.i.i.i.i.i664.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i664
  %.01.i.i.i.i.i.i.i665 = phi i32 [ %i.azs, %.lr.ph.i.i.i.i.i.i.i664 ], [ %.01.i.i.i.i.i.i.i665.unr, %.lr.ph.i.i.i.i.i.i.i664.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.azs = add nsw i32 %.01.i.i.i.i.i.i.i665, -8
  call void @llvm.x86.sse2.pause()
  %i.azt = icmp sgt i32 %.01.i.i.i.i.i.i.i665, 8
  br i1 %i.azt, label %.lr.ph.i.i.i.i.i.i.i664, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i663, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i663: ; preds = %.lr.ph.i.i.i.i.i.i.i664.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i664, %bb.gx
  %i.azu = shl i32 %.sroa.0.02.i.i.i.i.i660, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i661

bb.gy:                                            ; preds = %.lr.ph.i.i.i.i.i659
  %i.azv = call noundef i32 @sched_yield() #23    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i661

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i661: ; preds = %bb.gy, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i663
  %.sroa.0.1.i.i.i.i.i662 = phi i32 [ %i.azu, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i663 ], [ %.sroa.0.02.i.i.i.i.i660, %bb.gy ]
  %i.azw = atomicrmw xchg ptr %i.azl, i8 1 seq_cst, align 1
  %i.azx = trunc i8 %i.azw to i1
  br i1 %i.azx, label %.lr.ph.i.i.i.i.i659, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i656, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i656: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i661, %bb.gw
  %i.azy = load ptr, ptr %i.azg, align 8, !tbaa !570 ; 2 uses
  %i.azz = icmp eq ptr %i.azy, null
  br i1 %i.azz, label %bb.gz, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i657

bb.gz:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i656
  %i.baa = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.ha unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i658 ; 2 uses

bb.ha:                                            ; preds = %bb.gz
  store ptr %i.baa, ptr %i.azg, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i657

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i658: ; preds = %bb.gz
  %i.bab = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.azl release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i657: ; preds = %bb.ha, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i656
  %i.bac = phi ptr [ %i.baa, %bb.ha ], [ %i.azy, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i656 ]
  store atomic i8 0, ptr %i.azl release, align 4
  br label %.thread.i160.sink.split

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread.i235: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i234
  %i.bad = load i32, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8, !tbaa !543
  %i.bae = icmp eq i32 %i.axj, %i.bad
  %i.baf = load i32, ptr %i.ap, align 4
  %i.bag = icmp eq i32 %i.axk, %i.baf
  %or.cond1314 = select i1 %i.bae, i1 %i.bag, i1 false
  %i.bah = and i32 %.sroa.211114.012701708, -4096 ; 4 uses
  %i.bai = icmp eq i32 %i.bah, %i.ayj
  %or.cond1316 = select i1 %or.cond1314, i1 %i.bai, i1 false
  br i1 %or.cond1316, label %bb.hb, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i236

bb.hb:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread.i235
  %i.baj = load ptr, ptr %i.aq, align 8, !tbaa !1172 ; 2 uses
  %i.bak = lshr i32 %.sroa.211114.012701708, 7
  %i.bal = and i32 %i.bak, 31
  %i.bam = or disjoint i32 %i.bal, %i.axv         ; 2 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %i.baj, i64 262144
  %i.bao = getelementptr inbounds nuw [8 x i8], ptr %i.ban, i64 %i.axx
  %i.bap = load i64, ptr %i.bao, align 8, !tbaa !791
  %i.baq = and i32 %i.bam, 63
  %i.bar = zext nneg i32 %i.baq to i64
  %i.bas = shl nuw i64 1, %i.bar
  %i.bat = and i64 %i.bap, %i.bas
  %.not.i.i.i.i239 = icmp eq i64 %i.bat, 0
  br i1 %.not.i.i.i.i239, label %.noexc161.thread, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bau = zext nneg i32 %i.bam to i64
  %i.bav = getelementptr inbounds nuw [8 x i8], ptr %i.baj, i64 %i.bau
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !570 ; 3 uses
  store i64 %.sroa.0.0.insert.insert.i.i.i616, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  store i32 %i.ayr, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  store ptr %i.baw, ptr %i.ar, align 8, !tbaa !1212
  %i.bax = lshr i32 %.sroa.211114.012701708, 3
  %i.bay = and i32 %i.bax, 15
  %i.baz = or disjoint i32 %i.bay, %i.ayc         ; 2 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baw, i64 32768
  %i.bbb = getelementptr inbounds nuw [8 x i8], ptr %i.bba, i64 %i.aye
  %i.bbc = load i64, ptr %i.bbb, align 8, !tbaa !791
  %i.bbd = and i32 %i.baz, 63
  %i.bbe = zext nneg i32 %i.bbd to i64
  %i.bbf = shl nuw i64 1, %i.bbe
  %i.bbg = and i64 %i.bbc, %i.bbf
  %.not.i.i622 = icmp eq i64 %i.bbg, 0
  br i1 %.not.i.i622, label %.noexc161.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.bbh = zext nneg i32 %i.baz to i64
  %i.bbi = getelementptr inbounds nuw [8 x i8], ptr %i.baw, i64 %i.bbh
  %i.bbj = load ptr, ptr %i.bbi, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i626 = and i64 %i.awy, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i626, ptr %i.ad, align 8
  store i32 %i.ayl, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.bbj, ptr %i.as, align 8, !tbaa !1339
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 8
  %i.bbl = load atomic i32, ptr %i.bbk seq_cst, align 4
  %.not.i.i.i628 = icmp eq i32 %i.bbl, 0
  br i1 %.not.i.i.i628, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i629, label %bb.he

bb.he:                                            ; preds = %bb.hd
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.bbj)
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.bdc = icmp eq ptr %.19.i.i.i.i.i601, %i.axp
  br i1 %i.bdc, label %.noexc161.thread, label %bb.ho

bb.ho:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i604
  %i.bdd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i601, i64 32
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !543 ; 2 uses
  %i.bdf = icmp slt i32 %i.bcp, %i.bde
  br i1 %i.bdf, label %.noexc161.thread, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.bdg = icmp sgt i32 %i.bcp, %i.bde
  br i1 %i.bdg, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.bdh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i601, i64 36
  %i.bdi = load i32, ptr %i.bdh, align 4, !tbaa !543 ; 2 uses
  %i.bdj = icmp slt i32 %i.bck, %i.bdi
  br i1 %i.bdj, label %.noexc161.thread, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bdk = icmp sgt i32 %i.bck, %i.bdi
  br i1 %i.bdk, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i605

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i605: ; preds = %bb.hr
  %i.bdl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i601, i64 40
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !543
  %i.bdn = icmp slt i32 %i.bcl, %i.bdm
  br i1 %i.bdn, label %.noexc161.thread, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i605, %bb.hr, %bb.hp
  %i.bdo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i601, i64 48
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !1098 ; 4 uses
  %i.bdq = icmp eq ptr %i.bdp, null
  br i1 %i.bdq, label %.noexc161.thread, label %bb.hs

bb.hs:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606
  store i64 %.sroa.0.0.insert.insert.i.i610, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  store i32 %i.bah, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.bdp, ptr %i.aq, align 8, !tbaa !1172
  %i.bdr = lshr i32 %.sroa.211114.012701708, 7
  %i.bds = and i32 %i.bdr, 31
  %i.bdt = or disjoint i32 %i.bds, %i.axv         ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdp, i64 262144
  %i.bdv = getelementptr inbounds nuw [8 x i8], ptr %i.bdu, i64 %i.axx
  %i.bdw = load i64, ptr %i.bdv, align 8, !tbaa !791
  %i.bdx = and i32 %i.bdt, 63
  %i.bdy = zext nneg i32 %i.bdx to i64
  %i.bdz = shl nuw i64 1, %i.bdy
  %i.bea = and i64 %i.bdw, %i.bdz
  %.not.i.i.i612 = icmp eq i64 %i.bea, 0
  br i1 %.not.i.i.i612, label %.noexc161.thread, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.beb = zext nneg i32 %i.bdt to i64
  %i.bec = getelementptr inbounds nuw [8 x i8], ptr %i.bdp, i64 %i.beb
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !570 ; 3 uses
  store i64 %.sroa.0.0.insert.insert.i.i.i616, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  store i32 %i.ayr, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  store ptr %i.bed, ptr %i.ar, align 8, !tbaa !1212
  %i.bee = lshr i32 %.sroa.211114.012701708, 3
  %i.bef = and i32 %i.bee, 15
  %i.beg = or disjoint i32 %i.bef, %i.ayc         ; 2 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bed, i64 32768
  %i.bei = getelementptr inbounds nuw [8 x i8], ptr %i.beh, i64 %i.aye
  %i.bej = load i64, ptr %i.bei, align 8, !tbaa !791
  %i.bek = and i32 %i.beg, 63
  %i.bel = zext nneg i32 %i.bek to i64
  %i.bem = shl nuw i64 1, %i.bel
  %i.ben = and i64 %i.bej, %i.bem
  %.not.i.i790 = icmp eq i64 %i.ben, 0
  br i1 %.not.i.i790, label %.noexc161.thread, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.beo = zext nneg i32 %i.beg to i64
  %i.bep = getelementptr inbounds nuw [8 x i8], ptr %i.bed, i64 %i.beo
  %i.beq = load ptr, ptr %i.bep, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i794 = and i64 %i.awy, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i794, ptr %i.ad, align 8
  store i32 %i.ayl, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.beq, ptr %i.as, align 8, !tbaa !1339
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 8
  %i.bes = load atomic i32, ptr %i.ber seq_cst, align 4
  %.not.i.i.i796 = icmp eq i32 %i.bes, 0
  br i1 %.not.i.i.i796, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i797, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.beq)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i797 unwind label %bb.ib

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i797: ; preds = %bb.hv, %bb.hu
  %i.bet = load ptr, ptr %i.beq, align 8, !tbaa !570 ; 2 uses
  %i.beu = icmp eq ptr %i.bet, null
  br i1 %i.beu, label %bb.hw, label %.thread.i160.sink.split

bb.hw:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i797
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beq, i64 12 ; 4 uses
  %i.bew = atomicrmw xchg ptr %i.bev, i8 1 seq_cst, align 1
  %i.bex = trunc i8 %i.bew to i1
  br i1 %i.bex, label %.lr.ph.i.i.i.i.i803, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i800

.lr.ph.i.i.i.i.i803:                              ; preds = %bb.hw, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i805
  %.sroa.0.02.i.i.i.i.i804 = phi i32 [ %.sroa.0.1.i.i.i.i.i806, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i805 ], [ 1, %bb.hw ] ; 8 uses
  %i.bey = icmp slt i32 %.sroa.0.02.i.i.i.i.i804, 17
  br i1 %i.bey, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %.lr.ph.i.i.i.i.i803
  %i.bez = icmp sgt i32 %.sroa.0.02.i.i.i.i.i804, 0
  br i1 %i.bez, label %.lr.ph.i.i.i.i.i.i.i808.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i807

.lr.ph.i.i.i.i.i.i.i808.preheader:                ; preds = %bb.hx
  %xtraiter1831 = and i32 %.sroa.0.02.i.i.i.i.i804, 7 ; 2 uses
  %lcmp.mod1832.not = icmp eq i32 %xtraiter1831, 0
  br i1 %lcmp.mod1832.not, label %.lr.ph.i.i.i.i.i.i.i808.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i808.prol

.lr.ph.i.i.i.i.i.i.i808.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i808.preheader, %.lr.ph.i.i.i.i.i.i.i808.prol
  %.01.i.i.i.i.i.i.i809.prol = phi i32 [ %i.bfa, %.lr.ph.i.i.i.i.i.i.i808.prol ], [ %.sroa.0.02.i.i.i.i.i804, %.lr.ph.i.i.i.i.i.i.i808.preheader ]
  %prol.iter1833 = phi i32 [ %prol.iter1833.next, %.lr.ph.i.i.i.i.i.i.i808.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i808.preheader ]
  %i.bfa = add nsw i32 %.01.i.i.i.i.i.i.i809.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter1833.next = add i32 %prol.iter1833, 1 ; 2 uses
  %prol.iter1833.cmp.not = icmp eq i32 %prol.iter1833.next, %xtraiter1831
  br i1 %prol.iter1833.cmp.not, label %.lr.ph.i.i.i.i.i.i.i808.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i808.prol, !llvm.loop !11740

.lr.ph.i.i.i.i.i.i.i808.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i808.prol, %.lr.ph.i.i.i.i.i.i.i808.preheader
  %.01.i.i.i.i.i.i.i809.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i804, %.lr.ph.i.i.i.i.i.i.i808.preheader ], [ %i.bfa, %.lr.ph.i.i.i.i.i.i.i808.prol ]
  %i.bfb = icmp ult i32 %.sroa.0.02.i.i.i.i.i804, 8
  br i1 %i.bfb, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i807, label %.lr.ph.i.i.i.i.i.i.i808

.lr.ph.i.i.i.i.i.i.i808:                          ; preds = %.lr.ph.i.i.i.i.i.i.i808.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i808
  %.01.i.i.i.i.i.i.i809 = phi i32 [ %i.bfc, %.lr.ph.i.i.i.i.i.i.i808 ], [ %.01.i.i.i.i.i.i.i809.unr, %.lr.ph.i.i.i.i.i.i.i808.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.bfc = add nsw i32 %.01.i.i.i.i.i.i.i809, -8
  call void @llvm.x86.sse2.pause()
  %i.bfd = icmp sgt i32 %.01.i.i.i.i.i.i.i809, 8
  br i1 %i.bfd, label %.lr.ph.i.i.i.i.i.i.i808, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i807, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i807: ; preds = %.lr.ph.i.i.i.i.i.i.i808.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i808, %bb.hx
  %i.bfe = shl i32 %.sroa.0.02.i.i.i.i.i804, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i805

bb.hy:                                            ; preds = %.lr.ph.i.i.i.i.i803
  %i.bff = call noundef i32 @sched_yield() #23    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i805

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i805: ; preds = %bb.hy, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i807
  %.sroa.0.1.i.i.i.i.i806 = phi i32 [ %i.bfe, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i807 ], [ %.sroa.0.02.i.i.i.i.i804, %bb.hy ]
  %i.bfg = atomicrmw xchg ptr %i.bev, i8 1 seq_cst, align 1
  %i.bfh = trunc i8 %i.bfg to i1
  br i1 %i.bfh, label %.lr.ph.i.i.i.i.i803, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i800, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i800: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i805, %bb.hw
  %i.bfi = load ptr, ptr %i.beq, align 8, !tbaa !570 ; 2 uses
  %i.bfj = icmp eq ptr %i.bfi, null
  br i1 %i.bfj, label %bb.hz, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i801

bb.hz:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i800
  %i.bfk = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.ia unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i802 ; 2 uses

bb.ia:                                            ; preds = %bb.hz
  store ptr %i.bfk, ptr %i.beq, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i801

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i802: ; preds = %bb.hz
  %i.bfl = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.bev release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i801: ; preds = %bb.ia, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i800
  %i.bfm = phi ptr [ %i.bfk, %bb.ia ], [ %i.bfi, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i800 ]
  store atomic i8 0, ptr %i.bev release, align 4
  br label %.thread.i160.sink.split

.noexc161:                                        ; preds = %bb.gs
  br i1 %.not.i159, label %.noexc161.thread, label %.thread.i160

.thread.i160.sink.split:                          ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i797, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i801, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i629, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i633, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i653, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i657
  %.sink1624 = phi ptr [ %i.bbm, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i629 ], [ %i.azj, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i653 ], [ %i.bac, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i657 ], [ %i.bcf, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i633 ], [ %i.bfm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i801 ], [ %i.bet, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i797 ]
  %.0.i.i2371164.ph = phi ptr [ %i.bbj, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i629 ], [ %i.azg, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i653 ], [ %i.azg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i657 ], [ %i.bbj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i633 ], [ %i.beq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i801 ], [ %i.beq, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i797 ]
  store ptr %.sink1624, ptr %i.ac, align 8, !tbaa !3205
  br label %.thread.i160

.thread.i160:                                     ; preds = %.noexc161, %.thread.i160.sink.split
  %.0.i.i2371164 = phi ptr [ %.0.i.i2371164.ph, %.thread.i160.sink.split ], [ %i.ayf, %.noexc161 ]
  %i.bfn = getelementptr inbounds nuw i8, ptr %.0.i.i2371164, i64 80
  %i.bfo = load i32, ptr %i.bfn, align 4, !tbaa !543
  %i.bfp = sext i32 %i.bfo to i64
  br label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162

.noexc161.thread:                                 ; preds = %bb.ht, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i605, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i604, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i236, %bb.ho, %bb.hs, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606, %bb.hq, %bb.gt, %bb.hc, %bb.hb, %.noexc161
  %i.bfq = phi i32 [ %i.bah, %bb.ht ], [ %i.ayj, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i605 ], [ %i.ayj, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i604 ], [ %i.ayj, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i236 ], [ %i.ayj, %bb.ho ], [ %i.bah, %bb.hs ], [ %i.ayj, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606 ], [ %i.ayj, %bb.hq ], [ %i.ayj, %bb.gt ], [ %i.ayj, %bb.hc ], [ %i.ayj, %bb.hb ], [ %i.ayj, %.noexc161 ]
  %i.bfr = phi i32 [ %i.ayr, %bb.ht ], [ %i.ayk, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i605 ], [ %i.ayk, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i604 ], [ %i.ayk, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i236 ], [ %i.ayk, %bb.ho ], [ %i.ayk, %bb.hs ], [ %i.ayk, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606 ], [ %i.ayk, %bb.hq ], [ %i.ayk, %bb.gt ], [ %i.ayr, %bb.hc ], [ %i.ayk, %bb.hb ], [ %i.ayk, %.noexc161 ]
  %.sroa.211114.01270 = add nsw i32 %.sroa.211114.012701708, -8 ; 2 uses
  %.not1545 = icmp slt i32 %.sroa.211114.01270, %.sroa.5.0.copyload.i146
  br i1 %.not1545, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162, label %bb.gs

_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162: ; preds = %.noexc161.thread, %.lr.ph1709, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.preheader, %.lr.ph.i153.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.lr.ph, %.thread.i160, %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136
  %.2.i158 = phi i64 [ %i.bfp, %.thread.i160 ], [ -1, %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136 ], [ -1, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.lr.ph ], [ -1, %.lr.ph.i153.preheader ], [ -1, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.preheader ], [ -1, %.lr.ph1709 ], [ -1, %.noexc161.thread ]
  %i.bfs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01273
  store i64 %.2.i158, ptr %i.bfs, align 8, !tbaa !791
  %i.bft = add nuw i64 %.01273, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bft, %i.aj
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.m, !llvm.loop !11741

bb.ib:                                            ; preds = %bb.fv, %bb.fm, %bb.gm, %bb.em, %bb.ec, %bb.fd, %bb.da, %bb.cq, %bb.dr, %bb.bo, %bb.be, %bb.cf, %bb.ac, %bb.s, %bb.at, %bb.hv, %bb.gv, %bb.he
  %i.bfu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i634, %bb.ib, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i802, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i658, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i558, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i778, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i582, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i482, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i754, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i506, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i406, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i730, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i430, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i330, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i706, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i354, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i682, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i278
  %.pn = phi { ptr, i32 } [ %i.awq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i778 ], [ %i.anu, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i754 ], [ %i.aea, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i730 ], [ %i.ug, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i706 ], [ %i.km, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i682 ], [ %i.gv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i ], [ %i.eh, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i278 ], [ %i.bfl, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i802 ], [ %i.qp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i330 ], [ %i.ob, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i354 ], [ %i.bfu, %bb.ib ], [ %i.aaj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i406 ], [ %i.xv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i430 ], [ %i.bab, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i658 ], [ %i.akd, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i482 ], [ %i.ahp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i506 ], [ %i.bce, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i634 ], [ %i.atj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i558 ], [ %i.arg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i582 ]
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSK_RSM_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !756
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !757
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !570
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !630
  %i.g = load i64, ptr %0, align 8, !tbaa !629
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSK_RSM_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr null, ptr %3, align 8, !tbaa !760
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !545
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1363
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !4667
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !4674
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.p, align 8, !tbaa !1184
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i8 5, ptr %i.q, align 4, !tbaa !1185
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 16, !tbaa !1186
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.u = load i64, ptr %3, align 8, !tbaa !766
  store i64 %i.u, ptr %i.t, align 64, !tbaa !766
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !1190
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !1191
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !738
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !739
  store ptr %4, ptr %i.l, align 8, !tbaa !4674
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSK_RSM_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSK_RSM_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSK_RSM_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSK_RSM_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1195 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !1186
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 16, !tbaa !1186
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1196
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !4674
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !4674
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !1185
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !1185
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSA_4tree4TreeINSE_8RootNodeINSE_12InternalNodeINSH_INSE_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4674 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i64, ptr %i.y, align 64, !tbaa !766
  %i.aa = load ptr, ptr %0, align 64, !tbaa !545
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(136) dereferenceable(136) %0) #23, !inline_history !522
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ae = add i32 %i.ad, -1
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.ag = load ptr, ptr %.019.i.i, align 8, !tbaa !1190 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !766
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.als = lshr i32 %.sroa.0985.4.extract.trunc1000, 2
  %i.alt = and i32 %i.als, 992
  %i.alu = or disjoint i32 %i.alt, %i.alr         ; 2 uses
  %i.alv = or disjoint i32 %i.alu, %i.afd         ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alo, i64 262144
  %i.alx = lshr i32 %i.alu, 6
  %i.aly = zext nneg i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw [8 x i8], ptr %i.alw, i64 %i.aly
  %i.ama = load i64, ptr %i.alz, align 8, !tbaa !791
  %i.amb = and i32 %i.alv, 63
  %i.amc = zext nneg i32 %i.amb to i64
  %i.amd = shl nuw i64 1, %i.amc
  %i.ame = and i64 %i.ama, %i.amd
  %.not.i.i.i460 = icmp eq i64 %i.ame, 0
  br i1 %.not.i.i.i460, label %.noexc109.thread, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.amf = zext nneg i32 %i.alv to i64
  %i.amg = getelementptr inbounds nuw [8 x i8], ptr %i.alo, i64 %i.amf
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !570 ; 3 uses
  %.sroa.0.0.insert.insert.i.i.i464 = and i64 %.sroa.0985.0, -545460846720
  store i64 %.sroa.0.0.insert.insert.i.i.i464, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  store i32 %i.aeu, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  store ptr %i.amh, ptr %i.ar, align 8, !tbaa !3930
  %i.ami = shl i32 %.sroa.0985.0.extract.trunc987, 5
  %i.amj = and i32 %i.ami, 3840
  %i.amk = shl i32 %.sroa.0985.4.extract.trunc1000, 1
  %i.aml = and i32 %i.amk, 240
  %i.amm = or disjoint i32 %i.aml, %i.amj         ; 2 uses
  %i.amn = or disjoint i32 %i.amm, %i.aff         ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amh, i64 32768
  %i.amp = lshr i32 %i.amm, 6
  %i.amq = zext nneg i32 %i.amp to i64
  %i.amr = getelementptr inbounds nuw [8 x i8], ptr %i.amo, i64 %i.amq
  %i.ams = load i64, ptr %i.amr, align 8, !tbaa !791
  %i.amt = and i32 %i.amn, 63
  %i.amu = zext nneg i32 %i.amt to i64
  %i.amv = shl nuw i64 1, %i.amu
  %i.amw = and i64 %i.ams, %i.amv
  %.not.i.i742 = icmp eq i64 %i.amw, 0
  br i1 %.not.i.i742, label %.noexc109.thread, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.amx = zext nneg i32 %i.amn to i64
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %i.amh, i64 %i.amx
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i746 = and i64 %.sroa.0985.0, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i746, ptr %i.ad, align 8
  store i32 %i.aer, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.amz, ptr %i.as, align 8, !tbaa !4024
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %i.anb = load atomic i32, ptr %i.ana seq_cst, align 4
  %.not.i.i.i748 = icmp eq i32 %i.anb, 0
  br i1 %.not.i.i.i748, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i749, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.amz)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i749 unwind label %bb.ib

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i749: ; preds = %bb.fd, %bb.fc
  %i.anc = load ptr, ptr %i.amz, align 8, !tbaa !570 ; 2 uses
  %i.and = icmp eq ptr %i.anc, null
  br i1 %i.and, label %bb.fe, label %.thread.i108.sink.split

bb.fe:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i749
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amz, i64 12 ; 4 uses
  %i.anf = atomicrmw xchg ptr %i.ane, i8 1 seq_cst, align 1
  %i.ang = trunc i8 %i.anf to i1
  br i1 %i.ang, label %.lr.ph.i.i.i.i.i755, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i752

.lr.ph.i.i.i.i.i755:                              ; preds = %bb.fe, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i757
  %.sroa.0.02.i.i.i.i.i756 = phi i32 [ %.sroa.0.1.i.i.i.i.i758, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i757 ], [ 1, %bb.fe ] ; 8 uses
  %i.anh = icmp slt i32 %.sroa.0.02.i.i.i.i.i756, 17
  br i1 %i.anh, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %.lr.ph.i.i.i.i.i755
  %i.ani = icmp sgt i32 %.sroa.0.02.i.i.i.i.i756, 0
  br i1 %i.ani, label %.lr.ph.i.i.i.i.i.i.i760.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i759

.lr.ph.i.i.i.i.i.i.i760.preheader:                ; preds = %bb.ff
  %xtraiter1813 = and i32 %.sroa.0.02.i.i.i.i.i756, 7 ; 2 uses
  %lcmp.mod1814.not = icmp eq i32 %xtraiter1813, 0
  br i1 %lcmp.mod1814.not, label %.lr.ph.i.i.i.i.i.i.i760.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i760.prol

.lr.ph.i.i.i.i.i.i.i760.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i760.preheader, %.lr.ph.i.i.i.i.i.i.i760.prol
  %.01.i.i.i.i.i.i.i761.prol = phi i32 [ %i.anj, %.lr.ph.i.i.i.i.i.i.i760.prol ], [ %.sroa.0.02.i.i.i.i.i756, %.lr.ph.i.i.i.i.i.i.i760.preheader ]
  %prol.iter1815 = phi i32 [ %prol.iter1815.next, %.lr.ph.i.i.i.i.i.i.i760.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i760.preheader ]
  %i.anj = add nsw i32 %.01.i.i.i.i.i.i.i761.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter1815.next = add i32 %prol.iter1815, 1 ; 2 uses
  %prol.iter1815.cmp.not = icmp eq i32 %prol.iter1815.next, %xtraiter1813
  br i1 %prol.iter1815.cmp.not, label %.lr.ph.i.i.i.i.i.i.i760.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i760.prol, !llvm.loop !11820

.lr.ph.i.i.i.i.i.i.i760.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i760.prol, %.lr.ph.i.i.i.i.i.i.i760.preheader
  %.01.i.i.i.i.i.i.i761.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i756, %.lr.ph.i.i.i.i.i.i.i760.preheader ], [ %i.anj, %.lr.ph.i.i.i.i.i.i.i760.prol ]
  %i.ank = icmp ult i32 %.sroa.0.02.i.i.i.i.i756, 8
  br i1 %i.ank, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i759, label %.lr.ph.i.i.i.i.i.i.i760

.lr.ph.i.i.i.i.i.i.i760:                          ; preds = %.lr.ph.i.i.i.i.i.i.i760.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i760
  %.01.i.i.i.i.i.i.i761 = phi i32 [ %i.anl, %.lr.ph.i.i.i.i.i.i.i760 ], [ %.01.i.i.i.i.i.i.i761.unr, %.lr.ph.i.i.i.i.i.i.i760.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.anl = add nsw i32 %.01.i.i.i.i.i.i.i761, -8
  call void @llvm.x86.sse2.pause()
  %i.anm = icmp sgt i32 %.01.i.i.i.i.i.i.i761, 8
  br i1 %i.anm, label %.lr.ph.i.i.i.i.i.i.i760, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i759, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i759: ; preds = %.lr.ph.i.i.i.i.i.i.i760.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i760, %bb.ff
  %i.ann = shl i32 %.sroa.0.02.i.i.i.i.i756, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i757

bb.fg:                                            ; preds = %.lr.ph.i.i.i.i.i755
  %i.ano = call noundef i32 @sched_yield() #23    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i757

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i757: ; preds = %bb.fg, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i759
  %.sroa.0.1.i.i.i.i.i758 = phi i32 [ %i.ann, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i759 ], [ %.sroa.0.02.i.i.i.i.i756, %bb.fg ]
  %i.anp = atomicrmw xchg ptr %i.ane, i8 1 seq_cst, align 1
  %i.anq = trunc i8 %i.anp to i1
  br i1 %i.anq, label %.lr.ph.i.i.i.i.i755, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i752, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i752: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i757, %bb.fe
  %i.anr = load ptr, ptr %i.amz, align 8, !tbaa !570 ; 2 uses
  %i.ans = icmp eq ptr %i.anr, null
  br i1 %i.ans, label %bb.fh, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i753

bb.fh:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i752
  %i.ant = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #30
          to label %bb.fi unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i754 ; 2 uses

bb.fi:                                            ; preds = %bb.fh
  store ptr %i.ant, ptr %i.amz, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i753

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i754: ; preds = %bb.fh
  %i.anu = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ane release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i753: ; preds = %bb.fi, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i752
  %i.anv = phi ptr [ %i.ant, %bb.fi ], [ %i.anr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i752 ]
  store atomic i8 0, ptr %i.ane release, align 4
  br label %.thread.i108.sink.split

.noexc109:                                        ; preds = %bb.dy
  br i1 %.not.i107, label %.noexc109.thread, label %.thread.i108

.thread.i108.sink.split:                          ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i749, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i753, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i477, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i481, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i501, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i505
  %.sink1622 = phi ptr [ %i.ajl, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i477 ], [ %i.agx, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i501 ], [ %i.ahq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i505 ], [ %i.ake, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i481 ], [ %i.anv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i753 ], [ %i.anc, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i749 ]
  %.0.i.i2031150.ph = phi ptr [ %i.aji, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i477 ], [ %i.agu, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i501 ], [ %i.agu, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i505 ], [ %i.aji, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i481 ], [ %i.amz, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i753 ], [ %i.amz, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i749 ]
  store ptr %.sink1622, ptr %i.ac, align 8, !tbaa !4540
  br label %.thread.i108

.thread.i108:                                     ; preds = %.noexc109, %.thread.i108.sink.split
  %.0.i.i2031150 = phi ptr [ %.0.i.i2031150.ph, %.thread.i108.sink.split ], [ %i.afg, %.noexc109 ]
  %i.anw = getelementptr inbounds nuw i8, ptr %.0.i.i2031150, i64 80
  %i.anx = load i32, ptr %i.anw, align 4, !tbaa !543
  %i.any = sext i32 %i.anx to i64
  br label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit110

.noexc109.thread:                                 ; preds = %bb.fb, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i453, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i452, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i202, %bb.ew, %bb.fa, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i454, %bb.ey, %bb.ea, %bb.ek, %bb.ej, %.noexc109
  %.sroa.0985.4.extract.trunc.pre-phi = phi i32 [ %.sroa.0985.4.extract.trunc1000, %bb.fb ], [ %.sroa.0985.4.extract.trunc1000, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i453 ], [ %.sroa.0985.4.extract.trunc1000, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i452 ], [ %.sroa.0985.4.extract.trunc1000, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i202 ], [ %.sroa.0985.4.extract.trunc1000, %bb.ew ], [ %.sroa.0985.4.extract.trunc1000, %bb.fa ], [ %.sroa.0985.4.extract.trunc1000, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i454 ], [ %.sroa.0985.4.extract.trunc1000, %bb.ey ], [ %.sroa.0985.4.extract.trunc1003, %bb.ea ], [ %.sroa.0985.4.extract.trunc1000, %bb.ek ], [ %.sroa.0985.4.extract.trunc1000, %bb.ej ], [ %.sroa.0985.4.extract.trunc1006, %.noexc109 ]
  %i.anz = phi i32 [ %i.aev, %bb.fb ], [ %i.afk, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i453 ], [ %i.afk, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i452 ], [ %i.afk, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i202 ], [ %i.afk, %bb.ew ], [ %i.aev, %bb.fa ], [ %i.afk, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i454 ], [ %i.afk, %bb.ey ], [ %i.afk, %bb.ea ], [ %i.aev, %bb.ek ], [ %i.aev, %bb.ej ], [ %i.afk, %.noexc109 ]
  %i.aoa = phi i32 [ %i.aeu, %bb.fb ], [ %i.afl, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i453 ], [ %i.afl, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i452 ], [ %i.afl, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i202 ], [ %i.afl, %bb.ew ], [ %i.afl, %bb.fa ], [ %i.afl, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i454 ], [ %i.afl, %bb.ey ], [ %i.aeu, %bb.ea ], [ %i.aeu, %bb.ek ], [ %i.afl, %bb.ej ], [ %i.afl, %.noexc109 ]
  %i.aob = add nsw i32 %.sroa.0985.4.extract.trunc.pre-phi, -8 ; 2 uses
  %.sroa.0985.4.insert.ext = zext i32 %i.aob to i64
  %.sroa.0985.4.insert.shift = shl nuw i64 %.sroa.0985.4.insert.ext, 32
  %.sroa.0985.4.insert.mask = and i64 %.sroa.0985.0, 4294967295
  %.sroa.0985.4.insert.insert = or disjoint i64 %.sroa.0985.4.insert.shift, %.sroa.0985.4.insert.mask
  %i.aoc = icmp sgt i32 %.sroa.0.0.copyload.i90, %.sroa.0985.0.extract.trunc987
  br i1 %i.aoc, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit110, label %.lr.ph.i101, !llvm.loop !11811

_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit110: ; preds = %.lr.ph.i101, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i102, %.noexc109.thread, %.lr.ph.i101.preheader, %.thread.i108, %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit84
  %.2.i106 = phi i64 [ %i.any, %.thread.i108 ], [ -1, %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit84 ], [ -1, %.lr.ph.i101.preheader ], [ -1, %.noexc109.thread ], [ -1, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i102 ], [ -1, %.lr.ph.i101 ]
  %i.aod = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01273
  store i64 %.2.i106, ptr %i.aod, align 8, !tbaa !791
  %i.aoe = load i64, ptr %i.az, align 4           ; 7 uses
  %i.aof = trunc i64 %i.aoe to i32                ; 8 uses
  %i.aog = lshr i64 %i.aoe, 32
  %i.aoh = trunc nuw i64 %i.aog to i32            ; 8 uses
  %.sroa.0.0.copyload.i116 = load i32, ptr %i.am, align 8
  %.sroa.5.0.copyload.i120 = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !570
  %.sroa.6.0.copyload.i122 = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0.copyload.i124 = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0.copyload.i126 = load i32, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !570 ; 2 uses
  %i.aoi = icmp sgt i32 %.sroa.0.0.copyload.i116, %i.aof
  br i1 %i.aoi, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136, label %.lr.ph.i127.preheader

.lr.ph.i127.preheader:                            ; preds = %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit110
  %.sroa.4.0.copyload.i118 = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.aoj = icmp sgt i32 %.sroa.4.0.copyload.i118, %i.aoh
  br i1 %i.aoj, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.lr.ph

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.lr.ph: ; preds = %.lr.ph.i127.preheader
  %4 = load i32, ptr %i.bd, align 4, !tbaa !543   ; 2 uses
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.promoted1262 = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.promoted1261 = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4
  %i.aok = icmp sge i32 %.sroa.6.0.copyload.i122, %i.aof
  %i.aol = icmp sge i32 %.sroa.7.0.copyload.i124, %i.aoh
  %5 = and i32 %i.aof, -8
  %6 = load i32, ptr %i.ad, align 8
  %7 = icmp eq i32 %5, %6
  %8 = and i32 %i.aoh, -8
  %9 = load i32, ptr %i.an, align 4
  %10 = icmp eq i32 %8, %9
  %i.aom = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.aon = and i32 %i.aof, -128
  %i.aoo = and i32 %i.aoh, -128
  %i.aop = and i32 %i.aof, -4096
  %i.aoq = and i32 %i.aoh, -4096
  %i.aor = load ptr, ptr %i.ae, align 8           ; 5 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 60
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aor, i64 64
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aor, i64 16
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aor, i64 8 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aor, i64 56
  %.sroa.0.0.insert.insert.i.i534 = and i64 %i.aoe, -17587891081216
  %i.aox = shl i32 %i.aof, 3
  %i.aoy = and i32 %i.aox, 31744
  %i.aoz = lshr i32 %i.aoh, 2
  %i.apa = and i32 %i.aoz, 992
  %i.apb = or disjoint i32 %i.apa, %i.aoy         ; 3 uses
  %i.apc = lshr i32 %i.apb, 6
  %i.apd = zext nneg i32 %i.apc to i64            ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i540 = and i64 %i.aoe, -545460846720 ; 2 uses
  %i.ape = shl i32 %i.aof, 5
  %i.apf = and i32 %i.ape, 3840
  %i.apg = shl i32 %i.aoh, 1
  %i.aph = and i32 %i.apg, 240
  %i.api = or disjoint i32 %i.aph, %i.apf         ; 4 uses
  %i.apj = lshr i32 %i.api, 6
  %i.apk = zext nneg i32 %i.apj to i64            ; 3 uses
  %i.apl = load ptr, ptr %i.as, align 8           ; 2 uses
  %.not.i133 = icmp eq ptr %i.apl, null
  %.fr1265 = freeze i1 %i.aol
  %.fr1266 = freeze i1 %i.aok
  %i.apm = and i1 %.fr1265, %.fr1266
  br i1 %i.apm, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.preheader, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.preheader: ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.lr.ph
  %.sroa.211068.012641702 = add i32 %4, 8
  %i.apn = icmp sge i32 %.sroa.211068.012641702, %.sroa.5.0.copyload.i120
  %.fr1402 = freeze i1 %i.apn
  br i1 %.fr1402, label %.lr.ph1705, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136

.lr.ph1705:                                       ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.preheader
  %brmerge1293.not1318 = select i1 %7, i1 %10, i1 false
  %.sroa.211068.012641705 = add nsw i32 %4, 8     ; 2 uses
  %.not1706 = icmp slt i32 %.sroa.8.0.copyload.i126, %.sroa.211068.012641705
  br i1 %.not1706, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph1705, %.noexc135.thread
  %.sroa.211068.012641704 = phi i32 [ %.sroa.211068.01264, %.noexc135.thread ], [ %.sroa.211068.012641705, %.lr.ph1705 ] ; 10 uses
  %i.apo = phi i32 [ %i.awv, %.noexc135.thread ], [ %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.promoted1262, %.lr.ph1705 ] ; 11 uses
  %i.app = phi i32 [ %i.aww, %.noexc135.thread ], [ %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.promoted1261, %.lr.ph1705 ] ; 11 uses
  %i.apq = and i32 %.sroa.211068.012641704, -8    ; 4 uses
  %i.apr = icmp eq i32 %i.apq, %i.aom
  %or.cond1295 = select i1 %brmerge1293.not1318, i1 %i.apr, i1 false
  br i1 %or.cond1295, label %.noexc135, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i217

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i217: ; preds = %bb.fj
  %i.aps = load i32, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4, !tbaa !543
  %i.apt = icmp eq i32 %i.aon, %i.aps
  %i.apu = load i32, ptr %i.ao, align 8
  %i.apv = icmp eq i32 %i.aoo, %i.apu
  %or.cond1297 = select i1 %i.apt, i1 %i.apv, i1 false
  %i.apw = and i32 %.sroa.211068.012641704, -128  ; 5 uses
  %i.apx = icmp eq i32 %i.apw, %i.app
  %or.cond1299 = select i1 %or.cond1297, i1 %i.apx, i1 false
  br i1 %or.cond1299, label %bb.fk, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread.i218

bb.fk:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i217
  %i.apy = load ptr, ptr %i.ar, align 8, !tbaa !3930 ; 2 uses
  %i.apz = lshr i32 %.sroa.211068.012641704, 3
  %i.aqa = and i32 %i.apz, 15
  %i.aqb = or disjoint i32 %i.aqa, %i.api         ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apy, i64 32768
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.aqc, i64 %i.apk
  %i.aqe = load i64, ptr %i.aqd, align 8, !tbaa !791
  %i.aqf = and i32 %i.aqb, 63
  %i.aqg = zext nneg i32 %i.aqf to i64
  %i.aqh = shl nuw i64 1, %i.aqg
  %i.aqi = and i64 %i.aqe, %i.aqh
  %.not.i.i570 = icmp eq i64 %i.aqi, 0
  br i1 %.not.i.i570, label %.noexc135.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aqj = zext nneg i32 %i.aqb to i64
  %i.aqk = getelementptr inbounds nuw [8 x i8], ptr %i.apy, i64 %i.aqj
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i574 = and i64 %i.aoe, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i574, ptr %i.ad, align 8
  store i32 %i.apq, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.aql, ptr %i.as, align 8, !tbaa !4024
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 8
  %i.aqn = load atomic i32, ptr %i.aqm seq_cst, align 4
  %.not.i.i.i576 = icmp eq i32 %i.aqn, 0
  br i1 %.not.i.i.i576, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i577, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.aql)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i577 unwind label %bb.ib

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i577: ; preds = %bb.fm, %bb.fl
  %i.aqo = load ptr, ptr %i.aql, align 8, !tbaa !570 ; 2 uses
  %i.aqp = icmp eq ptr %i.aqo, null
  br i1 %i.aqp, label %bb.fn, label %.thread.i134.sink.split

bb.fn:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i577
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aql, i64 12 ; 4 uses
  %i.aqr = atomicrmw xchg ptr %i.aqq, i8 1 seq_cst, align 1
  %i.aqs = trunc i8 %i.aqr to i1
  br i1 %i.aqs, label %.lr.ph.i.i.i.i.i583, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i580

.lr.ph.i.i.i.i.i583:                              ; preds = %bb.fn, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i585
  %.sroa.0.02.i.i.i.i.i584 = phi i32 [ %.sroa.0.1.i.i.i.i.i586, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i585 ], [ 1, %bb.fn ] ; 8 uses
  %i.aqt = icmp slt i32 %.sroa.0.02.i.i.i.i.i584, 17
  br i1 %i.aqt, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %.lr.ph.i.i.i.i.i583
  %i.aqu = icmp sgt i32 %.sroa.0.02.i.i.i.i.i584, 0
  br i1 %i.aqu, label %.lr.ph.i.i.i.i.i.i.i588.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i587

.lr.ph.i.i.i.i.i.i.i588.preheader:                ; preds = %bb.fo
  %xtraiter1828.a = and i32 %.sroa.0.02.i.i.i.i.i584, 7 ; 2 uses
  %lcmp.mod1829.not.a = icmp eq i32 %xtraiter1828.a, 0
  br i1 %lcmp.mod1829.not.a, label %.lr.ph.i.i.i.i.i.i.i588.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i588.prol

.lr.ph.i.i.i.i.i.i.i588.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i588.preheader, %.lr.ph.i.i.i.i.i.i.i588.prol
  %.01.i.i.i.i.i.i.i589.prol = phi i32 [ %i.aqv, %.lr.ph.i.i.i.i.i.i.i588.prol ], [ %.sroa.0.02.i.i.i.i.i584, %.lr.ph.i.i.i.i.i.i.i588.preheader ]
  %prol.iter1830.a = phi i32 [ %prol.iter1830.next.a, %.lr.ph.i.i.i.i.i.i.i588.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i588.preheader ]
  %i.aqv = add nsw i32 %.01.i.i.i.i.i.i.i589.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter1830.next.a = add i32 %prol.iter1830.a, 1 ; 2 uses
  %prol.iter1830.cmp.not.a = icmp eq i32 %prol.iter1830.next.a, %xtraiter1828.a
  br i1 %prol.iter1830.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.i588.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i588.prol, !llvm.loop !11821

.lr.ph.i.i.i.i.i.i.i588.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i588.prol, %.lr.ph.i.i.i.i.i.i.i588.preheader
  %.01.i.i.i.i.i.i.i589.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i584, %.lr.ph.i.i.i.i.i.i.i588.preheader ], [ %i.aqv, %.lr.ph.i.i.i.i.i.i.i588.prol ]
  %i.aqw = icmp ult i32 %.sroa.0.02.i.i.i.i.i584, 8
  br i1 %i.aqw, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i587, label %.lr.ph.i.i.i.i.i.i.i588

.lr.ph.i.i.i.i.i.i.i588:                          ; preds = %.lr.ph.i.i.i.i.i.i.i588.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i588
  %.01.i.i.i.i.i.i.i589 = phi i32 [ %i.aqx, %.lr.ph.i.i.i.i.i.i.i588 ], [ %.01.i.i.i.i.i.i.i589.unr, %.lr.ph.i.i.i.i.i.i.i588.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.aqx = add nsw i32 %.01.i.i.i.i.i.i.i589, -8
  call void @llvm.x86.sse2.pause()
  %i.aqy = icmp sgt i32 %.01.i.i.i.i.i.i.i589, 8
  br i1 %i.aqy, label %.lr.ph.i.i.i.i.i.i.i588, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i587, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i587: ; preds = %.lr.ph.i.i.i.i.i.i.i588.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i588, %bb.fo
  %i.aqz = shl i32 %.sroa.0.02.i.i.i.i.i584, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i585

bb.fp:                                            ; preds = %.lr.ph.i.i.i.i.i583
  %i.ara = call noundef i32 @sched_yield() #23    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i585

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i585: ; preds = %bb.fp, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i587
  %.sroa.0.1.i.i.i.i.i586 = phi i32 [ %i.aqz, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i587 ], [ %.sroa.0.02.i.i.i.i.i584, %bb.fp ]
  %i.arb = atomicrmw xchg ptr %i.aqq, i8 1 seq_cst, align 1
  %i.arc = trunc i8 %i.arb to i1
  br i1 %i.arc, label %.lr.ph.i.i.i.i.i583, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i580, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i580: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i585, %bb.fn
  %i.ard = load ptr, ptr %i.aql, align 8, !tbaa !570 ; 2 uses
  %i.are = icmp eq ptr %i.ard, null
  br i1 %i.are, label %bb.fq, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i581

bb.fq:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i580
  %i.arf = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #30
          to label %bb.fr unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i582 ; 2 uses

bb.fr:                                            ; preds = %bb.fq
  store ptr %i.arf, ptr %i.aql, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i581

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i582: ; preds = %bb.fq
  %i.arg = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.aqq release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i581: ; preds = %bb.fr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i580
  %i.arh = phi ptr [ %i.arf, %bb.fr ], [ %i.ard, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i580 ]
  store atomic i8 0, ptr %i.aqq release, align 4
  br label %.thread.i134.sink.split

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread.i218: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i217
  %i.ari = load i32, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8, !tbaa !543
  %i.arj = icmp eq i32 %i.aop, %i.ari
  %i.ark = load i32, ptr %i.ap, align 4
  %i.arl = icmp eq i32 %i.aoq, %i.ark
  %or.cond1301 = select i1 %i.arj, i1 %i.arl, i1 false
  %i.arm = and i32 %.sroa.211068.012641704, -4096 ; 4 uses
  %i.arn = icmp eq i32 %i.arm, %i.apo
  %or.cond1303 = select i1 %or.cond1301, i1 %i.arn, i1 false
  br i1 %or.cond1303, label %bb.fs, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i219

bb.fs:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread.i218
  %i.aro = load ptr, ptr %i.aq, align 8, !tbaa !3920 ; 2 uses
  %i.arp = lshr i32 %.sroa.211068.012641704, 7
  %i.arq = and i32 %i.arp, 31
  %i.arr = or disjoint i32 %i.arq, %i.apb         ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aro, i64 262144
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %i.ars, i64 %i.apd
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !791
  %i.arv = and i32 %i.arr, 63
  %i.arw = zext nneg i32 %i.arv to i64
  %i.arx = shl nuw i64 1, %i.arw
  %i.ary = and i64 %i.aru, %i.arx
  %.not.i.i.i.i222 = icmp eq i64 %i.ary, 0
  br i1 %.not.i.i.i.i222, label %.noexc135.thread, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.arz = zext nneg i32 %i.arr to i64
  %i.asa = getelementptr inbounds nuw [8 x i8], ptr %i.aro, i64 %i.arz
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !570 ; 3 uses
  store i64 %.sroa.0.0.insert.insert.i.i.i540, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  store i32 %i.apw, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  store ptr %i.asb, ptr %i.ar, align 8, !tbaa !3930
  %i.asc = lshr i32 %.sroa.211068.012641704, 3
  %i.asd = and i32 %i.asc, 15
  %i.ase = or disjoint i32 %i.asd, %i.api         ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asb, i64 32768
  %i.asg = getelementptr inbounds nuw [8 x i8], ptr %i.asf, i64 %i.apk
  %i.ash = load i64, ptr %i.asg, align 8, !tbaa !791
  %i.asi = and i32 %i.ase, 63
  %i.asj = zext nneg i32 %i.asi to i64
  %i.ask = shl nuw i64 1, %i.asj
  %i.asl = and i64 %i.ash, %i.ask
  %.not.i.i546 = icmp eq i64 %i.asl, 0
  br i1 %.not.i.i546, label %.noexc135.thread, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.asm = zext nneg i32 %i.ase to i64
  %i.asn = getelementptr inbounds nuw [8 x i8], ptr %i.asb, i64 %i.asm
  %i.aso = load ptr, ptr %i.asn, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i550 = and i64 %i.aoe, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i550, ptr %i.ad, align 8
  store i32 %i.apq, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.aso, ptr %i.as, align 8, !tbaa !4024
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 8
  %i.asq = load atomic i32, ptr %i.asp seq_cst, align 4
  %.not.i.i.i552 = icmp eq i32 %i.asq, 0
  br i1 %.not.i.i.i552, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i553, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.aso)
end_hunk_3
begin_hunk_4_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.auh = icmp eq ptr %.19.i.i.i.i.i525, %i.aov
  br i1 %i.auh, label %.noexc135.thread, label %bb.gf

bb.gf:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i528
  %i.aui = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i525, i64 32
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !543 ; 2 uses
  %i.auk = icmp slt i32 %i.atu, %i.auj
  br i1 %i.auk, label %.noexc135.thread, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aul = icmp sgt i32 %i.atu, %i.auj
  br i1 %i.aul, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aum = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i525, i64 36
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !543 ; 2 uses
  %i.auo = icmp slt i32 %i.atp, %i.aun
  br i1 %i.auo, label %.noexc135.thread, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aup = icmp sgt i32 %i.atp, %i.aun
  br i1 %i.aup, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i529

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i529: ; preds = %bb.gi
  %i.auq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i525, i64 40
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !543
  %i.aus = icmp slt i32 %i.atq, %i.aur
  br i1 %i.aus, label %.noexc135.thread, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i529, %bb.gi, %bb.gg
  %i.aut = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i525, i64 48
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !3886 ; 4 uses
  %i.auv = icmp eq ptr %i.auu, null
  br i1 %i.auv, label %.noexc135.thread, label %bb.gj

bb.gj:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530
  store i64 %.sroa.0.0.insert.insert.i.i534, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  store i32 %i.arm, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.auu, ptr %i.aq, align 8, !tbaa !3920
  %i.auw = lshr i32 %.sroa.211068.012641704, 7
  %i.aux = and i32 %i.auw, 31
  %i.auy = or disjoint i32 %i.aux, %i.apb         ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auu, i64 262144
  %i.ava = getelementptr inbounds nuw [8 x i8], ptr %i.auz, i64 %i.apd
  %i.avb = load i64, ptr %i.ava, align 8, !tbaa !791
  %i.avc = and i32 %i.auy, 63
  %i.avd = zext nneg i32 %i.avc to i64
  %i.ave = shl nuw i64 1, %i.avd
  %i.avf = and i64 %i.avb, %i.ave
  %.not.i.i.i536 = icmp eq i64 %i.avf, 0
  br i1 %.not.i.i.i536, label %.noexc135.thread, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.avg = zext nneg i32 %i.auy to i64
  %i.avh = getelementptr inbounds nuw [8 x i8], ptr %i.auu, i64 %i.avg
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !570 ; 3 uses
  store i64 %.sroa.0.0.insert.insert.i.i.i540, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  store i32 %i.apw, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  store ptr %i.avi, ptr %i.ar, align 8, !tbaa !3930
  %i.avj = lshr i32 %.sroa.211068.012641704, 3
  %i.avk = and i32 %i.avj, 15
  %i.avl = or disjoint i32 %i.avk, %i.api         ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avi, i64 32768
  %i.avn = getelementptr inbounds nuw [8 x i8], ptr %i.avm, i64 %i.apk
  %i.avo = load i64, ptr %i.avn, align 8, !tbaa !791
  %i.avp = and i32 %i.avl, 63
  %i.avq = zext nneg i32 %i.avp to i64
  %i.avr = shl nuw i64 1, %i.avq
  %i.avs = and i64 %i.avo, %i.avr
  %.not.i.i766 = icmp eq i64 %i.avs, 0
  br i1 %.not.i.i766, label %.noexc135.thread, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.avt = zext nneg i32 %i.avl to i64
  %i.avu = getelementptr inbounds nuw [8 x i8], ptr %i.avi, i64 %i.avt
  %i.avv = load ptr, ptr %i.avu, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i770 = and i64 %i.aoe, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i770, ptr %i.ad, align 8
  store i32 %i.apq, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.avv, ptr %i.as, align 8, !tbaa !4024
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 8
  %i.avx = load atomic i32, ptr %i.avw seq_cst, align 4
  %.not.i.i.i772 = icmp eq i32 %i.avx, 0
  br i1 %.not.i.i.i772, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i773, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.avv)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i773 unwind label %bb.ib

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i773: ; preds = %bb.gm, %bb.gl
  %i.avy = load ptr, ptr %i.avv, align 8, !tbaa !570 ; 2 uses
  %i.avz = icmp eq ptr %i.avy, null
  br i1 %i.avz, label %bb.gn, label %.thread.i134.sink.split

bb.gn:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i773
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avv, i64 12 ; 4 uses
  %i.awb = atomicrmw xchg ptr %i.awa, i8 1 seq_cst, align 1
  %i.awc = trunc i8 %i.awb to i1
  br i1 %i.awc, label %.lr.ph.i.i.i.i.i779, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i776

.lr.ph.i.i.i.i.i779:                              ; preds = %bb.gn, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i781
  %.sroa.0.02.i.i.i.i.i780 = phi i32 [ %.sroa.0.1.i.i.i.i.i782, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i781 ], [ 1, %bb.gn ] ; 8 uses
  %i.awd = icmp slt i32 %.sroa.0.02.i.i.i.i.i780, 17
  br i1 %i.awd, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %.lr.ph.i.i.i.i.i779
  %i.awe = icmp sgt i32 %.sroa.0.02.i.i.i.i.i780, 0
  br i1 %i.awe, label %.lr.ph.i.i.i.i.i.i.i784.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i783

.lr.ph.i.i.i.i.i.i.i784.preheader:                ; preds = %bb.go
  %xtraiter1822 = and i32 %.sroa.0.02.i.i.i.i.i780, 7 ; 2 uses
  %lcmp.mod1823.not = icmp eq i32 %xtraiter1822, 0
  br i1 %lcmp.mod1823.not, label %.lr.ph.i.i.i.i.i.i.i784.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i784.prol

.lr.ph.i.i.i.i.i.i.i784.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i784.preheader, %.lr.ph.i.i.i.i.i.i.i784.prol
  %.01.i.i.i.i.i.i.i785.prol = phi i32 [ %i.awf, %.lr.ph.i.i.i.i.i.i.i784.prol ], [ %.sroa.0.02.i.i.i.i.i780, %.lr.ph.i.i.i.i.i.i.i784.preheader ]
  %prol.iter1824 = phi i32 [ %prol.iter1824.next, %.lr.ph.i.i.i.i.i.i.i784.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i784.preheader ]
  %i.awf = add nsw i32 %.01.i.i.i.i.i.i.i785.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter1824.next = add i32 %prol.iter1824, 1 ; 2 uses
  %prol.iter1824.cmp.not = icmp eq i32 %prol.iter1824.next, %xtraiter1822
  br i1 %prol.iter1824.cmp.not, label %.lr.ph.i.i.i.i.i.i.i784.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i784.prol, !llvm.loop !11823

.lr.ph.i.i.i.i.i.i.i784.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i784.prol, %.lr.ph.i.i.i.i.i.i.i784.preheader
  %.01.i.i.i.i.i.i.i785.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i780, %.lr.ph.i.i.i.i.i.i.i784.preheader ], [ %i.awf, %.lr.ph.i.i.i.i.i.i.i784.prol ]
  %i.awg = icmp ult i32 %.sroa.0.02.i.i.i.i.i780, 8
  br i1 %i.awg, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i783, label %.lr.ph.i.i.i.i.i.i.i784

.lr.ph.i.i.i.i.i.i.i784:                          ; preds = %.lr.ph.i.i.i.i.i.i.i784.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i784
  %.01.i.i.i.i.i.i.i785 = phi i32 [ %i.awh, %.lr.ph.i.i.i.i.i.i.i784 ], [ %.01.i.i.i.i.i.i.i785.unr, %.lr.ph.i.i.i.i.i.i.i784.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.awh = add nsw i32 %.01.i.i.i.i.i.i.i785, -8
  call void @llvm.x86.sse2.pause()
  %i.awi = icmp sgt i32 %.01.i.i.i.i.i.i.i785, 8
  br i1 %i.awi, label %.lr.ph.i.i.i.i.i.i.i784, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i783, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i783: ; preds = %.lr.ph.i.i.i.i.i.i.i784.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i784, %bb.go
  %i.awj = shl i32 %.sroa.0.02.i.i.i.i.i780, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i781

bb.gp:                                            ; preds = %.lr.ph.i.i.i.i.i779
  %i.awk = call noundef i32 @sched_yield() #23    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i781

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i781: ; preds = %bb.gp, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i783
  %.sroa.0.1.i.i.i.i.i782 = phi i32 [ %i.awj, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i783 ], [ %.sroa.0.02.i.i.i.i.i780, %bb.gp ]
  %i.awl = atomicrmw xchg ptr %i.awa, i8 1 seq_cst, align 1
  %i.awm = trunc i8 %i.awl to i1
  br i1 %i.awm, label %.lr.ph.i.i.i.i.i779, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i776, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i776: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i781, %bb.gn
  %i.awn = load ptr, ptr %i.avv, align 8, !tbaa !570 ; 2 uses
  %i.awo = icmp eq ptr %i.awn, null
  br i1 %i.awo, label %bb.gq, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i777

bb.gq:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i776
  %i.awp = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #30
          to label %bb.gr unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i778 ; 2 uses

bb.gr:                                            ; preds = %bb.gq
  store ptr %i.awp, ptr %i.avv, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i777

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i778: ; preds = %bb.gq
  %i.awq = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.awa release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i777: ; preds = %bb.gr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i776
  %i.awr = phi ptr [ %i.awp, %bb.gr ], [ %i.awn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i776 ]
  store atomic i8 0, ptr %i.awa release, align 4
  br label %.thread.i134.sink.split

.noexc135:                                        ; preds = %bb.fj
  br i1 %.not.i133, label %.noexc135.thread, label %.thread.i134

.thread.i134.sink.split:                          ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i773, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i777, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i553, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i557, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i577, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i581
  %.sink1623 = phi ptr [ %i.asr, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i553 ], [ %i.aqo, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i577 ], [ %i.arh, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i581 ], [ %i.atk, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i557 ], [ %i.awr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i777 ], [ %i.avy, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i773 ]
  %.0.i.i2201157.ph = phi ptr [ %i.aso, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i553 ], [ %i.aql, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i577 ], [ %i.aql, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i581 ], [ %i.aso, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i557 ], [ %i.avv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i777 ], [ %i.avv, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i773 ]
  store ptr %.sink1623, ptr %i.ac, align 8, !tbaa !4540
  br label %.thread.i134

.thread.i134:                                     ; preds = %.noexc135, %.thread.i134.sink.split
  %.0.i.i2201157 = phi ptr [ %.0.i.i2201157.ph, %.thread.i134.sink.split ], [ %i.apl, %.noexc135 ]
  %i.aws = getelementptr inbounds nuw i8, ptr %.0.i.i2201157, i64 80
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !543
  %i.awu = sext i32 %i.awt to i64
  br label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136

.noexc135.thread:                                 ; preds = %bb.gk, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i529, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i528, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i219, %bb.gf, %bb.gj, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530, %bb.gh, %bb.fk, %bb.ft, %bb.fs, %.noexc135
  %i.awv = phi i32 [ %i.arm, %bb.gk ], [ %i.apo, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i529 ], [ %i.apo, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i528 ], [ %i.apo, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i219 ], [ %i.apo, %bb.gf ], [ %i.arm, %bb.gj ], [ %i.apo, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530 ], [ %i.apo, %bb.gh ], [ %i.apo, %bb.fk ], [ %i.apo, %bb.ft ], [ %i.apo, %bb.fs ], [ %i.apo, %.noexc135 ]
  %i.aww = phi i32 [ %i.apw, %bb.gk ], [ %i.app, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i529 ], [ %i.app, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i528 ], [ %i.app, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i219 ], [ %i.app, %bb.gf ], [ %i.app, %bb.gj ], [ %i.app, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i530 ], [ %i.app, %bb.gh ], [ %i.app, %bb.fk ], [ %i.apw, %bb.ft ], [ %i.app, %bb.fs ], [ %i.app, %.noexc135 ]
  %.sroa.211068.01264 = add nsw i32 %.sroa.211068.012641704, 8 ; 2 uses
  %.not = icmp slt i32 %.sroa.8.0.copyload.i126, %.sroa.211068.01264
  br i1 %.not, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136, label %bb.fj

_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136: ; preds = %.noexc135.thread, %.lr.ph1705, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.preheader, %.lr.ph.i127.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.lr.ph, %.thread.i134, %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit110
  %.2.i132 = phi i64 [ %i.awu, %.thread.i134 ], [ -1, %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit110 ], [ -1, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.lr.ph ], [ -1, %.lr.ph.i127.preheader ], [ -1, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i128.preheader ], [ -1, %.lr.ph1705 ], [ -1, %.noexc135.thread ]
  %i.awx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01273
  store i64 %.2.i132, ptr %i.awx, align 8, !tbaa !791
  %i.awy = load i64, ptr %i.az, align 4           ; 7 uses
  %i.awz = trunc i64 %i.awy to i32                ; 8 uses
  %i.axa = lshr i64 %i.awy, 32
  %i.axb = trunc nuw i64 %i.axa to i32            ; 8 uses
  %.sroa.0.0.copyload.i142 = load i32, ptr %i.am, align 8
  %.sroa.5.0.copyload.i146 = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !570 ; 2 uses
  %.sroa.6.0.copyload.i148 = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0.copyload.i150 = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0.copyload.i152 = load i32, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !570
  %i.axc = icmp sgt i32 %.sroa.0.0.copyload.i142, %i.awz
  br i1 %i.axc, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136
  %.sroa.4.0.copyload.i144 = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.axd = icmp sgt i32 %.sroa.4.0.copyload.i144, %i.axb
  br i1 %i.axd, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.lr.ph

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.lr.ph: ; preds = %.lr.ph.i153.preheader
  %11 = load i32, ptr %i.bd, align 4, !tbaa !543  ; 2 uses
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.promoted1268 = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.promoted1267 = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4
  %i.axe = icmp sge i32 %.sroa.6.0.copyload.i148, %i.awz
  %i.axf = icmp sge i32 %.sroa.7.0.copyload.i150, %i.axb
  %12 = and i32 %i.awz, -8
  %13 = load i32, ptr %i.ad, align 8
  %14 = icmp eq i32 %12, %13
  %15 = and i32 %i.axb, -8
  %16 = load i32, ptr %i.an, align 4
  %17 = icmp eq i32 %15, %16
  %i.axg = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.axh = and i32 %i.awz, -128
  %i.axi = and i32 %i.axb, -128
  %i.axj = and i32 %i.awz, -4096
  %i.axk = and i32 %i.axb, -4096
  %i.axl = load ptr, ptr %i.ae, align 8           ; 5 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 60
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axl, i64 64
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axl, i64 16
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axl, i64 8 ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axl, i64 56
  %.sroa.0.0.insert.insert.i.i610 = and i64 %i.awy, -17587891081216
  %i.axr = shl i32 %i.awz, 3
  %i.axs = and i32 %i.axr, 31744
  %i.axt = lshr i32 %i.axb, 2
  %i.axu = and i32 %i.axt, 992
  %i.axv = or disjoint i32 %i.axu, %i.axs         ; 3 uses
  %i.axw = lshr i32 %i.axv, 6
  %i.axx = zext nneg i32 %i.axw to i64            ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i616 = and i64 %i.awy, -545460846720 ; 2 uses
  %i.axy = shl i32 %i.awz, 5
  %i.axz = and i32 %i.axy, 3840
  %i.aya = shl i32 %i.axb, 1
  %i.ayb = and i32 %i.aya, 240
  %i.ayc = or disjoint i32 %i.ayb, %i.axz         ; 4 uses
  %i.ayd = lshr i32 %i.ayc, 6
  %i.aye = zext nneg i32 %i.ayd to i64            ; 3 uses
  %i.ayf = load ptr, ptr %i.as, align 8           ; 2 uses
  %.not.i159 = icmp eq ptr %i.ayf, null
  %.fr1271 = freeze i1 %i.axf
  %.fr1272 = freeze i1 %i.axe
  %i.ayg = and i1 %.fr1271, %.fr1272
  br i1 %i.ayg, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.preheader, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.preheader: ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.lr.ph
  %i.ayh = add i32 %11, -8
  %i.ayi = icmp sle i32 %i.ayh, %.sroa.8.0.copyload.i152
  %.fr1403 = freeze i1 %i.ayi
  br i1 %.fr1403, label %.lr.ph1709, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162

.lr.ph1709:                                       ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.preheader
  %brmerge1306.not1320 = select i1 %14, i1 %17, i1 false
  %.sroa.211114.012701709 = add nsw i32 %11, -8   ; 2 uses
  %.not15451710 = icmp slt i32 %.sroa.211114.012701709, %.sroa.5.0.copyload.i146
  br i1 %.not15451710, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph1709, %.noexc161.thread
  %.sroa.211114.012701708 = phi i32 [ %.sroa.211114.01270, %.noexc161.thread ], [ %.sroa.211114.012701709, %.lr.ph1709 ] ; 10 uses
  %i.ayj = phi i32 [ %i.bfq, %.noexc161.thread ], [ %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.promoted1268, %.lr.ph1709 ] ; 11 uses
  %i.ayk = phi i32 [ %i.bfr, %.noexc161.thread ], [ %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.promoted1267, %.lr.ph1709 ] ; 11 uses
  %i.ayl = and i32 %.sroa.211114.012701708, -8    ; 4 uses
  %i.aym = icmp eq i32 %i.ayl, %i.axg
  %or.cond1308 = select i1 %brmerge1306.not1320, i1 %i.aym, i1 false
  br i1 %or.cond1308, label %.noexc161, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i234

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i234: ; preds = %bb.gs
  %i.ayn = load i32, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4, !tbaa !543
  %i.ayo = icmp eq i32 %i.axh, %i.ayn
  %i.ayp = load i32, ptr %i.ao, align 8
  %i.ayq = icmp eq i32 %i.axi, %i.ayp
  %or.cond1310 = select i1 %i.ayo, i1 %i.ayq, i1 false
  %i.ayr = and i32 %.sroa.211114.012701708, -128  ; 5 uses
  %i.ays = icmp eq i32 %i.ayr, %i.ayk
  %or.cond1312 = select i1 %or.cond1310, i1 %i.ays, i1 false
  br i1 %or.cond1312, label %bb.gt, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread.i235

bb.gt:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i234
  %i.ayt = load ptr, ptr %i.ar, align 8, !tbaa !3930 ; 2 uses
  %i.ayu = lshr i32 %.sroa.211114.012701708, 3
  %i.ayv = and i32 %i.ayu, 15
  %i.ayw = or disjoint i32 %i.ayv, %i.ayc         ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayt, i64 32768
  %i.ayy = getelementptr inbounds nuw [8 x i8], ptr %i.ayx, i64 %i.aye
  %i.ayz = load i64, ptr %i.ayy, align 8, !tbaa !791
  %i.aza = and i32 %i.ayw, 63
  %i.azb = zext nneg i32 %i.aza to i64
  %i.azc = shl nuw i64 1, %i.azb
  %i.azd = and i64 %i.ayz, %i.azc
  %.not.i.i646 = icmp eq i64 %i.azd, 0
  br i1 %.not.i.i646, label %.noexc161.thread, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aze = zext nneg i32 %i.ayw to i64
  %i.azf = getelementptr inbounds nuw [8 x i8], ptr %i.ayt, i64 %i.aze
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i650 = and i64 %i.awy, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i650, ptr %i.ad, align 8
  store i32 %i.ayl, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.azg, ptr %i.as, align 8, !tbaa !4024
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 8
  %i.azi = load atomic i32, ptr %i.azh seq_cst, align 4
  %.not.i.i.i652 = icmp eq i32 %i.azi, 0
  br i1 %.not.i.i.i652, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i653, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.azg)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i653 unwind label %bb.ib

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i653: ; preds = %bb.gv, %bb.gu
  %i.azj = load ptr, ptr %i.azg, align 8, !tbaa !570 ; 2 uses
  %i.azk = icmp eq ptr %i.azj, null
  br i1 %i.azk, label %bb.gw, label %.thread.i160.sink.split

bb.gw:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i653
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azg, i64 12 ; 4 uses
  %i.azm = atomicrmw xchg ptr %i.azl, i8 1 seq_cst, align 1
  %i.azn = trunc i8 %i.azm to i1
  br i1 %i.azn, label %.lr.ph.i.i.i.i.i659, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i656

.lr.ph.i.i.i.i.i659:                              ; preds = %bb.gw, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i661
  %.sroa.0.02.i.i.i.i.i660 = phi i32 [ %.sroa.0.1.i.i.i.i.i662, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i661 ], [ 1, %bb.gw ] ; 8 uses
  %i.azo = icmp slt i32 %.sroa.0.02.i.i.i.i.i660, 17
  br i1 %i.azo, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %.lr.ph.i.i.i.i.i659
  %i.azp = icmp sgt i32 %.sroa.0.02.i.i.i.i.i660, 0
  br i1 %i.azp, label %.lr.ph.i.i.i.i.i.i.i664.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i663

.lr.ph.i.i.i.i.i.i.i664.preheader:                ; preds = %bb.gx
  %xtraiter1837.a = and i32 %.sroa.0.02.i.i.i.i.i660, 7 ; 2 uses
  %lcmp.mod1838.not.a = icmp eq i32 %xtraiter1837.a, 0
  br i1 %lcmp.mod1838.not.a, label %.lr.ph.i.i.i.i.i.i.i664.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i664.prol

.lr.ph.i.i.i.i.i.i.i664.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i664.preheader, %.lr.ph.i.i.i.i.i.i.i664.prol
  %.01.i.i.i.i.i.i.i665.prol = phi i32 [ %i.azq, %.lr.ph.i.i.i.i.i.i.i664.prol ], [ %.sroa.0.02.i.i.i.i.i660, %.lr.ph.i.i.i.i.i.i.i664.preheader ]
  %prol.iter1839.a = phi i32 [ %prol.iter1839.next.a, %.lr.ph.i.i.i.i.i.i.i664.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i664.preheader ]
  %i.azq = add nsw i32 %.01.i.i.i.i.i.i.i665.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter1839.next.a = add i32 %prol.iter1839.a, 1 ; 2 uses
  %prol.iter1839.cmp.not.a = icmp eq i32 %prol.iter1839.next.a, %xtraiter1837.a
  br i1 %prol.iter1839.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.i664.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i664.prol, !llvm.loop !11824

.lr.ph.i.i.i.i.i.i.i664.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i664.prol, %.lr.ph.i.i.i.i.i.i.i664.preheader
  %.01.i.i.i.i.i.i.i665.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i660, %.lr.ph.i.i.i.i.i.i.i664.preheader ], [ %i.azq, %.lr.ph.i.i.i.i.i.i.i664.prol ]
  %i.azr = icmp ult i32 %.sroa.0.02.i.i.i.i.i660, 8
  br i1 %i.azr, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i663, label %.lr.ph.i.i.i.i.i.i.i664

.lr.ph.i.i.i.i.i.i.i664:                          ; preds = %.lr.ph.i.i.i.i.i.i.i664.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i664
  %.01.i.i.i.i.i.i.i665 = phi i32 [ %i.azs, %.lr.ph.i.i.i.i.i.i.i664 ], [ %.01.i.i.i.i.i.i.i665.unr, %.lr.ph.i.i.i.i.i.i.i664.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.azs = add nsw i32 %.01.i.i.i.i.i.i.i665, -8
  call void @llvm.x86.sse2.pause()
  %i.azt = icmp sgt i32 %.01.i.i.i.i.i.i.i665, 8
  br i1 %i.azt, label %.lr.ph.i.i.i.i.i.i.i664, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i663, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i663: ; preds = %.lr.ph.i.i.i.i.i.i.i664.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i664, %bb.gx
  %i.azu = shl i32 %.sroa.0.02.i.i.i.i.i660, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i661

bb.gy:                                            ; preds = %.lr.ph.i.i.i.i.i659
  %i.azv = call noundef i32 @sched_yield() #23    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i661

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i661: ; preds = %bb.gy, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i663
  %.sroa.0.1.i.i.i.i.i662 = phi i32 [ %i.azu, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i663 ], [ %.sroa.0.02.i.i.i.i.i660, %bb.gy ]
  %i.azw = atomicrmw xchg ptr %i.azl, i8 1 seq_cst, align 1
  %i.azx = trunc i8 %i.azw to i1
  br i1 %i.azx, label %.lr.ph.i.i.i.i.i659, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i656, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i656: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i661, %bb.gw
  %i.azy = load ptr, ptr %i.azg, align 8, !tbaa !570 ; 2 uses
  %i.azz = icmp eq ptr %i.azy, null
  br i1 %i.azz, label %bb.gz, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i657

bb.gz:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i656
  %i.baa = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #30
          to label %bb.ha unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i658 ; 2 uses

bb.ha:                                            ; preds = %bb.gz
  store ptr %i.baa, ptr %i.azg, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i657

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i658: ; preds = %bb.gz
  %i.bab = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.azl release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i657: ; preds = %bb.ha, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i656
  %i.bac = phi ptr [ %i.baa, %bb.ha ], [ %i.azy, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i656 ]
  store atomic i8 0, ptr %i.azl release, align 4
  br label %.thread.i160.sink.split

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread.i235: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm0EEEEbSH_.exit.thread.i234
  %i.bad = load i32, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8, !tbaa !543
  %i.bae = icmp eq i32 %i.axj, %i.bad
  %i.baf = load i32, ptr %i.ap, align 4
  %i.bag = icmp eq i32 %i.axk, %i.baf
  %or.cond1314 = select i1 %i.bae, i1 %i.bag, i1 false
  %i.bah = and i32 %.sroa.211114.012701708, -4096 ; 4 uses
  %i.bai = icmp eq i32 %i.bah, %i.ayj
  %or.cond1316 = select i1 %or.cond1314, i1 %i.bai, i1 false
  br i1 %or.cond1316, label %bb.hb, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i236

bb.hb:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordEENKUlSH_E_clISt17integral_constantImLm1EEEEbSH_.exit.thread.i235
  %i.baj = load ptr, ptr %i.aq, align 8, !tbaa !3920 ; 2 uses
  %i.bak = lshr i32 %.sroa.211114.012701708, 7
  %i.bal = and i32 %i.bak, 31
  %i.bam = or disjoint i32 %i.bal, %i.axv         ; 2 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %i.baj, i64 262144
  %i.bao = getelementptr inbounds nuw [8 x i8], ptr %i.ban, i64 %i.axx
  %i.bap = load i64, ptr %i.bao, align 8, !tbaa !791
  %i.baq = and i32 %i.bam, 63
  %i.bar = zext nneg i32 %i.baq to i64
  %i.bas = shl nuw i64 1, %i.bar
  %i.bat = and i64 %i.bap, %i.bas
  %.not.i.i.i.i239 = icmp eq i64 %i.bat, 0
  br i1 %.not.i.i.i.i239, label %.noexc161.thread, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bau = zext nneg i32 %i.bam to i64
  %i.bav = getelementptr inbounds nuw [8 x i8], ptr %i.baj, i64 %i.bau
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !570 ; 3 uses
  store i64 %.sroa.0.0.insert.insert.i.i.i616, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  store i32 %i.ayr, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  store ptr %i.baw, ptr %i.ar, align 8, !tbaa !3930
  %i.bax = lshr i32 %.sroa.211114.012701708, 3
  %i.bay = and i32 %i.bax, 15
  %i.baz = or disjoint i32 %i.bay, %i.ayc         ; 2 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baw, i64 32768
  %i.bbb = getelementptr inbounds nuw [8 x i8], ptr %i.bba, i64 %i.aye
  %i.bbc = load i64, ptr %i.bbb, align 8, !tbaa !791
  %i.bbd = and i32 %i.baz, 63
  %i.bbe = zext nneg i32 %i.bbd to i64
  %i.bbf = shl nuw i64 1, %i.bbe
  %i.bbg = and i64 %i.bbc, %i.bbf
  %.not.i.i622 = icmp eq i64 %i.bbg, 0
  br i1 %.not.i.i622, label %.noexc161.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.bbh = zext nneg i32 %i.baz to i64
  %i.bbi = getelementptr inbounds nuw [8 x i8], ptr %i.baw, i64 %i.bbh
  %i.bbj = load ptr, ptr %i.bbi, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i626 = and i64 %i.awy, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i626, ptr %i.ad, align 8
  store i32 %i.ayl, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.bbj, ptr %i.as, align 8, !tbaa !4024
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 8
  %i.bbl = load atomic i32, ptr %i.bbk seq_cst, align 4
  %.not.i.i.i628 = icmp eq i32 %i.bbl, 0
  br i1 %.not.i.i.i628, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i629, label %bb.he

bb.he:                                            ; preds = %bb.hd
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.bbj)
end_hunk_4
begin_hunk_5_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.bdc = icmp eq ptr %.19.i.i.i.i.i601, %i.axp
  br i1 %i.bdc, label %.noexc161.thread, label %bb.ho

bb.ho:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i604
  %i.bdd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i601, i64 32
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !543 ; 2 uses
  %i.bdf = icmp slt i32 %i.bcp, %i.bde
  br i1 %i.bdf, label %.noexc161.thread, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.bdg = icmp sgt i32 %i.bcp, %i.bde
  br i1 %i.bdg, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.bdh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i601, i64 36
  %i.bdi = load i32, ptr %i.bdh, align 4, !tbaa !543 ; 2 uses
  %i.bdj = icmp slt i32 %i.bck, %i.bdi
  br i1 %i.bdj, label %.noexc161.thread, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bdk = icmp sgt i32 %i.bck, %i.bdi
  br i1 %i.bdk, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i605

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i605: ; preds = %bb.hr
  %i.bdl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i601, i64 40
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !543
  %i.bdn = icmp slt i32 %i.bcl, %i.bdm
  br i1 %i.bdn, label %.noexc161.thread, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i605, %bb.hr, %bb.hp
  %i.bdo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i601, i64 48
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !3886 ; 4 uses
  %i.bdq = icmp eq ptr %i.bdp, null
  br i1 %i.bdq, label %.noexc161.thread, label %bb.hs

bb.hs:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606
  store i64 %.sroa.0.0.insert.insert.i.i610, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  store i32 %i.bah, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.bdp, ptr %i.aq, align 8, !tbaa !3920
  %i.bdr = lshr i32 %.sroa.211114.012701708, 7
  %i.bds = and i32 %i.bdr, 31
  %i.bdt = or disjoint i32 %i.bds, %i.axv         ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdp, i64 262144
  %i.bdv = getelementptr inbounds nuw [8 x i8], ptr %i.bdu, i64 %i.axx
  %i.bdw = load i64, ptr %i.bdv, align 8, !tbaa !791
  %i.bdx = and i32 %i.bdt, 63
  %i.bdy = zext nneg i32 %i.bdx to i64
  %i.bdz = shl nuw i64 1, %i.bdy
  %i.bea = and i64 %i.bdw, %i.bdz
  %.not.i.i.i612 = icmp eq i64 %i.bea, 0
  br i1 %.not.i.i.i612, label %.noexc161.thread, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.beb = zext nneg i32 %i.bdt to i64
  %i.bec = getelementptr inbounds nuw [8 x i8], ptr %i.bdp, i64 %i.beb
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !570 ; 3 uses
  store i64 %.sroa.0.0.insert.insert.i.i.i616, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  store i32 %i.ayr, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  store ptr %i.bed, ptr %i.ar, align 8, !tbaa !3930
  %i.bee = lshr i32 %.sroa.211114.012701708, 3
  %i.bef = and i32 %i.bee, 15
  %i.beg = or disjoint i32 %i.bef, %i.ayc         ; 2 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bed, i64 32768
  %i.bei = getelementptr inbounds nuw [8 x i8], ptr %i.beh, i64 %i.aye
  %i.bej = load i64, ptr %i.bei, align 8, !tbaa !791
  %i.bek = and i32 %i.beg, 63
  %i.bel = zext nneg i32 %i.bek to i64
  %i.bem = shl nuw i64 1, %i.bel
  %i.ben = and i64 %i.bej, %i.bem
  %.not.i.i790 = icmp eq i64 %i.ben, 0
  br i1 %.not.i.i790, label %.noexc161.thread, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.beo = zext nneg i32 %i.beg to i64
  %i.bep = getelementptr inbounds nuw [8 x i8], ptr %i.bed, i64 %i.beo
  %i.beq = load ptr, ptr %i.bep, align 8, !tbaa !570 ; 9 uses
  %.sroa.0.0.insert.insert.i.i794 = and i64 %i.awy, -30064771080
  store i64 %.sroa.0.0.insert.insert.i.i794, ptr %i.ad, align 8
  store i32 %i.ayl, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  store ptr %i.beq, ptr %i.as, align 8, !tbaa !4024
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 8
  %i.bes = load atomic i32, ptr %i.ber seq_cst, align 4
  %.not.i.i.i796 = icmp eq i32 %i.bes, 0
  br i1 %.not.i.i.i796, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i797, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.beq)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i797 unwind label %bb.ib

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i797: ; preds = %bb.hv, %bb.hu
  %i.bet = load ptr, ptr %i.beq, align 8, !tbaa !570 ; 2 uses
  %i.beu = icmp eq ptr %i.bet, null
  br i1 %i.beu, label %bb.hw, label %.thread.i160.sink.split

bb.hw:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i797
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beq, i64 12 ; 4 uses
  %i.bew = atomicrmw xchg ptr %i.bev, i8 1 seq_cst, align 1
  %i.bex = trunc i8 %i.bew to i1
  br i1 %i.bex, label %.lr.ph.i.i.i.i.i803, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i800

.lr.ph.i.i.i.i.i803:                              ; preds = %bb.hw, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i805
  %.sroa.0.02.i.i.i.i.i804 = phi i32 [ %.sroa.0.1.i.i.i.i.i806, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i805 ], [ 1, %bb.hw ] ; 8 uses
  %i.bey = icmp slt i32 %.sroa.0.02.i.i.i.i.i804, 17
  br i1 %i.bey, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %.lr.ph.i.i.i.i.i803
  %i.bez = icmp sgt i32 %.sroa.0.02.i.i.i.i.i804, 0
  br i1 %i.bez, label %.lr.ph.i.i.i.i.i.i.i808.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i807

.lr.ph.i.i.i.i.i.i.i808.preheader:                ; preds = %bb.hx
  %xtraiter1831 = and i32 %.sroa.0.02.i.i.i.i.i804, 7 ; 2 uses
  %lcmp.mod1832.not = icmp eq i32 %xtraiter1831, 0
  br i1 %lcmp.mod1832.not, label %.lr.ph.i.i.i.i.i.i.i808.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i808.prol

.lr.ph.i.i.i.i.i.i.i808.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i808.preheader, %.lr.ph.i.i.i.i.i.i.i808.prol
  %.01.i.i.i.i.i.i.i809.prol = phi i32 [ %i.bfa, %.lr.ph.i.i.i.i.i.i.i808.prol ], [ %.sroa.0.02.i.i.i.i.i804, %.lr.ph.i.i.i.i.i.i.i808.preheader ]
  %prol.iter1833 = phi i32 [ %prol.iter1833.next, %.lr.ph.i.i.i.i.i.i.i808.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i808.preheader ]
  %i.bfa = add nsw i32 %.01.i.i.i.i.i.i.i809.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter1833.next = add i32 %prol.iter1833, 1 ; 2 uses
  %prol.iter1833.cmp.not = icmp eq i32 %prol.iter1833.next, %xtraiter1831
  br i1 %prol.iter1833.cmp.not, label %.lr.ph.i.i.i.i.i.i.i808.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i808.prol, !llvm.loop !11826

.lr.ph.i.i.i.i.i.i.i808.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i808.prol, %.lr.ph.i.i.i.i.i.i.i808.preheader
  %.01.i.i.i.i.i.i.i809.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i804, %.lr.ph.i.i.i.i.i.i.i808.preheader ], [ %i.bfa, %.lr.ph.i.i.i.i.i.i.i808.prol ]
  %i.bfb = icmp ult i32 %.sroa.0.02.i.i.i.i.i804, 8
  br i1 %i.bfb, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i807, label %.lr.ph.i.i.i.i.i.i.i808

.lr.ph.i.i.i.i.i.i.i808:                          ; preds = %.lr.ph.i.i.i.i.i.i.i808.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i808
  %.01.i.i.i.i.i.i.i809 = phi i32 [ %i.bfc, %.lr.ph.i.i.i.i.i.i.i808 ], [ %.01.i.i.i.i.i.i.i809.unr, %.lr.ph.i.i.i.i.i.i.i808.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.bfc = add nsw i32 %.01.i.i.i.i.i.i.i809, -8
  call void @llvm.x86.sse2.pause()
  %i.bfd = icmp sgt i32 %.01.i.i.i.i.i.i.i809, 8
  br i1 %i.bfd, label %.lr.ph.i.i.i.i.i.i.i808, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i807, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i807: ; preds = %.lr.ph.i.i.i.i.i.i.i808.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i808, %bb.hx
  %i.bfe = shl i32 %.sroa.0.02.i.i.i.i.i804, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i805

bb.hy:                                            ; preds = %.lr.ph.i.i.i.i.i803
  %i.bff = call noundef i32 @sched_yield() #23    ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i805

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i805: ; preds = %bb.hy, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i807
  %.sroa.0.1.i.i.i.i.i806 = phi i32 [ %i.bfe, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i807 ], [ %.sroa.0.02.i.i.i.i.i804, %bb.hy ]
  %i.bfg = atomicrmw xchg ptr %i.bev, i8 1 seq_cst, align 1
  %i.bfh = trunc i8 %i.bfg to i1
  br i1 %i.bfh, label %.lr.ph.i.i.i.i.i803, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i800, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i800: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i805, %bb.hw
  %i.bfi = load ptr, ptr %i.beq, align 8, !tbaa !570 ; 2 uses
  %i.bfj = icmp eq ptr %i.bfi, null
  br i1 %i.bfj, label %bb.hz, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i801

bb.hz:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i800
  %i.bfk = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #30
          to label %bb.ia unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i802 ; 2 uses

bb.ia:                                            ; preds = %bb.hz
  store ptr %i.bfk, ptr %i.beq, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i801

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i802: ; preds = %bb.hz
  %i.bfl = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.bev release, align 1
  br label %.body

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i801: ; preds = %bb.ia, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i800
  %i.bfm = phi ptr [ %i.bfk, %bb.ia ], [ %i.bfi, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i800 ]
  store atomic i8 0, ptr %i.bev release, align 4
  br label %.thread.i160.sink.split

.noexc161:                                        ; preds = %bb.gs
  br i1 %.not.i159, label %.noexc161.thread, label %.thread.i160

.thread.i160.sink.split:                          ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i797, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i801, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i629, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i633, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i653, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i657
  %.sink1624 = phi ptr [ %i.bbm, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i629 ], [ %i.azj, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i653 ], [ %i.bac, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i657 ], [ %i.bcf, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i633 ], [ %i.bfm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i801 ], [ %i.bet, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i797 ]
  %.0.i.i2371164.ph = phi ptr [ %i.bbj, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i629 ], [ %i.azg, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i653 ], [ %i.azg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i657 ], [ %i.bbj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i633 ], [ %i.beq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i801 ], [ %i.beq, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i797 ]
  store ptr %.sink1624, ptr %i.ac, align 8, !tbaa !4540
  br label %.thread.i160

.thread.i160:                                     ; preds = %.noexc161, %.thread.i160.sink.split
  %.0.i.i2371164 = phi ptr [ %.0.i.i2371164.ph, %.thread.i160.sink.split ], [ %i.ayf, %.noexc161 ]
  %i.bfn = getelementptr inbounds nuw i8, ptr %.0.i.i2371164, i64 80
  %i.bfo = load i32, ptr %i.bfn, align 4, !tbaa !543
  %i.bfp = sext i32 %i.bfo to i64
  br label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162

.noexc161.thread:                                 ; preds = %bb.ht, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i605, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i604, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i236, %bb.ho, %bb.hs, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606, %bb.hq, %bb.gt, %bb.hc, %bb.hb, %.noexc161
  %i.bfq = phi i32 [ %i.bah, %bb.ht ], [ %i.ayj, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i605 ], [ %i.ayj, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i604 ], [ %i.ayj, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i236 ], [ %i.ayj, %bb.ho ], [ %i.bah, %bb.hs ], [ %i.ayj, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606 ], [ %i.ayj, %bb.hq ], [ %i.ayj, %bb.gt ], [ %i.ayj, %bb.hc ], [ %i.ayj, %bb.hb ], [ %i.ayj, %.noexc161 ]
  %i.bfr = phi i32 [ %i.ayr, %bb.ht ], [ %i.ayk, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i605 ], [ %i.ayk, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i604 ], [ %i.ayk, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS9_EEPKT_RKNS0_4math5CoordEEUlSJ_E_ZNKSI_IS9_EESL_SP_EUlSJ_E0_St5tupleIJPS9_PSA_PSB_PSC_EEPKS9_Lm3ELm4EEET2_SJ_T0_RT1_S10_.exit.i236 ], [ %i.ayk, %bb.ho ], [ %i.ayk, %bb.hs ], [ %i.ayk, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i606 ], [ %i.ayk, %bb.hq ], [ %i.ayk, %bb.gt ], [ %i.ayr, %bb.hc ], [ %i.ayk, %bb.hb ], [ %i.ayk, %.noexc161 ]
  %.sroa.211114.01270 = add nsw i32 %.sroa.211114.012701708, -8 ; 2 uses
  %.not1545 = icmp slt i32 %.sroa.211114.01270, %.sroa.5.0.copyload.i146
  br i1 %.not1545, label %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162, label %bb.gs

_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit162: ; preds = %.noexc161.thread, %.lr.ph1709, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.preheader, %.lr.ph.i153.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.lr.ph, %.thread.i160, %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136
  %.2.i158 = phi i64 [ %i.bfp, %.thread.i160 ], [ -1, %_ZNK7openvdb5v13_05tools23mesh_to_volume_internal23ComputeNodeConnectivityINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE17findNeighbourNodeERNS4_17ValueAccessorImplIKSD_Lb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEERKNS0_4math5CoordESO_.exit136 ], [ -1, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.lr.ph ], [ -1, %.lr.ph.i153.preheader ], [ -1, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i.i154.preheader ], [ -1, %.lr.ph1709 ], [ -1, %.noexc161.thread ]
  %i.bfs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01273
  store i64 %.2.i158, ptr %i.bfs, align 8, !tbaa !791
  %i.bft = add nuw i64 %.01273, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bft, %i.aj
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.m, !llvm.loop !11827

bb.ib:                                            ; preds = %bb.fv, %bb.fm, %bb.gm, %bb.em, %bb.ec, %bb.fd, %bb.da, %bb.cq, %bb.dr, %bb.bo, %bb.be, %bb.cf, %bb.ac, %bb.s, %bb.at, %bb.hv, %bb.gv, %bb.he
  %i.bfu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i634, %bb.ib, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i802, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i658, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i558, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i778, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i582, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i482, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i754, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i506, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i406, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i730, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i430, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i330, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i706, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i354, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i682, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i278
  %.pn = phi { ptr, i32 } [ %i.awq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i778 ], [ %i.anu, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i754 ], [ %i.aea, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i730 ], [ %i.ug, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i706 ], [ %i.km, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i682 ], [ %i.gv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i ], [ %i.eh, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i278 ], [ %i.bfl, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i802 ], [ %i.qp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i330 ], [ %i.ob, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i354 ], [ %i.bfu, %bb.ib ], [ %i.aaj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i406 ], [ %i.xv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i430 ], [ %i.bab, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i658 ], [ %i.akd, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i482 ], [ %i.ahp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i506 ], [ %i.bce, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i634 ], [ %i.atj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i558 ], [ %i.arg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i582 ]
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSK_RSM_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !756
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !757
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !570
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !630
  %i.g = load i64, ptr %0, align 8, !tbaa !629
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSK_RSM_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr null, ptr %3, align 8, !tbaa !760
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !545
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1363
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !4693
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !4700
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.p, align 8, !tbaa !1184
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i8 5, ptr %i.q, align 4, !tbaa !1185
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 16, !tbaa !1186
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.u = load i64, ptr %3, align 8, !tbaa !766
  store i64 %i.u, ptr %i.t, align 64, !tbaa !766
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !1190
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !1191
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !738
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !739
  store ptr %4, ptr %i.l, align 8, !tbaa !4700
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSK_RSM_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSK_RSM_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSK_RSM_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSK_RSM_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1195 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !1186
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 16, !tbaa !1186
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1196
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !4700
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !4700
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !1185
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !1185
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSA_4tree4TreeINSE_8RootNodeINSE_12InternalNodeINSH_INSE_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4700 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i64, ptr %i.y, align 64, !tbaa !766
  %i.aa = load ptr, ptr %0, align 64, !tbaa !545
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(136) dereferenceable(136) %0) #23, !inline_history !530
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ae = add i32 %i.ad, -1
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal13RestoreOriginINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.ag = load ptr, ptr %.019.i.i, align 8, !tbaa !1190 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !766
end_hunk_5

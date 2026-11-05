Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonHardwareLoops?download=true
inline.NumInlined: 2213
inline.NumDeleted: 1040
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_120HexagonHardwareLoops21convertToHardwareLoopEPN4llvm11MachineLoopERbS4_:bb.a
  br i1 %or.cond87.i.i, label %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i228

.lr.ph.i.i.i.i.i228:                              ; preds = %bb.cy, %.lr.ph.i.i.i.i.i228
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i228 ], [ %i.zi, %bb.cy ] ; 4 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i228 ], [ %i.wp, %bb.cy ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !294
  %i.zl = icmp ult i32 %i.zk, %i.zg               ; 3 uses
  %.19.i.i.i.i.i = select i1 %i.zl, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.zl, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !303 ; 2 uses
  %.not.i.i.i.i.i229 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i229, label %_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IS1_lEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i228, !llvm.loop !2

_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IS1_lEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i228
  %i.zm = icmp eq ptr %.19.i.i.i.i.i, %i.wp
  br i1 %i.zm, label %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.thread.i.i, label %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.i.i

_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.i.i: ; preds = %_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IS1_lEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.zl, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.zn = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !294
  %i.zo = icmp ult i32 %i.zg, %i.zn
  %spec.select.i.i = select i1 %i.zo, ptr %i.wp, ptr %.19.i.i.i.i.i
  br label %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.thread.i.i

_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.thread.i.i: ; preds = %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.i.i, %_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IS1_lEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i.i, %bb.cy
  %.sroa.065.1.i.i = phi ptr [ %i.wp, %bb.cy ], [ %i.wp, %_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IS1_lEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i.i ], [ %spec.select.i.i, %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.i.i ] ; 4 uses
  %i.zp = load i32, ptr %19, align 4, !tbaa !294  ; 3 uses
  %i.zq = icmp eq i32 %i.zp, 0
  %or.cond88.i.i = select i1 %i.zq, i1 true, i1 %.not10.i.i.i.i.i
  br i1 %or.cond88.i.i, label %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.thread.i.i, label %.lr.ph.i.i.i52.i.i

.lr.ph.i.i.i52.i.i:                               ; preds = %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.thread.i.i, %.lr.ph.i.i.i52.i.i
  %.012.i.i.i53.i.i = phi ptr [ %.1.i.i.i58.i.i, %.lr.ph.i.i.i52.i.i ], [ %i.zi, %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.thread.i.i ] ; 4 uses
  %.0811.i.i.i54.i.i = phi ptr [ %.19.i.i.i55.i.i, %.lr.ph.i.i.i52.i.i ], [ %i.wp, %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.thread.i.i ] ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.012.i.i.i53.i.i, i64 32
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !294
  %i.zt = icmp ult i32 %i.zs, %i.zp               ; 3 uses
  %.19.i.i.i55.i.i = select i1 %i.zt, ptr %.0811.i.i.i54.i.i, ptr %.012.i.i.i53.i.i ; 3 uses
  %.1.in.v.i.i.i56.i.i = select i1 %i.zt, i64 24, i64 16
  %.1.in.i.i.i57.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i53.i.i, i64 %.1.in.v.i.i.i56.i.i
  %.1.i.i.i58.i.i = load ptr, ptr %.1.in.i.i.i57.i.i, align 8, !tbaa !303 ; 2 uses
  %.not.i.i.i59.i.i = icmp eq ptr %.1.i.i.i58.i.i, null
  br i1 %.not.i.i.i59.i.i, label %_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IS1_lEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i60.i.i, label %.lr.ph.i.i.i52.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IS1_lEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i60.i.i: ; preds = %.lr.ph.i.i.i52.i.i
  %i.zu = icmp eq ptr %.19.i.i.i55.i.i, %i.wp
  br i1 %i.zu, label %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.thread.i.i, label %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.i.i

_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.i.i: ; preds = %_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IS1_lEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i60.i.i
  %.19.i.i.i55.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.zt, ptr %.0811.i.i.i54.i.i, ptr %.012.i.i.i53.i.i
  %.19.i.i.i55.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i55.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.zv = load i32, ptr %.19.i.i.i55.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !294
  %i.zw = icmp ult i32 %i.zp, %i.zv
  br i1 %i.zw, label %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.thread.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.i.i
  %.not94.i.i = icmp eq ptr %.sroa.065.1.i.i, %i.wp
  br i1 %.not94.i.i, label %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.thread.i.i, label %.critedge50.i.i

_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.thread.i.i: ; preds = %bb.cz, %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.i.i, %_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IS1_lEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i60.i.i, %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.thread.i.i
  %.sroa.065.3.i.i = phi ptr [ %.sroa.065.1.i.i, %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit.thread.i.i ], [ %.sroa.065.1.i.i, %_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IS1_lEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i60.i.i ], [ %.sroa.065.1.i.i, %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.i.i ], [ %.19.i.i.i55.i.i, %bb.cz ] ; 4 uses
  %i.zx = icmp eq ptr %.sroa.065.3.i.i, %i.wp
  br i1 %i.zx, label %.critedge50.i.i, label %bb.da

bb.da:                                            ; preds = %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.thread.i.i
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.065.3.i.i, i64 32
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.065.3.i.i, i64 40
  %i.aaa = load i32, ptr %i.zz, align 8, !tbaa !204
  %i.aab = getelementptr inbounds nuw i8, ptr %.sroa.065.3.i.i, i64 48
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !403
  %i.aad = load ptr, ptr %i.ja, align 8, !tbaa !165
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.zy, align 8, !tbaa !204
  %i.aae = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.aad, i32 %.sroa.0.0.copyload.i.i) #20
  br label %.critedge50.i.i

.critedge50.i.i:                                  ; preds = %bb.da, %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.thread.i.i, %bb.cz, %bb.cx
  %.2180.i = phi ptr [ undef, %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.thread.i.i ], [ %i.aae, %bb.da ], [ undef, %bb.cz ], [ undef, %bb.cx ]
  %.2.i = phi i64 [ 0, %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.thread.i.i ], [ %i.aac, %bb.da ], [ 0, %bb.cz ], [ 0, %bb.cx ]
  %.sroa.0170.4.i = phi i32 [ 0, %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.thread.i.i ], [ %i.aaa, %bb.da ], [ 0, %bb.cz ], [ 0, %bb.cx ]
  %.2.i.i = phi i1 [ false, %_ZNSt3mapIN4llvm8RegisterESt4pairIS1_lESt4lessIS1_ESaIS2_IKS1_S3_EEE4findERS6_.exit63.thread.i.i ], [ true, %bb.da ], [ false, %bb.cz ], [ false, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.db

bb.db:                                            ; preds = %.critedge50.i.i, %bb.cw, %bb.cv
  %.0178.i = phi ptr [ undef, %bb.cw ], [ %.2180.i, %.critedge50.i.i ], [ undef, %bb.cv ]
  %.0.i = phi i64 [ 0, %bb.cw ], [ %.2.i, %.critedge50.i.i ], [ 0, %bb.cv ]
  %.sroa.0170.2.i = phi i32 [ 0, %bb.cw ], [ %.sroa.0170.4.i, %.critedge50.i.i ], [ 0, %bb.cv ]
  %.4.i.i = phi i1 [ false, %bb.cw ], [ %.2.i.i, %.critedge50.i.i ], [ false, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.critedge.i.i
  %.1179.i = phi ptr [ undef, %.critedge.i.i ], [ %.0178.i, %bb.db ]
  %.1.i = phi i64 [ 0, %.critedge.i.i ], [ %.0.i, %bb.db ]
  %.sroa.0170.3.i = phi i32 [ 0, %.critedge.i.i ], [ %.sroa.0170.2.i, %bb.db ] ; 3 uses
  %.5.i.i = phi i1 [ false, %.critedge.i.i ], [ %.4.i.i, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.aaf = load ptr, ptr %16, align 8, !tbaa !26  ; 2 uses
  %i.aag = icmp eq ptr %i.aaf, %i.wz
  br i1 %i.aag, label %_ZNK12_GLOBAL__N_120HexagonHardwareLoops21findInductionRegisterEPN4llvm11MachineLoopERNS1_8RegisterERlRPNS1_12MachineInstrE.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @free(ptr noundef %i.aaf) #20
  br label %_ZNK12_GLOBAL__N_120HexagonHardwareLoops21findInductionRegisterEPN4llvm11MachineLoopERNS1_8RegisterERlRPNS1_12MachineInstrE.exit.i

_ZNK12_GLOBAL__N_120HexagonHardwareLoops21findInductionRegisterEPN4llvm11MachineLoopERNS1_8RegisterERlRPNS1_12MachineInstrE.exit.i: ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.aah = load ptr, ptr %i.wq, align 8, !tbaa !287
  call void @_ZNSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_S2_IS1_lEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.aah)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br i1 %.5.i.i, label %bb.de, label %_ZN12_GLOBAL__N_120HexagonHardwareLoops16getLoopTripCountEPN4llvm11MachineLoopERNS1_15SmallVectorImplIPNS1_12MachineInstrEEE.exit.thread

bb.de:                                            ; preds = %_ZNK12_GLOBAL__N_120HexagonHardwareLoops21findInductionRegisterEPN4llvm11MachineLoopERNS1_8RegisterERlRPNS1_12MachineInstrE.exit.i
  %i.aai = load ptr, ptr %i.ue, align 8, !tbaa !164
  %i.aaj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL13SpecPreheader, i64 120), align 8, !tbaa !302, !range !22, !noundef !23
  %i.aak = trunc nuw i8 %i.aaj to i1
  %i.aal = call noundef ptr @_ZNK4llvm15MachineLoopInfo17findLoopPreheaderEPNS_11MachineLoopEbb(ptr noundef nonnull align 8 dereferenceable(184) %i.aai, ptr noundef nonnull %1, i1 noundef zeroext %i.aak, i1 noundef zeroext false) #20 ; 3 uses
  %i.aam = load ptr, ptr %i.ja, align 8, !tbaa !165
  %i.aan = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.aam, i32 %.sroa.0170.3.i) #20 ; 2 uses
  %i.aao = call noundef ptr @_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #20 ; 8 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aan, i64 40
  %i.aaq = load i24, ptr %i.aap, align 8          ; 2 uses
  %i.aar = icmp ugt i24 %i.aaq, 1
  br i1 %i.aar, label %.lr.ph.i219, label %_ZN12_GLOBAL__N_120HexagonHardwareLoops16getLoopTripCountEPN4llvm11MachineLoopERNS1_15SmallVectorImplIPNS1_12MachineInstrEEE.exit.thread

.lr.ph.i219:                                      ; preds = %bb.de
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aan, i64 32
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !292 ; 3 uses
  %i.aau = zext i24 %i.aaq to i64
  %i.aav = add nsw i64 %i.aau, -2                 ; 2 uses
  %i.aaw = lshr i64 %i.aav, 1                     ; 2 uses
  %i.aax = add nuw i64 %i.aaw, 1                  ; 2 uses
  %i.aay = icmp eq i64 %i.aaw, 0
  br i1 %i.aay, label %.epil.preheader, label %.lr.ph.i219.new

.lr.ph.i219.new:                                  ; preds = %.lr.ph.i219
  %unroll_iter = and i64 %i.aax, -2
  br label %bb.dh

._crit_edge.i222.unr-lcssa:                       ; preds = %bb.dn
  %i.aaz = and i64 %i.aav, 2
  %lcmp.mod.not.not = icmp eq i64 %i.aaz, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge.i222

.epil.preheader:                                  ; preds = %._crit_edge.i222.unr-lcssa, %.lr.ph.i219
  %indvars.iv.i220.epil.init = phi i64 [ 1, %.lr.ph.i219 ], [ %indvars.iv.next.i221.1, %._crit_edge.i222.unr-lcssa ]
  %.0116209.i.epil.init = phi ptr [ null, %.lr.ph.i219 ], [ %.1117.i.1, %._crit_edge.i222.unr-lcssa ] ; 2 uses
  %.sroa.0170.0208.i.epil.init = phi i32 [ %.sroa.0170.3.i, %.lr.ph.i219 ], [ %.sroa.0170.1.i.1, %._crit_edge.i222.unr-lcssa ] ; 2 uses
  %lcmp.mod563 = trunc i64 %i.aax to i1
  call void @llvm.assume(i1 %lcmp.mod563)
  %i.aba = getelementptr inbounds nuw [32 x i8], ptr %i.aat, i64 %indvars.iv.i220.epil.init ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 48
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !281 ; 2 uses
  %i.abd = icmp eq ptr %i.abc, %i.aal
  br i1 %i.abd, label %._crit_edge.i222, label %bb.df

bb.df:                                            ; preds = %.epil.preheader
  %i.abe = icmp eq ptr %i.abc, %i.aao
  br i1 %i.abe, label %bb.dg, label %._crit_edge.i222

bb.dg:                                            ; preds = %bb.df
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !281
  br label %._crit_edge.i222

._crit_edge.i222:                                 ; preds = %.epil.preheader, %bb.df, %bb.dg, %._crit_edge.i222.unr-lcssa
  %.sroa.0170.1.i.lcssa = phi i32 [ %.sroa.0170.1.i.1, %._crit_edge.i222.unr-lcssa ], [ %.sroa.0170.0208.i.epil.init, %bb.df ], [ %i.abg, %bb.dg ], [ %.sroa.0170.0208.i.epil.init, %.epil.preheader ]
  %.1117.i.lcssa = phi ptr [ %.1117.i.1, %._crit_edge.i222.unr-lcssa ], [ %.0116209.i.epil.init, %bb.df ], [ %.0116209.i.epil.init, %bb.dg ], [ %i.aba, %.epil.preheader ] ; 5 uses
  %.not126.i = icmp eq ptr %.1117.i.lcssa, null
  br i1 %.not126.i, label %_ZN12_GLOBAL__N_120HexagonHardwareLoops16getLoopTripCountEPN4llvm11MachineLoopERNS1_15SmallVectorImplIPNS1_12MachineInstrEEE.exit.thread, label %bb.do

bb.dh:                                            ; preds = %bb.dn, %.lr.ph.i219.new
  %indvars.iv.i220 = phi i64 [ 1, %.lr.ph.i219.new ], [ %indvars.iv.next.i221.1, %bb.dn ] ; 3 uses
  %.0116209.i = phi ptr [ null, %.lr.ph.i219.new ], [ %.1117.i.1, %bb.dn ] ; 2 uses
  %.sroa.0170.0208.i = phi i32 [ %.sroa.0170.3.i, %.lr.ph.i219.new ], [ %.sroa.0170.1.i.1, %bb.dn ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i219.new ], [ %niter.next.1, %bb.dn ]
  %i.abh = getelementptr inbounds nuw [32 x i8], ptr %i.aat, i64 %indvars.iv.i220 ; 3 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 48
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !281 ; 2 uses
  %i.abk = icmp eq ptr %i.abj, %i.aal
  br i1 %i.abk, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.abl = icmp eq ptr %i.abj, %i.aao
  br i1 %i.abl, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abh, i64 4
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !281
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %.sroa.0170.1.i = phi i32 [ %.sroa.0170.0208.i, %bb.di ], [ %i.abn, %bb.dj ], [ %.sroa.0170.0208.i, %bb.dh ] ; 2 uses
  %.1117.i = phi ptr [ %.0116209.i, %bb.di ], [ %.0116209.i, %bb.dj ], [ %i.abh, %bb.dh ] ; 2 uses
  %i.abo = getelementptr inbounds nuw [32 x i8], ptr %i.aat, i64 %indvars.iv.i220 ; 3 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 64
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abo, i64 112
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !281 ; 2 uses
  %i.abs = icmp eq ptr %i.abr, %i.aal
  br i1 %i.abs, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.abt = icmp eq ptr %i.abr, %i.aao
  br i1 %i.abt, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abo, i64 68
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !281
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk
  %.sroa.0170.1.i.1 = phi i32 [ %.sroa.0170.1.i, %bb.dl ], [ %i.abv, %bb.dm ], [ %.sroa.0170.1.i, %bb.dk ] ; 3 uses
  %.1117.i.1 = phi ptr [ %.1117.i, %bb.dl ], [ %.1117.i, %bb.dm ], [ %i.abp, %bb.dk ] ; 3 uses
  %indvars.iv.next.i221.1 = add nuw nsw i64 %indvars.iv.i220, 4 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i222.unr-lcssa, label %bb.dh, !llvm.loop !368

bb.do:                                            ; preds = %._crit_edge.i222
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.abw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr %i.abw, ptr %20, align 8, !tbaa !26
  %i.abx = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store i32 0, ptr %i.abx, align 8, !tbaa !272
  %i.aby = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 2, ptr %i.aby, align 4, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store ptr null, ptr %i.h, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store ptr null, ptr %i.i, align 8, !tbaa !186
  %i.abz = load ptr, ptr %i.kq, align 8, !tbaa !167 ; 2 uses
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !16
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 296
  %i.acc = load ptr, ptr %i.acb, align 8
  %i.acd = call noundef zeroext i1 %i.acc(ptr noundef nonnull align 8 dereferenceable(440) %i.abz, ptr noundef nonnull align 8 dereferenceable(360) %i.vz, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %20, i1 noundef zeroext false) #20, !inline_history !369
  br i1 %i.acd, label %bb.en, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ace = load ptr, ptr %i.av, align 8, !tbaa !183
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !186 ; 6 uses
  %.not127.i = icmp eq ptr %i.vz, %i.aao
  %.pr.pre217.i = load ptr, ptr %i.h, align 8, !tbaa !186 ; 3 uses
  br i1 %.not127.i, label %thread-pre-split.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.acg = icmp eq ptr %.pr.pre217.i, %i.aao
  %i.ach = load ptr, ptr %i.i, align 8
  %i.aci = icmp eq ptr %i.ach, %i.aao
  %or.cond.i223 = select i1 %i.acg, i1 true, i1 %i.aci
  br i1 %or.cond.i223, label %bb.dr, label %thread-pre-split.i

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  store ptr null, ptr %i.j, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store ptr null, ptr %i.k, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.acj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store ptr %i.acj, ptr %21, align 8, !tbaa !26
  %i.ack = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 0, ptr %i.ack, align 8, !tbaa !272
  %i.acl = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i32 2, ptr %i.acl, align 4, !tbaa !273
  %i.acm = load ptr, ptr %i.kq, align 8, !tbaa !167 ; 2 uses
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !16
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 296
  %i.acp = load ptr, ptr %i.aco, align 8
  %i.acq = call noundef zeroext i1 %i.acp(ptr noundef nonnull align 8 dereferenceable(440) %i.acm, ptr noundef nonnull align 8 dereferenceable(360) %i.aao, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %21, i1 noundef zeroext false) #20, !inline_history !369
  br i1 %i.acq, label %.critedge136.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.acr = load ptr, ptr %i.h, align 8, !tbaa !186 ; 2 uses
  %i.acs = icmp eq ptr %i.acr, %i.aao             ; 2 uses
  %i.act = load ptr, ptr %i.j, align 8, !tbaa !186 ; 2 uses
  %i.acu = icmp eq ptr %i.act, %i.acf
  %i.acv = load ptr, ptr %i.k, align 8
  %i.acw = select i1 %i.acu, ptr %i.act, ptr %i.acv ; 2 uses
  %..i226 = select i1 %i.acs, ptr %i.h, ptr %i.i
  %.255.i = select i1 %i.acs, ptr %i.acw, ptr %i.acr
  store ptr %i.acw, ptr %..i226, align 8, !tbaa !186
  %i.acx = load ptr, ptr %21, align 8, !tbaa !26  ; 2 uses
  %i.acy = icmp eq ptr %i.acx, %i.acj
  br i1 %i.acy, label %_ZN4llvm11SmallVectorINS_14MachineOperandELj2EED2Ev.exit.i227, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @free(ptr noundef %i.acx) #20
  %.pr.pre.pre.i = load ptr, ptr %i.h, align 8, !tbaa !186
  br label %_ZN4llvm11SmallVectorINS_14MachineOperandELj2EED2Ev.exit.i227

_ZN4llvm11SmallVectorINS_14MachineOperandELj2EED2Ev.exit.i227: ; preds = %bb.dt, %bb.ds
  %.pr.pre.i = phi ptr [ %.255.i, %bb.ds ], [ %.pr.pre.pre.i, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZN4llvm11SmallVectorINS_14MachineOperandELj2EED2Ev.exit.i227, %bb.dq, %bb.dp
  %i.acz = phi ptr [ %.pr.pre217.i, %bb.dq ], [ %.pr.pre217.i, %bb.dp ], [ %.pr.pre.i, %_ZN4llvm11SmallVectorINS_14MachineOperandELj2EED2Ev.exit.i227 ] ; 2 uses
  %.not128.i = icmp eq ptr %i.acz, null
  br i1 %.not128.i, label %bb.en, label %bb.du

bb.du:                                            ; preds = %thread-pre-split.i
  %i.ada = load ptr, ptr %i.i, align 8, !tbaa !186 ; 2 uses
  %.not129.i = icmp eq ptr %i.ada, null
  %.not130.i = icmp eq ptr %i.acz, %i.acf
  %or.cond137.i = or i1 %.not130.i, %.not129.i
  %.not131.i = icmp eq ptr %i.ada, %i.acf
  %or.cond138.i = or i1 %.not131.i, %or.cond137.i
  br i1 %or.cond138.i, label %bb.dv, label %bb.en

bb.dv:                                            ; preds = %bb.du
  %i.adb = load ptr, ptr %i.kq, align 8, !tbaa !167
  %i.adc = load ptr, ptr %20, align 8, !tbaa !26
  %i.add = load i32, ptr %i.abx, align 8, !tbaa !272
  %i.ade = zext i32 %i.add to i64
  %i.adf = call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo16predOpcodeHasNotENS_8ArrayRefINS_14MachineOperandEEE(ptr noundef nonnull align 8 dereferenceable(440) %i.adb, ptr %i.adc, i64 %i.ade) #20
  %i.adg = load ptr, ptr %i.h, align 8, !tbaa !186
  %i.adh = icmp ne ptr %i.adg, %i.acf
  %i.adi = xor i1 %i.adf, %i.adh
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  store i32 0, ptr %22, align 4, !tbaa !294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  %i.adj = load ptr, ptr %i.kq, align 8, !tbaa !167
  %i.adk = load ptr, ptr %20, align 8, !tbaa !26
  %i.adl = load i32, ptr %i.abx, align 8, !tbaa !272
  %i.adm = zext i32 %i.adl to i64
  %i.adn = call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo10getPredRegENS_8ArrayRefINS_14MachineOperandEEERNS_8RegisterERjRNS_8RegStateE(ptr noundef nonnull align 8 dereferenceable(440) %i.adj, ptr %i.adk, i64 %i.adm, ptr noundef nonnull align 4 dereferenceable(4) %22, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 2 dereferenceable(2) %i.m) #20
  br i1 %i.adn, label %bb.dw, label %bb.el

bb.dw:                                            ; preds = %bb.dv
  %i.ado = load ptr, ptr %i.ja, align 8, !tbaa !165
  %.sroa.031.0.copyload.i = load i32, ptr %22, align 4, !tbaa !204
  %i.adp = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.ado, i32 %.sroa.031.0.copyload.i) #20 ; 4 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 52
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !291
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  store i32 0, ptr %23, align 4, !tbaa !294
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  store i32 0, ptr %24, align 4, !tbaa !294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #20
  store i64 0, ptr %i.n, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #20
  store i64 0, ptr %i.o, align 8, !tbaa !32
  %i.ads = load ptr, ptr %i.kq, align 8, !tbaa !167 ; 2 uses
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !16
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 1032
  %i.adv = load ptr, ptr %i.adu, align 8
  %i.adw = call noundef zeroext i1 %i.adv(ptr noundef nonnull align 8 dereferenceable(440) %i.ads, ptr noundef nonnull align 8 dereferenceable(80) %i.adp, ptr noundef nonnull align 4 dereferenceable(4) %23, ptr noundef nonnull align 4 dereferenceable(4) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o) #20, !inline_history !369
  br i1 %i.adw, label %bb.dx, label %.critedge.i224

bb.dx:                                            ; preds = %bb.dw
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull %i.adp)
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef %.1179.i)
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adp, i64 32
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !292 ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 32 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ady, i64 64 ; 3 uses
  %i.aeb = load i32, ptr %i.adz, align 8          ; 2 uses
  %i.aec = and i32 %i.aeb, 255
  %i.aed = icmp eq i32 %i.aec, 0
  br i1 %i.aed, label %bb.dy, label %.critedge.i224

bb.dy:                                            ; preds = %bb.dx
  %i.aee = load i32, ptr %i.aea, align 8          ; 3 uses
  %i.aef = and i32 %i.aee, 255
  %i.aeg = icmp eq i32 %i.aef, 1
  br i1 %i.aeg, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.ady, i64 36
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !281
  %i.aej = icmp ne i32 %i.aei, %.sroa.0170.1.i.lcssa ; 3 uses
  %spec.select143.i = select i1 %i.aej, ptr %i.adz, ptr %i.aea
  %i.aek = select i1 %i.aej, i32 %i.aeb, i32 %i.aee
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.ael = phi i32 [ %i.aee, %bb.dy ], [ %i.aek, %bb.dz ]
  %.0112.ph.i = phi i1 [ false, %bb.dy ], [ %i.aej, %bb.dz ]
  %.0111.ph.i = phi ptr [ %i.aea, %bb.dy ], [ %spec.select143.i, %bb.dz ] ; 4 uses
  %i.aem = call fastcc noundef i32 @_ZNK12_GLOBAL__N_120HexagonHardwareLoops17getComparisonKindEjPN4llvm14MachineOperandEPKS2_l(i32 noundef %i.adr) ; 6 uses
  %.not133.i = icmp eq i32 %i.aem, 0
  br i1 %.not133.i, label %.critedge.i224, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.adi, label %bb.ec, label %_ZN12_GLOBAL__N_120HexagonHardwareLoops10Comparison20getNegatedComparisonENS1_4KindE.exit.i

bb.ec:                                            ; preds = %bb.eb
  %i.aen = and i32 %i.aem, 12
  %or.cond.i160.i = icmp eq i32 %i.aen, 0
  br i1 %or.cond.i160.i, label %bb.ee, label %bb.ed
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_120HexagonHardwareLoops22createPreheaderForLoopEPN4llvm11MachineLoopE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 217
  %i.t = load i8, ptr %i.s, align 1, !tbaa !314, !range !22, !noundef !23
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 224
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i = icmp ne ptr %i.w, null
  %or.cond.not.i = select i1 %i.u, i1 true, i1 %.not.i
  br i1 %or.cond.not.i, label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit

_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 330
  %i.y = load i8, ptr %i.x, align 2, !tbaa !429, !range !22, !noundef !23
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EED2Ev.exit, label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !272 ; 3 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx = shl nuw nsw i64 %i.ae, 3                ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr null, i64 %.idx
  br label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EEC2IPS2_vEET_S7_RKS3_.exit

_ZNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #22 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx ; 2 uses
  %.not = icmp eq i32 %i.ad, 1
  br i1 %.not, label %bb.f, label %bb.e, !prof !430

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.ab, i64 %.idx, i1 false)
  br label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EEC2IPS2_vEET_S7_RKS3_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE11_M_allocateEm.exit.i.i
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !186
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !186
  br label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EEC2IPS2_vEET_S7_RKS3_.exit

_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EEC2IPS2_vEET_S7_RKS3_.exit: ; preds = %.thread.i.i, %bb.e, %bb.f
  %.sroa.10.0 = phi ptr [ %i.af, %.thread.i.i ], [ %i.ah, %bb.e ], [ %i.ah, %bb.f ] ; 4 uses
  %.sroa.0186.0 = phi ptr [ null, %.thread.i.i ], [ %i.ag, %bb.e ], [ %i.ag, %bb.f ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.ak, align 8, !tbaa !272
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 2, ptr %i.al, align 4, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8, !tbaa !186
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !167 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 296
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(440) %i.an, ptr noundef nonnull align 8 dereferenceable(360) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false) #20
  br i1 %i.ar, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EEC2IPS2_vEET_S7_RKS3_.exit
  %.not193198 = icmp eq ptr %.sroa.0186.0, %.sroa.10.0 ; 2 uses
  br i1 %.not193198, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0182.0199, i64 8 ; 2 uses
  %.not193 = icmp eq ptr %i.as, %.sroa.10.0
  br i1 %.not193, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.sroa.0182.0199 = phi ptr [ %i.as, %bb.g ], [ %.sroa.0186.0, %.preheader ] ; 2 uses
  %i.at = load ptr, ptr %.sroa.0182.0199, align 8, !tbaa !186
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !167 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 296
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(440) %i.au, ptr noundef nonnull align 8 dereferenceable(360) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false) #20
  br i1 %i.ay, label %.thread, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %i.az = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.p, ptr noundef null, i64 undef, i8 0) #20 ; 19 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef %i.az) #20
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !431 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.l, ptr %i.bc, align 8, !tbaa !432
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !431
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !432
  store ptr %i.az, ptr %i.l, align 8, !tbaa !431
  %i.be = load i32, ptr %i.ac, align 8, !tbaa !272
  %i.bf = icmp ugt i32 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 3 uses
  %.sroa.0176.0220 = load ptr, ptr %i.bg, align 8, !tbaa !191 ; 3 uses
  %.not195221 = icmp eq ptr %.sroa.0176.0220, %i.bh ; 2 uses
  br i1 %i.bf, label %bb.h, label %bb.o

bb.h:                                             ; preds = %._crit_edge
  br i1 %.not195221, label %.critedge, label %.lr.ph224

.lr.ph224:                                        ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph224, %._crit_edge219
  %.sroa.0176.0222 = phi ptr [ %.sroa.0176.0220, %.lr.ph224 ], [ %.sroa.0176.0, %._crit_edge219 ] ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0176.0222, i64 52
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !291
  switch i32 %i.by, label %.critedge [
    i32 74, label %bb.j
    i32 0, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.bz = load ptr, ptr %i.am, align 8, !tbaa !167
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !310
  %i.cc = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr null, i1 noundef zeroext false) #20 ; 9 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef %i.cc) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.bi, ptr %i.cf, align 8, !tbaa !191
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.cc, align 8
  %i.cg = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.ch = or disjoint i64 %i.cg, %i.cd
  store i64 %i.ch, ptr %i.cc, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cc, ptr %i.ci, align 8, !tbaa !191
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %i.bi, align 8
  %i.cj = ptrtoint ptr %i.cc to i64
  %i.ck = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.cl = or disjoint i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.bi, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0176.0222, i64 32 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !292
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !281
  %i.cq = load ptr, ptr %i.bk, align 8, !tbaa !165 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = and i32 %i.cp, 2147483647
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.ct
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cv, align 8
  %i.cw = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.cq, ptr noundef %i.cx, ptr nonnull @.str.7, i64 0) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %i.bl, align 8, !tbaa !313, !alias.scope !433
  store i32 %i.cy, ptr %i.bm, align 4, !tbaa !281, !alias.scope !433
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false), !alias.scope !433
  store i32 16777216, ptr %4, align 8, !alias.scope !433
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0176.0222, i64 40 ; 2 uses
  %i.da = load i24, ptr %i.cz, align 8            ; 2 uses
  %i.db = icmp ugt i24 %i.da, 1
  br i1 %i.db, label %.lr.ph212.preheader, label %._crit_edge219

.lr.ph212.preheader:                              ; preds = %bb.j
  %i.dc = zext i24 %i.da to i64
  br label %.lr.ph212

._crit_edge213:                                   ; preds = %bb.l
  %.pre243 = load i24, ptr %i.cz, align 8         ; 3 uses
  %i.dd = icmp ugt i24 %.pre243, 2
  br i1 %i.dd, label %.lr.ph218.preheader, label %._crit_edge219

.lr.ph218.preheader:                              ; preds = %._crit_edge213
  %.pre244 = zext i24 %.pre243 to i64
  %.0132214 = add nuw nsw i64 %.pre244, 4294967294
  %i.de = and i64 %.0132214, 4294967295
  %i.df = zext i24 %.pre243 to i64
  br label %.lr.ph218

.lr.ph212:                                        ; preds = %.lr.ph212.preheader, %bb.l
  %indvars.iv232 = phi i64 [ 1, %.lr.ph212.preheader ], [ %indvars.iv.next233, %bb.l ] ; 2 uses
  %i.dg = load ptr, ptr %i.cm, align 8, !tbaa !292
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %indvars.iv232 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !281 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.m
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph212
  %i.dl = load <2 x i32>, ptr %i.dh, align 8
  %i.dm = and <2 x i32> %i.dl, <i32 1048320, i32 -1>
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %i.bo, align 8, !tbaa !313, !alias.scope !434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !alias.scope !434
  store <2 x i32> %i.dm, ptr %5, align 8
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr null, ptr %i.bq, align 8, !tbaa !313, !alias.scope !435
  store ptr %i.dj, ptr %i.br, align 8, !tbaa !281, !alias.scope !435
  store i32 4, ptr %6, align 8, !alias.scope !435
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph212, %bb.k
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 2 ; 2 uses
  %i.dn = icmp samesign ult i64 %indvars.iv.next233, %i.dc
  br i1 %i.dn, label %.lr.ph212, label %._crit_edge213, !llvm.loop !419

._crit_edge219:                                   ; preds = %bb.n, %bb.j, %._crit_edge213
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %i.bs, align 8, !tbaa !313, !alias.scope !436
  store i32 %i.cy, ptr %i.bt, align 4, !tbaa !281, !alias.scope !436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false), !alias.scope !436
  store i32 0, ptr %7, align 8, !alias.scope !436
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0176.0222, ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr null, ptr %i.bv, align 8, !tbaa !313, !alias.scope !437
  store ptr %i.az, ptr %i.bw, align 8, !tbaa !281, !alias.scope !437
  store i32 4, ptr %8, align 8, !alias.scope !437
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0176.0222, ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0176.0222, i64 8
  %.sroa.0176.0 = load ptr, ptr %i.do, align 8, !tbaa !191 ; 2 uses
  %.not195 = icmp eq ptr %.sroa.0176.0, %i.bh
  br i1 %.not195, label %.critedge, label %bb.i, !llvm.loop !424

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %bb.n
  %indvars.iv237 = phi i64 [ %i.df, %.lr.ph218.preheader ], [ %indvars.iv.next238, %bb.n ] ; 2 uses
  %indvars.iv235 = phi i64 [ %i.de, %.lr.ph218.preheader ], [ %indvars.iv.next236, %bb.n ] ; 3 uses
  %i.dp = trunc nuw i64 %indvars.iv237 to i32
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  %i.dr = load ptr, ptr %i.cm, align 8, !tbaa !292
  %i.ds = zext i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !281
  %.not153 = icmp eq ptr %i.dv, %i.m
  br i1 %.not153, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph218
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0176.0222, i32 noundef %i.dq) #20
  %i.dw = trunc nuw nsw i64 %indvars.iv235 to i32
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0176.0222, i32 noundef %i.dw) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph218
  %indvars.iv.next236 = add nsw i64 %indvars.iv235, -2
  %i.dx = icmp sgt i64 %indvars.iv235, 2
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, -2
  br i1 %i.dx, label %.lr.ph218, label %._crit_edge219, !llvm.loop !425

bb.o:                                             ; preds = %._crit_edge
  br i1 %.not195221, label %.critedge, label %.lr.ph208

.lr.ph208:                                        ; preds = %bb.o, %._crit_edge203
  %.sroa.0169.0206 = phi ptr [ %.sroa.0169.0, %._crit_edge203 ], [ %.sroa.0176.0220, %bb.o ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0169.0206, i64 52
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !291
  switch i32 %i.dz, label %.critedge [
    i32 74, label %bb.p
    i32 0, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph208, %.lr.ph208
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0169.0206, i64 40
  %i.eb = load i24, ptr %i.ea, align 8            ; 2 uses
  %i.ec = icmp ugt i24 %i.eb, 1
  br i1 %i.ec, label %.lr.ph202, label %._crit_edge203

.lr.ph202:                                        ; preds = %bb.p
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0169.0206, i64 32 ; 3 uses
  %i.ee = zext i24 %i.eb to i64
  %.pre242 = load ptr, ptr %i.ed, align 8, !tbaa !292 ; 2 uses
  %i.ef = add nsw i64 %i.ee, -2                   ; 2 uses
  %i.eg = lshr i64 %i.ef, 1                       ; 2 uses
  %i.eh = add nuw i64 %i.eg, 1                    ; 2 uses
  %i.ei = icmp eq i64 %i.eg, 0
  br i1 %i.ei, label %.epil.preheader, label %.lr.ph202.new

.lr.ph202.new:                                    ; preds = %.lr.ph202
  %unroll_iter = and i64 %i.eh, -2
  br label %bb.r

._crit_edge203.loopexit.unr-lcssa:                ; preds = %bb.v
  %i.ej = and i64 %i.ef, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ej, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge203

.epil.preheader:                                  ; preds = %._crit_edge203.loopexit.unr-lcssa, %.lr.ph202
  %.epil.init = phi ptr [ %.pre242, %.lr.ph202 ], [ %i.ew, %._crit_edge203.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph202 ], [ %indvars.iv.next.1, %._crit_edge203.loopexit.unr-lcssa ]
  %lcmp.mod271 = trunc i64 %i.eh to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %.epil.init, i64 %indvars.iv.epil.init
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !281
  %.not145.epil = icmp eq ptr %i.em, %i.m
  br i1 %.not145.epil, label %._crit_edge203, label %bb.q

bb.q:                                             ; preds = %.epil.preheader
  store ptr %i.az, ptr %i.el, align 8, !tbaa !281
  br label %._crit_edge203

._crit_edge203:                                   ; preds = %._crit_edge203.loopexit.unr-lcssa, %bb.q, %.epil.preheader, %bb.p
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0169.0206, i64 8
  %.sroa.0169.0 = load ptr, ptr %i.en, align 8, !tbaa !191 ; 2 uses
  %.not194 = icmp eq ptr %.sroa.0169.0, %i.bh
  br i1 %.not194, label %.critedge, label %.lr.ph208, !llvm.loop !426

bb.r:                                             ; preds = %bb.v, %.lr.ph202.new
  %i.eo = phi ptr [ %.pre242, %.lr.ph202.new ], [ %i.ew, %bb.v ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph202.new ], [ %indvars.iv.next.1, %bb.v ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph202.new ], [ %niter.next.1, %bb.v ]
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %indvars.iv
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !281
  %.not145 = icmp eq ptr %i.er, %i.m
  br i1 %.not145, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.az, ptr %i.eq, align 8, !tbaa !281
  %.pre = load ptr, ptr %i.ed, align 8, !tbaa !292
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.es = phi ptr [ %.pre, %bb.s ], [ %i.eo, %bb.r ] ; 2 uses
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %indvars.iv
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 112 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !281
  %.not145.1 = icmp eq ptr %i.ev, %i.m
  br i1 %.not145.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.az, ptr %i.eu, align 8, !tbaa !281
  %.pre.1 = load ptr, ptr %i.ed, align 8, !tbaa !292
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ew = phi ptr [ %.pre.1, %bb.u ], [ %i.es, %bb.t ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge203.loopexit.unr-lcssa, label %bb.r, !llvm.loop !427

.critedge:                                        ; preds = %._crit_edge203, %.lr.ph208, %._crit_edge219, %bb.i, %bb.o, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.ex, ptr %9, align 8, !tbaa !26
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.ey, align 8, !tbaa !272
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 1, ptr %i.ez, align 4, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.fa, ptr %10, align 8, !tbaa !26
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.fb, align 8, !tbaa !272
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 1, ptr %i.fc, align 4, !tbaa !273
  store ptr null, ptr %i.b, align 8, !tbaa !186
  store ptr null, ptr %i.a, align 8, !tbaa !186
  br i1 %.not193198, label %._crit_edge229, label %.lr.ph228

._crit_edge229:                                   ; preds = %bb.aa, %.critedge
  store ptr null, ptr %i.b, align 8, !tbaa !186
  store ptr null, ptr %i.a, align 8, !tbaa !186
  %i.fd = load ptr, ptr %i.am, align 8, !tbaa !167 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 296
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = call noundef zeroext i1 %i.fg(ptr noundef nonnull align 8 dereferenceable(440) %i.fd, ptr noundef nonnull align 8 dereferenceable(360) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext false) #20 ; 0 uses
  %i.fi = load ptr, ptr %i.a, align 8, !tbaa !186
  %i.fj = icmp ne ptr %i.fi, null
  %i.fk = load ptr, ptr %i.b, align 8
  %i.fl = icmp ne ptr %i.fk, null
  %or.cond7 = select i1 %i.fj, i1 true, i1 %i.fl
  br i1 %or.cond7, label %bb.ac, label %bb.ab

.lr.ph228:                                        ; preds = %.critedge, %bb.aa
  %.sroa.0165.0227 = phi ptr [ %i.gd, %bb.aa ], [ %.sroa.0186.0, %.critedge ] ; 2 uses
  %i.fm = load ptr, ptr %.sroa.0165.0227, align 8, !tbaa !186 ; 4 uses
  %.not150 = icmp eq ptr %i.fm, %i.m
  br i1 %.not150, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.lr.ph228
  store i32 0, ptr %i.ey, align 8, !tbaa !272
  %i.fn = load ptr, ptr %i.am, align 8, !tbaa !167 ; 2 uses
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetTubes?download=true
inline.NumInlined: 71639
inline.NumDeleted: 23517
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 212
loop-unroll.NumUnrolled: 887
begin_hunk_0_@_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEclERSE_m:bb.a
  %i.tg = load ptr, ptr %7, align 8, !tbaa !1281
  store ptr null, ptr %7, align 8, !tbaa !1281
  %i.th = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE8addChildEPSA_(ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef %i.tg)
          to label %bb.dg unwind label %bb.de     ; 0 uses

bb.dd:                                            ; preds = %bb.db
  %i.ti = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISA_EED2Ev.exit

bb.de:                                            ; preds = %bb.dc, %_ZN7openvdb5v13_05tools14merge_internal20ApplyTileSumToNodeOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE3runISE_EEvRT_.exit
  %i.tj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.tk = load ptr, ptr %7, align 8, !tbaa !1281  ; 2 uses
  %.not.i230 = icmp eq ptr %i.tk, null
  br i1 %.not.i230, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISA_EED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @_ZNKSt14default_deleteIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEclEPSA_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.tk)
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISA_EED2Ev.exit

bb.dg:                                            ; preds = %_ZN7openvdb5v13_05tools14merge_internal20ApplyTileSumToNodeOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE3runISE_EEvRT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pr = load ptr, ptr %7, align 8, !tbaa !1281   ; 2 uses
  %.not.i231 = icmp eq ptr %.pr, null
  br i1 %.not.i231, label %.thread436, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZNKSt14default_deleteIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEclEPSA_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %.pr)
  br label %.thread436

.thread436:                                       ; preds = %bb.dh, %bb.dg, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE19stealOrDeepCopyNodeISD_EESt10unique_ptrIT_St14default_deleteISJ_EERKNS8_5CoordE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

_ZNSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISA_EED2Ev.exit: ; preds = %bb.df, %bb.de, %bb.dd
  %.pn126 = phi { ptr, i32 } [ %i.ti, %bb.dd ], [ %i.tj, %bb.de ], [ %i.tj, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.dy

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeISA_EEPKT_RKNS5_5CoordE.exit.thread: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i224, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i223, %bb.cx, %bb.cz, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeISA_EEPKT_RKNS5_5CoordE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.tl = load i32, ptr %i.pi, align 4, !tbaa !699
  %i.tm = load i32, ptr %i.rz, align 4, !tbaa !699
  %i.tn = sub nsw i32 %i.tl, %i.tm
  %i.to = and i32 %i.tn, -4096                    ; 4 uses
  br label %bb.di

bb.di:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeISA_EEPKT_RKNS5_5CoordE.exit.thread
  %.014.i.i.i.i.i235 = phi ptr [ %i.rw, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeISA_EEPKT_RKNS5_5CoordE.exit.thread ], [ %.1.i.i.i.i.i241, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238 ] ; 7 uses
  %.0813.i.i.i.i.i236 = phi ptr [ %i.rx, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeISA_EEPKT_RKNS5_5CoordE.exit.thread ], [ %.19.i.i.i.i.i240, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238 ]
  %i.tp = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i235, i64 32
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !699 ; 2 uses
  %i.tr = icmp slt i32 %i.tq, %i.to
  br i1 %i.tr, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ts = icmp sgt i32 %i.tq, %i.to
  br i1 %i.ts, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.tt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i235, i64 36
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !699 ; 2 uses
  %i.tv = icmp slt i32 %i.tu, %i.rt
  br i1 %i.tv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tw = icmp sgt i32 %i.tu, %i.rt
  br i1 %i.tw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i237

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i237: ; preds = %bb.dl
  %i.tx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i235, i64 40
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !699
  %i.tz = icmp slt i32 %i.ty, %i.ru
  br i1 %i.tz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i237, %bb.dk, %bb.di
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i237, %bb.dl, %bb.dj
  %.sink.i.i.i.i.i239 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249 ], [ 16, %bb.dl ], [ 16, %bb.dj ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i237 ]
  %.19.i.i.i.i.i240 = phi ptr [ %.0813.i.i.i.i.i236, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249 ], [ %.014.i.i.i.i.i235, %bb.dl ], [ %.014.i.i.i.i.i235, %bb.dj ], [ %.014.i.i.i.i.i235, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i237 ] ; 8 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i235, i64 %.sink.i.i.i.i.i239
  %.1.i.i.i.i.i241 = load ptr, ptr %i.ua, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i.i242 = icmp eq ptr %.1.i.i.i.i.i241, null
  br i1 %.not.i.i.i.i.i242, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i243, label %bb.di, !llvm.loop !58

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i243: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238
  %i.ub = icmp eq ptr %.19.i.i.i.i.i240, %i.rx
  br i1 %i.ub, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248, label %bb.dm

bb.dm:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i243
  %i.uc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i240, i64 32
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !699 ; 2 uses
  %i.ue = icmp slt i32 %i.to, %i.ud
  br i1 %i.ue, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.uf = icmp sgt i32 %i.to, %i.ud
  br i1 %i.uf, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i245, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ug = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i240, i64 36
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !699 ; 2 uses
  %i.ui = icmp slt i32 %i.rt, %i.uh
  br i1 %i.ui, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.uj = icmp sgt i32 %i.rt, %i.uh
  br i1 %i.uj, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i245, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i244

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i244: ; preds = %bb.dp
  %i.uk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i240, i64 40
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !699
  %i.um = icmp slt i32 %i.ru, %i.ul
  br i1 %i.um, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i245

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248: ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeISA_EEPKT_RKNS5_5CoordE.exit.thread.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i244, %bb.do, %bb.dm, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i243
  %i.un = getelementptr inbounds nuw i8, ptr %i.rk, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %i.un, i64 12, i1 false)
  br label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit251

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i245: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i244, %bb.dp, %bb.dn
  %i.uo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i240, i64 48
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !1028 ; 2 uses
  %.not.i246 = icmp eq ptr %i.up, null
  br i1 %.not.i246, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i245
  %i.uq = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE10probeValueERKNS4_5CoordERS6_(ptr noundef nonnull align 8 dereferenceable(532496) %i.up, ptr noundef nonnull align 4 dereferenceable(12) %i.pi, ptr noundef nonnull align 4 dereferenceable(12) %9)
          to label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit251 unwind label %bb.ds

bb.dr:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i245
  %i.ur = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i240, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %i.ur, i64 12, i1 false)
  %i.us = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i240, i64 68
  %i.ut = load i8, ptr %i.us, align 4, !range !746
  %i.uu = trunc nuw i8 %i.ut to i1
  br label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit251

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit251: ; preds = %bb.dr, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248, %bb.dq
  %.0.i247 = phi i1 [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248 ], [ %i.uu, %bb.dr ], [ %i.uq, %bb.dq ]
  %or.cond = or i1 %.0.i, %.0.i247
  %i.uv = load <2 x i32>, ptr %9, align 8, !tbaa !699
  %i.uw = load <2 x i32>, ptr %6, align 8, !tbaa !699
  %i.ux = add nsw <2 x i32> %i.uw, %i.uv
  store <2 x i32> %i.ux, ptr %6, align 8, !tbaa !699
  %i.uy = load i32, ptr %i.ox, align 8, !tbaa !699
  %i.uz = load i32, ptr %i.oy, align 8, !tbaa !699
  %i.va = add nsw i32 %i.uz, %i.uy
  store i32 %i.va, ptr %i.oy, align 8, !tbaa !699
  invoke void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7addTileERKNS5_5CoordERKS7_b(ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.pi, ptr noundef nonnull align 4 dereferenceable(12) %6, i1 noundef zeroext %or.cond)
          to label %bb.dt unwind label %bb.ds

bb.ds:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit251, %bb.dq
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dt:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit251
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i64 0, ptr %10, align 8
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE7addTileISD_EEvRKNS8_5CoordERKSA_b(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.0367.0528, ptr noundef nonnull align 4 dereferenceable(12) %i.pi, ptr noundef nonnull align 4 dereferenceable(12) %10, i1 noundef zeroext false)
          to label %bb.du unwind label %bb.dv

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0367.0528, i64 40 ; 2 uses
  %.not444 = icmp eq ptr %i.vc, %i.rh
  br i1 %.not444, label %.loopexit, label %.lr.ph531

bb.dv:                                            ; preds = %bb.dt
  %i.vd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.ds
  %.pn124 = phi { ptr, i32 } [ %i.vd, %bb.dv ], [ %i.vb, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.dy

.loopexit:                                        ; preds = %bb.du, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit, %.thread436
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.dx

bb.dx:                                            ; preds = %bb.cg, %.loopexit
  %i.ve = load ptr, ptr %.sroa.0371.0533, align 8, !tbaa !1061 ; 2 uses
  %.not442 = icmp eq ptr %i.ve, null
  br i1 %.not442, label %._crit_edge536, label %bb.cg

bb.dy:                                            ; preds = %bb.dw, %_ZNSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISA_EED2Ev.exit, %bb.cs
  %.pn126.pn.pn.pn = phi { ptr, i32 } [ %i.ri, %bb.cs ], [ %.pn124, %bb.dw ], [ %.pn126, %_ZNSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISA_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

._crit_edge544:                                   ; preds = %.lr.ph543
  %i.vf = icmp eq <2 x i32> %i.vo, %i.pf          ; 2 uses
  %11 = extractelement <2 x i1> %i.vf, i64 0
  %12 = extractelement <2 x i1> %i.vf, i64 1
  %or.cond749 = select i1 %11, i1 %12, i1 false
  %i.vg = icmp eq i32 %i.vr, %.sroa.11.0.copyload
  %or.cond750 = select i1 %or.cond749, i1 %i.vg, i1 false
  br i1 %or.cond750, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE13setBackgroundERKS7_b.exit, label %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IiEES4_EEbRKT_RKT0_.exit.thread.i

_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IiEES4_EEbRKT_RKT0_.exit.thread.i: ; preds = %._crit_edge544
  %i.vh = extractelement <2 x i32> %i.vo, i64 0
  store i32 %i.vh, ptr %i.pe, align 8
  %i.vi = extractelement <2 x i32> %i.vo, i64 1
  store i32 %i.vi, ptr %.sroa.8.0..sroa_idx, align 4
  store i32 %i.vr, ptr %.sroa.11.0..sroa_idx, align 8
  br label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE13setBackgroundERKS7_b.exit

.lr.ph543:                                        ; preds = %._crit_edge536, %.lr.ph543
  %.sroa.0354.0541 = phi ptr [ %i.vs, %.lr.ph543 ], [ %i.pg, %._crit_edge536 ] ; 2 uses
  %.sroa.11.0538 = phi i32 [ %i.vr, %.lr.ph543 ], [ %.sroa.11.0.copyload, %._crit_edge536 ]
  %i.vj = phi <2 x i32> [ %i.vo, %.lr.ph543 ], [ %i.pf, %._crit_edge536 ]
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.0354.0541, i64 16
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !1014 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 56
  %i.vn = load <2 x i32>, ptr %i.vm, align 4, !tbaa !699
  %i.vo = add nsw <2 x i32> %i.vn, %i.vj          ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vl, i64 64
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !699
  %i.vr = add nsw i32 %i.vq, %.sroa.11.0538       ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.sroa.0354.0541, i64 40 ; 2 uses
  %.not443 = icmp eq ptr %i.vs, %i.ph
  br i1 %.not443, label %._crit_edge544, label %.lr.ph543

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE13setBackgroundERKS7_b.exit: ; preds = %._crit_edge544, %._crit_edge536, %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IiEES4_EEbRKT_RKT0_.exit.thread.i
  %i.vt = load ptr, ptr %i.j, align 8, !tbaa !1059 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.vt, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE13setBackgroundERKS7_b.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.vu, %.lr.ph.i.i.i.i ], [ %i.vt, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE13setBackgroundERKS7_b.exit ] ; 2 uses
  %i.vu = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !1061 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #31
  %.not.i.i.i.i = icmp eq ptr %i.vu, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE13setBackgroundERKS7_b.exit
  %i.vv = load ptr, ptr %3, align 8, !tbaa !1054
  %i.vw = load i64, ptr %i.i, align 8, !tbaa !1055
  %i.vx = shl i64 %i.vw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.vv, i8 0, i64 %i.vx, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.vy = load ptr, ptr %3, align 8, !tbaa !1054  ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.h
  br i1 %i.vz, label %_ZNSt13unordered_mapIN7openvdb5v13_04math5CoordEhSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_hEEED2Ev.exit, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.wa = load i64, ptr %i.i, align 8, !tbaa !1055
  %i.wb = shl i64 %i.wa, 3
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wb) #31
  br label %_ZNSt13unordered_mapIN7openvdb5v13_04math5CoordEhSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_hEEED2Ev.exit

_ZNSt13unordered_mapIN7openvdb5v13_04math5CoordEhSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_hEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ea

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i299.body, %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body, %bb.m, %bb.j, %bb.dy
  %.pn143.pn = phi { ptr, i32 } [ %eh.lpad-body323, %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body ], [ %i.ai, %bb.j ], [ %i.aq, %bb.m ], [ %eh.lpad-body329, %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i299.body ], [ %.pn126.pn.pn.pn, %bb.dy ], [ %lpad.loopexit.split-lp810, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13unordered_mapIN7openvdb5v13_04math5CoordEhSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_hEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn143.pn

bb.ea:                                            ; preds = %bb.a, %_ZNSt13unordered_mapIN7openvdb5v13_04math5CoordEhSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_hEEED2Ev.exit
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7addTileERKNS5_5CoordERKS7_b(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %5 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::math::Vec3<int>, 3>, 4>, 5>>::Tile", align 4 ; 8 uses
  %6 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::math::Vec3<int>, 3>, 4>, 5>>::Tile", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %1, align 4, !tbaa !699
  %i.c = load i32, ptr %i.a, align 4, !tbaa !699
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !699
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !699
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !699
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = load i32, ptr %i.l, align 4, !tbaa !699
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !771  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.u = zext i1 %3 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %5, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 %i.u, ptr %i.v, align 4, !tbaa !1284
  br label %.critedge.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !699  ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.o
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = icmp sgt i32 %i.x, %i.o
  br i1 %i.z, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !699 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.p
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp sgt i32 %i.ab, %i.p
  br i1 %i.ad, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !699
  %i.ag = icmp slt i32 %i.af, %i.q
  br i1 %i.ag, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !59

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ai, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !699 ; 2 uses
  %i.al = icmp slt i32 %i.o, %i.ak
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = icmp sgt i32 %i.o, %i.ak
  br i1 %i.am, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !699 ; 2 uses
  %i.ap = icmp slt i32 %i.p, %i.ao
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp sgt i32 %i.p, %i.ao
  br i1 %i.aq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !699
  %i.at = icmp slt i32 %i.q, %i.as
  br i1 %i.at, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.au = zext i1 %3 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %5, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 %i.au, ptr %i.av, align 4, !tbaa !1284
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i11, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread
  %.014.i.i.i.i8 = phi ptr [ %i.s, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread ], [ %.1.i.i.i.i14, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i11 ] ; 7 uses
  %.0813.i.i.i.i9 = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread ], [ %.19.i.i.i.i13, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i11 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i8, i64 32
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !699 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.o
  br i1 %i.ay, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i16, label %bb.j

end_hunk_0

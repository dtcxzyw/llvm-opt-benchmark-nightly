Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79535
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 204
loop-unroll.NumRuntimeUnrolled: 278
loop-unroll.NumUnrolled: 953
begin_hunk_0_@_ZNK7openvdb5v13_05tools10SumMergeOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEclERSE_m:bb.a
  %i.tg = load ptr, ptr %7, align 8, !tbaa !1323
  store ptr null, ptr %7, align 8, !tbaa !1323
  %i.th = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE8addChildEPSA_(ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef %i.tg)
          to label %bb.dg unwind label %bb.de     ; 0 uses

bb.dd:                                            ; preds = %bb.db
  %i.ti = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISA_EED2Ev.exit

bb.de:                                            ; preds = %bb.dc, %_ZN7openvdb5v13_05tools14merge_internal20ApplyTileSumToNodeOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE3runISE_EEvRT_.exit
  %i.tj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.tk = load ptr, ptr %7, align 8, !tbaa !1323  ; 2 uses
  %.not.i230 = icmp eq ptr %i.tk, null
  br i1 %.not.i230, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISA_EED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @_ZNKSt14default_deleteIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEclEPSA_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.tk)
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISA_EED2Ev.exit

bb.dg:                                            ; preds = %_ZN7openvdb5v13_05tools14merge_internal20ApplyTileSumToNodeOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE3runISE_EEvRT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pr = load ptr, ptr %7, align 8, !tbaa !1323   ; 2 uses
  %.not.i231 = icmp eq ptr %.pr, null
  br i1 %.not.i231, label %.thread436, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZNKSt14default_deleteIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEEEclEPSA_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %.pr)
  br label %.thread436

.thread436:                                       ; preds = %bb.dh, %bb.dg, %_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE19stealOrDeepCopyNodeISD_EESt10unique_ptrIT_St14default_deleteISJ_EERKNS8_5CoordE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit

_ZNSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISA_EED2Ev.exit: ; preds = %bb.df, %bb.de, %bb.dd
  %.pn126 = phi { ptr, i32 } [ %i.ti, %bb.dd ], [ %i.tj, %bb.de ], [ %i.tj, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.dy

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeISA_EEPKT_RKNS5_5CoordE.exit.thread: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i224, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i223, %bb.cx, %bb.cz, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeISA_EEPKT_RKNS5_5CoordE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.tl = load i32, ptr %i.pi, align 4, !tbaa !741
  %i.tm = load i32, ptr %i.rz, align 4, !tbaa !741
  %i.tn = sub nsw i32 %i.tl, %i.tm
  %i.to = and i32 %i.tn, -4096                    ; 4 uses
  br label %bb.di

bb.di:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeISA_EEPKT_RKNS5_5CoordE.exit.thread
  %.014.i.i.i.i.i235 = phi ptr [ %i.rw, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeISA_EEPKT_RKNS5_5CoordE.exit.thread ], [ %.1.i.i.i.i.i241, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238 ] ; 7 uses
  %.0813.i.i.i.i.i236 = phi ptr [ %i.rx, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeISA_EEPKT_RKNS5_5CoordE.exit.thread ], [ %.19.i.i.i.i.i240, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238 ]
  %i.tp = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i235, i64 32
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !741 ; 2 uses
  %i.tr = icmp slt i32 %i.tq, %i.to
  br i1 %i.tr, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ts = icmp sgt i32 %i.tq, %i.to
  br i1 %i.ts, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.tt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i235, i64 36
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !741 ; 2 uses
  %i.tv = icmp slt i32 %i.tu, %i.rt
  br i1 %i.tv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tw = icmp sgt i32 %i.tu, %i.rt
  br i1 %i.tw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i237

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i237: ; preds = %bb.dl
  %i.tx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i235, i64 40
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !741
  %i.tz = icmp slt i32 %i.ty, %i.ru
  br i1 %i.tz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i237, %bb.dk, %bb.di
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i237, %bb.dl, %bb.dj
  %.sink.i.i.i.i.i239 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249 ], [ 16, %bb.dl ], [ 16, %bb.dj ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i237 ]
  %.19.i.i.i.i.i240 = phi ptr [ %.0813.i.i.i.i.i236, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i249 ], [ %.014.i.i.i.i.i235, %bb.dl ], [ %.014.i.i.i.i.i235, %bb.dj ], [ %.014.i.i.i.i.i235, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i237 ] ; 8 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i235, i64 %.sink.i.i.i.i.i239
  %.1.i.i.i.i.i241 = load ptr, ptr %i.ua, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i.i242 = icmp eq ptr %.1.i.i.i.i.i241, null
  br i1 %.not.i.i.i.i.i242, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i243, label %bb.di, !llvm.loop !58

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i243: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i238
  %i.ub = icmp eq ptr %.19.i.i.i.i.i240, %i.rx
  br i1 %i.ub, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248, label %bb.dm

bb.dm:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i243
  %i.uc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i240, i64 32
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !741 ; 2 uses
  %i.ue = icmp slt i32 %i.to, %i.ud
  br i1 %i.ue, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.uf = icmp sgt i32 %i.to, %i.ud
  br i1 %i.uf, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i245, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ug = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i240, i64 36
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !741 ; 2 uses
  %i.ui = icmp slt i32 %i.rt, %i.uh
  br i1 %i.ui, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.uj = icmp sgt i32 %i.rt, %i.uh
  br i1 %i.uj, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i245, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i244

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i244: ; preds = %bb.dp
  %i.uk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i240, i64 40
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !741
  %i.um = icmp slt i32 %i.ru, %i.ul
  br i1 %i.um, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i245

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248: ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE14probeConstNodeISA_EEPKT_RKNS5_5CoordE.exit.thread.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i244, %bb.do, %bb.dm, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i243
  %i.un = getelementptr inbounds nuw i8, ptr %i.rk, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %i.un, i64 12, i1 false)
  br label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit251

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i245: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i244, %bb.dp, %bb.dn
  %i.uo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i240, i64 48
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !1070 ; 2 uses
  %.not.i246 = icmp eq ptr %i.up, null
  br i1 %.not.i246, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i245
  %i.uq = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE10probeValueERKNS4_5CoordERS6_(ptr noundef nonnull align 8 dereferenceable(532496) %i.up, ptr noundef nonnull align 4 dereferenceable(12) %i.pi, ptr noundef nonnull align 4 dereferenceable(12) %9)
          to label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit251 unwind label %bb.ds

bb.dr:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i245
  %i.ur = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i240, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %i.ur, i64 12, i1 false)
  %i.us = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i240, i64 68
  %i.ut = load i8, ptr %i.us, align 4, !range !788
  %i.uu = trunc nuw i8 %i.ut to i1
  br label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit251

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit251: ; preds = %bb.dr, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248, %bb.dq
  %.0.i247 = phi i1 [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i248 ], [ %i.uu, %bb.dr ], [ %i.uq, %bb.dq ]
  %or.cond = or i1 %.0.i, %.0.i247
  %i.uv = load <2 x i32>, ptr %9, align 8, !tbaa !741
  %i.uw = load <2 x i32>, ptr %6, align 8, !tbaa !741
  %i.ux = add nsw <2 x i32> %i.uw, %i.uv
  store <2 x i32> %i.ux, ptr %6, align 8, !tbaa !741
  %i.uy = load i32, ptr %i.ox, align 8, !tbaa !741
  %i.uz = load i32, ptr %i.oy, align 8, !tbaa !741
  %i.va = add nsw i32 %i.uz, %i.uy
  store i32 %i.va, ptr %i.oy, align 8, !tbaa !741
  invoke void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7addTileERKNS5_5CoordERKS7_b(ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.pi, ptr noundef nonnull align 4 dereferenceable(12) %6, i1 noundef zeroext %or.cond)
          to label %bb.dt unwind label %bb.ds

bb.ds:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit251, %bb.dq
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dt:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit251
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store i64 0, ptr %10, align 8
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_ZN7openvdb5v13_05tools11TreeToMergeINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEE7addTileISD_EEvRKNS8_5CoordERKSA_b(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.0367.0528, ptr noundef nonnull align 4 dereferenceable(12) %i.pi, ptr noundef nonnull align 4 dereferenceable(12) %10, i1 noundef zeroext false)
          to label %bb.du unwind label %bb.dv

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0367.0528, i64 40 ; 2 uses
  %.not444 = icmp eq ptr %i.vc, %i.rh
  br i1 %.not444, label %.loopexit, label %.lr.ph531

bb.dv:                                            ; preds = %bb.dt
  %i.vd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.ds
  %.pn124 = phi { ptr, i32 } [ %i.vd, %bb.dv ], [ %i.vb, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.dy

.loopexit:                                        ; preds = %bb.du, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10probeValueERKNS5_5CoordERS7_.exit, %.thread436
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.dx

bb.dx:                                            ; preds = %bb.cg, %.loopexit
  %i.ve = load ptr, ptr %.sroa.0371.0533, align 8, !tbaa !1103 ; 2 uses
  %.not442 = icmp eq ptr %i.ve, null
  br i1 %.not442, label %._crit_edge536, label %bb.cg

bb.dy:                                            ; preds = %bb.dw, %_ZNSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISA_EED2Ev.exit, %bb.cs
  %.pn126.pn.pn.pn = phi { ptr, i32 } [ %i.ri, %bb.cs ], [ %.pn124, %bb.dw ], [ %.pn126, %_ZNSt10unique_ptrIN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISA_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body

._crit_edge544:                                   ; preds = %.lr.ph543
  %i.vf = icmp eq <2 x i32> %i.vo, %i.pf
  %11 = freeze <2 x i1> %i.vf
  %12 = bitcast <2 x i1> %11 to i2
  %or.cond749 = icmp eq i2 %12, -1
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
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !1056 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 56
  %i.vn = load <2 x i32>, ptr %i.vm, align 4, !tbaa !741
  %i.vo = add nsw <2 x i32> %i.vn, %i.vj          ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vl, i64 64
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !741
  %i.vr = add nsw i32 %i.vq, %.sroa.11.0538       ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.sroa.0354.0541, i64 40 ; 2 uses
  %.not443 = icmp eq ptr %i.vs, %i.ph
  br i1 %.not443, label %._crit_edge544, label %.lr.ph543

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE13setBackgroundERKS7_b.exit: ; preds = %._crit_edge544, %._crit_edge536, %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IiEES4_EEbRKT_RKT0_.exit.thread.i
  %i.vt = load ptr, ptr %i.j, align 8, !tbaa !1101 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.vt, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE13setBackgroundERKS7_b.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.vu, %.lr.ph.i.i.i.i ], [ %i.vt, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE13setBackgroundERKS7_b.exit ] ; 2 uses
  %i.vu = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !1103 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #31
  %.not.i.i.i.i = icmp eq ptr %i.vu, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE13setBackgroundERKS7_b.exit
  %i.vv = load ptr, ptr %3, align 8, !tbaa !1096
  %i.vw = load i64, ptr %i.i, align 8, !tbaa !1097
  %i.vx = shl i64 %i.vw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.vv, i8 0, i64 %i.vx, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.vy = load ptr, ptr %3, align 8, !tbaa !1096  ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.h
  br i1 %i.vz, label %_ZNSt13unordered_mapIN7openvdb5v13_04math5CoordEhSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_hEEED2Ev.exit, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.wa = load i64, ptr %i.i, align 8, !tbaa !1097
  %i.wb = shl i64 %i.wa, 3
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wb) #31
  br label %_ZNSt13unordered_mapIN7openvdb5v13_04math5CoordEhSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_hEEED2Ev.exit

_ZNSt13unordered_mapIN7openvdb5v13_04math5CoordEhSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_hEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ea

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i299.body, %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body, %bb.m, %bb.j, %bb.dy
  %.pn143.pn = phi { ptr, i32 } [ %eh.lpad-body323, %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body ], [ %i.ai, %bb.j ], [ %i.aq, %bb.m ], [ %eh.lpad-body329, %_ZNSt10_HashtableIN7openvdb5v13_04math5CoordESt4pairIKS3_hESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i299.body ], [ %.pn126.pn.pn.pn, %bb.dy ], [ %lpad.loopexit.split-lp810, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13unordered_mapIN7openvdb5v13_04math5CoordEhSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_hEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %1, align 4, !tbaa !741
  %i.c = load i32, ptr %i.a, align 4, !tbaa !741
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !741
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !741
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !741
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = load i32, ptr %i.l, align 4, !tbaa !741
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !813  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.u = zext i1 %3 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %5, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 %i.u, ptr %i.v, align 4, !tbaa !1326
  br label %.critedge.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !741  ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.o
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = icmp sgt i32 %i.x, %i.o
  br i1 %i.z, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !741 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.p
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp sgt i32 %i.ab, %i.p
  br i1 %i.ad, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !741
  %i.ag = icmp slt i32 %i.af, %i.q
  br i1 %i.ag, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !59

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ai, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !741 ; 2 uses
  %i.al = icmp slt i32 %i.o, %i.ak
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = icmp sgt i32 %i.o, %i.ak
  br i1 %i.am, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !741 ; 2 uses
  %i.ap = icmp slt i32 %i.p, %i.ao
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp sgt i32 %i.p, %i.ao
  br i1 %i.aq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !741
  %i.at = icmp slt i32 %i.q, %i.as
  br i1 %i.at, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.au = zext i1 %3 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %5, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 %i.au, ptr %i.av, align 4, !tbaa !1326
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i11, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread
  %.014.i.i.i.i8 = phi ptr [ %i.s, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread ], [ %.1.i.i.i.i14, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i11 ] ; 7 uses
  %.0813.i.i.i.i9 = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread ], [ %.19.i.i.i.i13, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i11 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i8, i64 32
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !741 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.o
  br i1 %i.ay, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i16, label %bb.j

end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNSC_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.lp = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !768
  %i.lr = icmp ult i8 %i.lq, %i.ke
  br i1 %i.lr, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.aa
  %i.ls = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.lo ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !1781
  %i.lv = load i64, ptr %i.ls, align 8, !tbaa !1779
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !1780
  %i.ly = sub i64 %i.lv, %i.lx
  %i.lz = icmp ult i64 %i.lu, %i.ly
  br i1 %i.lz, label %thread-pre-split38, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.aa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %i.ma = phi i8 [ %i.kc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.js, %bb.aa ], [ %i.js, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mb = phi i8 [ %i.kd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.jr, %bb.aa ], [ %i.jr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre80, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.lo, %bb.aa ], [ %i.lo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.pre-phi ; 2 uses
  %i.md = load ptr, ptr %i.bc, align 8, !tbaa !2211 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !1805 ; 3 uses
  %.not.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i.i.i.i15, label %bb.ac, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !743
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = call noundef zeroext i1 %i.mi(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, i32 noundef -1), !inline_history !6403
  br i1 %i.mj, label %.noexc28, label %bb.ac

.noexc28:                                         ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16
  %i.mk = call noundef ptr @_ZN3tbb6detail2r115current_contextEv() ; 4 uses
  %.not.i2.i.i.i.i.i.i.i25 = icmp eq ptr %i.mk, null
  br i1 %.not.i2.i.i.i.i.i.i.i25, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31, label %bb.ab

bb.ab:                                            ; preds = %.noexc28
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 15
  %i.mm = load atomic i8, ptr %i.ml monotonic, align 1
  %i.mn = icmp eq i8 %i.mm, -1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8
  %.0.i.i.i.i.i.i.i.i.i.i26 = select i1 %i.mn, ptr %i.mp, ptr %i.mk
  %i.mq = call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i.i.i.i.i.i.i26) ; 0 uses
  br label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !1780 ; 2 uses
  %i.mt = load i64, ptr %i.mc, align 8, !tbaa !1779 ; 2 uses
  %i.mu = icmp ult i64 %i.ms, %i.mt
  br i1 %i.mu, label %.lr.ph11.i.i.i.i.i.i17, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31

.lr.ph11.i.i.i.i.i.i17:                           ; preds = %bb.ac
  %i.mv = getelementptr inbounds nuw i8, ptr %i.md, i64 56
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i19, %.lr.ph11.i.i.i.i.i.i17
  %.09.i.i.i.i.i.i18 = phi i64 [ %i.ms, %.lr.ph11.i.i.i.i.i.i17 ], [ %i.nj, %._crit_edge.i.i.i.i.i.i19 ] ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !1756 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !1971, !noalias !6408 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !1971, !noalias !6408
  %i.na = getelementptr [4 x i8], ptr %i.mz, i64 %.09.i.i.i.i.i.i18 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !741, !noalias !6408 ; 2 uses
  %i.nc = getelementptr i8, ptr %i.na, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !741, !noalias !6408 ; 2 uses
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.ne
  %i.ng = icmp ult i32 %i.nb, %i.nd
  br i1 %i.ng, label %.lr.ph.preheader.i.i.i.i.i.i20, label %._crit_edge.i.i.i.i.i.i19

.lr.ph.preheader.i.i.i.i.i.i20:                   ; preds = %bb.ad
  %i.nh = zext i32 %i.nb to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.nh
  br label %.lr.ph.i.i.i.i.i.i21

._crit_edge.i.i.i.i.i.i19:                        ; preds = %.lr.ph.i.i.i.i.i.i21, %bb.ad
  %i.nj = add i64 %.09.i.i.i.i.i.i18, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.nj, %i.mt
  br i1 %exitcond.not, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31, label %bb.ad, !llvm.loop !6400

.lr.ph.i.i.i.i.i.i21:                             ; preds = %.lr.ph.i.i.i.i.i.i21, %.lr.ph.preheader.i.i.i.i.i.i20
  %.sroa.5.08.i.i.i.i.i.i22 = phi ptr [ %i.nm, %.lr.ph.i.i.i.i.i.i21 ], [ %i.ni, %.lr.ph.preheader.i.i.i.i.i.i20 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.nk = load i32, ptr %.sroa.5.08.i.i.i.i.i.i22, align 4, !tbaa !741
  %i.nl = zext i32 %i.nk to i64
  store i64 %i.nl, ptr %i.a, align 8, !tbaa !1112
  call void @_ZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16voxelizeTriangleERKm(ptr noundef nonnull align 8 dereferenceable(104) %i.md, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.5.08.i.i.i.i.i.i22, i64 4 ; 2 uses
  %i.nn = icmp ult ptr %i.nm, %i.nf
  br i1 %i.nn, label %.lr.ph.i.i.i.i.i.i21, label %._crit_edge.i.i.i.i.i.i19, !llvm.loop !6401

_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31: ; preds = %._crit_edge.i.i.i.i.i.i19, %bb.ab, %bb.ac, %.noexc28
  %i.no = add i8 %i.mb, -1
  %i.np = add i8 %i.ma, 7
  %i.nq = and i8 %i.np, 7
  br label %thread-pre-split38

thread-pre-split38:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31
  %i.nr = phi i8 [ %i.no, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31 ], [ %i.jr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ns = phi i8 [ %i.nq, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31 ], [ %i.js, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nt = icmp eq i8 %i.nr, 0
  br i1 %i.nt, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split38
  %i.nu = phi i8 [ %i.ln, %.noexc ], [ %i.bg, %thread-pre-split38 ]
  %i.nv = phi i8 [ %i.ll, %.noexc ], [ %i.nr, %thread-pre-split38 ]
  %i.nw = phi i8 [ %i.kh, %.noexc ], [ %i.ns, %thread-pre-split38 ]
  %i.nx = load ptr, ptr %3, align 8, !tbaa !2034  ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 15
  %i.nz = load atomic i8, ptr %i.ny monotonic, align 1
  %i.oa = icmp eq i8 %i.nz, -1
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8
  %.0.i.i = select i1 %i.oa, ptr %i.oc, ptr %i.nx
  %i.od = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.od, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37, label %bb.i, !llvm.loop !6406

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37: ; preds = %thread-pre-split38, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.f, %bb.e, %bb.d, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16voxelizeTriangleERKm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"class.openvdb::v13_0::math::Vec3.198"], align 4 ; 6 uses
  %3 = alloca %"class.std::vector.1027", align 8  ; 12 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 8 ; 12 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1957   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1944, !nonnull !789, !align !844
  %i.f = load i64, ptr %1, align 8, !tbaa !1112
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !1829
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %i.f ; 5 uses
  %.sroa.03.0.copyload.i = load i32, ptr %i.h, align 4, !noalias !6412
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !6412
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !6412
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !1956, !noalias !6412, !nonnull !789, !align !844
  %i.j = zext i32 %.sroa.03.0.copyload.i to i64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !1791, !noalias !6412 ; 3 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !noalias !6412
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = zext i32 %.sroa.5.0.copyload.i to i64
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !noalias !6412
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = zext i32 %.sroa.6.0.copyload.i to i64
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !noalias !6412
  %i.s = tail call noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #30, !noalias !6412 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.s, ptr noundef nonnull align 4 dereferenceable(36) %2, i64 36, i1 false), !noalias !6412
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %.sroa.0.0.copyload4.i.i = load <2 x float>, ptr %i.t, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.v = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload4.i12.i = load <2 x float>, ptr %i.u, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.6.0.copyload.i14.i = load float, ptr %.sroa.6.0..sroa_idx.i13.i, align 4
  %i.x = load <2 x float>, ptr %i.s, align 4, !tbaa !1161 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.0.0.copyload4.i.i, %i.x ; 2 uses
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.z = load <1 x float>, ptr %i.w, align 4
  %i.aa = shufflevector <2 x float> %.sroa.0.0.copyload4.i12.i, <2 x float> %.sroa.0.0.copyload4.i.i, <2 x i32> <i32 0, i32 3>
  %i.ab = fsub <2 x float> %i.aa, %i.x            ; 3 uses
  %foldExtExtBinop65 = fsub <2 x float> %.sroa.0.0.copyload4.i12.i, %i.x ; 2 uses
  %i.ac = extractelement <2 x float> %foldExtExtBinop65, i64 1
  %i.ad = insertelement <2 x float> %i.v, float %.sroa.6.0.copyload.i14.i, i64 1
  %i.ae = shufflevector <1 x float> %i.z, <1 x float> poison, <2 x i32> zeroinitializer
  %i.af = fsub <2 x float> %i.ad, %i.ae           ; 3 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> %foldExtExtBinop65, <2 x i32> <i32 3, i32 1>
  %i.ah = fneg <2 x float> %i.ag
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ak = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.al = fmul <2 x float> %i.ak, %i.ai
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.af, <2 x float> %i.al)
  %i.an = extractelement <2 x float> %i.ab, i64 0
  %i.ao = fneg float %i.an
  %i.ap = extractelement <2 x float> %i.ab, i64 1
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ac, float %i.aq)
  %.fr74 = freeze <2 x float> %i.am
  %6 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %.fr74)
  %7 = fcmp ogt <2 x float> %6, splat (float f0x322BCC77)
  %8 = bitcast <2 x i1> %7 to i2
  %or.cond.not.i = icmp ne i2 %8, 0
  %i.as = tail call float @llvm.fabs.f32(float %i.ar)
  %i.at = fcmp ogt float %i.as, f0x322BCC77
  %i.au = select i1 %or.cond.not.i, i1 true, i1 %i.at
  br i1 %i.au, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE15voxelizeCapsuleERKNS0_4math4Vec3IfEESN_SN_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.u)
          to label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit23

bb.d:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !6413 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.az = invoke noundef zeroext i1 @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE10initializeIfEEbRKNS0_4math4Vec3IT_EESP_SP_RKSM_(ptr noundef nonnull align 8 dereferenceable(504) %i.ax, ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.ay)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  br i1 %i.az, label %bb.e, label %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E7iterateEv(ptr noundef nonnull align 8 dereferenceable(504) %i.ax)
          to label %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit unwind label %bb.c

_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit: ; preds = %.noexc, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !741
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1957
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !813
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.split.thread, label %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split

.split.thread:                                    ; preds = %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.split:                                           ; preds = %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit
  %.pre50 = load ptr, ptr %3, align 8, !tbaa !1953 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i = icmp eq ptr %.pre50, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.split
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1954
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %.pre50 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %.pre50, i64 noundef %i.bk) #31
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.split.thread, %.split, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit

_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split: ; preds = %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit
  %storemerge.fr48 = phi i32 [ %i.lp, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit ], [ 0, %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit ] ; 3 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !1957  ; 2 uses
  %i.bm = zext nneg i32 %storemerge.fr48 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !741 ; 2 uses
  %i.bp = add nuw nsw i32 %storemerge.fr48, 1
  %.cmp.not = icmp eq i32 %storemerge.fr48, 2
  %i.bq = select i1 %.cmp.not, i32 0, i32 %i.bp
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !741 ; 2 uses
  %.sroa.speculated5.i.i = call i32 @llvm.umin.i32(i32 %i.bt, i32 %i.bo) ; 4 uses
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %i.bo, i32 %i.bt) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !813 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not11.i.i.i.i, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i ], [ %i.bv, %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i ], [ %i.bw, %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1946 ; 2 uses
  %i.bz = icmp ult i32 %i.by, %.sroa.speculated5.i.i
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ca = icmp eq i32 %i.by, %.sroa.speculated5.i.i
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i: ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1947
  %i.cd = icmp ult i32 %i.cc, %.sroa.speculated.i.i
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i ], [ %.013.i.i.i.i, %bb.g ], [ %.013.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt4pairIKS6_St6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS6_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS8_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !152

_ZNKSt8_Rb_treeIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt4pairIKS6_St6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS6_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS8_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.bw
  br i1 %i.cf, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt4pairIKS6_St6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS6_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS8_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !1946 ; 2 uses
  %i.ci = icmp ult i32 %.sroa.speculated5.i.i, %i.ch
  br i1 %i.ci, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = icmp eq i32 %.sroa.speculated5.i.i, %i.ch
  br i1 %i.cj, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i, label %_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i: ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !1947
  %.not.i = icmp ult i32 %.sroa.speculated.i.i, %i.cl
  br i1 %.not.i, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i

_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i, %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_ZNK7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE16getAdjacentCellsERKjS6_RSt6vectorIjSaIjEE.exit unwind label %bb.y ; 0 uses

_ZNK7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE16getAdjacentCellsERKjS6_RSt6vectorIjSaIjEE.exit: ; preds = %_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i
  %i.co = load ptr, ptr %3, align 8, !tbaa !1953  ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !741 ; 2 uses
  %i.cq = zext i32 %i.cp to i64                   ; 5 uses
  %i.cr = load i64, ptr %1, align 8, !tbaa !1112
  %i.cs = icmp eq i64 %i.cr, %i.cq
  br i1 %i.cs, label %bb.j, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit

bb.j:                                             ; preds = %_ZNK7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE16getAdjacentCellsERKjS6_RSt6vectorIjSaIjEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !741
  %i.ct = load ptr, ptr %i.ba, align 8, !tbaa !1955
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.co to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 2                 ; 2 uses
  switch i64 %i.cx, label %bb.t [
    i64 1, label %bb.k
    i64 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.cy = load ptr, ptr %0, align 8, !tbaa !1957  ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1944, !nonnull !789, !align !844
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1829
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %i.db, i64 %i.cq ; 3 uses
  %i.dd = load i32, ptr %i.a, align 4, !tbaa !741 ; 4 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !741
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !1956, !nonnull !789, !align !844
  %i.di = zext i32 %i.dg to i64
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !1791 ; 3 uses
  %i.dk = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %i.di ; 4 uses
  %i.dl = add i32 %i.dd, 1
  %i.dm = urem i32 %i.dl, 3
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !741
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %i.dq ; 2 uses
  %i.ds = add i32 %i.dd, 2
  %i.dt = urem i32 %i.ds, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !741
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1791
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %i.cq ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load <2 x float>, ptr %i.eb, align 4 ; 3 uses
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNSC_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.lp = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !768
  %i.lr = icmp ult i8 %i.lq, %i.ke
  br i1 %i.lr, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.aa
  %i.ls = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.lo ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !1781
  %i.lv = load i64, ptr %i.ls, align 8, !tbaa !1779
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !1780
  %i.ly = sub i64 %i.lv, %i.lx
  %i.lz = icmp ult i64 %i.lu, %i.ly
  br i1 %i.lz, label %thread-pre-split38, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.aa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %i.ma = phi i8 [ %i.kc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.js, %bb.aa ], [ %i.js, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mb = phi i8 [ %i.kd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.jr, %bb.aa ], [ %i.jr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre80, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.lo, %bb.aa ], [ %i.lo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.pre-phi ; 2 uses
  %i.md = load ptr, ptr %i.bc, align 8, !tbaa !3147 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !1820 ; 3 uses
  %.not.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i.i.i.i15, label %bb.ac, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !743
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = call noundef zeroext i1 %i.mi(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, i32 noundef -1), !inline_history !8123
  br i1 %i.mj, label %.noexc28, label %bb.ac

.noexc28:                                         ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16
  %i.mk = call noundef ptr @_ZN3tbb6detail2r115current_contextEv() ; 4 uses
  %.not.i2.i.i.i.i.i.i.i25 = icmp eq ptr %i.mk, null
  br i1 %.not.i2.i.i.i.i.i.i.i25, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31, label %bb.ab

bb.ab:                                            ; preds = %.noexc28
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 15
  %i.mm = load atomic i8, ptr %i.ml monotonic, align 1
  %i.mn = icmp eq i8 %i.mm, -1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8
  %.0.i.i.i.i.i.i.i.i.i.i26 = select i1 %i.mn, ptr %i.mp, ptr %i.mk
  %i.mq = call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i.i.i.i.i.i.i26) ; 0 uses
  br label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !1780 ; 2 uses
  %i.mt = load i64, ptr %i.mc, align 8, !tbaa !1779 ; 2 uses
  %i.mu = icmp ult i64 %i.ms, %i.mt
  br i1 %i.mu, label %.lr.ph11.i.i.i.i.i.i17, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31

.lr.ph11.i.i.i.i.i.i17:                           ; preds = %bb.ac
  %i.mv = getelementptr inbounds nuw i8, ptr %i.md, i64 56
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i19, %.lr.ph11.i.i.i.i.i.i17
  %.09.i.i.i.i.i.i18 = phi i64 [ %i.ms, %.lr.ph11.i.i.i.i.i.i17 ], [ %i.nj, %._crit_edge.i.i.i.i.i.i19 ] ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !1756 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !1971, !noalias !8128 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !1971, !noalias !8128
  %i.na = getelementptr [4 x i8], ptr %i.mz, i64 %.09.i.i.i.i.i.i18 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !741, !noalias !8128 ; 2 uses
  %i.nc = getelementptr i8, ptr %i.na, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !741, !noalias !8128 ; 2 uses
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.ne
  %i.ng = icmp ult i32 %i.nb, %i.nd
  br i1 %i.ng, label %.lr.ph.preheader.i.i.i.i.i.i20, label %._crit_edge.i.i.i.i.i.i19

.lr.ph.preheader.i.i.i.i.i.i20:                   ; preds = %bb.ad
  %i.nh = zext i32 %i.nb to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.nh
  br label %.lr.ph.i.i.i.i.i.i21

._crit_edge.i.i.i.i.i.i19:                        ; preds = %.lr.ph.i.i.i.i.i.i21, %bb.ad
  %i.nj = add i64 %.09.i.i.i.i.i.i18, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.nj, %i.mt
  br i1 %exitcond.not, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31, label %bb.ad, !llvm.loop !8120

.lr.ph.i.i.i.i.i.i21:                             ; preds = %.lr.ph.i.i.i.i.i.i21, %.lr.ph.preheader.i.i.i.i.i.i20
  %.sroa.5.08.i.i.i.i.i.i22 = phi ptr [ %i.nm, %.lr.ph.i.i.i.i.i.i21 ], [ %i.ni, %.lr.ph.preheader.i.i.i.i.i.i20 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.nk = load i32, ptr %.sroa.5.08.i.i.i.i.i.i22, align 4, !tbaa !741
  %i.nl = zext i32 %i.nk to i64
  store i64 %i.nl, ptr %i.a, align 8, !tbaa !1112
  call void @_ZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16voxelizeTriangleERKm(ptr noundef nonnull align 8 dereferenceable(104) %i.md, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.5.08.i.i.i.i.i.i22, i64 4 ; 2 uses
  %i.nn = icmp ult ptr %i.nm, %i.nf
  br i1 %i.nn, label %.lr.ph.i.i.i.i.i.i21, label %._crit_edge.i.i.i.i.i.i19, !llvm.loop !8121

_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31: ; preds = %._crit_edge.i.i.i.i.i.i19, %bb.ab, %bb.ac, %.noexc28
  %i.no = add i8 %i.mb, -1
  %i.np = add i8 %i.ma, 7
  %i.nq = and i8 %i.np, 7
  br label %thread-pre-split38

thread-pre-split38:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31
  %i.nr = phi i8 [ %i.no, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31 ], [ %i.jr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ns = phi i8 [ %i.nq, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31 ], [ %i.js, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nt = icmp eq i8 %i.nr, 0
  br i1 %i.nt, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split38
  %i.nu = phi i8 [ %i.ln, %.noexc ], [ %i.bg, %thread-pre-split38 ]
  %i.nv = phi i8 [ %i.ll, %.noexc ], [ %i.nr, %thread-pre-split38 ]
  %i.nw = phi i8 [ %i.kh, %.noexc ], [ %i.ns, %thread-pre-split38 ]
  %i.nx = load ptr, ptr %3, align 8, !tbaa !2034  ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 15
  %i.nz = load atomic i8, ptr %i.ny monotonic, align 1
  %i.oa = icmp eq i8 %i.nz, -1
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8
  %.0.i.i = select i1 %i.oa, ptr %i.oc, ptr %i.nx
  %i.od = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.od, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37, label %bb.i, !llvm.loop !8126

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37: ; preds = %thread-pre-split38, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.f, %bb.e, %bb.d, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16voxelizeTriangleERKm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"class.openvdb::v13_0::math::Vec3.198"], align 4 ; 6 uses
  %3 = alloca %"class.std::vector.1027", align 8  ; 12 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 8 ; 12 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1957   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1944, !nonnull !789, !align !844
  %i.f = load i64, ptr %1, align 8, !tbaa !1112
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !1829
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %i.f ; 5 uses
  %.sroa.03.0.copyload.i = load i32, ptr %i.h, align 4, !noalias !8132
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !8132
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !8132
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !1956, !noalias !8132, !nonnull !789, !align !844
  %i.j = zext i32 %.sroa.03.0.copyload.i to i64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !1791, !noalias !8132 ; 3 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !noalias !8132
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = zext i32 %.sroa.5.0.copyload.i to i64
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !noalias !8132
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = zext i32 %.sroa.6.0.copyload.i to i64
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !noalias !8132
  %i.s = tail call noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #30, !noalias !8132 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.s, ptr noundef nonnull align 4 dereferenceable(36) %2, i64 36, i1 false), !noalias !8132
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %.sroa.0.0.copyload4.i.i = load <2 x float>, ptr %i.t, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.v = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload4.i12.i = load <2 x float>, ptr %i.u, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.6.0.copyload.i14.i = load float, ptr %.sroa.6.0..sroa_idx.i13.i, align 4
  %i.x = load <2 x float>, ptr %i.s, align 4, !tbaa !1161 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.0.0.copyload4.i.i, %i.x ; 2 uses
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.z = load <1 x float>, ptr %i.w, align 4
  %i.aa = shufflevector <2 x float> %.sroa.0.0.copyload4.i12.i, <2 x float> %.sroa.0.0.copyload4.i.i, <2 x i32> <i32 0, i32 3>
  %i.ab = fsub <2 x float> %i.aa, %i.x            ; 3 uses
  %foldExtExtBinop65 = fsub <2 x float> %.sroa.0.0.copyload4.i12.i, %i.x ; 2 uses
  %i.ac = extractelement <2 x float> %foldExtExtBinop65, i64 1
  %i.ad = insertelement <2 x float> %i.v, float %.sroa.6.0.copyload.i14.i, i64 1
  %i.ae = shufflevector <1 x float> %i.z, <1 x float> poison, <2 x i32> zeroinitializer
  %i.af = fsub <2 x float> %i.ad, %i.ae           ; 3 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> %foldExtExtBinop65, <2 x i32> <i32 3, i32 1>
  %i.ah = fneg <2 x float> %i.ag
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ak = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.al = fmul <2 x float> %i.ak, %i.ai
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.af, <2 x float> %i.al)
  %i.an = extractelement <2 x float> %i.ab, i64 0
  %i.ao = fneg float %i.an
  %i.ap = extractelement <2 x float> %i.ab, i64 1
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ac, float %i.aq)
  %.fr74 = freeze <2 x float> %i.am
  %6 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %.fr74)
  %7 = fcmp ogt <2 x float> %6, splat (float f0x322BCC77)
  %8 = bitcast <2 x i1> %7 to i2
  %or.cond.not.i = icmp ne i2 %8, 0
  %i.as = tail call float @llvm.fabs.f32(float %i.ar)
  %i.at = fcmp ogt float %i.as, f0x322BCC77
  %i.au = select i1 %or.cond.not.i, i1 true, i1 %i.at
  br i1 %i.au, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE15voxelizeCapsuleERKNS0_4math4Vec3IfEESN_SN_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.u)
          to label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit23

bb.d:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !8133 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.az = invoke noundef zeroext i1 @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE10initializeIfEEbRKNS0_4math4Vec3IT_EESP_SP_RKSM_(ptr noundef nonnull align 8 dereferenceable(680) %i.ax, ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.ay)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  br i1 %i.az, label %bb.e, label %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E7iterateEv(ptr noundef nonnull align 8 dereferenceable(680) %i.ax)
          to label %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit unwind label %bb.c

_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit: ; preds = %.noexc, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !741
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1957
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !813
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.split.thread, label %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split

.split.thread:                                    ; preds = %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.split:                                           ; preds = %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit
  %.pre50 = load ptr, ptr %3, align 8, !tbaa !1953 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i = icmp eq ptr %.pre50, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.split
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1954
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %.pre50 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %.pre50, i64 noundef %i.bk) #31
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.split.thread, %.split, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit

_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split: ; preds = %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit
  %storemerge.fr48 = phi i32 [ %i.lp, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit ], [ 0, %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit ] ; 3 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !1957  ; 2 uses
  %i.bm = zext nneg i32 %storemerge.fr48 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !741 ; 2 uses
  %i.bp = add nuw nsw i32 %storemerge.fr48, 1
  %.cmp.not = icmp eq i32 %storemerge.fr48, 2
  %i.bq = select i1 %.cmp.not, i32 0, i32 %i.bp
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !741 ; 2 uses
  %.sroa.speculated5.i.i = call i32 @llvm.umin.i32(i32 %i.bt, i32 %i.bo) ; 4 uses
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %i.bo, i32 %i.bt) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !813 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not11.i.i.i.i, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i ], [ %i.bv, %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i ], [ %i.bw, %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1946 ; 2 uses
  %i.bz = icmp ult i32 %i.by, %.sroa.speculated5.i.i
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ca = icmp eq i32 %i.by, %.sroa.speculated5.i.i
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i: ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1947
  %i.cd = icmp ult i32 %i.cc, %.sroa.speculated.i.i
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i ], [ %.013.i.i.i.i, %bb.g ], [ %.013.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt4pairIKS6_St6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS6_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS8_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !152

_ZNKSt8_Rb_treeIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt4pairIKS6_St6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS6_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS8_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.bw
  br i1 %i.cf, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt4pairIKS6_St6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS6_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS8_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !1946 ; 2 uses
  %i.ci = icmp ult i32 %.sroa.speculated5.i.i, %i.ch
  br i1 %i.ci, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = icmp eq i32 %.sroa.speculated5.i.i, %i.ch
  br i1 %i.cj, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i, label %_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i: ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !1947
  %.not.i = icmp ult i32 %.sroa.speculated.i.i, %i.cl
  br i1 %.not.i, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i

_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i, %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_ZNK7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE16getAdjacentCellsERKjS6_RSt6vectorIjSaIjEE.exit unwind label %bb.y ; 0 uses

_ZNK7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE16getAdjacentCellsERKjS6_RSt6vectorIjSaIjEE.exit: ; preds = %_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i
  %i.co = load ptr, ptr %3, align 8, !tbaa !1953  ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !741 ; 2 uses
  %i.cq = zext i32 %i.cp to i64                   ; 5 uses
  %i.cr = load i64, ptr %1, align 8, !tbaa !1112
  %i.cs = icmp eq i64 %i.cr, %i.cq
  br i1 %i.cs, label %bb.j, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit

bb.j:                                             ; preds = %_ZNK7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE16getAdjacentCellsERKjS6_RSt6vectorIjSaIjEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !741
  %i.ct = load ptr, ptr %i.ba, align 8, !tbaa !1955
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.co to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 2                 ; 2 uses
  switch i64 %i.cx, label %bb.t [
    i64 1, label %bb.k
    i64 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.cy = load ptr, ptr %0, align 8, !tbaa !1957  ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1944, !nonnull !789, !align !844
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1829
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %i.db, i64 %i.cq ; 3 uses
  %i.dd = load i32, ptr %i.a, align 4, !tbaa !741 ; 4 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !741
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !1956, !nonnull !789, !align !844
  %i.di = zext i32 %i.dg to i64
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !1791 ; 3 uses
  %i.dk = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %i.di ; 4 uses
  %i.dl = add i32 %i.dd, 1
  %i.dm = urem i32 %i.dl, 3
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !741
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %i.dq ; 2 uses
  %i.ds = add i32 %i.dd, 2
  %i.dt = urem i32 %i.ds, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !741
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1791
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %i.cq ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load <2 x float>, ptr %i.eb, align 4 ; 3 uses
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
end_hunk_2

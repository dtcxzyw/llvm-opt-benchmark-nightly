Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VolumeAdvect?download=true
inline.NumInlined: 44093
inline.NumDeleted: 14806
loop-unroll.NumCompletelyUnrolled: 255
loop-unroll.NumRuntimeUnrolled: 270
loop-unroll.NumUnrolled: 748
begin_hunk_0_@_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EE4nextEj:bb.a
  %i.s = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.d
  %.016.lcssa.i.i.i.i = phi i32 [ %i.f, %bb.d ], [ %i.s, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %i.r, %.critedge.loopexit.i.i.i.i ]
  %i.t = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.u = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %bb.b, %bb.c, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ 32768, %bb.b ], [ %i.e, %bb.c ], [ %i.w, %.critedge.i.i.i.i ], [ 32768, %.lr.ph.i.i.i.i.preheader ], [ 32768, %.lr.ph.i.i.i.i ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.a, align 8, !tbaa !480
  %i.x = icmp ne i32 %.118.i.i.i.i, 32768
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !1696
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !1697 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.ac) #31 ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !1697
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.promoted.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ac, %bb.e ] ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.ab
  br i1 %.not2.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ah, %bb.h ], [ %.promoted.i.i.i.i, %bb.g ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1584
  %.not1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not1.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.ae) #31 ; 3 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !1697
  %.not.i.i.i.i3 = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i3, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !171

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i2
  %i.ai = phi ptr [ %i.ab, %bb.h ], [ %i.ae, %.lr.ph.i.i.i.i2 ]
  %i.aj = icmp ne ptr %i.ai, %i.ab
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, %bb.g, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit
  %i.ak = phi i1 [ %i.x, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit ], [ false, %bb.a ], [ %i.aj, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i ], [ false, %bb.g ]
  ret i1 %i.ak
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %6 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 8 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %8 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %2, align 4, !tbaa !363
  %i.d = load i32, ptr %i.b, align 8, !tbaa !363
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !363
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !363
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !363
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !363
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = and i32 %i.e, -4096                      ; 13 uses
  %i.q = and i32 %i.j, -4096                      ; 13 uses
  %i.r = and i32 %i.o, -4096                      ; 7 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.q to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !589  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !363  ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %i.w, %i.p
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !363 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.aa, %i.q
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !363
  %i.af = icmp slt i32 %i.ae, %i.r
  br i1 %i.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !552 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !168

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ah, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !363 ; 2 uses
  %i.ak = icmp slt i32 %i.p, %i.aj
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.p, %i.aj
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !363 ; 2 uses
  %i.ao = icmp slt i32 %i.q, %i.an
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.q, %i.an
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !363
  %i.as = icmp slt i32 %i.r, %i.ar
  br i1 %i.as, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %.not37 = icmp eq i32 %1, 3
  br i1 %.not37, label %.lr.ph.i.i.i.i51, label %vector.ph107

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread: ; preds = %bb.b
  %.not3783 = icmp eq i32 %1, 3
  br i1 %.not3783, label %.thread, label %vector.ph107

.thread:                                          ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.at = zext i1 %4 to i8
  %i.au = load double, ptr %3, align 8, !tbaa !410
  store double %i.au, ptr %6, align 8, !tbaa !1647
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.at, ptr %i.av, align 8, !tbaa !1648
  br label %.critedge.i66

vector.ph107:                                     ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %i.k, align 4, !tbaa !363
  %i.az = load <2 x i32>, ptr %2, align 4, !tbaa !363
  %i.ba = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ay, i64 2
  %i.bb = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bd = and <4 x i32> %i.bc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bd, ptr %i.ax, align 8, !tbaa !363
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = load <2 x double>, ptr %i.be, align 8
  %broadcast.splat109 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next112.3, %vector.body110 ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x double> %broadcast.splat109, ptr %i.bf, align 8, !tbaa !390
  store <2 x double> %broadcast.splat109, ptr %i.bg, align 8, !tbaa !390
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store <2 x double> %broadcast.splat109, ptr %i.bi, align 8, !tbaa !390
  store <2 x double> %broadcast.splat109, ptr %i.bj, align 8, !tbaa !390
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store <2 x double> %broadcast.splat109, ptr %i.bl, align 8, !tbaa !390
  store <2 x double> %broadcast.splat109, ptr %i.bm, align 8, !tbaa !390
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store <2 x double> %broadcast.splat109, ptr %i.bo, align 8, !tbaa !390
  store <2 x double> %broadcast.splat109, ptr %i.bp, align 8, !tbaa !390
  %index.next112.3 = add nuw nsw i64 %index111, 16 ; 2 uses
  %i.bq = icmp eq i64 %index.next112.3, 32768
  br i1 %i.bq, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body110, !llvm.loop !5575

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body110
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !589 ; 2 uses
  %.not12.i.i.i.i39 = icmp eq ptr %i.br, null
  br i1 %.not12.i.i.i.i39, label %.critedge.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %.014.i.i.i.i41 = phi ptr [ %.1.i.i.i.i47, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.br, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i42 = phi ptr [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !363 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i40
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !363 ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp sgt i32 %i.bx, %i.q
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 40
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !363
  %i.cc = icmp slt i32 %i.cb, %i.r
  br i1 %i.cc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.k, %.lr.ph.i.i.i.i40
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.l, %bb.j
  %.sink.i.i.i.i45 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ]
  %.19.i.i.i.i46 = phi ptr [ %.0813.i.i.i.i42, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ %.014.i.i.i.i41, %bb.l ], [ %.014.i.i.i.i41, %bb.j ], [ %.014.i.i.i.i41, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 %.sink.i.i.i.i45
  %.1.i.i.i.i47 = load ptr, ptr %i.cd, align 8, !tbaa !552 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %.1.i.i.i.i47, null
  br i1 %.not.i.i.i.i48, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i40, !llvm.loop !168

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %i.ce = icmp eq ptr %.19.i.i.i.i46, %i.u
  br i1 %i.ce, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !363 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 36
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !363 ; 2 uses
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp sgt i32 %i.q, %i.ck
  br i1 %i.cm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !363
  %i.cp = icmp slt i32 %i.r, %i.co
  br i1 %i.cp, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i46, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i46, %bb.m ], [ %.19.i.i.i.i46, %bb.o ]
  %i.cq = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.aw) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.n, %bb.p, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
  br label %bb.af

.lr.ph.i.i.i.i51:                                 ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.cr = zext i1 %4 to i8
  %i.cs = load double, ptr %3, align 8, !tbaa !410
  store double %i.cs, ptr %6, align 8, !tbaa !1647
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.cr, ptr %i.ct, align 8, !tbaa !1648
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, %.lr.ph.i.i.i.i51
  %.014.i.i.i.i52 = phi ptr [ %i.t, %.lr.ph.i.i.i.i51 ], [ %.1.i.i.i.i58, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ] ; 7 uses
  %.0813.i.i.i.i53 = phi ptr [ %i.u, %.lr.ph.i.i.i.i51 ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !363 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.p
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = icmp sgt i32 %i.cv, %i.p
  br i1 %i.cx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 36
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !363 ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.q
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = icmp sgt i32 %i.cz, %i.q
  br i1 %i.db, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54: ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 40
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !363
  %i.de = icmp slt i32 %i.dd, %i.r
  br i1 %i.de, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.s, %bb.q
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.t, %bb.r
  %.sink.i.i.i.i56 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ 16, %bb.t ], [ 16, %bb.r ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ]
  %.19.i.i.i.i57 = phi ptr [ %.0813.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ %.014.i.i.i.i52, %bb.t ], [ %.014.i.i.i.i52, %bb.r ], [ %.014.i.i.i.i52, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ] ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 %.sink.i.i.i.i56
  %.1.i.i.i.i58 = load ptr, ptr %i.df, align 8, !tbaa !552 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %.1.i.i.i.i58, null
  br i1 %.not.i.i.i.i59, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60, label %bb.q, !llvm.loop !168

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55
  %i.dg = icmp eq ptr %.19.i.i.i.i57, %i.u
  br i1 %i.dg, label %.critedge.i66, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %i.dh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 32
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !363 ; 2 uses
  %i.dj = icmp slt i32 %i.p, %i.di
  br i1 %i.dj, label %.critedge.i66, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp sgt i32 %i.p, %i.di
  br i1 %i.dk, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 36
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !363 ; 2 uses
  %i.dn = icmp slt i32 %i.q, %i.dm
  br i1 %i.dn, label %.critedge.i66, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = icmp sgt i32 %i.q, %i.dm
  br i1 %i.do, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61: ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 40
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !363
  %i.dr = icmp slt i32 %i.r, %i.dq
  br i1 %i.dr, label %.critedge.i66, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i66:                                    ; preds = %.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61, %bb.w, %bb.u, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %.08.lcssa.i.i.i20.i67 = phi ptr [ %i.u, %.thread ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61 ], [ %.19.i.i.i.i57, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60 ], [ %.19.i.i.i.i57, %bb.u ], [ %.19.i.i.i.i57, %bb.w ]
  %i.ds = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i67, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(9) %6) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.v, %bb.x, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61, %.critedge.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.af

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 5 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1584 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS6_8LeafNodeIdLj3EEEE11NodeReducerINS5_5tools14count_internal10MemUsageOpINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEEEEEvPNS1_4nodeERKNS1_14execution_dataE:bb.a
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.am)
  br label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

_ZN3tbb6detail2d112wait_context7releaseEj.exit:   ; preds = %bb.f, %bb.a, %bb.h, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca [3 x i32], align 8                ; 11 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !365
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.i)
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef 8) ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !365
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  tail call void @_ZN7openvdb5v13_02io25setGridBackgroundValuePtrERSt8ios_basePKv(ptr noundef nonnull align 8 dereferenceable(216) %i.o, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !363
  %i.p = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !363
  %i.s = icmp ne i32 %i.r, 0                      ; 2 uses
  %i.t = load i32, ptr %i.b, align 4              ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  %or.cond.not = select i1 %i.s, i1 true, i1 %i.u ; 2 uses
  br i1 %or.cond.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  br i1 %i.s, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

.preheader.loopexit:                              ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !363
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.b
  %i.ac = phi i32 [ %.pre, %.preheader.loopexit ], [ %i.t, %bb.b ]
  %.not48 = icmp eq i32 %i.ac, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %vector.ph

bb.c:                                             ; preds = %.lr.ph, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02345 = phi i32 [ 0, %.lr.ph ], [ %i.br, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.aj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.ak = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 8) ; 0 uses
  %i.al = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.am = load i32, ptr %i.c, align 8, !tbaa !363 ; 5 uses
  store i32 %i.am, ptr %3, align 4, !tbaa !363
  %i.an = load i32, ptr %i.w, align 4, !tbaa !363 ; 5 uses
  store i32 %i.an, ptr %i.v, align 4, !tbaa !363
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !363 ; 3 uses
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ap = load i8, ptr %i.e, align 1, !tbaa !782, !range !603, !noundef !604
  %i.aq = load double, ptr %i.d, align 8, !tbaa !410
  store double %i.aq, ptr %4, align 8, !tbaa !1647
  store i8 %i.ap, ptr %i.z, align 8, !tbaa !1648
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !589 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ar, %bb.c ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ab, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.at = load i32, ptr %i.as, align 4, !tbaa !363 ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.am
  br i1 %i.au, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = icmp sgt i32 %i.at, %i.am
  br i1 %i.av, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !363 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.an
  br i1 %i.ay, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = icmp sgt i32 %i.ax, %i.an
  br i1 %i.az, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !363
  %i.bc = icmp slt i32 %i.bb, %i.ao
  br i1 %i.bc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.f, %bb.d
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.f ], [ 16, %bb.d ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.f ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !552 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !168

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.be = icmp eq ptr %.19.i.i.i.i, %i.ab
  br i1 %i.be, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !363 ; 2 uses
  %i.bh = icmp slt i32 %i.am, %i.bg
  br i1 %i.bh, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp sgt i32 %i.am, %i.bg
  br i1 %i.bi, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !363 ; 2 uses
  %i.bl = icmp slt i32 %i.an, %i.bk
  br i1 %i.bl, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = icmp sgt i32 %i.an, %i.bk
  br i1 %i.bm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !363
  %i.bp = icmp slt i32 %i.ao, %i.bo
  br i1 %i.bp, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.i, %bb.g, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %bb.c
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.ab, %bb.c ], [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i, %bb.g ], [ %.19.i.i.i.i, %bb.i ]
  %i.bq = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(9) %4) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.h, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.br = add nuw i32 %.02345, 1                  ; 2 uses
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !363
  %i.bt = icmp ult i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.c, label %.preheader.loopexit, !llvm.loop !6234

._crit_edge:                                      ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.r

vector.ph:                                        ; preds = %.lr.ph47, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02446 = phi i32 [ 0, %.lr.ph47 ], [ %i.ds, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.bu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.bv = load i32, ptr %i.ae, align 8, !tbaa !363
  %i.bw = load <2 x i32>, ptr %i.c, align 8, !tbaa !363
  %i.bx = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.bx, i8 0, i64 270336, i1 false)
  %i.bz = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.bv, i64 2
  %i.ca = shufflevector <2 x i32> %i.bw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cc = and <4 x i32> %i.cb, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.cc, ptr %i.by, align 8, !tbaa !363
  %6 = load <2 x double>, ptr %i.j, align 8
  %broadcast.splat = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cd, align 8, !tbaa !390
  store <2 x double> %broadcast.splat, ptr %i.ce, align 8, !tbaa !390
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  store <2 x double> %broadcast.splat, ptr %i.cg, align 8, !tbaa !390
  store <2 x double> %broadcast.splat, ptr %i.ch, align 8, !tbaa !390
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  store <2 x double> %broadcast.splat, ptr %i.cj, align 8, !tbaa !390
  store <2 x double> %broadcast.splat, ptr %i.ck, align 8, !tbaa !390
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  store <2 x double> %broadcast.splat, ptr %i.cm, align 8, !tbaa !390
  store <2 x double> %broadcast.splat, ptr %i.cn, align 8, !tbaa !390
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.co = icmp eq i64 %index.next.3, 32768
  br i1 %i.co, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !6235

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !363 ; 5 uses
  store i32 %i.cp, ptr %5, align 4, !tbaa !363
  %i.cq = load i32, ptr %i.ad, align 4, !tbaa !363 ; 5 uses
  store i32 %i.cq, ptr %i.af, align 4, !tbaa !363
  %i.cr = load i32, ptr %i.ae, align 8, !tbaa !363 ; 3 uses
  store i32 %i.cr, ptr %i.ag, align 4, !tbaa !363
  %i.cs = load ptr, ptr %i.ah, align 8, !tbaa !589 ; 2 uses
  %.not12.i.i.i.i26 = icmp eq ptr %i.cs, null
  br i1 %.not12.i.i.i.i26, label %.critedge.i42, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %.014.i.i.i.i28 = phi ptr [ %.1.i.i.i.i34, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i29 = phi ptr [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 32
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !363 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, %i.cp
  br i1 %i.cv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.cw = icmp sgt i32 %i.cu, %i.cp
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !363 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %i.cq
  br i1 %i.cz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = icmp sgt i32 %i.cy, %i.cq
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30: ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 40
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !363
  %i.dd = icmp slt i32 %i.dc, %i.cr
  br i1 %i.dd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.l, %.lr.ph.i.i.i.i27
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.m, %bb.k
  %.sink.i.i.i.i32 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ 16, %bb.m ], [ 16, %bb.k ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ]
  %.19.i.i.i.i33 = phi ptr [ %.0813.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ %.014.i.i.i.i28, %bb.m ], [ %.014.i.i.i.i28, %bb.k ], [ %.014.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ] ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 %.sink.i.i.i.i32
  %.1.i.i.i.i34 = load ptr, ptr %i.de, align 8, !tbaa !552 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %.1.i.i.i.i34, null
  br i1 %.not.i.i.i.i35, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, label %.lr.ph.i.i.i.i27, !llvm.loop !168

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %i.df = icmp eq ptr %.19.i.i.i.i33, %i.ai
  br i1 %i.df, label %.critedge.i42, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36
  %i.dg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 32
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !363 ; 2 uses
  %i.di = icmp slt i32 %i.cp, %i.dh
  br i1 %i.di, label %.critedge.i42, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = icmp sgt i32 %i.cp, %i.dh
  br i1 %i.dj, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 36
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !363 ; 2 uses
  %i.dm = icmp slt i32 %i.cq, %i.dl
  br i1 %i.dm, label %.critedge.i42, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = icmp sgt i32 %i.cq, %i.dl
  br i1 %i.dn, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37: ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 40
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !363
  %i.dq = icmp slt i32 %i.cr, %i.dp
  br i1 %i.dq, label %.critedge.i42, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i42:                                    ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %bb.p, %bb.n, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i43 = phi ptr [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37 ], [ %.19.i.i.i.i33, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36 ], [ %.19.i.i.i.i33, %bb.n ], [ %.19.i.i.i.i33, %bb.p ]
  %i.dr = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i43, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.bx) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.o, %bb.q, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %.critedge.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ds = add nuw i32 %.02446, 1                  ; 2 uses
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !363
  %i.du = icmp ult i32 %i.ds, %i.dt
  br i1 %i.du, label %vector.ph, label %._crit_edge, !llvm.loop !6236

bb.r:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %or.cond.not
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !365
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  %i.e = load ptr, ptr %1, align 8, !tbaa !365
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.h)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !365
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
  %i.o = load double, ptr %i.n, align 8, !tbaa !410
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 10 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.q, i64 noundef 4096) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 266240 ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i64 noundef 4096) ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !365
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = tail call noundef i32 @_ZN7openvdb5v13_02io16getFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.x)
  %i.z = icmp ult i32 %i.y, 222                   ; 2 uses
  br i1 %i.z, label %vector.body, label %bb.d

vector.body:                                      ; preds = %bb.c, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.c ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ag, %vector.body ], [ zeroinitializer, %bb.c ]
  %vec.phi201 = phi <2 x i32> [ %i.ah, %vector.body ], [ zeroinitializer, %bb.c ]
  %i.aa = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !555
  %wide.load202 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !555
  %i.ac = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load202)
  %i.ae = trunc nuw nsw <2 x i64> %i.ac to <2 x i32>
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = add <2 x i32> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i32> %vec.phi201, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 512
  br i1 %i.ai, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit, label %vector.body, !llvm.loop !6237

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ah, %i.ag
  %i.aj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.ak = sub i32 32768, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit
  %i.al = phi i32 [ %i.ak, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit ], [ 32768, %bb.c ] ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #29 ; 5 uses
  invoke void @_ZN7openvdb5v13_02io20readCompressedValuesIdNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ao, i32 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i1 noundef zeroext %2)
          to label %bb.e unwind label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit56

end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4fillERKNS0_4math9CoordBBoxERKdb:bb.a
  %i.y = phi i32 [ %i.ai, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 6 uses
  %i.z = phi i32 [ %i.aj, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 2 uses
  %i.aa = phi i32 [ %i.ak, %._crit_edge227 ], [ %i.m, %.lr.ph231.split.preheader ] ; 3 uses
  %i.ab = phi i32 [ %i.al, %._crit_edge227 ], [ %i.m, %.lr.ph231.split.preheader ] ; 3 uses
  %i.ac = phi i32 [ %i.am, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 2 uses
  %.0230 = phi i32 [ %i.an, %._crit_edge227 ], [ %i.a, %.lr.ph231.split.preheader ] ; 9 uses
  %.sroa.0162.0229 = phi i64 [ %.sroa.0162.1.lcssa, %._crit_edge227 ], [ 0, %.lr.ph231.split.preheader ] ; 4 uses
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !363 ; 2 uses
  %.not42222 = icmp sgt i32 %i.ad, %i.ac
  br i1 %.not42222, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph231.split
  %i.ae = and i32 %.0230, -4096                   ; 2 uses
  %i.af = load i32, ptr %i.j, align 4, !tbaa !363
  %i.ag = icmp sgt i32 %i.af, %i.ab
  br i1 %i.ag, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
  %.sroa.0.0.insert.ext.i12.i.i = zext i32 %.0230 to i64
  br label %.lr.ph226.split

.lr.ph226.split.us:                               ; preds = %.lr.ph226
  %.sroa.0162.4.extract.shift.us = lshr i64 %.sroa.0162.0229, 32
  %.sroa.0162.4.extract.trunc.us = trunc nuw i64 %.sroa.0162.4.extract.shift.us to i32
  %.not42.us.not = icmp sle i32 %i.y, %.sroa.0162.4.extract.trunc.us
  call void @llvm.assume(i1 %.not42.us.not)
  br label %._crit_edge227

._crit_edge227.loopexit:                          ; preds = %bb.c
  %.pre257 = load i32, ptr %i.b, align 4, !tbaa !363
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %.lr.ph226.split.us, %._crit_edge227.loopexit, %.lr.ph231.split
  %i.ah = phi i32 [ %i.x, %.lr.ph231.split ], [ %i.x, %.lr.ph226.split.us ], [ %.pre257, %._crit_edge227.loopexit ] ; 2 uses
  %i.ai = phi i32 [ %i.y, %.lr.ph231.split ], [ %i.y, %.lr.ph226.split.us ], [ %i.at, %._crit_edge227.loopexit ]
  %i.aj = phi i32 [ %i.z, %.lr.ph231.split ], [ %i.y, %.lr.ph226.split.us ], [ %i.au, %._crit_edge227.loopexit ]
  %i.ak = phi i32 [ %i.aa, %.lr.ph231.split ], [ %i.aa, %.lr.ph226.split.us ], [ %i.av, %._crit_edge227.loopexit ]
  %i.al = phi i32 [ %i.ab, %.lr.ph231.split ], [ %i.ab, %.lr.ph226.split.us ], [ %i.av, %._crit_edge227.loopexit ]
  %i.am = phi i32 [ %i.ac, %.lr.ph231.split ], [ %i.y, %.lr.ph226.split.us ], [ %i.au, %._crit_edge227.loopexit ]
  %.sroa.0162.1.lcssa = phi i64 [ %.sroa.0162.0229, %.lr.ph231.split ], [ %.sroa.0162.0229, %.lr.ph226.split.us ], [ %.sroa.0162.2.lcssa, %._crit_edge227.loopexit ] ; 2 uses
  %.sroa.0162.0.extract.trunc = trunc i64 %.sroa.0162.1.lcssa to i32 ; 2 uses
  %i.an = add nsw i32 %.sroa.0162.0.extract.trunc, 1
  %.not.not = icmp sgt i32 %i.ah, %.sroa.0162.0.extract.trunc
  br i1 %.not.not, label %.lr.ph231.split, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.thread, !llvm.loop !6365

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %bb.c
  %i.ao = phi i32 [ %i.at, %bb.c ], [ %i.y, %.lr.ph226.split.preheader ]
  %i.ap = phi i32 [ %i.au, %bb.c ], [ %i.z, %.lr.ph226.split.preheader ]
  %i.aq = phi i32 [ %i.av, %bb.c ], [ %i.aa, %.lr.ph226.split.preheader ] ; 3 uses
  %.037224 = phi i32 [ %i.aw, %bb.c ], [ %i.ad, %.lr.ph226.split.preheader ] ; 8 uses
  %.sroa.0162.1223 = phi i64 [ %.sroa.0162.2.lcssa, %bb.c ], [ %.sroa.0162.0229, %.lr.ph226.split.preheader ]
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !363 ; 2 uses
  %.not43217 = icmp sgt i32 %i.ar, %i.aq
  br i1 %.not43217, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph226.split
  %i.as = and i32 %.037224, -4096                 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.dk
  %.sroa.2.0.insert.ext.i.i.le = zext i32 %i.bi to i64
  %.sroa.2.0.insert.shift.i.i.le = shl nuw i64 %.sroa.2.0.insert.ext.i.i.le, 32
  %.sroa.0.0.insert.ext.i.i.le = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i.le = or disjoint i64 %.sroa.2.0.insert.shift.i.i.le, %.sroa.0.0.insert.ext.i.i.le
  %.pre = load i32, ptr %i.g, align 4, !tbaa !363 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.lr.ph226.split
  %i.at = phi i32 [ %.pre, %._crit_edge ], [ %i.ao, %.lr.ph226.split ] ; 2 uses
  %i.au = phi i32 [ %.pre, %._crit_edge ], [ %i.ap, %.lr.ph226.split ] ; 4 uses
  %i.av = phi i32 [ %i.rf, %._crit_edge ], [ %i.aq, %.lr.ph226.split ] ; 3 uses
  %.sroa.0162.2.lcssa = phi i64 [ %.sroa.0.0.insert.insert.i.i.le, %._crit_edge ], [ %.sroa.0162.1223, %.lr.ph226.split ] ; 3 uses
  %.sroa.0162.4.extract.shift = lshr i64 %.sroa.0162.2.lcssa, 32
  %.sroa.0162.4.extract.trunc = trunc nuw i64 %.sroa.0162.4.extract.shift to i32 ; 2 uses
  %i.aw = add nsw i32 %.sroa.0162.4.extract.trunc, 1
  %.not42.not = icmp sgt i32 %i.au, %.sroa.0162.4.extract.trunc
  br i1 %.not42.not, label %.lr.ph226.split, label %._crit_edge227.loopexit, !llvm.loop !6366

bb.d:                                             ; preds = %.lr.ph, %bb.dk
  %i.ax = phi i32 [ %i.aq, %.lr.ph ], [ %i.rf, %bb.dk ]
  %.038218 = phi i32 [ %i.ar, %.lr.ph ], [ %i.re, %bb.dk ] ; 8 uses
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !363
  %i.az = sub nsw i32 %.0230, %i.ay               ; 2 uses
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !363
  %i.bb = sub nsw i32 %.037224, %i.ba             ; 2 uses
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !363
  %i.bd = sub nsw i32 %.038218, %i.bc             ; 2 uses
  %i.be = and i32 %i.az, -4096                    ; 10 uses
  %i.bf = and i32 %i.bb, -4096                    ; 10 uses
  %i.bg = and i32 %i.bd, -4096                    ; 6 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.bf to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32 ; 2 uses
  %i.bh = or i32 %i.az, 4095                      ; 3 uses
  %i.bi = or i32 %i.bb, 4095                      ; 3 uses
  %i.bj = or i32 %i.bd, 4095                      ; 4 uses
  %i.bk = icmp ne i32 %.0230, %i.be
  %i.bl = icmp ne i32 %.037224, %i.bf
  %or.cond.not193 = or i1 %i.bk, %i.bl
  %i.bm = icmp ne i32 %.038218, %i.bg
  %or.cond188 = select i1 %or.cond.not193, i1 true, i1 %i.bm
  br i1 %or.cond188, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !363
  %i.bo = icmp slt i32 %i.bn, %i.bh
  br i1 %i.bo, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !363
  %i.bq = icmp slt i32 %i.bp, %i.bi
  %i.br = icmp slt i32 %i.ax, %i.bj
  %or.cond189 = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond189, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.bm

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.d
  %i.bs = load ptr, ptr %i.s, align 8, !tbaa !589 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.bs, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !363 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.be
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = icmp sgt i32 %i.bu, %i.be
  br i1 %i.bw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !363 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bf
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp sgt i32 %i.by, %i.bf
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !363
  %i.cd = icmp slt i32 %i.cc, %i.bg
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !552 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !168

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.cf, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !363 ; 2 uses
  %i.ci = icmp slt i32 %i.be, %i.ch
  br i1 %i.ci, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp sgt i32 %i.be, %i.ch
  br i1 %i.cj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !363 ; 2 uses
  %i.cm = icmp slt i32 %i.bf, %i.cl
  br i1 %i.cm, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = icmp sgt i32 %i.bf, %i.cl
  br i1 %i.cn, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !363
  %i.cq = icmp slt i32 %i.bg, %i.cp
  br i1 %i.cq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.l, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cr = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 15 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cr, i8 0, i64 270336, i1 false)
  %i.ct = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.cs, align 8, !tbaa !363
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 270340
  store i32 %i.as, ptr %i.cu, align 4, !tbaa !363
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 270344
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !363
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 270348
  store i32 0, ptr %i.cw, align 4, !tbaa !1643
  %5 = load <2 x double>, ptr %i.r, align 8
  %broadcast.splat = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cx, align 8, !tbaa !390
  store <2 x double> %broadcast.splat, ptr %i.cy, align 8, !tbaa !390
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store <2 x double> %broadcast.splat, ptr %i.da, align 8, !tbaa !390
  store <2 x double> %broadcast.splat, ptr %i.db, align 8, !tbaa !390
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dd, align 8, !tbaa !390
  store <2 x double> %broadcast.splat, ptr %i.de, align 8, !tbaa !390
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dg, align 8, !tbaa !390
  store <2 x double> %broadcast.splat, ptr %i.dh, align 8, !tbaa !390
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next.3, 32768
  br i1 %i.di, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !6367

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !589 ; 2 uses
  %.not12.i.i.i.i46 = icmp eq ptr %i.dj, null
  br i1 %.not12.i.i.i.i46, label %.critedge.i, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %.014.i.i.i.i48 = phi ptr [ %.1.i.i.i.i54, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.dj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i49 = phi ptr [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 32
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !363 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.be
  br i1 %i.dm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i47
  %i.dn = icmp sgt i32 %i.dl, %i.be
  br i1 %i.dn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !363 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.bf
  br i1 %i.dq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = icmp sgt i32 %i.dp, %i.bf
  br i1 %i.dr, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50: ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !363
  %i.du = icmp slt i32 %i.dt, %i.bg
  br i1 %i.du, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.o, %.lr.ph.i.i.i.i47
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.p, %bb.n
  %.sink.i.i.i.i52 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ]
  %.19.i.i.i.i53 = phi ptr [ %.0813.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ %.014.i.i.i.i48, %bb.p ], [ %.014.i.i.i.i48, %bb.n ], [ %.014.i.i.i.i48, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ] ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 %.sink.i.i.i.i52
  %.1.i.i.i.i54 = load ptr, ptr %i.dv, align 8, !tbaa !552 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %.1.i.i.i.i54, null
  br i1 %.not.i.i.i.i55, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i47, !llvm.loop !168

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %i.dw = icmp eq ptr %.19.i.i.i.i53, %i.t
  br i1 %i.dw, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 32
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !363 ; 2 uses
  %i.dz = icmp slt i32 %i.be, %i.dy
  br i1 %i.dz, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = icmp sgt i32 %i.be, %i.dy
  br i1 %i.ea, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !363 ; 2 uses
  %i.ed = icmp slt i32 %i.bf, %i.ec
  br i1 %i.ed, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = icmp sgt i32 %i.bf, %i.ec
  br i1 %i.ee, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 40
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !363
  %i.eh = icmp slt i32 %i.bg, %i.eg
  br i1 %i.eh, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.s, %bb.q, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i53, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i53, %bb.q ], [ %.19.i.i.i.i53, %bb.s ]
  %i.ei = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 3 uses
  %.sroa.0145.sroa.0.0.insert.ext = zext i32 %i.be to i64
  %.sroa.0145.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0145.sroa.0.0.insert.ext
  store i64 %.sroa.0145.sroa.0.0.insert.insert, ptr %i.ej, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 40 ; 2 uses
  store i32 %i.bg, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !390
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store ptr %i.cr, ptr %i.ek, align 8, !tbaa !1584
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  store double 0.000000e+00, ptr %i.el, align 8, !tbaa !1647
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  store i8 0, ptr %i.em, align 8, !tbaa !1648
  %i.en = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ej)
          to label %bb.u unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.u:                                             ; preds = %.critedge.i
  %i.eo = extractvalue { ptr, ptr } %i.en, 1      ; 6 uses
  %.not.i = icmp eq ptr %i.eo, null
  br i1 %.not.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ep = extractvalue { ptr, ptr } %i.en, 0
  %.not.i.i.i = icmp ne ptr %i.ep, null
  %i.eq = icmp eq ptr %i.eo, %i.t
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.eq
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.es = load i32, ptr %i.ej, align 8, !tbaa !363 ; 2 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !363 ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = icmp sgt i32 %i.es, %i.et
  br i1 %i.ev, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !363 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !363 ; 2 uses
  %i.fa = icmp slt i32 %i.ex, %i.ez
  br i1 %i.fa, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = icmp sgt i32 %i.ex, %i.ez
  br i1 %i.fb, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !363
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !363
  %i.ff = icmp slt i32 %i.fc, %i.fe
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fg = phi i1 [ false, %bb.z ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ %i.ff, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fg, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #22
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !684
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.u, align 8, !tbaa !684
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i
  %.lcssa353.sink = phi ptr [ %i.lt, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65 ], [ %i.ei, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.mu, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65 ], [ %i.fj, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa353.sink, i64 noundef 72) #28
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ab:                                            ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 72) #28
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.m, %bb.k, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1584 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ac, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.fo = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 12 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !1648, !range !603, !noundef !604
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.fo, i8 0, i64 270336, i1 false)
  %i.ft = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.fs, align 8, !tbaa !363
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_05tools15VolumeAdvectionINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEELb1ENS0_4util15NullInterrupterEE6AdvectISH_Lm1ENS1_7SamplerILm1ELb0EEEE7limiterERKNS4_11LeafManagerISG_E9LeafRangeEf:bb.a
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = shl nuw i64 1, %i.mf
  %i.mh = and i64 %i.md, %i.mg
  %.not.i.i85 = icmp eq i64 %i.mh, 0
  %i.mi = zext nneg i32 %i.ly to i64
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.mi ; 3 uses
  br i1 %.not.i.i85, label %.noexc68, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !390
  %i.ml = and <2 x i32> %i.hk, splat (i32 -128)   ; 2 uses
  %i.mm = extractelement <2 x i32> %i.ml, i64 0
  %.sroa.2.0.insert.ext.i.i.i86 = zext i32 %i.mm to i64
  %.sroa.2.0.insert.shift.i.i.i87 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i86, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ig to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i87, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4
  %i.mn = extractelement <2 x i32> %i.ml, i64 1
  store i32 %i.mn, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !390
  store ptr %i.mk, ptr %i.cc, align 8, !tbaa !1563
  %i.mo = load ptr, ptr %i.mj, align 8, !tbaa !390
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i, %bb.ai, %bb.as
  %i.mp = phi ptr [ %i.mo, %bb.as ], [ %i.jx, %bb.ai ], [ %i.ip, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i ]
  %i.mq = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.mp, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(96) %17)
          to label %.noexc68 unwind label %bb.az

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i
  %i.mr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc68

.noexc68:                                         ; preds = %.invoke, %bb.ah, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i, %bb.at, %bb.ar, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.if, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i ], [ %i.mj, %bb.ar ], [ %i.mq, %.invoke ], [ %i.js, %bb.ah ], [ %i.ll, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i ], [ %i.mr, %bb.at ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, i64 12, i1 false)
  %i.ms = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mt = add nsw i32 %i.ms, 1
  store i32 %i.mt, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mu = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc69 unwind label %bb.az

.noexc69:                                         ; preds = %.noexc68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.mu, i64 12, i1 false)
  %i.mv = load i32, ptr %i.bx, align 4, !tbaa !363
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.bx, align 4, !tbaa !363
  %i.mx = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc70 unwind label %bb.az

.noexc70:                                         ; preds = %.noexc69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %i.mx, i64 12, i1 false)
  %i.my = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mz = add nsw i32 %i.my, -1
  store i32 %i.mz, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.na = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc71 unwind label %bb.az

.noexc71:                                         ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.na, i64 12, i1 false)
  %i.nb = load <2 x i32>, ptr %3, align 8, !tbaa !363
  %i.nc = add nsw <2 x i32> %i.nb, <i32 1, i32 -1>
  store <2 x i32> %i.nc, ptr %3, align 8, !tbaa !363
  %i.nd = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc72 unwind label %bb.az

.noexc72:                                         ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.cg, ptr noundef nonnull align 4 dereferenceable(12) %i.nd, i64 12, i1 false)
  %i.ne = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.nf = add nsw i32 %i.ne, 1
  store i32 %i.nf, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.ng = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc73 unwind label %bb.az

.noexc73:                                         ; preds = %.noexc72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ch, ptr noundef nonnull align 4 dereferenceable(12) %i.ng, i64 12, i1 false)
  %i.nh = load i32, ptr %i.bx, align 4, !tbaa !363
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.bx, align 4, !tbaa !363
  %i.nj = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc74 unwind label %bb.az

.noexc74:                                         ; preds = %.noexc73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cj, ptr noundef nonnull align 4 dereferenceable(12) %i.nj, i64 12, i1 false)
  %i.nk = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.nl = add nsw i32 %i.nk, -1
  store i32 %i.nl, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.nm = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %.noexc74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ci, ptr noundef nonnull align 4 dereferenceable(12) %i.nm, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN7openvdb5v13_05tools10BoxSampler7extremaINS0_4math4Vec3IfEELm2EEEvRAT0__AT0__AT0__T_RS7_SC_(ptr noundef nonnull align 4 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) %16)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.nn = load float, ptr %i.er, align 4, !tbaa !412 ; 7 uses
  %i.no = load float, ptr %15, align 4, !tbaa !412 ; 4 uses
  br i1 %i.aa, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %bb.av
  %i.np = load float, ptr %16, align 4, !tbaa !412 ; 2 uses
  %i.nq = fcmp ogt float %i.nn, %i.no
  %i.nr = fcmp olt float %i.nn, %i.np
  %i.ns = select i1 %i.nr, float %i.nn, float %i.np
  %i.nt = select i1 %i.nq, float %i.ns, float %i.no
  store float %i.nt, ptr %i.er, align 4, !tbaa !412
  %i.nu = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !412 ; 3 uses
  %i.nw = load float, ptr %i.ck, align 4, !tbaa !412 ; 2 uses
  %i.nx = load float, ptr %i.cm, align 4, !tbaa !412 ; 2 uses
  %i.ny = fcmp ogt float %i.nv, %i.nw
  %i.nz = fcmp olt float %i.nv, %i.nx
  %i.oa = select i1 %i.nz, float %i.nv, float %i.nx
  %i.ob = select i1 %i.ny, float %i.oa, float %i.nw
  store float %i.ob, ptr %i.nu, align 4, !tbaa !412
  %i.oc = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !412 ; 3 uses
  %i.oe = load float, ptr %i.cl, align 4, !tbaa !412 ; 2 uses
  %i.of = load float, ptr %i.cn, align 4, !tbaa !412 ; 2 uses
  %i.og = fcmp ogt float %i.od, %i.oe
  %i.oh = fcmp olt float %i.od, %i.of
  %i.oi = select i1 %i.oh, float %i.od, float %i.of
  %i.oj = select i1 %i.og, float %i.oi, float %i.oe
  store float %i.oj, ptr %i.oc, align 4, !tbaa !412
  br label %.loopexit

bb.aw:                                            ; preds = %bb.aa, %bb.z
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ax:                                            ; preds = %.noexc63, %.noexc62, %.noexc61, %bb.ab
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %bb.ac
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %.invoke, %.noexc74, %.noexc73, %.noexc72, %.noexc71, %.noexc70, %.noexc69, %.noexc68, %bb.au
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ba:                                            ; preds = %bb.av
  %i.oo = fcmp oeq float %i.nn, %i.no
  br i1 %i.oo, label %bb.bb, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.op = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.oq = load float, ptr %i.op, align 4, !tbaa !412 ; 2 uses
  %i.or = load float, ptr %i.ck, align 4, !tbaa !412 ; 2 uses
  %i.os = fcmp oeq float %i.oq, %i.or
  br i1 %i.os, label %.split, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split:                                           ; preds = %bb.bb
  %i.ot = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !412
  %i.ov = load float, ptr %i.cl, align 4, !tbaa !412
  %i.ow = fcmp olt float %i.ou, %i.ov
  br i1 %i.ow, label %bb.be, label %bb.bc

_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.ba, %bb.bb
  %.lcssa21.i = phi float [ %i.nn, %bb.ba ], [ %i.oq, %bb.bb ]
  %.lcssa.i = phi float [ %i.no, %bb.ba ], [ %i.or, %bb.bb ]
  %i.ox = fcmp olt float %.lcssa21.i, %.lcssa.i
  br i1 %i.ox, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.split, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.oy = load float, ptr %16, align 4, !tbaa !412 ; 2 uses
  %i.oz = fcmp oeq float %i.nn, %i.oy
  br i1 %i.oz, label %bb.bd, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.pa = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !412 ; 2 uses
  %i.pc = load float, ptr %i.cm, align 4, !tbaa !412 ; 2 uses
  %i.pd = fcmp oeq float %i.pb, %i.pc
  br i1 %i.pd, label %.split113, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split113:                                        ; preds = %bb.bd
  %i.pe = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !412
  %i.pg = load float, ptr %i.cn, align 4, !tbaa !412
  %i.ph = fcmp ogt float %i.pf, %i.pg
  br i1 %i.ph, label %bb.be, label %.loopexit

_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.bc, %bb.bd
  %.lcssa21.i76 = phi float [ %i.nn, %bb.bc ], [ %i.pb, %bb.bd ]
  %.lcssa.i77 = phi float [ %i.oy, %bb.bc ], [ %i.pc, %bb.bd ]
  %i.pi = fcmp ogt float %.lcssa21.i76, %.lcssa.i77
  br i1 %i.pi, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.split113, %.split, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.pj = sitofp i32 %i.hh to double
  %i.pk = sitofp <2 x i32> %i.hk to <2 x double>
  %.sroa.0.0.copyload4.i.i.i = load <2 x float>, ptr %i.cd, align 4
  %21 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %23 = load <4 x float>, ptr %i.co, align 8
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i.i = load <2 x float>, ptr %14, align 16
  %.sroa.0.0.copyload4.i.i43.i = load <2 x float>, ptr %i.cf, align 4
  %25 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i44.i, align 4
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %27 = load <4 x float>, ptr %i.cp, align 16
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i48.i = load <2 x float>, ptr %i.ce, align 8
  %.sroa.0.0.copyload4.i.i67.i = load <2 x float>, ptr %i.ch, align 4
  %.sroa.6.0.copyload.i.i69.i = load float, ptr %.sroa.6.0..sroa_idx.i.i68.i, align 4
  %i.pl = load float, ptr %i.cq, align 8, !tbaa !412
  %.sroa.0.0.copyload4.i12.i72.i = load <2 x float>, ptr %i.cg, align 16
  %.sroa.0.0.copyload4.i.i79.i = load <2 x float>, ptr %i.cj, align 4
  %.sroa.6.0.copyload.i.i81.i = load float, ptr %.sroa.6.0..sroa_idx.i.i80.i, align 4
  %i.pm = load float, ptr %i.cr, align 16, !tbaa !412
  %.sroa.0.0.copyload4.i12.i84.i = load <2 x float>, ptr %i.ci, align 8
  %i.pn = load double, ptr %20, align 8, !tbaa !410
  %i.po = fsub double %i.pn, %i.pj                ; 2 uses
  %i.pp = load <2 x float>, ptr %14, align 16, !tbaa !412
  %i.pq = fsub <2 x float> %.sroa.0.0.copyload4.i.i.i, %i.pp
  %i.pr = fpext <2 x float> %i.pq to <2 x double>
  %i.ps = load <2 x float>, ptr %i.ce, align 8, !tbaa !412
  %i.pt = fsub <2 x float> %.sroa.0.0.copyload4.i.i43.i, %i.ps
  %i.pu = fpext <2 x float> %i.pt to <2 x double>
  %i.pv = load <2 x float>, ptr %i.cg, align 16, !tbaa !412
  %i.pw = fsub <2 x float> %.sroa.0.0.copyload4.i.i67.i, %i.pv
  %i.px = fpext <2 x float> %i.pw to <2 x double>
  %i.py = load <2 x float>, ptr %i.ci, align 8, !tbaa !412
  %i.pz = fsub <2 x float> %.sroa.0.0.copyload4.i.i79.i, %i.py
  %i.qa = fpext <2 x float> %i.pz to <2 x double>
  %i.qb = insertelement <2 x float> %22, float %.sroa.6.0.copyload.i.i69.i, i64 1
  %i.qc = insertelement <2 x float> %24, float %i.pl, i64 1 ; 2 uses
  %i.qd = fsub <2 x float> %i.qb, %i.qc
  %i.qe = fpext <2 x float> %i.qd to <2 x double>
  %i.qf = insertelement <2 x float> %26, float %.sroa.6.0.copyload.i.i81.i, i64 1
  %i.qg = insertelement <2 x float> %28, float %i.pm, i64 1 ; 2 uses
  %i.qh = fsub <2 x float> %i.qf, %i.qg
  %i.qi = fpext <2 x float> %i.qh to <2 x double>
  %i.qj = load <2 x double>, ptr %i.bw, align 8, !tbaa !410
  %i.qk = fsub <2 x double> %i.qj, %i.pk          ; 3 uses
  %i.ql = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.qm = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.qn = fmul <2 x double> %i.qm, %i.pr
  %i.qo = fptrunc <2 x double> %i.qn to <2 x float>
  %i.qp = fadd <2 x float> %.sroa.0.0.copyload4.i12.i.i, %i.qo ; 2 uses
  %i.qq = fmul <2 x double> %i.qm, %i.pu
  %i.qr = fptrunc <2 x double> %i.qq to <2 x float>
  %i.qs = fadd <2 x float> %.sroa.0.0.copyload4.i12.i48.i, %i.qr
  %i.qt = fsub <2 x float> %i.qs, %i.qp
  %i.qu = fpext <2 x float> %i.qt to <2 x double>
  %i.qv = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.qw = fmul <2 x double> %i.qv, %i.qu
  %i.qx = fptrunc <2 x double> %i.qw to <2 x float>
  %i.qy = fadd <2 x float> %i.qp, %i.qx           ; 2 uses
  %i.qz = fmul <2 x double> %i.qm, %i.px
  %i.ra = fmul <2 x double> %i.ql, %i.qe
  %i.rb = fptrunc <2 x double> %i.qz to <2 x float>
  %i.rc = fptrunc <2 x double> %i.ra to <2 x float>
  %i.rd = fadd <2 x float> %.sroa.0.0.copyload4.i12.i72.i, %i.rb ; 2 uses
  %i.re = fadd <2 x float> %i.qc, %i.rc           ; 2 uses
  %i.rf = fmul <2 x double> %i.qm, %i.qa
  %i.rg = fmul <2 x double> %i.ql, %i.qi
  %i.rh = fptrunc <2 x double> %i.rf to <2 x float>
  %i.ri = fptrunc <2 x double> %i.rg to <2 x float>
  %i.rj = fadd <2 x float> %.sroa.0.0.copyload4.i12.i84.i, %i.rh
  %i.rk = fadd <2 x float> %i.qg, %i.ri
  %i.rl = fsub <2 x float> %i.rj, %i.rd
  %i.rm = fsub <2 x float> %i.rk, %i.re
  %i.rn = fpext <2 x float> %i.rl to <2 x double>
  %i.ro = fpext <2 x float> %i.rm to <2 x double>
  %i.rp = fmul <2 x double> %i.qv, %i.rn
  %i.rq = fmul <2 x double> %i.qv, %i.ro
  %i.rr = fptrunc <2 x double> %i.rp to <2 x float>
  %i.rs = fptrunc <2 x double> %i.rq to <2 x float>
  %i.rt = fadd <2 x float> %i.rd, %i.rr
  %i.ru = fadd <2 x float> %i.re, %i.rs           ; 3 uses
  %i.rv = fsub <2 x float> %i.rt, %i.qy
  %i.rw = extractelement <2 x float> %i.ru, i64 0
  %shift = shufflevector <2 x float> %i.ru, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.ru
  %i.rx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ry = fpext <2 x float> %i.rv to <2 x double>
  %i.rz = fpext float %i.rx to double
  %i.sa = insertelement <2 x double> poison, double %i.po, i64 0
  %i.sb = shufflevector <2 x double> %i.sa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sc = fmul <2 x double> %i.sb, %i.ry
  %i.sd = fmul double %i.po, %i.rz
  %i.se = fptrunc <2 x double> %i.sc to <2 x float>
  %i.sf = fptrunc double %i.sd to float
  %i.sg = fadd <2 x float> %i.qy, %i.se
  %i.sh = fadd float %i.rw, %i.sf
  store <2 x float> %i.sg, ptr %i.er, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store float %i.sh, ptr %.sroa.5.0..sroa_idx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.split113, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bh

bb.bf:                                            ; preds = %bb.az, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.om, %bb.ay ], [ %i.on, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ax, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bf ], [ %i.ol, %bb.ax ], [ %i.ok, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bm

bb.bh:                                            ; preds = %.lr.ph, %.loopexit
  %i.si = load float, ptr %i.er, align 4, !tbaa !412
  %i.sj = fcmp ueq float %i.si, %i.cv
  br i1 %i.sj, label %bb.bi, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.sk = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !412
  %i.sm = fcmp ueq float %i.sl, %i.cw
  br i1 %i.sm, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit: ; preds = %bb.bi
  %i.sn = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !412
  %i.sp = fcmp ueq float %i.so, %.sroa.7109.0.copyload
  br i1 %i.sp, label %bb.bj, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  store <2 x float> %i.bg, ptr %i.er, align 4
  store float %.sroa.7109.0.copyload, ptr %i.sn, align 4
  %i.sq = load ptr, ptr %i.bl, align 8, !tbaa !3009, !nonnull !604, !align !675
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 40
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !3010
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %.sroa.8.0118
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !1562
  %i.sv = load i32, ptr %i.bm, align 8, !tbaa !474 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.sx = and i32 %i.sv, 63
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = shl nuw i64 1, %i.sy
  %i.ta = xor i64 %i.sz, -1
  %i.tb = lshr i32 %i.sv, 6
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.tc ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !tbaa !555
  %i.tf = and i64 %i.te, %i.ta
  store i64 %i.tf, ptr %i.td, align 8, !tbaa !555
  br label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread: ; preds = %bb.bh, %bb.bi, %bb.bj, %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  %i.tg = load ptr, ptr %i.cs, align 8, !tbaa !505 ; 8 uses
  %i.th = load i32, ptr %i.bm, align 8, !tbaa !474
  %i.ti = add i32 %i.th, 1                        ; 4 uses
  %i.tj = lshr i32 %i.ti, 6                       ; 3 uses
  %i.tk = icmp ugt i32 %i.ti, 511
  br i1 %i.tk, label %._crit_edge, label %bb.bk

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread
  %i.tl = and i32 %i.ti, 63
  %i.tm = zext nneg i32 %i.tj to i64              ; 8 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.tm
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !555 ; 2 uses
  %i.tp = zext nneg i32 %i.tl to i64              ; 2 uses
  %i.tq = shl nuw i64 1, %i.tp
  %i.tr = and i64 %i.to, %i.tq
  %.not.i.i.i.i79 = icmp eq i64 %i.tr, 0
  br i1 %.not.i.i.i.i79, label %bb.bl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEEppEv.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ts = shl nsw i64 -1, %i.tp
  %i.tt = and i64 %i.to, %i.ts                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.tt, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i80.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i80.preheader:                       ; preds = %bb.bl
  %exitcond.not.i.i.i.i160 = icmp eq i32 %i.tj, 7
  br i1 %exitcond.not.i.i.i.i160, label %._crit_edge, label %.lr.ph162

.lr.ph.i.i.i.i80:                                 ; preds = %.lr.ph162
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph162.1

.lr.ph162.1:                                      ; preds = %.lr.ph.i.i.i.i80
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.tm, 2 ; 3 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.1
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.tv, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i80.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.1:                               ; preds = %.lr.ph162.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph162.2

.lr.ph162.2:                                      ; preds = %.lr.ph.i.i.i.i80.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.tm, 3 ; 3 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.2
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.tx, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i80.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.2:                               ; preds = %.lr.ph162.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph162.3

.lr.ph162.3:                                      ; preds = %.lr.ph.i.i.i.i80.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.tm, 4 ; 3 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.3
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.tz, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i80.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.3:                               ; preds = %.lr.ph162.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph162.4

.lr.ph162.4:                                      ; preds = %.lr.ph.i.i.i.i80.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.tm, 5 ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.4
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ub, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i80.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.4:                               ; preds = %.lr.ph162.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph162.5

.lr.ph162.5:                                      ; preds = %.lr.ph.i.i.i.i80.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.tm, 6 ; 3 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.5
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.ud, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i80.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.5:                               ; preds = %.lr.ph162.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
end_hunk_3
begin_hunk_4_@_ZNK7openvdb5v13_05tools15VolumeAdvectionINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEELb1ENS0_4util15NullInterrupterEE6AdvectISH_Lm2ENS1_7SamplerILm1ELb0EEEE7limiterERKNS4_11LeafManagerISG_E9LeafRangeEf:bb.a
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = shl nuw i64 1, %i.mf
  %i.mh = and i64 %i.md, %i.mg
  %.not.i.i85 = icmp eq i64 %i.mh, 0
  %i.mi = zext nneg i32 %i.ly to i64
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.mi ; 3 uses
  br i1 %.not.i.i85, label %.noexc68, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !390
  %i.ml = and <2 x i32> %i.hk, splat (i32 -128)   ; 2 uses
  %i.mm = extractelement <2 x i32> %i.ml, i64 0
  %.sroa.2.0.insert.ext.i.i.i86 = zext i32 %i.mm to i64
  %.sroa.2.0.insert.shift.i.i.i87 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i86, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ig to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i87, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4
  %i.mn = extractelement <2 x i32> %i.ml, i64 1
  store i32 %i.mn, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !390
  store ptr %i.mk, ptr %i.cc, align 8, !tbaa !1563
  %i.mo = load ptr, ptr %i.mj, align 8, !tbaa !390
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i, %bb.ai, %bb.as
  %i.mp = phi ptr [ %i.mo, %bb.as ], [ %i.jx, %bb.ai ], [ %i.ip, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i ]
  %i.mq = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.mp, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(96) %17)
          to label %.noexc68 unwind label %bb.az

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i
  %i.mr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc68

.noexc68:                                         ; preds = %.invoke, %bb.ah, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i, %bb.at, %bb.ar, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.if, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i ], [ %i.mj, %bb.ar ], [ %i.mq, %.invoke ], [ %i.js, %bb.ah ], [ %i.ll, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i ], [ %i.mr, %bb.at ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, i64 12, i1 false)
  %i.ms = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mt = add nsw i32 %i.ms, 1
  store i32 %i.mt, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mu = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc69 unwind label %bb.az

.noexc69:                                         ; preds = %.noexc68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.mu, i64 12, i1 false)
  %i.mv = load i32, ptr %i.bx, align 4, !tbaa !363
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.bx, align 4, !tbaa !363
  %i.mx = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc70 unwind label %bb.az

.noexc70:                                         ; preds = %.noexc69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %i.mx, i64 12, i1 false)
  %i.my = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mz = add nsw i32 %i.my, -1
  store i32 %i.mz, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.na = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc71 unwind label %bb.az

.noexc71:                                         ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.na, i64 12, i1 false)
  %i.nb = load <2 x i32>, ptr %3, align 8, !tbaa !363
  %i.nc = add nsw <2 x i32> %i.nb, <i32 1, i32 -1>
  store <2 x i32> %i.nc, ptr %3, align 8, !tbaa !363
  %i.nd = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc72 unwind label %bb.az

.noexc72:                                         ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.cg, ptr noundef nonnull align 4 dereferenceable(12) %i.nd, i64 12, i1 false)
  %i.ne = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.nf = add nsw i32 %i.ne, 1
  store i32 %i.nf, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.ng = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc73 unwind label %bb.az

.noexc73:                                         ; preds = %.noexc72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ch, ptr noundef nonnull align 4 dereferenceable(12) %i.ng, i64 12, i1 false)
  %i.nh = load i32, ptr %i.bx, align 4, !tbaa !363
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.bx, align 4, !tbaa !363
  %i.nj = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc74 unwind label %bb.az

.noexc74:                                         ; preds = %.noexc73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cj, ptr noundef nonnull align 4 dereferenceable(12) %i.nj, i64 12, i1 false)
  %i.nk = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.nl = add nsw i32 %i.nk, -1
  store i32 %i.nl, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.nm = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %.noexc74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ci, ptr noundef nonnull align 4 dereferenceable(12) %i.nm, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN7openvdb5v13_05tools10BoxSampler7extremaINS0_4math4Vec3IfEELm2EEEvRAT0__AT0__AT0__T_RS7_SC_(ptr noundef nonnull align 4 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) %16)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.nn = load float, ptr %i.er, align 4, !tbaa !412 ; 7 uses
  %i.no = load float, ptr %15, align 4, !tbaa !412 ; 4 uses
  br i1 %i.aa, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %bb.av
  %i.np = load float, ptr %16, align 4, !tbaa !412 ; 2 uses
  %i.nq = fcmp ogt float %i.nn, %i.no
  %i.nr = fcmp olt float %i.nn, %i.np
  %i.ns = select i1 %i.nr, float %i.nn, float %i.np
  %i.nt = select i1 %i.nq, float %i.ns, float %i.no
  store float %i.nt, ptr %i.er, align 4, !tbaa !412
  %i.nu = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !412 ; 3 uses
  %i.nw = load float, ptr %i.ck, align 4, !tbaa !412 ; 2 uses
  %i.nx = load float, ptr %i.cm, align 4, !tbaa !412 ; 2 uses
  %i.ny = fcmp ogt float %i.nv, %i.nw
  %i.nz = fcmp olt float %i.nv, %i.nx
  %i.oa = select i1 %i.nz, float %i.nv, float %i.nx
  %i.ob = select i1 %i.ny, float %i.oa, float %i.nw
  store float %i.ob, ptr %i.nu, align 4, !tbaa !412
  %i.oc = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !412 ; 3 uses
  %i.oe = load float, ptr %i.cl, align 4, !tbaa !412 ; 2 uses
  %i.of = load float, ptr %i.cn, align 4, !tbaa !412 ; 2 uses
  %i.og = fcmp ogt float %i.od, %i.oe
  %i.oh = fcmp olt float %i.od, %i.of
  %i.oi = select i1 %i.oh, float %i.od, float %i.of
  %i.oj = select i1 %i.og, float %i.oi, float %i.oe
  store float %i.oj, ptr %i.oc, align 4, !tbaa !412
  br label %.loopexit

bb.aw:                                            ; preds = %bb.aa, %bb.z
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ax:                                            ; preds = %.noexc63, %.noexc62, %.noexc61, %bb.ab
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %bb.ac
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %.invoke, %.noexc74, %.noexc73, %.noexc72, %.noexc71, %.noexc70, %.noexc69, %.noexc68, %bb.au
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ba:                                            ; preds = %bb.av
  %i.oo = fcmp oeq float %i.nn, %i.no
  br i1 %i.oo, label %bb.bb, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.op = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.oq = load float, ptr %i.op, align 4, !tbaa !412 ; 2 uses
  %i.or = load float, ptr %i.ck, align 4, !tbaa !412 ; 2 uses
  %i.os = fcmp oeq float %i.oq, %i.or
  br i1 %i.os, label %.split, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split:                                           ; preds = %bb.bb
  %i.ot = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !412
  %i.ov = load float, ptr %i.cl, align 4, !tbaa !412
  %i.ow = fcmp olt float %i.ou, %i.ov
  br i1 %i.ow, label %bb.be, label %bb.bc

_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.ba, %bb.bb
  %.lcssa21.i = phi float [ %i.nn, %bb.ba ], [ %i.oq, %bb.bb ]
  %.lcssa.i = phi float [ %i.no, %bb.ba ], [ %i.or, %bb.bb ]
  %i.ox = fcmp olt float %.lcssa21.i, %.lcssa.i
  br i1 %i.ox, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.split, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.oy = load float, ptr %16, align 4, !tbaa !412 ; 2 uses
  %i.oz = fcmp oeq float %i.nn, %i.oy
  br i1 %i.oz, label %bb.bd, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.pa = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !412 ; 2 uses
  %i.pc = load float, ptr %i.cm, align 4, !tbaa !412 ; 2 uses
  %i.pd = fcmp oeq float %i.pb, %i.pc
  br i1 %i.pd, label %.split113, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split113:                                        ; preds = %bb.bd
  %i.pe = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !412
  %i.pg = load float, ptr %i.cn, align 4, !tbaa !412
  %i.ph = fcmp ogt float %i.pf, %i.pg
  br i1 %i.ph, label %bb.be, label %.loopexit

_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.bc, %bb.bd
  %.lcssa21.i76 = phi float [ %i.nn, %bb.bc ], [ %i.pb, %bb.bd ]
  %.lcssa.i77 = phi float [ %i.oy, %bb.bc ], [ %i.pc, %bb.bd ]
  %i.pi = fcmp ogt float %.lcssa21.i76, %.lcssa.i77
  br i1 %i.pi, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.split113, %.split, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.pj = sitofp i32 %i.hh to double
  %i.pk = sitofp <2 x i32> %i.hk to <2 x double>
  %.sroa.0.0.copyload4.i.i.i = load <2 x float>, ptr %i.cd, align 4
  %21 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %23 = load <4 x float>, ptr %i.co, align 8
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i.i = load <2 x float>, ptr %14, align 16
  %.sroa.0.0.copyload4.i.i43.i = load <2 x float>, ptr %i.cf, align 4
  %25 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i44.i, align 4
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %27 = load <4 x float>, ptr %i.cp, align 16
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i48.i = load <2 x float>, ptr %i.ce, align 8
  %.sroa.0.0.copyload4.i.i67.i = load <2 x float>, ptr %i.ch, align 4
  %.sroa.6.0.copyload.i.i69.i = load float, ptr %.sroa.6.0..sroa_idx.i.i68.i, align 4
  %i.pl = load float, ptr %i.cq, align 8, !tbaa !412
  %.sroa.0.0.copyload4.i12.i72.i = load <2 x float>, ptr %i.cg, align 16
  %.sroa.0.0.copyload4.i.i79.i = load <2 x float>, ptr %i.cj, align 4
  %.sroa.6.0.copyload.i.i81.i = load float, ptr %.sroa.6.0..sroa_idx.i.i80.i, align 4
  %i.pm = load float, ptr %i.cr, align 16, !tbaa !412
  %.sroa.0.0.copyload4.i12.i84.i = load <2 x float>, ptr %i.ci, align 8
  %i.pn = load double, ptr %20, align 8, !tbaa !410
  %i.po = fsub double %i.pn, %i.pj                ; 2 uses
  %i.pp = load <2 x float>, ptr %14, align 16, !tbaa !412
  %i.pq = fsub <2 x float> %.sroa.0.0.copyload4.i.i.i, %i.pp
  %i.pr = fpext <2 x float> %i.pq to <2 x double>
  %i.ps = load <2 x float>, ptr %i.ce, align 8, !tbaa !412
  %i.pt = fsub <2 x float> %.sroa.0.0.copyload4.i.i43.i, %i.ps
  %i.pu = fpext <2 x float> %i.pt to <2 x double>
  %i.pv = load <2 x float>, ptr %i.cg, align 16, !tbaa !412
  %i.pw = fsub <2 x float> %.sroa.0.0.copyload4.i.i67.i, %i.pv
  %i.px = fpext <2 x float> %i.pw to <2 x double>
  %i.py = load <2 x float>, ptr %i.ci, align 8, !tbaa !412
  %i.pz = fsub <2 x float> %.sroa.0.0.copyload4.i.i79.i, %i.py
  %i.qa = fpext <2 x float> %i.pz to <2 x double>
  %i.qb = insertelement <2 x float> %22, float %.sroa.6.0.copyload.i.i69.i, i64 1
  %i.qc = insertelement <2 x float> %24, float %i.pl, i64 1 ; 2 uses
  %i.qd = fsub <2 x float> %i.qb, %i.qc
  %i.qe = fpext <2 x float> %i.qd to <2 x double>
  %i.qf = insertelement <2 x float> %26, float %.sroa.6.0.copyload.i.i81.i, i64 1
  %i.qg = insertelement <2 x float> %28, float %i.pm, i64 1 ; 2 uses
  %i.qh = fsub <2 x float> %i.qf, %i.qg
  %i.qi = fpext <2 x float> %i.qh to <2 x double>
  %i.qj = load <2 x double>, ptr %i.bw, align 8, !tbaa !410
  %i.qk = fsub <2 x double> %i.qj, %i.pk          ; 3 uses
  %i.ql = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.qm = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.qn = fmul <2 x double> %i.qm, %i.pr
  %i.qo = fptrunc <2 x double> %i.qn to <2 x float>
  %i.qp = fadd <2 x float> %.sroa.0.0.copyload4.i12.i.i, %i.qo ; 2 uses
  %i.qq = fmul <2 x double> %i.qm, %i.pu
  %i.qr = fptrunc <2 x double> %i.qq to <2 x float>
  %i.qs = fadd <2 x float> %.sroa.0.0.copyload4.i12.i48.i, %i.qr
  %i.qt = fsub <2 x float> %i.qs, %i.qp
  %i.qu = fpext <2 x float> %i.qt to <2 x double>
  %i.qv = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.qw = fmul <2 x double> %i.qv, %i.qu
  %i.qx = fptrunc <2 x double> %i.qw to <2 x float>
  %i.qy = fadd <2 x float> %i.qp, %i.qx           ; 2 uses
  %i.qz = fmul <2 x double> %i.qm, %i.px
  %i.ra = fmul <2 x double> %i.ql, %i.qe
  %i.rb = fptrunc <2 x double> %i.qz to <2 x float>
  %i.rc = fptrunc <2 x double> %i.ra to <2 x float>
  %i.rd = fadd <2 x float> %.sroa.0.0.copyload4.i12.i72.i, %i.rb ; 2 uses
  %i.re = fadd <2 x float> %i.qc, %i.rc           ; 2 uses
  %i.rf = fmul <2 x double> %i.qm, %i.qa
  %i.rg = fmul <2 x double> %i.ql, %i.qi
  %i.rh = fptrunc <2 x double> %i.rf to <2 x float>
  %i.ri = fptrunc <2 x double> %i.rg to <2 x float>
  %i.rj = fadd <2 x float> %.sroa.0.0.copyload4.i12.i84.i, %i.rh
  %i.rk = fadd <2 x float> %i.qg, %i.ri
  %i.rl = fsub <2 x float> %i.rj, %i.rd
  %i.rm = fsub <2 x float> %i.rk, %i.re
  %i.rn = fpext <2 x float> %i.rl to <2 x double>
  %i.ro = fpext <2 x float> %i.rm to <2 x double>
  %i.rp = fmul <2 x double> %i.qv, %i.rn
  %i.rq = fmul <2 x double> %i.qv, %i.ro
  %i.rr = fptrunc <2 x double> %i.rp to <2 x float>
  %i.rs = fptrunc <2 x double> %i.rq to <2 x float>
  %i.rt = fadd <2 x float> %i.rd, %i.rr
  %i.ru = fadd <2 x float> %i.re, %i.rs           ; 3 uses
  %i.rv = fsub <2 x float> %i.rt, %i.qy
  %i.rw = extractelement <2 x float> %i.ru, i64 0
  %shift = shufflevector <2 x float> %i.ru, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.ru
  %i.rx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ry = fpext <2 x float> %i.rv to <2 x double>
  %i.rz = fpext float %i.rx to double
  %i.sa = insertelement <2 x double> poison, double %i.po, i64 0
  %i.sb = shufflevector <2 x double> %i.sa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sc = fmul <2 x double> %i.sb, %i.ry
  %i.sd = fmul double %i.po, %i.rz
  %i.se = fptrunc <2 x double> %i.sc to <2 x float>
  %i.sf = fptrunc double %i.sd to float
  %i.sg = fadd <2 x float> %i.qy, %i.se
  %i.sh = fadd float %i.rw, %i.sf
  store <2 x float> %i.sg, ptr %i.er, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store float %i.sh, ptr %.sroa.5.0..sroa_idx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.split113, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bh

bb.bf:                                            ; preds = %bb.az, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.om, %bb.ay ], [ %i.on, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ax, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bf ], [ %i.ol, %bb.ax ], [ %i.ok, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bm

bb.bh:                                            ; preds = %.lr.ph, %.loopexit
  %i.si = load float, ptr %i.er, align 4, !tbaa !412
  %i.sj = fcmp ueq float %i.si, %i.cv
  br i1 %i.sj, label %bb.bi, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.sk = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !412
  %i.sm = fcmp ueq float %i.sl, %i.cw
  br i1 %i.sm, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit: ; preds = %bb.bi
  %i.sn = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !412
  %i.sp = fcmp ueq float %i.so, %.sroa.7109.0.copyload
  br i1 %i.sp, label %bb.bj, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  store <2 x float> %i.bg, ptr %i.er, align 4
  store float %.sroa.7109.0.copyload, ptr %i.sn, align 4
  %i.sq = load ptr, ptr %i.bl, align 8, !tbaa !3009, !nonnull !604, !align !675
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 40
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !3010
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %.sroa.8.0118
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !1562
  %i.sv = load i32, ptr %i.bm, align 8, !tbaa !474 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.sx = and i32 %i.sv, 63
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = shl nuw i64 1, %i.sy
  %i.ta = xor i64 %i.sz, -1
  %i.tb = lshr i32 %i.sv, 6
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.tc ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !tbaa !555
  %i.tf = and i64 %i.te, %i.ta
  store i64 %i.tf, ptr %i.td, align 8, !tbaa !555
  br label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread: ; preds = %bb.bh, %bb.bi, %bb.bj, %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  %i.tg = load ptr, ptr %i.cs, align 8, !tbaa !505 ; 8 uses
  %i.th = load i32, ptr %i.bm, align 8, !tbaa !474
  %i.ti = add i32 %i.th, 1                        ; 4 uses
  %i.tj = lshr i32 %i.ti, 6                       ; 3 uses
  %i.tk = icmp ugt i32 %i.ti, 511
  br i1 %i.tk, label %._crit_edge, label %bb.bk

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread
  %i.tl = and i32 %i.ti, 63
  %i.tm = zext nneg i32 %i.tj to i64              ; 8 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.tm
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !555 ; 2 uses
  %i.tp = zext nneg i32 %i.tl to i64              ; 2 uses
  %i.tq = shl nuw i64 1, %i.tp
  %i.tr = and i64 %i.to, %i.tq
  %.not.i.i.i.i79 = icmp eq i64 %i.tr, 0
  br i1 %.not.i.i.i.i79, label %bb.bl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEEppEv.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ts = shl nsw i64 -1, %i.tp
  %i.tt = and i64 %i.to, %i.ts                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.tt, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i80.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i80.preheader:                       ; preds = %bb.bl
  %exitcond.not.i.i.i.i160 = icmp eq i32 %i.tj, 7
  br i1 %exitcond.not.i.i.i.i160, label %._crit_edge, label %.lr.ph162

.lr.ph.i.i.i.i80:                                 ; preds = %.lr.ph162
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph162.1

.lr.ph162.1:                                      ; preds = %.lr.ph.i.i.i.i80
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.tm, 2 ; 3 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.1
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.tv, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i80.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.1:                               ; preds = %.lr.ph162.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph162.2

.lr.ph162.2:                                      ; preds = %.lr.ph.i.i.i.i80.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.tm, 3 ; 3 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.2
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.tx, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i80.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.2:                               ; preds = %.lr.ph162.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph162.3

.lr.ph162.3:                                      ; preds = %.lr.ph.i.i.i.i80.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.tm, 4 ; 3 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.3
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.tz, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i80.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.3:                               ; preds = %.lr.ph162.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph162.4

.lr.ph162.4:                                      ; preds = %.lr.ph.i.i.i.i80.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.tm, 5 ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.4
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ub, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i80.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.4:                               ; preds = %.lr.ph162.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph162.5

.lr.ph162.5:                                      ; preds = %.lr.ph.i.i.i.i80.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.tm, 6 ; 3 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.5
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.ud, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i80.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.5:                               ; preds = %.lr.ph162.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
end_hunk_4
begin_hunk_5_@_ZNK7openvdb5v13_05tools15VolumeAdvectionINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEELb1ENS0_4util15NullInterrupterEE6AdvectISH_Lm3ENS1_7SamplerILm1ELb0EEEE7limiterERKNS4_11LeafManagerISG_E9LeafRangeEf:bb.a
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = shl nuw i64 1, %i.mf
  %i.mh = and i64 %i.md, %i.mg
  %.not.i.i85 = icmp eq i64 %i.mh, 0
  %i.mi = zext nneg i32 %i.ly to i64
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.mi ; 3 uses
  br i1 %.not.i.i85, label %.noexc68, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !390
  %i.ml = and <2 x i32> %i.hk, splat (i32 -128)   ; 2 uses
  %i.mm = extractelement <2 x i32> %i.ml, i64 0
  %.sroa.2.0.insert.ext.i.i.i86 = zext i32 %i.mm to i64
  %.sroa.2.0.insert.shift.i.i.i87 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i86, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ig to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i87, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4
  %i.mn = extractelement <2 x i32> %i.ml, i64 1
  store i32 %i.mn, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !390
  store ptr %i.mk, ptr %i.cc, align 8, !tbaa !1563
  %i.mo = load ptr, ptr %i.mj, align 8, !tbaa !390
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i, %bb.ai, %bb.as
  %i.mp = phi ptr [ %i.mo, %bb.as ], [ %i.jx, %bb.ai ], [ %i.ip, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i ]
  %i.mq = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.mp, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(96) %17)
          to label %.noexc68 unwind label %bb.az

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i
  %i.mr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc68

.noexc68:                                         ; preds = %.invoke, %bb.ah, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i, %bb.at, %bb.ar, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.if, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i ], [ %i.mj, %bb.ar ], [ %i.mq, %.invoke ], [ %i.js, %bb.ah ], [ %i.ll, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i ], [ %i.mr, %bb.at ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, i64 12, i1 false)
  %i.ms = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mt = add nsw i32 %i.ms, 1
  store i32 %i.mt, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mu = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc69 unwind label %bb.az

.noexc69:                                         ; preds = %.noexc68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.mu, i64 12, i1 false)
  %i.mv = load i32, ptr %i.bx, align 4, !tbaa !363
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.bx, align 4, !tbaa !363
  %i.mx = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc70 unwind label %bb.az

.noexc70:                                         ; preds = %.noexc69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %i.mx, i64 12, i1 false)
  %i.my = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mz = add nsw i32 %i.my, -1
  store i32 %i.mz, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.na = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc71 unwind label %bb.az

.noexc71:                                         ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.na, i64 12, i1 false)
  %i.nb = load <2 x i32>, ptr %3, align 8, !tbaa !363
  %i.nc = add nsw <2 x i32> %i.nb, <i32 1, i32 -1>
  store <2 x i32> %i.nc, ptr %3, align 8, !tbaa !363
  %i.nd = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc72 unwind label %bb.az

.noexc72:                                         ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.cg, ptr noundef nonnull align 4 dereferenceable(12) %i.nd, i64 12, i1 false)
  %i.ne = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.nf = add nsw i32 %i.ne, 1
  store i32 %i.nf, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.ng = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc73 unwind label %bb.az

.noexc73:                                         ; preds = %.noexc72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ch, ptr noundef nonnull align 4 dereferenceable(12) %i.ng, i64 12, i1 false)
  %i.nh = load i32, ptr %i.bx, align 4, !tbaa !363
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.bx, align 4, !tbaa !363
  %i.nj = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc74 unwind label %bb.az

.noexc74:                                         ; preds = %.noexc73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cj, ptr noundef nonnull align 4 dereferenceable(12) %i.nj, i64 12, i1 false)
  %i.nk = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.nl = add nsw i32 %i.nk, -1
  store i32 %i.nl, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.nm = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %.noexc74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ci, ptr noundef nonnull align 4 dereferenceable(12) %i.nm, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN7openvdb5v13_05tools10BoxSampler7extremaINS0_4math4Vec3IfEELm2EEEvRAT0__AT0__AT0__T_RS7_SC_(ptr noundef nonnull align 4 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) %16)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.nn = load float, ptr %i.er, align 4, !tbaa !412 ; 7 uses
  %i.no = load float, ptr %15, align 4, !tbaa !412 ; 4 uses
  br i1 %i.aa, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %bb.av
  %i.np = load float, ptr %16, align 4, !tbaa !412 ; 2 uses
  %i.nq = fcmp ogt float %i.nn, %i.no
  %i.nr = fcmp olt float %i.nn, %i.np
  %i.ns = select i1 %i.nr, float %i.nn, float %i.np
  %i.nt = select i1 %i.nq, float %i.ns, float %i.no
  store float %i.nt, ptr %i.er, align 4, !tbaa !412
  %i.nu = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !412 ; 3 uses
  %i.nw = load float, ptr %i.ck, align 4, !tbaa !412 ; 2 uses
  %i.nx = load float, ptr %i.cm, align 4, !tbaa !412 ; 2 uses
  %i.ny = fcmp ogt float %i.nv, %i.nw
  %i.nz = fcmp olt float %i.nv, %i.nx
  %i.oa = select i1 %i.nz, float %i.nv, float %i.nx
  %i.ob = select i1 %i.ny, float %i.oa, float %i.nw
  store float %i.ob, ptr %i.nu, align 4, !tbaa !412
  %i.oc = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !412 ; 3 uses
  %i.oe = load float, ptr %i.cl, align 4, !tbaa !412 ; 2 uses
  %i.of = load float, ptr %i.cn, align 4, !tbaa !412 ; 2 uses
  %i.og = fcmp ogt float %i.od, %i.oe
  %i.oh = fcmp olt float %i.od, %i.of
  %i.oi = select i1 %i.oh, float %i.od, float %i.of
  %i.oj = select i1 %i.og, float %i.oi, float %i.oe
  store float %i.oj, ptr %i.oc, align 4, !tbaa !412
  br label %.loopexit

bb.aw:                                            ; preds = %bb.aa, %bb.z
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ax:                                            ; preds = %.noexc63, %.noexc62, %.noexc61, %bb.ab
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %bb.ac
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %.invoke, %.noexc74, %.noexc73, %.noexc72, %.noexc71, %.noexc70, %.noexc69, %.noexc68, %bb.au
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ba:                                            ; preds = %bb.av
  %i.oo = fcmp oeq float %i.nn, %i.no
  br i1 %i.oo, label %bb.bb, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.op = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.oq = load float, ptr %i.op, align 4, !tbaa !412 ; 2 uses
  %i.or = load float, ptr %i.ck, align 4, !tbaa !412 ; 2 uses
  %i.os = fcmp oeq float %i.oq, %i.or
  br i1 %i.os, label %.split, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split:                                           ; preds = %bb.bb
  %i.ot = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !412
  %i.ov = load float, ptr %i.cl, align 4, !tbaa !412
  %i.ow = fcmp olt float %i.ou, %i.ov
  br i1 %i.ow, label %bb.be, label %bb.bc

_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.ba, %bb.bb
  %.lcssa21.i = phi float [ %i.nn, %bb.ba ], [ %i.oq, %bb.bb ]
  %.lcssa.i = phi float [ %i.no, %bb.ba ], [ %i.or, %bb.bb ]
  %i.ox = fcmp olt float %.lcssa21.i, %.lcssa.i
  br i1 %i.ox, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.split, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.oy = load float, ptr %16, align 4, !tbaa !412 ; 2 uses
  %i.oz = fcmp oeq float %i.nn, %i.oy
  br i1 %i.oz, label %bb.bd, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.pa = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !412 ; 2 uses
  %i.pc = load float, ptr %i.cm, align 4, !tbaa !412 ; 2 uses
  %i.pd = fcmp oeq float %i.pb, %i.pc
  br i1 %i.pd, label %.split113, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split113:                                        ; preds = %bb.bd
  %i.pe = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !412
  %i.pg = load float, ptr %i.cn, align 4, !tbaa !412
  %i.ph = fcmp ogt float %i.pf, %i.pg
  br i1 %i.ph, label %bb.be, label %.loopexit

_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.bc, %bb.bd
  %.lcssa21.i76 = phi float [ %i.nn, %bb.bc ], [ %i.pb, %bb.bd ]
  %.lcssa.i77 = phi float [ %i.oy, %bb.bc ], [ %i.pc, %bb.bd ]
  %i.pi = fcmp ogt float %.lcssa21.i76, %.lcssa.i77
  br i1 %i.pi, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.split113, %.split, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.pj = sitofp i32 %i.hh to double
  %i.pk = sitofp <2 x i32> %i.hk to <2 x double>
  %.sroa.0.0.copyload4.i.i.i = load <2 x float>, ptr %i.cd, align 4
  %21 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %23 = load <4 x float>, ptr %i.co, align 8
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i.i = load <2 x float>, ptr %14, align 16
  %.sroa.0.0.copyload4.i.i43.i = load <2 x float>, ptr %i.cf, align 4
  %25 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i44.i, align 4
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %27 = load <4 x float>, ptr %i.cp, align 16
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i48.i = load <2 x float>, ptr %i.ce, align 8
  %.sroa.0.0.copyload4.i.i67.i = load <2 x float>, ptr %i.ch, align 4
  %.sroa.6.0.copyload.i.i69.i = load float, ptr %.sroa.6.0..sroa_idx.i.i68.i, align 4
  %i.pl = load float, ptr %i.cq, align 8, !tbaa !412
  %.sroa.0.0.copyload4.i12.i72.i = load <2 x float>, ptr %i.cg, align 16
  %.sroa.0.0.copyload4.i.i79.i = load <2 x float>, ptr %i.cj, align 4
  %.sroa.6.0.copyload.i.i81.i = load float, ptr %.sroa.6.0..sroa_idx.i.i80.i, align 4
  %i.pm = load float, ptr %i.cr, align 16, !tbaa !412
  %.sroa.0.0.copyload4.i12.i84.i = load <2 x float>, ptr %i.ci, align 8
  %i.pn = load double, ptr %20, align 8, !tbaa !410
  %i.po = fsub double %i.pn, %i.pj                ; 2 uses
  %i.pp = load <2 x float>, ptr %14, align 16, !tbaa !412
  %i.pq = fsub <2 x float> %.sroa.0.0.copyload4.i.i.i, %i.pp
  %i.pr = fpext <2 x float> %i.pq to <2 x double>
  %i.ps = load <2 x float>, ptr %i.ce, align 8, !tbaa !412
  %i.pt = fsub <2 x float> %.sroa.0.0.copyload4.i.i43.i, %i.ps
  %i.pu = fpext <2 x float> %i.pt to <2 x double>
  %i.pv = load <2 x float>, ptr %i.cg, align 16, !tbaa !412
  %i.pw = fsub <2 x float> %.sroa.0.0.copyload4.i.i67.i, %i.pv
  %i.px = fpext <2 x float> %i.pw to <2 x double>
  %i.py = load <2 x float>, ptr %i.ci, align 8, !tbaa !412
  %i.pz = fsub <2 x float> %.sroa.0.0.copyload4.i.i79.i, %i.py
  %i.qa = fpext <2 x float> %i.pz to <2 x double>
  %i.qb = insertelement <2 x float> %22, float %.sroa.6.0.copyload.i.i69.i, i64 1
  %i.qc = insertelement <2 x float> %24, float %i.pl, i64 1 ; 2 uses
  %i.qd = fsub <2 x float> %i.qb, %i.qc
  %i.qe = fpext <2 x float> %i.qd to <2 x double>
  %i.qf = insertelement <2 x float> %26, float %.sroa.6.0.copyload.i.i81.i, i64 1
  %i.qg = insertelement <2 x float> %28, float %i.pm, i64 1 ; 2 uses
  %i.qh = fsub <2 x float> %i.qf, %i.qg
  %i.qi = fpext <2 x float> %i.qh to <2 x double>
  %i.qj = load <2 x double>, ptr %i.bw, align 8, !tbaa !410
  %i.qk = fsub <2 x double> %i.qj, %i.pk          ; 3 uses
  %i.ql = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.qm = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.qn = fmul <2 x double> %i.qm, %i.pr
  %i.qo = fptrunc <2 x double> %i.qn to <2 x float>
  %i.qp = fadd <2 x float> %.sroa.0.0.copyload4.i12.i.i, %i.qo ; 2 uses
  %i.qq = fmul <2 x double> %i.qm, %i.pu
  %i.qr = fptrunc <2 x double> %i.qq to <2 x float>
  %i.qs = fadd <2 x float> %.sroa.0.0.copyload4.i12.i48.i, %i.qr
  %i.qt = fsub <2 x float> %i.qs, %i.qp
  %i.qu = fpext <2 x float> %i.qt to <2 x double>
  %i.qv = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.qw = fmul <2 x double> %i.qv, %i.qu
  %i.qx = fptrunc <2 x double> %i.qw to <2 x float>
  %i.qy = fadd <2 x float> %i.qp, %i.qx           ; 2 uses
  %i.qz = fmul <2 x double> %i.qm, %i.px
  %i.ra = fmul <2 x double> %i.ql, %i.qe
  %i.rb = fptrunc <2 x double> %i.qz to <2 x float>
  %i.rc = fptrunc <2 x double> %i.ra to <2 x float>
  %i.rd = fadd <2 x float> %.sroa.0.0.copyload4.i12.i72.i, %i.rb ; 2 uses
  %i.re = fadd <2 x float> %i.qc, %i.rc           ; 2 uses
  %i.rf = fmul <2 x double> %i.qm, %i.qa
  %i.rg = fmul <2 x double> %i.ql, %i.qi
  %i.rh = fptrunc <2 x double> %i.rf to <2 x float>
  %i.ri = fptrunc <2 x double> %i.rg to <2 x float>
  %i.rj = fadd <2 x float> %.sroa.0.0.copyload4.i12.i84.i, %i.rh
  %i.rk = fadd <2 x float> %i.qg, %i.ri
  %i.rl = fsub <2 x float> %i.rj, %i.rd
  %i.rm = fsub <2 x float> %i.rk, %i.re
  %i.rn = fpext <2 x float> %i.rl to <2 x double>
  %i.ro = fpext <2 x float> %i.rm to <2 x double>
  %i.rp = fmul <2 x double> %i.qv, %i.rn
  %i.rq = fmul <2 x double> %i.qv, %i.ro
  %i.rr = fptrunc <2 x double> %i.rp to <2 x float>
  %i.rs = fptrunc <2 x double> %i.rq to <2 x float>
  %i.rt = fadd <2 x float> %i.rd, %i.rr
  %i.ru = fadd <2 x float> %i.re, %i.rs           ; 3 uses
  %i.rv = fsub <2 x float> %i.rt, %i.qy
  %i.rw = extractelement <2 x float> %i.ru, i64 0
  %shift = shufflevector <2 x float> %i.ru, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.ru
  %i.rx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ry = fpext <2 x float> %i.rv to <2 x double>
  %i.rz = fpext float %i.rx to double
  %i.sa = insertelement <2 x double> poison, double %i.po, i64 0
  %i.sb = shufflevector <2 x double> %i.sa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sc = fmul <2 x double> %i.sb, %i.ry
  %i.sd = fmul double %i.po, %i.rz
  %i.se = fptrunc <2 x double> %i.sc to <2 x float>
  %i.sf = fptrunc double %i.sd to float
  %i.sg = fadd <2 x float> %i.qy, %i.se
  %i.sh = fadd float %i.rw, %i.sf
  store <2 x float> %i.sg, ptr %i.er, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store float %i.sh, ptr %.sroa.5.0..sroa_idx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.split113, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bh

bb.bf:                                            ; preds = %bb.az, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.om, %bb.ay ], [ %i.on, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ax, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bf ], [ %i.ol, %bb.ax ], [ %i.ok, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bm

bb.bh:                                            ; preds = %.lr.ph, %.loopexit
  %i.si = load float, ptr %i.er, align 4, !tbaa !412
  %i.sj = fcmp ueq float %i.si, %i.cv
  br i1 %i.sj, label %bb.bi, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.sk = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !412
  %i.sm = fcmp ueq float %i.sl, %i.cw
  br i1 %i.sm, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit: ; preds = %bb.bi
  %i.sn = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !412
  %i.sp = fcmp ueq float %i.so, %.sroa.7109.0.copyload
  br i1 %i.sp, label %bb.bj, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  store <2 x float> %i.bg, ptr %i.er, align 4
  store float %.sroa.7109.0.copyload, ptr %i.sn, align 4
  %i.sq = load ptr, ptr %i.bl, align 8, !tbaa !3009, !nonnull !604, !align !675
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 40
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !3010
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %.sroa.8.0118
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !1562
  %i.sv = load i32, ptr %i.bm, align 8, !tbaa !474 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.sx = and i32 %i.sv, 63
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = shl nuw i64 1, %i.sy
  %i.ta = xor i64 %i.sz, -1
  %i.tb = lshr i32 %i.sv, 6
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.tc ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !tbaa !555
  %i.tf = and i64 %i.te, %i.ta
  store i64 %i.tf, ptr %i.td, align 8, !tbaa !555
  br label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread: ; preds = %bb.bh, %bb.bi, %bb.bj, %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  %i.tg = load ptr, ptr %i.cs, align 8, !tbaa !505 ; 8 uses
  %i.th = load i32, ptr %i.bm, align 8, !tbaa !474
  %i.ti = add i32 %i.th, 1                        ; 4 uses
  %i.tj = lshr i32 %i.ti, 6                       ; 3 uses
  %i.tk = icmp ugt i32 %i.ti, 511
  br i1 %i.tk, label %._crit_edge, label %bb.bk

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread
  %i.tl = and i32 %i.ti, 63
  %i.tm = zext nneg i32 %i.tj to i64              ; 8 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.tm
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !555 ; 2 uses
  %i.tp = zext nneg i32 %i.tl to i64              ; 2 uses
  %i.tq = shl nuw i64 1, %i.tp
  %i.tr = and i64 %i.to, %i.tq
  %.not.i.i.i.i79 = icmp eq i64 %i.tr, 0
  br i1 %.not.i.i.i.i79, label %bb.bl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEEppEv.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ts = shl nsw i64 -1, %i.tp
  %i.tt = and i64 %i.to, %i.ts                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.tt, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i80.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i80.preheader:                       ; preds = %bb.bl
  %exitcond.not.i.i.i.i160 = icmp eq i32 %i.tj, 7
  br i1 %exitcond.not.i.i.i.i160, label %._crit_edge, label %.lr.ph162

.lr.ph.i.i.i.i80:                                 ; preds = %.lr.ph162
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph162.1

.lr.ph162.1:                                      ; preds = %.lr.ph.i.i.i.i80
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.tm, 2 ; 3 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.1
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.tv, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i80.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.1:                               ; preds = %.lr.ph162.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph162.2

.lr.ph162.2:                                      ; preds = %.lr.ph.i.i.i.i80.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.tm, 3 ; 3 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.2
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.tx, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i80.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.2:                               ; preds = %.lr.ph162.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph162.3

.lr.ph162.3:                                      ; preds = %.lr.ph.i.i.i.i80.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.tm, 4 ; 3 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.3
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.tz, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i80.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.3:                               ; preds = %.lr.ph162.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph162.4

.lr.ph162.4:                                      ; preds = %.lr.ph.i.i.i.i80.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.tm, 5 ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.4
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ub, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i80.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.4:                               ; preds = %.lr.ph162.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph162.5

.lr.ph162.5:                                      ; preds = %.lr.ph.i.i.i.i80.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.tm, 6 ; 3 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.5
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.ud, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i80.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.5:                               ; preds = %.lr.ph162.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
end_hunk_5
begin_hunk_6_@_ZNK7openvdb5v13_05tools15VolumeAdvectionINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEELb1ENS0_4util15NullInterrupterEE6AdvectISH_Lm4ENS1_7SamplerILm1ELb0EEEE7limiterERKNS4_11LeafManagerISG_E9LeafRangeEf:bb.a
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = shl nuw i64 1, %i.mf
  %i.mh = and i64 %i.md, %i.mg
  %.not.i.i85 = icmp eq i64 %i.mh, 0
  %i.mi = zext nneg i32 %i.ly to i64
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.mi ; 3 uses
  br i1 %.not.i.i85, label %.noexc68, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !390
  %i.ml = and <2 x i32> %i.hk, splat (i32 -128)   ; 2 uses
  %i.mm = extractelement <2 x i32> %i.ml, i64 0
  %.sroa.2.0.insert.ext.i.i.i86 = zext i32 %i.mm to i64
  %.sroa.2.0.insert.shift.i.i.i87 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i86, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ig to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i87, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4
  %i.mn = extractelement <2 x i32> %i.ml, i64 1
  store i32 %i.mn, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !390
  store ptr %i.mk, ptr %i.cc, align 8, !tbaa !1563
  %i.mo = load ptr, ptr %i.mj, align 8, !tbaa !390
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i, %bb.ai, %bb.as
  %i.mp = phi ptr [ %i.mo, %bb.as ], [ %i.jx, %bb.ai ], [ %i.ip, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i ]
  %i.mq = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.mp, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(96) %17)
          to label %.noexc68 unwind label %bb.az

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i
  %i.mr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc68

.noexc68:                                         ; preds = %.invoke, %bb.ah, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i, %bb.at, %bb.ar, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.if, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i ], [ %i.mj, %bb.ar ], [ %i.mq, %.invoke ], [ %i.js, %bb.ah ], [ %i.ll, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i ], [ %i.mr, %bb.at ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, i64 12, i1 false)
  %i.ms = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mt = add nsw i32 %i.ms, 1
  store i32 %i.mt, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mu = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc69 unwind label %bb.az

.noexc69:                                         ; preds = %.noexc68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.mu, i64 12, i1 false)
  %i.mv = load i32, ptr %i.bx, align 4, !tbaa !363
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.bx, align 4, !tbaa !363
  %i.mx = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc70 unwind label %bb.az

.noexc70:                                         ; preds = %.noexc69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %i.mx, i64 12, i1 false)
  %i.my = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mz = add nsw i32 %i.my, -1
  store i32 %i.mz, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.na = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc71 unwind label %bb.az

.noexc71:                                         ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.na, i64 12, i1 false)
  %i.nb = load <2 x i32>, ptr %3, align 8, !tbaa !363
  %i.nc = add nsw <2 x i32> %i.nb, <i32 1, i32 -1>
  store <2 x i32> %i.nc, ptr %3, align 8, !tbaa !363
  %i.nd = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc72 unwind label %bb.az

.noexc72:                                         ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.cg, ptr noundef nonnull align 4 dereferenceable(12) %i.nd, i64 12, i1 false)
  %i.ne = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.nf = add nsw i32 %i.ne, 1
  store i32 %i.nf, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.ng = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc73 unwind label %bb.az

.noexc73:                                         ; preds = %.noexc72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ch, ptr noundef nonnull align 4 dereferenceable(12) %i.ng, i64 12, i1 false)
  %i.nh = load i32, ptr %i.bx, align 4, !tbaa !363
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.bx, align 4, !tbaa !363
  %i.nj = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc74 unwind label %bb.az

.noexc74:                                         ; preds = %.noexc73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cj, ptr noundef nonnull align 4 dereferenceable(12) %i.nj, i64 12, i1 false)
  %i.nk = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.nl = add nsw i32 %i.nk, -1
  store i32 %i.nl, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.nm = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %.noexc74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ci, ptr noundef nonnull align 4 dereferenceable(12) %i.nm, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN7openvdb5v13_05tools10BoxSampler7extremaINS0_4math4Vec3IfEELm2EEEvRAT0__AT0__AT0__T_RS7_SC_(ptr noundef nonnull align 4 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) %16)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.nn = load float, ptr %i.er, align 4, !tbaa !412 ; 7 uses
  %i.no = load float, ptr %15, align 4, !tbaa !412 ; 4 uses
  br i1 %i.aa, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %bb.av
  %i.np = load float, ptr %16, align 4, !tbaa !412 ; 2 uses
  %i.nq = fcmp ogt float %i.nn, %i.no
  %i.nr = fcmp olt float %i.nn, %i.np
  %i.ns = select i1 %i.nr, float %i.nn, float %i.np
  %i.nt = select i1 %i.nq, float %i.ns, float %i.no
  store float %i.nt, ptr %i.er, align 4, !tbaa !412
  %i.nu = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !412 ; 3 uses
  %i.nw = load float, ptr %i.ck, align 4, !tbaa !412 ; 2 uses
  %i.nx = load float, ptr %i.cm, align 4, !tbaa !412 ; 2 uses
  %i.ny = fcmp ogt float %i.nv, %i.nw
  %i.nz = fcmp olt float %i.nv, %i.nx
  %i.oa = select i1 %i.nz, float %i.nv, float %i.nx
  %i.ob = select i1 %i.ny, float %i.oa, float %i.nw
  store float %i.ob, ptr %i.nu, align 4, !tbaa !412
  %i.oc = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !412 ; 3 uses
  %i.oe = load float, ptr %i.cl, align 4, !tbaa !412 ; 2 uses
  %i.of = load float, ptr %i.cn, align 4, !tbaa !412 ; 2 uses
  %i.og = fcmp ogt float %i.od, %i.oe
  %i.oh = fcmp olt float %i.od, %i.of
  %i.oi = select i1 %i.oh, float %i.od, float %i.of
  %i.oj = select i1 %i.og, float %i.oi, float %i.oe
  store float %i.oj, ptr %i.oc, align 4, !tbaa !412
  br label %.loopexit

bb.aw:                                            ; preds = %bb.aa, %bb.z
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ax:                                            ; preds = %.noexc63, %.noexc62, %.noexc61, %bb.ab
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %bb.ac
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %.invoke, %.noexc74, %.noexc73, %.noexc72, %.noexc71, %.noexc70, %.noexc69, %.noexc68, %bb.au
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ba:                                            ; preds = %bb.av
  %i.oo = fcmp oeq float %i.nn, %i.no
  br i1 %i.oo, label %bb.bb, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.op = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.oq = load float, ptr %i.op, align 4, !tbaa !412 ; 2 uses
  %i.or = load float, ptr %i.ck, align 4, !tbaa !412 ; 2 uses
  %i.os = fcmp oeq float %i.oq, %i.or
  br i1 %i.os, label %.split, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split:                                           ; preds = %bb.bb
  %i.ot = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !412
  %i.ov = load float, ptr %i.cl, align 4, !tbaa !412
  %i.ow = fcmp olt float %i.ou, %i.ov
  br i1 %i.ow, label %bb.be, label %bb.bc

_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.ba, %bb.bb
  %.lcssa21.i = phi float [ %i.nn, %bb.ba ], [ %i.oq, %bb.bb ]
  %.lcssa.i = phi float [ %i.no, %bb.ba ], [ %i.or, %bb.bb ]
  %i.ox = fcmp olt float %.lcssa21.i, %.lcssa.i
  br i1 %i.ox, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.split, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.oy = load float, ptr %16, align 4, !tbaa !412 ; 2 uses
  %i.oz = fcmp oeq float %i.nn, %i.oy
  br i1 %i.oz, label %bb.bd, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.pa = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !412 ; 2 uses
  %i.pc = load float, ptr %i.cm, align 4, !tbaa !412 ; 2 uses
  %i.pd = fcmp oeq float %i.pb, %i.pc
  br i1 %i.pd, label %.split113, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split113:                                        ; preds = %bb.bd
  %i.pe = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !412
  %i.pg = load float, ptr %i.cn, align 4, !tbaa !412
  %i.ph = fcmp ogt float %i.pf, %i.pg
  br i1 %i.ph, label %bb.be, label %.loopexit

_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.bc, %bb.bd
  %.lcssa21.i76 = phi float [ %i.nn, %bb.bc ], [ %i.pb, %bb.bd ]
  %.lcssa.i77 = phi float [ %i.oy, %bb.bc ], [ %i.pc, %bb.bd ]
  %i.pi = fcmp ogt float %.lcssa21.i76, %.lcssa.i77
  br i1 %i.pi, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.split113, %.split, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.pj = sitofp i32 %i.hh to double
  %i.pk = sitofp <2 x i32> %i.hk to <2 x double>
  %.sroa.0.0.copyload4.i.i.i = load <2 x float>, ptr %i.cd, align 4
  %21 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %23 = load <4 x float>, ptr %i.co, align 8
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i.i = load <2 x float>, ptr %14, align 16
  %.sroa.0.0.copyload4.i.i43.i = load <2 x float>, ptr %i.cf, align 4
  %25 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i44.i, align 4
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %27 = load <4 x float>, ptr %i.cp, align 16
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i48.i = load <2 x float>, ptr %i.ce, align 8
  %.sroa.0.0.copyload4.i.i67.i = load <2 x float>, ptr %i.ch, align 4
  %.sroa.6.0.copyload.i.i69.i = load float, ptr %.sroa.6.0..sroa_idx.i.i68.i, align 4
  %i.pl = load float, ptr %i.cq, align 8, !tbaa !412
  %.sroa.0.0.copyload4.i12.i72.i = load <2 x float>, ptr %i.cg, align 16
  %.sroa.0.0.copyload4.i.i79.i = load <2 x float>, ptr %i.cj, align 4
  %.sroa.6.0.copyload.i.i81.i = load float, ptr %.sroa.6.0..sroa_idx.i.i80.i, align 4
  %i.pm = load float, ptr %i.cr, align 16, !tbaa !412
  %.sroa.0.0.copyload4.i12.i84.i = load <2 x float>, ptr %i.ci, align 8
  %i.pn = load double, ptr %20, align 8, !tbaa !410
  %i.po = fsub double %i.pn, %i.pj                ; 2 uses
  %i.pp = load <2 x float>, ptr %14, align 16, !tbaa !412
  %i.pq = fsub <2 x float> %.sroa.0.0.copyload4.i.i.i, %i.pp
  %i.pr = fpext <2 x float> %i.pq to <2 x double>
  %i.ps = load <2 x float>, ptr %i.ce, align 8, !tbaa !412
  %i.pt = fsub <2 x float> %.sroa.0.0.copyload4.i.i43.i, %i.ps
  %i.pu = fpext <2 x float> %i.pt to <2 x double>
  %i.pv = load <2 x float>, ptr %i.cg, align 16, !tbaa !412
  %i.pw = fsub <2 x float> %.sroa.0.0.copyload4.i.i67.i, %i.pv
  %i.px = fpext <2 x float> %i.pw to <2 x double>
  %i.py = load <2 x float>, ptr %i.ci, align 8, !tbaa !412
  %i.pz = fsub <2 x float> %.sroa.0.0.copyload4.i.i79.i, %i.py
  %i.qa = fpext <2 x float> %i.pz to <2 x double>
  %i.qb = insertelement <2 x float> %22, float %.sroa.6.0.copyload.i.i69.i, i64 1
  %i.qc = insertelement <2 x float> %24, float %i.pl, i64 1 ; 2 uses
  %i.qd = fsub <2 x float> %i.qb, %i.qc
  %i.qe = fpext <2 x float> %i.qd to <2 x double>
  %i.qf = insertelement <2 x float> %26, float %.sroa.6.0.copyload.i.i81.i, i64 1
  %i.qg = insertelement <2 x float> %28, float %i.pm, i64 1 ; 2 uses
  %i.qh = fsub <2 x float> %i.qf, %i.qg
  %i.qi = fpext <2 x float> %i.qh to <2 x double>
  %i.qj = load <2 x double>, ptr %i.bw, align 8, !tbaa !410
  %i.qk = fsub <2 x double> %i.qj, %i.pk          ; 3 uses
  %i.ql = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.qm = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.qn = fmul <2 x double> %i.qm, %i.pr
  %i.qo = fptrunc <2 x double> %i.qn to <2 x float>
  %i.qp = fadd <2 x float> %.sroa.0.0.copyload4.i12.i.i, %i.qo ; 2 uses
  %i.qq = fmul <2 x double> %i.qm, %i.pu
  %i.qr = fptrunc <2 x double> %i.qq to <2 x float>
  %i.qs = fadd <2 x float> %.sroa.0.0.copyload4.i12.i48.i, %i.qr
  %i.qt = fsub <2 x float> %i.qs, %i.qp
  %i.qu = fpext <2 x float> %i.qt to <2 x double>
  %i.qv = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.qw = fmul <2 x double> %i.qv, %i.qu
  %i.qx = fptrunc <2 x double> %i.qw to <2 x float>
  %i.qy = fadd <2 x float> %i.qp, %i.qx           ; 2 uses
  %i.qz = fmul <2 x double> %i.qm, %i.px
  %i.ra = fmul <2 x double> %i.ql, %i.qe
  %i.rb = fptrunc <2 x double> %i.qz to <2 x float>
  %i.rc = fptrunc <2 x double> %i.ra to <2 x float>
  %i.rd = fadd <2 x float> %.sroa.0.0.copyload4.i12.i72.i, %i.rb ; 2 uses
  %i.re = fadd <2 x float> %i.qc, %i.rc           ; 2 uses
  %i.rf = fmul <2 x double> %i.qm, %i.qa
  %i.rg = fmul <2 x double> %i.ql, %i.qi
  %i.rh = fptrunc <2 x double> %i.rf to <2 x float>
  %i.ri = fptrunc <2 x double> %i.rg to <2 x float>
  %i.rj = fadd <2 x float> %.sroa.0.0.copyload4.i12.i84.i, %i.rh
  %i.rk = fadd <2 x float> %i.qg, %i.ri
  %i.rl = fsub <2 x float> %i.rj, %i.rd
  %i.rm = fsub <2 x float> %i.rk, %i.re
  %i.rn = fpext <2 x float> %i.rl to <2 x double>
  %i.ro = fpext <2 x float> %i.rm to <2 x double>
  %i.rp = fmul <2 x double> %i.qv, %i.rn
  %i.rq = fmul <2 x double> %i.qv, %i.ro
  %i.rr = fptrunc <2 x double> %i.rp to <2 x float>
  %i.rs = fptrunc <2 x double> %i.rq to <2 x float>
  %i.rt = fadd <2 x float> %i.rd, %i.rr
  %i.ru = fadd <2 x float> %i.re, %i.rs           ; 3 uses
  %i.rv = fsub <2 x float> %i.rt, %i.qy
  %i.rw = extractelement <2 x float> %i.ru, i64 0
  %shift = shufflevector <2 x float> %i.ru, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.ru
  %i.rx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ry = fpext <2 x float> %i.rv to <2 x double>
  %i.rz = fpext float %i.rx to double
  %i.sa = insertelement <2 x double> poison, double %i.po, i64 0
  %i.sb = shufflevector <2 x double> %i.sa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sc = fmul <2 x double> %i.sb, %i.ry
  %i.sd = fmul double %i.po, %i.rz
  %i.se = fptrunc <2 x double> %i.sc to <2 x float>
  %i.sf = fptrunc double %i.sd to float
  %i.sg = fadd <2 x float> %i.qy, %i.se
  %i.sh = fadd float %i.rw, %i.sf
  store <2 x float> %i.sg, ptr %i.er, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store float %i.sh, ptr %.sroa.5.0..sroa_idx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.split113, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bh

bb.bf:                                            ; preds = %bb.az, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.om, %bb.ay ], [ %i.on, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ax, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bf ], [ %i.ol, %bb.ax ], [ %i.ok, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bm

bb.bh:                                            ; preds = %.lr.ph, %.loopexit
  %i.si = load float, ptr %i.er, align 4, !tbaa !412
  %i.sj = fcmp ueq float %i.si, %i.cv
  br i1 %i.sj, label %bb.bi, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.sk = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !412
  %i.sm = fcmp ueq float %i.sl, %i.cw
  br i1 %i.sm, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit: ; preds = %bb.bi
  %i.sn = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !412
  %i.sp = fcmp ueq float %i.so, %.sroa.7109.0.copyload
  br i1 %i.sp, label %bb.bj, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  store <2 x float> %i.bg, ptr %i.er, align 4
  store float %.sroa.7109.0.copyload, ptr %i.sn, align 4
  %i.sq = load ptr, ptr %i.bl, align 8, !tbaa !3009, !nonnull !604, !align !675
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 40
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !3010
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %.sroa.8.0118
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !1562
  %i.sv = load i32, ptr %i.bm, align 8, !tbaa !474 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.sx = and i32 %i.sv, 63
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = shl nuw i64 1, %i.sy
  %i.ta = xor i64 %i.sz, -1
  %i.tb = lshr i32 %i.sv, 6
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.tc ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !tbaa !555
  %i.tf = and i64 %i.te, %i.ta
  store i64 %i.tf, ptr %i.td, align 8, !tbaa !555
  br label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread: ; preds = %bb.bh, %bb.bi, %bb.bj, %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  %i.tg = load ptr, ptr %i.cs, align 8, !tbaa !505 ; 8 uses
  %i.th = load i32, ptr %i.bm, align 8, !tbaa !474
  %i.ti = add i32 %i.th, 1                        ; 4 uses
  %i.tj = lshr i32 %i.ti, 6                       ; 3 uses
  %i.tk = icmp ugt i32 %i.ti, 511
  br i1 %i.tk, label %._crit_edge, label %bb.bk

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread
  %i.tl = and i32 %i.ti, 63
  %i.tm = zext nneg i32 %i.tj to i64              ; 8 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.tm
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !555 ; 2 uses
  %i.tp = zext nneg i32 %i.tl to i64              ; 2 uses
  %i.tq = shl nuw i64 1, %i.tp
  %i.tr = and i64 %i.to, %i.tq
  %.not.i.i.i.i79 = icmp eq i64 %i.tr, 0
  br i1 %.not.i.i.i.i79, label %bb.bl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEEppEv.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ts = shl nsw i64 -1, %i.tp
  %i.tt = and i64 %i.to, %i.ts                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.tt, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i80.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i80.preheader:                       ; preds = %bb.bl
  %exitcond.not.i.i.i.i160 = icmp eq i32 %i.tj, 7
  br i1 %exitcond.not.i.i.i.i160, label %._crit_edge, label %.lr.ph162

.lr.ph.i.i.i.i80:                                 ; preds = %.lr.ph162
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph162.1

.lr.ph162.1:                                      ; preds = %.lr.ph.i.i.i.i80
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.tm, 2 ; 3 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.1
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.tv, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i80.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.1:                               ; preds = %.lr.ph162.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph162.2

.lr.ph162.2:                                      ; preds = %.lr.ph.i.i.i.i80.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.tm, 3 ; 3 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.2
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.tx, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i80.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.2:                               ; preds = %.lr.ph162.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph162.3

.lr.ph162.3:                                      ; preds = %.lr.ph.i.i.i.i80.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.tm, 4 ; 3 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.3
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.tz, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i80.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.3:                               ; preds = %.lr.ph162.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph162.4

.lr.ph162.4:                                      ; preds = %.lr.ph.i.i.i.i80.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.tm, 5 ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.4
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ub, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i80.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.4:                               ; preds = %.lr.ph162.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph162.5

.lr.ph162.5:                                      ; preds = %.lr.ph.i.i.i.i80.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.tm, 6 ; 3 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i.i.i.i.5
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.ud, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i80.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i80.5:                               ; preds = %.lr.ph162.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
end_hunk_6
begin_hunk_7_@_ZNK7openvdb5v13_05tools15VolumeAdvectionINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEELb0ENS0_4util15NullInterrupterEE6AdvectISH_Lm1ENS1_7SamplerILm1ELb0EEEE7limiterERKNS4_11LeafManagerISG_E9LeafRangeEf:bb.a
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = shl nuw i64 1, %i.li
  %i.lk = and i64 %i.lg, %i.lj
  %.not.i.i88 = icmp eq i64 %i.lk, 0
  %i.ll = zext nneg i32 %i.lb to i64
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.ll ; 3 uses
  br i1 %.not.i.i88, label %.noexc66, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !390
  %i.lo = and <2 x i32> %i.gn, splat (i32 -128)   ; 2 uses
  %i.lp = extractelement <2 x i32> %i.lo, i64 0
  %.sroa.2.0.insert.ext.i.i.i89 = zext i32 %i.lp to i64
  %.sroa.2.0.insert.shift.i.i.i90 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i89, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.hj to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i90, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4
  %i.lq = extractelement <2 x i32> %i.lo, i64 1
  store i32 %i.lq, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !390
  store ptr %i.ln, ptr %i.by, align 8, !tbaa !1563
  %i.lr = load ptr, ptr %i.lm, align 8, !tbaa !390
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i, %bb.ai, %bb.as
  %i.ls = phi ptr [ %i.lr, %bb.as ], [ %i.ja, %bb.ai ], [ %i.hs, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i ]
  %i.lt = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.ls, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %.noexc66 unwind label %bb.az

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i
  %i.lu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc66

.noexc66:                                         ; preds = %.invoke, %bb.ah, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i, %bb.at, %bb.ar, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.hi, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i ], [ %i.lm, %bb.ar ], [ %i.lt, %.invoke ], [ %i.iv, %bb.ah ], [ %i.ko, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i ], [ %i.lu, %bb.at ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %9, ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, i64 12, i1 false)
  %i.lv = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.lw = add nsw i32 %i.lv, 1
  store i32 %i.lw, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.lx = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc67 unwind label %bb.az

.noexc67:                                         ; preds = %.noexc66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %i.lx, i64 12, i1 false)
  %i.ly = load i32, ptr %i.bt, align 4, !tbaa !363
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.bt, align 4, !tbaa !363
  %i.ma = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc68 unwind label %bb.az

.noexc68:                                         ; preds = %.noexc67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull align 4 dereferenceable(12) %i.ma, i64 12, i1 false)
  %i.mb = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mc = add nsw i32 %i.mb, -1
  store i32 %i.mc, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.md = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc69 unwind label %bb.az

.noexc69:                                         ; preds = %.noexc68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ca, ptr noundef nonnull align 4 dereferenceable(12) %i.md, i64 12, i1 false)
  %i.me = load <2 x i32>, ptr %3, align 8, !tbaa !363
  %i.mf = add nsw <2 x i32> %i.me, <i32 1, i32 -1>
  store <2 x i32> %i.mf, ptr %3, align 8, !tbaa !363
  %i.mg = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc70 unwind label %bb.az

.noexc70:                                         ; preds = %.noexc69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) %i.mg, i64 12, i1 false)
  %i.mh = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mi = add nsw i32 %i.mh, 1
  store i32 %i.mi, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mj = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc71 unwind label %bb.az

.noexc71:                                         ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.mj, i64 12, i1 false)
  %i.mk = load i32, ptr %i.bt, align 4, !tbaa !363
  %i.ml = add nsw i32 %i.mk, 1
  store i32 %i.ml, ptr %i.bt, align 4, !tbaa !363
  %i.mm = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc72 unwind label %bb.az

.noexc72:                                         ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %i.mm, i64 12, i1 false)
  %i.mn = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mo = add nsw i32 %i.mn, -1
  store i32 %i.mo, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mp = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %.noexc72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.mp, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN7openvdb5v13_05tools10BoxSampler7extremaINS0_4math4Vec3IfEELm2EEEvRAT0__AT0__AT0__T_RS7_SC_(ptr noundef nonnull align 4 dereferenceable(96) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %11)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.mq = load float, ptr %i.en, align 4, !tbaa !412 ; 7 uses
  %i.mr = load float, ptr %10, align 4, !tbaa !412 ; 4 uses
  br i1 %i.aa, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %bb.av
  %i.ms = load float, ptr %11, align 4, !tbaa !412 ; 2 uses
  %i.mt = fcmp ogt float %i.mq, %i.mr
  %i.mu = fcmp olt float %i.mq, %i.ms
  %i.mv = select i1 %i.mu, float %i.mq, float %i.ms
  %i.mw = select i1 %i.mt, float %i.mv, float %i.mr
  store float %i.mw, ptr %i.en, align 4, !tbaa !412
  %i.mx = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.my = load float, ptr %i.mx, align 4, !tbaa !412 ; 3 uses
  %i.mz = load float, ptr %i.cg, align 4, !tbaa !412 ; 2 uses
  %i.na = load float, ptr %i.ci, align 4, !tbaa !412 ; 2 uses
  %i.nb = fcmp ogt float %i.my, %i.mz
  %i.nc = fcmp olt float %i.my, %i.na
  %i.nd = select i1 %i.nc, float %i.my, float %i.na
  %i.ne = select i1 %i.nb, float %i.nd, float %i.mz
  store float %i.ne, ptr %i.mx, align 4, !tbaa !412
  %i.nf = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !412 ; 3 uses
  %i.nh = load float, ptr %i.ch, align 4, !tbaa !412 ; 2 uses
  %i.ni = load float, ptr %i.cj, align 4, !tbaa !412 ; 2 uses
  %i.nj = fcmp ogt float %i.ng, %i.nh
  %i.nk = fcmp olt float %i.ng, %i.ni
  %i.nl = select i1 %i.nk, float %i.ng, float %i.ni
  %i.nm = select i1 %i.nj, float %i.nl, float %i.nh
  store float %i.nm, ptr %i.nf, align 4, !tbaa !412
  br label %.loopexit

bb.aw:                                            ; preds = %bb.aa, %bb.z
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ax:                                            ; preds = %.noexc61, %bb.ab
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %bb.ac
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %.invoke, %.noexc72, %.noexc71, %.noexc70, %.noexc69, %.noexc68, %.noexc67, %.noexc66, %bb.au
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ba:                                            ; preds = %bb.av
  %i.nr = fcmp oeq float %i.mq, %i.mr
  br i1 %i.nr, label %bb.bb, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ns = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !412 ; 2 uses
  %i.nu = load float, ptr %i.cg, align 4, !tbaa !412 ; 2 uses
  %i.nv = fcmp oeq float %i.nt, %i.nu
  br i1 %i.nv, label %.split, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split:                                           ; preds = %bb.bb
  %i.nw = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !412
  %i.ny = load float, ptr %i.ch, align 4, !tbaa !412
  %i.nz = fcmp olt float %i.nx, %i.ny
  br i1 %i.nz, label %bb.be, label %bb.bc

_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.ba, %bb.bb
  %.lcssa21.i = phi float [ %i.mq, %bb.ba ], [ %i.nt, %bb.bb ]
  %.lcssa.i = phi float [ %i.mr, %bb.ba ], [ %i.nu, %bb.bb ]
  %i.oa = fcmp olt float %.lcssa21.i, %.lcssa.i
  br i1 %i.oa, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.split, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.ob = load float, ptr %11, align 4, !tbaa !412 ; 2 uses
  %i.oc = fcmp oeq float %i.mq, %i.ob
  br i1 %i.oc, label %bb.bd, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.od = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.oe = load float, ptr %i.od, align 4, !tbaa !412 ; 2 uses
  %i.of = load float, ptr %i.ci, align 4, !tbaa !412 ; 2 uses
  %i.og = fcmp oeq float %i.oe, %i.of
  br i1 %i.og, label %.split115, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split115:                                        ; preds = %bb.bd
  %i.oh = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !412
  %i.oj = load float, ptr %i.cj, align 4, !tbaa !412
  %i.ok = fcmp ogt float %i.oi, %i.oj
  br i1 %i.ok, label %bb.be, label %.loopexit

_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.bc, %bb.bd
  %.lcssa21.i74 = phi float [ %i.mq, %bb.bc ], [ %i.oe, %bb.bd ]
  %.lcssa.i75 = phi float [ %i.ob, %bb.bc ], [ %i.of, %bb.bd ]
  %i.ol = fcmp ogt float %.lcssa21.i74, %.lcssa.i75
  br i1 %i.ol, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.split115, %.split, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.om = sitofp i32 %i.gk to double
  %i.on = sitofp <2 x i32> %i.gn to <2 x double>
  %.sroa.0.0.copyload4.i.i.i77 = load <2 x float>, ptr %i.bz, align 4
  %16 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i78, align 4
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %18 = load <4 x float>, ptr %i.ck, align 8
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i.i = load <2 x float>, ptr %9, align 16
  %.sroa.0.0.copyload4.i.i43.i = load <2 x float>, ptr %i.cb, align 4
  %20 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i44.i, align 4
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %22 = load <4 x float>, ptr %i.cl, align 16
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i48.i = load <2 x float>, ptr %i.ca, align 8
  %.sroa.0.0.copyload4.i.i67.i = load <2 x float>, ptr %i.cd, align 4
  %.sroa.6.0.copyload.i.i69.i = load float, ptr %.sroa.6.0..sroa_idx.i.i68.i, align 4
  %i.oo = load float, ptr %i.cm, align 8, !tbaa !412
  %.sroa.0.0.copyload4.i12.i72.i = load <2 x float>, ptr %i.cc, align 16
  %.sroa.0.0.copyload4.i.i79.i = load <2 x float>, ptr %i.cf, align 4
  %.sroa.6.0.copyload.i.i81.i = load float, ptr %.sroa.6.0..sroa_idx.i.i80.i, align 4
  %i.op = load float, ptr %i.cn, align 16, !tbaa !412
  %.sroa.0.0.copyload4.i12.i84.i = load <2 x float>, ptr %i.ce, align 8
  %i.oq = load double, ptr %15, align 8, !tbaa !410
  %i.or = fsub double %i.oq, %i.om                ; 2 uses
  %i.os = load <2 x float>, ptr %9, align 16, !tbaa !412
  %i.ot = fsub <2 x float> %.sroa.0.0.copyload4.i.i.i77, %i.os
  %i.ou = fpext <2 x float> %i.ot to <2 x double>
  %i.ov = load <2 x float>, ptr %i.ca, align 8, !tbaa !412
  %i.ow = fsub <2 x float> %.sroa.0.0.copyload4.i.i43.i, %i.ov
  %i.ox = fpext <2 x float> %i.ow to <2 x double>
  %i.oy = load <2 x float>, ptr %i.cc, align 16, !tbaa !412
  %i.oz = fsub <2 x float> %.sroa.0.0.copyload4.i.i67.i, %i.oy
  %i.pa = fpext <2 x float> %i.oz to <2 x double>
  %i.pb = load <2 x float>, ptr %i.ce, align 8, !tbaa !412
  %i.pc = fsub <2 x float> %.sroa.0.0.copyload4.i.i79.i, %i.pb
  %i.pd = fpext <2 x float> %i.pc to <2 x double>
  %i.pe = insertelement <2 x float> %17, float %.sroa.6.0.copyload.i.i69.i, i64 1
  %i.pf = insertelement <2 x float> %19, float %i.oo, i64 1 ; 2 uses
  %i.pg = fsub <2 x float> %i.pe, %i.pf
  %i.ph = fpext <2 x float> %i.pg to <2 x double>
  %i.pi = insertelement <2 x float> %21, float %.sroa.6.0.copyload.i.i81.i, i64 1
  %i.pj = insertelement <2 x float> %23, float %i.op, i64 1 ; 2 uses
  %i.pk = fsub <2 x float> %i.pi, %i.pj
  %i.pl = fpext <2 x float> %i.pk to <2 x double>
  %i.pm = load <2 x double>, ptr %i.bs, align 8, !tbaa !410
  %i.pn = fsub <2 x double> %i.pm, %i.on          ; 3 uses
  %i.po = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.pp = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.pq = fmul <2 x double> %i.pp, %i.ou
  %i.pr = fptrunc <2 x double> %i.pq to <2 x float>
  %i.ps = fadd <2 x float> %.sroa.0.0.copyload4.i12.i.i, %i.pr ; 2 uses
  %i.pt = fmul <2 x double> %i.pp, %i.ox
  %i.pu = fptrunc <2 x double> %i.pt to <2 x float>
  %i.pv = fadd <2 x float> %.sroa.0.0.copyload4.i12.i48.i, %i.pu
  %i.pw = fsub <2 x float> %i.pv, %i.ps
  %i.px = fpext <2 x float> %i.pw to <2 x double>
  %i.py = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.pz = fmul <2 x double> %i.py, %i.px
  %i.qa = fptrunc <2 x double> %i.pz to <2 x float>
  %i.qb = fadd <2 x float> %i.ps, %i.qa           ; 2 uses
  %i.qc = fmul <2 x double> %i.pp, %i.pa
  %i.qd = fmul <2 x double> %i.po, %i.ph
  %i.qe = fptrunc <2 x double> %i.qc to <2 x float>
  %i.qf = fptrunc <2 x double> %i.qd to <2 x float>
  %i.qg = fadd <2 x float> %.sroa.0.0.copyload4.i12.i72.i, %i.qe ; 2 uses
  %i.qh = fadd <2 x float> %i.pf, %i.qf           ; 2 uses
  %i.qi = fmul <2 x double> %i.pp, %i.pd
  %i.qj = fmul <2 x double> %i.po, %i.pl
  %i.qk = fptrunc <2 x double> %i.qi to <2 x float>
  %i.ql = fptrunc <2 x double> %i.qj to <2 x float>
  %i.qm = fadd <2 x float> %.sroa.0.0.copyload4.i12.i84.i, %i.qk
  %i.qn = fadd <2 x float> %i.pj, %i.ql
  %i.qo = fsub <2 x float> %i.qm, %i.qg
  %i.qp = fsub <2 x float> %i.qn, %i.qh
  %i.qq = fpext <2 x float> %i.qo to <2 x double>
  %i.qr = fpext <2 x float> %i.qp to <2 x double>
  %i.qs = fmul <2 x double> %i.py, %i.qq
  %i.qt = fmul <2 x double> %i.py, %i.qr
  %i.qu = fptrunc <2 x double> %i.qs to <2 x float>
  %i.qv = fptrunc <2 x double> %i.qt to <2 x float>
  %i.qw = fadd <2 x float> %i.qg, %i.qu
  %i.qx = fadd <2 x float> %i.qh, %i.qv           ; 3 uses
  %i.qy = fsub <2 x float> %i.qw, %i.qb
  %i.qz = extractelement <2 x float> %i.qx, i64 0
  %shift = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.qx
  %i.ra = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.rb = fpext <2 x float> %i.qy to <2 x double>
  %i.rc = fpext float %i.ra to double
  %i.rd = insertelement <2 x double> poison, double %i.or, i64 0
  %i.re = shufflevector <2 x double> %i.rd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rf = fmul <2 x double> %i.re, %i.rb
  %i.rg = fmul double %i.or, %i.rc
  %i.rh = fptrunc <2 x double> %i.rf to <2 x float>
  %i.ri = fptrunc double %i.rg to float
  %i.rj = fadd <2 x float> %i.qb, %i.rh
  %i.rk = fadd float %i.qz, %i.ri
  store <2 x float> %i.rj, ptr %i.en, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %i.rk, ptr %.sroa.5.0..sroa_idx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.split115, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bh

bb.bf:                                            ; preds = %bb.az, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.np, %bb.ay ], [ %i.nq, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ax, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bf ], [ %i.no, %bb.ax ], [ %i.nn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bm

bb.bh:                                            ; preds = %.lr.ph, %.loopexit
  %i.rl = load float, ptr %i.en, align 4, !tbaa !412
  %i.rm = fcmp ueq float %i.rl, %i.cr
  br i1 %i.rm, label %bb.bi, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.rn = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !412
  %i.rp = fcmp ueq float %i.ro, %i.cs
  br i1 %i.rp, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit: ; preds = %bb.bi
  %i.rq = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !412
  %i.rs = fcmp ueq float %i.rr, %.sroa.7111.0.copyload
  br i1 %i.rs, label %bb.bj, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  store <2 x float> %i.bg, ptr %i.en, align 4
  store float %.sroa.7111.0.copyload, ptr %i.rq, align 4
  %i.rt = load ptr, ptr %i.bl, align 8, !tbaa !3009, !nonnull !604, !align !675
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 40
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !3010
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %.sroa.8.0120
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !1562
  %i.ry = load i32, ptr %i.bm, align 8, !tbaa !474 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.sa = and i32 %i.ry, 63
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = shl nuw i64 1, %i.sb
  %i.sd = xor i64 %i.sc, -1
  %i.se = lshr i32 %i.ry, 6
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.sf ; 2 uses
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !555
  %i.si = and i64 %i.sh, %i.sd
  store i64 %i.si, ptr %i.sg, align 8, !tbaa !555
  br label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread: ; preds = %bb.bh, %bb.bi, %bb.bj, %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  %i.sj = load ptr, ptr %i.co, align 8, !tbaa !505 ; 8 uses
  %i.sk = load i32, ptr %i.bm, align 8, !tbaa !474
  %i.sl = add i32 %i.sk, 1                        ; 4 uses
  %i.sm = lshr i32 %i.sl, 6                       ; 3 uses
  %i.sn = icmp ugt i32 %i.sl, 511
  br i1 %i.sn, label %._crit_edge, label %bb.bk

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread
  %i.so = and i32 %i.sl, 63
  %i.sp = zext nneg i32 %i.sm to i64              ; 8 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sp
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !555 ; 2 uses
  %i.ss = zext nneg i32 %i.so to i64              ; 2 uses
  %i.st = shl nuw i64 1, %i.ss
  %i.su = and i64 %i.sr, %i.st
  %.not.i.i.i.i82 = icmp eq i64 %i.su, 0
  br i1 %.not.i.i.i.i82, label %bb.bl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEEppEv.exit

bb.bl:                                            ; preds = %bb.bk
  %i.sv = shl nsw i64 -1, %i.ss
  %i.sw = and i64 %i.sr, %i.sv                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.sw, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i83.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i83.preheader:                       ; preds = %bb.bl
  %exitcond.not.i.i.i.i162 = icmp eq i32 %i.sm, 7
  br i1 %exitcond.not.i.i.i.i162, label %._crit_edge, label %.lr.ph164

.lr.ph.i.i.i.i83:                                 ; preds = %.lr.ph164
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph164.1

.lr.ph164.1:                                      ; preds = %.lr.ph.i.i.i.i83
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.sp, 2 ; 3 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.1
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.sy, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i83.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.1:                               ; preds = %.lr.ph164.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph164.2

.lr.ph164.2:                                      ; preds = %.lr.ph.i.i.i.i83.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.sp, 3 ; 3 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.2
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ta, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i83.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.2:                               ; preds = %.lr.ph164.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph164.3

.lr.ph164.3:                                      ; preds = %.lr.ph.i.i.i.i83.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.sp, 4 ; 3 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.3
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.tc, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i83.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.3:                               ; preds = %.lr.ph164.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph164.4

.lr.ph164.4:                                      ; preds = %.lr.ph.i.i.i.i83.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.sp, 5 ; 3 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.4
  %i.te = load i64, ptr %i.td, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.te, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i83.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.4:                               ; preds = %.lr.ph164.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph164.5

.lr.ph164.5:                                      ; preds = %.lr.ph.i.i.i.i83.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.sp, 6 ; 3 uses
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.5
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.tg, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i83.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.5:                               ; preds = %.lr.ph164.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
end_hunk_7
begin_hunk_8_@_ZNK7openvdb5v13_05tools15VolumeAdvectionINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEELb0ENS0_4util15NullInterrupterEE6AdvectISH_Lm2ENS1_7SamplerILm1ELb0EEEE7limiterERKNS4_11LeafManagerISG_E9LeafRangeEf:bb.a
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = shl nuw i64 1, %i.li
  %i.lk = and i64 %i.lg, %i.lj
  %.not.i.i88 = icmp eq i64 %i.lk, 0
  %i.ll = zext nneg i32 %i.lb to i64
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.ll ; 3 uses
  br i1 %.not.i.i88, label %.noexc66, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !390
  %i.lo = and <2 x i32> %i.gn, splat (i32 -128)   ; 2 uses
  %i.lp = extractelement <2 x i32> %i.lo, i64 0
  %.sroa.2.0.insert.ext.i.i.i89 = zext i32 %i.lp to i64
  %.sroa.2.0.insert.shift.i.i.i90 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i89, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.hj to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i90, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4
  %i.lq = extractelement <2 x i32> %i.lo, i64 1
  store i32 %i.lq, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !390
  store ptr %i.ln, ptr %i.by, align 8, !tbaa !1563
  %i.lr = load ptr, ptr %i.lm, align 8, !tbaa !390
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i, %bb.ai, %bb.as
  %i.ls = phi ptr [ %i.lr, %bb.as ], [ %i.ja, %bb.ai ], [ %i.hs, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i ]
  %i.lt = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.ls, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %.noexc66 unwind label %bb.az

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i
  %i.lu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc66

.noexc66:                                         ; preds = %.invoke, %bb.ah, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i, %bb.at, %bb.ar, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.hi, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i ], [ %i.lm, %bb.ar ], [ %i.lt, %.invoke ], [ %i.iv, %bb.ah ], [ %i.ko, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i ], [ %i.lu, %bb.at ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %9, ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, i64 12, i1 false)
  %i.lv = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.lw = add nsw i32 %i.lv, 1
  store i32 %i.lw, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.lx = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc67 unwind label %bb.az

.noexc67:                                         ; preds = %.noexc66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %i.lx, i64 12, i1 false)
  %i.ly = load i32, ptr %i.bt, align 4, !tbaa !363
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.bt, align 4, !tbaa !363
  %i.ma = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc68 unwind label %bb.az

.noexc68:                                         ; preds = %.noexc67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull align 4 dereferenceable(12) %i.ma, i64 12, i1 false)
  %i.mb = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mc = add nsw i32 %i.mb, -1
  store i32 %i.mc, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.md = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc69 unwind label %bb.az

.noexc69:                                         ; preds = %.noexc68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ca, ptr noundef nonnull align 4 dereferenceable(12) %i.md, i64 12, i1 false)
  %i.me = load <2 x i32>, ptr %3, align 8, !tbaa !363
  %i.mf = add nsw <2 x i32> %i.me, <i32 1, i32 -1>
  store <2 x i32> %i.mf, ptr %3, align 8, !tbaa !363
  %i.mg = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc70 unwind label %bb.az

.noexc70:                                         ; preds = %.noexc69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) %i.mg, i64 12, i1 false)
  %i.mh = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mi = add nsw i32 %i.mh, 1
  store i32 %i.mi, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mj = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc71 unwind label %bb.az

.noexc71:                                         ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.mj, i64 12, i1 false)
  %i.mk = load i32, ptr %i.bt, align 4, !tbaa !363
  %i.ml = add nsw i32 %i.mk, 1
  store i32 %i.ml, ptr %i.bt, align 4, !tbaa !363
  %i.mm = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc72 unwind label %bb.az

.noexc72:                                         ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %i.mm, i64 12, i1 false)
  %i.mn = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mo = add nsw i32 %i.mn, -1
  store i32 %i.mo, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mp = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %.noexc72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.mp, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN7openvdb5v13_05tools10BoxSampler7extremaINS0_4math4Vec3IfEELm2EEEvRAT0__AT0__AT0__T_RS7_SC_(ptr noundef nonnull align 4 dereferenceable(96) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %11)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.mq = load float, ptr %i.en, align 4, !tbaa !412 ; 7 uses
  %i.mr = load float, ptr %10, align 4, !tbaa !412 ; 4 uses
  br i1 %i.aa, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %bb.av
  %i.ms = load float, ptr %11, align 4, !tbaa !412 ; 2 uses
  %i.mt = fcmp ogt float %i.mq, %i.mr
  %i.mu = fcmp olt float %i.mq, %i.ms
  %i.mv = select i1 %i.mu, float %i.mq, float %i.ms
  %i.mw = select i1 %i.mt, float %i.mv, float %i.mr
  store float %i.mw, ptr %i.en, align 4, !tbaa !412
  %i.mx = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.my = load float, ptr %i.mx, align 4, !tbaa !412 ; 3 uses
  %i.mz = load float, ptr %i.cg, align 4, !tbaa !412 ; 2 uses
  %i.na = load float, ptr %i.ci, align 4, !tbaa !412 ; 2 uses
  %i.nb = fcmp ogt float %i.my, %i.mz
  %i.nc = fcmp olt float %i.my, %i.na
  %i.nd = select i1 %i.nc, float %i.my, float %i.na
  %i.ne = select i1 %i.nb, float %i.nd, float %i.mz
  store float %i.ne, ptr %i.mx, align 4, !tbaa !412
  %i.nf = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !412 ; 3 uses
  %i.nh = load float, ptr %i.ch, align 4, !tbaa !412 ; 2 uses
  %i.ni = load float, ptr %i.cj, align 4, !tbaa !412 ; 2 uses
  %i.nj = fcmp ogt float %i.ng, %i.nh
  %i.nk = fcmp olt float %i.ng, %i.ni
  %i.nl = select i1 %i.nk, float %i.ng, float %i.ni
  %i.nm = select i1 %i.nj, float %i.nl, float %i.nh
  store float %i.nm, ptr %i.nf, align 4, !tbaa !412
  br label %.loopexit

bb.aw:                                            ; preds = %bb.aa, %bb.z
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ax:                                            ; preds = %.noexc61, %bb.ab
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %bb.ac
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %.invoke, %.noexc72, %.noexc71, %.noexc70, %.noexc69, %.noexc68, %.noexc67, %.noexc66, %bb.au
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ba:                                            ; preds = %bb.av
  %i.nr = fcmp oeq float %i.mq, %i.mr
  br i1 %i.nr, label %bb.bb, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ns = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !412 ; 2 uses
  %i.nu = load float, ptr %i.cg, align 4, !tbaa !412 ; 2 uses
  %i.nv = fcmp oeq float %i.nt, %i.nu
  br i1 %i.nv, label %.split, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split:                                           ; preds = %bb.bb
  %i.nw = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !412
  %i.ny = load float, ptr %i.ch, align 4, !tbaa !412
  %i.nz = fcmp olt float %i.nx, %i.ny
  br i1 %i.nz, label %bb.be, label %bb.bc

_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.ba, %bb.bb
  %.lcssa21.i = phi float [ %i.mq, %bb.ba ], [ %i.nt, %bb.bb ]
  %.lcssa.i = phi float [ %i.mr, %bb.ba ], [ %i.nu, %bb.bb ]
  %i.oa = fcmp olt float %.lcssa21.i, %.lcssa.i
  br i1 %i.oa, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.split, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.ob = load float, ptr %11, align 4, !tbaa !412 ; 2 uses
  %i.oc = fcmp oeq float %i.mq, %i.ob
  br i1 %i.oc, label %bb.bd, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.od = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.oe = load float, ptr %i.od, align 4, !tbaa !412 ; 2 uses
  %i.of = load float, ptr %i.ci, align 4, !tbaa !412 ; 2 uses
  %i.og = fcmp oeq float %i.oe, %i.of
  br i1 %i.og, label %.split115, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split115:                                        ; preds = %bb.bd
  %i.oh = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !412
  %i.oj = load float, ptr %i.cj, align 4, !tbaa !412
  %i.ok = fcmp ogt float %i.oi, %i.oj
  br i1 %i.ok, label %bb.be, label %.loopexit

_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.bc, %bb.bd
  %.lcssa21.i74 = phi float [ %i.mq, %bb.bc ], [ %i.oe, %bb.bd ]
  %.lcssa.i75 = phi float [ %i.ob, %bb.bc ], [ %i.of, %bb.bd ]
  %i.ol = fcmp ogt float %.lcssa21.i74, %.lcssa.i75
  br i1 %i.ol, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.split115, %.split, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.om = sitofp i32 %i.gk to double
  %i.on = sitofp <2 x i32> %i.gn to <2 x double>
  %.sroa.0.0.copyload4.i.i.i77 = load <2 x float>, ptr %i.bz, align 4
  %16 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i78, align 4
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %18 = load <4 x float>, ptr %i.ck, align 8
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i.i = load <2 x float>, ptr %9, align 16
  %.sroa.0.0.copyload4.i.i43.i = load <2 x float>, ptr %i.cb, align 4
  %20 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i44.i, align 4
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %22 = load <4 x float>, ptr %i.cl, align 16
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i48.i = load <2 x float>, ptr %i.ca, align 8
  %.sroa.0.0.copyload4.i.i67.i = load <2 x float>, ptr %i.cd, align 4
  %.sroa.6.0.copyload.i.i69.i = load float, ptr %.sroa.6.0..sroa_idx.i.i68.i, align 4
  %i.oo = load float, ptr %i.cm, align 8, !tbaa !412
  %.sroa.0.0.copyload4.i12.i72.i = load <2 x float>, ptr %i.cc, align 16
  %.sroa.0.0.copyload4.i.i79.i = load <2 x float>, ptr %i.cf, align 4
  %.sroa.6.0.copyload.i.i81.i = load float, ptr %.sroa.6.0..sroa_idx.i.i80.i, align 4
  %i.op = load float, ptr %i.cn, align 16, !tbaa !412
  %.sroa.0.0.copyload4.i12.i84.i = load <2 x float>, ptr %i.ce, align 8
  %i.oq = load double, ptr %15, align 8, !tbaa !410
  %i.or = fsub double %i.oq, %i.om                ; 2 uses
  %i.os = load <2 x float>, ptr %9, align 16, !tbaa !412
  %i.ot = fsub <2 x float> %.sroa.0.0.copyload4.i.i.i77, %i.os
  %i.ou = fpext <2 x float> %i.ot to <2 x double>
  %i.ov = load <2 x float>, ptr %i.ca, align 8, !tbaa !412
  %i.ow = fsub <2 x float> %.sroa.0.0.copyload4.i.i43.i, %i.ov
  %i.ox = fpext <2 x float> %i.ow to <2 x double>
  %i.oy = load <2 x float>, ptr %i.cc, align 16, !tbaa !412
  %i.oz = fsub <2 x float> %.sroa.0.0.copyload4.i.i67.i, %i.oy
  %i.pa = fpext <2 x float> %i.oz to <2 x double>
  %i.pb = load <2 x float>, ptr %i.ce, align 8, !tbaa !412
  %i.pc = fsub <2 x float> %.sroa.0.0.copyload4.i.i79.i, %i.pb
  %i.pd = fpext <2 x float> %i.pc to <2 x double>
  %i.pe = insertelement <2 x float> %17, float %.sroa.6.0.copyload.i.i69.i, i64 1
  %i.pf = insertelement <2 x float> %19, float %i.oo, i64 1 ; 2 uses
  %i.pg = fsub <2 x float> %i.pe, %i.pf
  %i.ph = fpext <2 x float> %i.pg to <2 x double>
  %i.pi = insertelement <2 x float> %21, float %.sroa.6.0.copyload.i.i81.i, i64 1
  %i.pj = insertelement <2 x float> %23, float %i.op, i64 1 ; 2 uses
  %i.pk = fsub <2 x float> %i.pi, %i.pj
  %i.pl = fpext <2 x float> %i.pk to <2 x double>
  %i.pm = load <2 x double>, ptr %i.bs, align 8, !tbaa !410
  %i.pn = fsub <2 x double> %i.pm, %i.on          ; 3 uses
  %i.po = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.pp = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.pq = fmul <2 x double> %i.pp, %i.ou
  %i.pr = fptrunc <2 x double> %i.pq to <2 x float>
  %i.ps = fadd <2 x float> %.sroa.0.0.copyload4.i12.i.i, %i.pr ; 2 uses
  %i.pt = fmul <2 x double> %i.pp, %i.ox
  %i.pu = fptrunc <2 x double> %i.pt to <2 x float>
  %i.pv = fadd <2 x float> %.sroa.0.0.copyload4.i12.i48.i, %i.pu
  %i.pw = fsub <2 x float> %i.pv, %i.ps
  %i.px = fpext <2 x float> %i.pw to <2 x double>
  %i.py = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.pz = fmul <2 x double> %i.py, %i.px
  %i.qa = fptrunc <2 x double> %i.pz to <2 x float>
  %i.qb = fadd <2 x float> %i.ps, %i.qa           ; 2 uses
  %i.qc = fmul <2 x double> %i.pp, %i.pa
  %i.qd = fmul <2 x double> %i.po, %i.ph
  %i.qe = fptrunc <2 x double> %i.qc to <2 x float>
  %i.qf = fptrunc <2 x double> %i.qd to <2 x float>
  %i.qg = fadd <2 x float> %.sroa.0.0.copyload4.i12.i72.i, %i.qe ; 2 uses
  %i.qh = fadd <2 x float> %i.pf, %i.qf           ; 2 uses
  %i.qi = fmul <2 x double> %i.pp, %i.pd
  %i.qj = fmul <2 x double> %i.po, %i.pl
  %i.qk = fptrunc <2 x double> %i.qi to <2 x float>
  %i.ql = fptrunc <2 x double> %i.qj to <2 x float>
  %i.qm = fadd <2 x float> %.sroa.0.0.copyload4.i12.i84.i, %i.qk
  %i.qn = fadd <2 x float> %i.pj, %i.ql
  %i.qo = fsub <2 x float> %i.qm, %i.qg
  %i.qp = fsub <2 x float> %i.qn, %i.qh
  %i.qq = fpext <2 x float> %i.qo to <2 x double>
  %i.qr = fpext <2 x float> %i.qp to <2 x double>
  %i.qs = fmul <2 x double> %i.py, %i.qq
  %i.qt = fmul <2 x double> %i.py, %i.qr
  %i.qu = fptrunc <2 x double> %i.qs to <2 x float>
  %i.qv = fptrunc <2 x double> %i.qt to <2 x float>
  %i.qw = fadd <2 x float> %i.qg, %i.qu
  %i.qx = fadd <2 x float> %i.qh, %i.qv           ; 3 uses
  %i.qy = fsub <2 x float> %i.qw, %i.qb
  %i.qz = extractelement <2 x float> %i.qx, i64 0
  %shift = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.qx
  %i.ra = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.rb = fpext <2 x float> %i.qy to <2 x double>
  %i.rc = fpext float %i.ra to double
  %i.rd = insertelement <2 x double> poison, double %i.or, i64 0
  %i.re = shufflevector <2 x double> %i.rd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rf = fmul <2 x double> %i.re, %i.rb
  %i.rg = fmul double %i.or, %i.rc
  %i.rh = fptrunc <2 x double> %i.rf to <2 x float>
  %i.ri = fptrunc double %i.rg to float
  %i.rj = fadd <2 x float> %i.qb, %i.rh
  %i.rk = fadd float %i.qz, %i.ri
  store <2 x float> %i.rj, ptr %i.en, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %i.rk, ptr %.sroa.5.0..sroa_idx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.split115, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bh

bb.bf:                                            ; preds = %bb.az, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.np, %bb.ay ], [ %i.nq, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ax, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bf ], [ %i.no, %bb.ax ], [ %i.nn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bm

bb.bh:                                            ; preds = %.lr.ph, %.loopexit
  %i.rl = load float, ptr %i.en, align 4, !tbaa !412
  %i.rm = fcmp ueq float %i.rl, %i.cr
  br i1 %i.rm, label %bb.bi, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.rn = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !412
  %i.rp = fcmp ueq float %i.ro, %i.cs
  br i1 %i.rp, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit: ; preds = %bb.bi
  %i.rq = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !412
  %i.rs = fcmp ueq float %i.rr, %.sroa.7111.0.copyload
  br i1 %i.rs, label %bb.bj, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  store <2 x float> %i.bg, ptr %i.en, align 4
  store float %.sroa.7111.0.copyload, ptr %i.rq, align 4
  %i.rt = load ptr, ptr %i.bl, align 8, !tbaa !3009, !nonnull !604, !align !675
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 40
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !3010
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %.sroa.8.0120
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !1562
  %i.ry = load i32, ptr %i.bm, align 8, !tbaa !474 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.sa = and i32 %i.ry, 63
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = shl nuw i64 1, %i.sb
  %i.sd = xor i64 %i.sc, -1
  %i.se = lshr i32 %i.ry, 6
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.sf ; 2 uses
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !555
  %i.si = and i64 %i.sh, %i.sd
  store i64 %i.si, ptr %i.sg, align 8, !tbaa !555
  br label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread: ; preds = %bb.bh, %bb.bi, %bb.bj, %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  %i.sj = load ptr, ptr %i.co, align 8, !tbaa !505 ; 8 uses
  %i.sk = load i32, ptr %i.bm, align 8, !tbaa !474
  %i.sl = add i32 %i.sk, 1                        ; 4 uses
  %i.sm = lshr i32 %i.sl, 6                       ; 3 uses
  %i.sn = icmp ugt i32 %i.sl, 511
  br i1 %i.sn, label %._crit_edge, label %bb.bk

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread
  %i.so = and i32 %i.sl, 63
  %i.sp = zext nneg i32 %i.sm to i64              ; 8 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sp
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !555 ; 2 uses
  %i.ss = zext nneg i32 %i.so to i64              ; 2 uses
  %i.st = shl nuw i64 1, %i.ss
  %i.su = and i64 %i.sr, %i.st
  %.not.i.i.i.i82 = icmp eq i64 %i.su, 0
  br i1 %.not.i.i.i.i82, label %bb.bl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEEppEv.exit

bb.bl:                                            ; preds = %bb.bk
  %i.sv = shl nsw i64 -1, %i.ss
  %i.sw = and i64 %i.sr, %i.sv                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.sw, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i83.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i83.preheader:                       ; preds = %bb.bl
  %exitcond.not.i.i.i.i162 = icmp eq i32 %i.sm, 7
  br i1 %exitcond.not.i.i.i.i162, label %._crit_edge, label %.lr.ph164

.lr.ph.i.i.i.i83:                                 ; preds = %.lr.ph164
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph164.1

.lr.ph164.1:                                      ; preds = %.lr.ph.i.i.i.i83
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.sp, 2 ; 3 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.1
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.sy, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i83.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.1:                               ; preds = %.lr.ph164.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph164.2

.lr.ph164.2:                                      ; preds = %.lr.ph.i.i.i.i83.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.sp, 3 ; 3 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.2
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ta, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i83.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.2:                               ; preds = %.lr.ph164.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph164.3

.lr.ph164.3:                                      ; preds = %.lr.ph.i.i.i.i83.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.sp, 4 ; 3 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.3
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.tc, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i83.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.3:                               ; preds = %.lr.ph164.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph164.4

.lr.ph164.4:                                      ; preds = %.lr.ph.i.i.i.i83.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.sp, 5 ; 3 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.4
  %i.te = load i64, ptr %i.td, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.te, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i83.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.4:                               ; preds = %.lr.ph164.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph164.5

.lr.ph164.5:                                      ; preds = %.lr.ph.i.i.i.i83.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.sp, 6 ; 3 uses
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.5
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.tg, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i83.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.5:                               ; preds = %.lr.ph164.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
end_hunk_8
begin_hunk_9_@_ZNK7openvdb5v13_05tools15VolumeAdvectionINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEELb0ENS0_4util15NullInterrupterEE6AdvectISH_Lm3ENS1_7SamplerILm1ELb0EEEE7limiterERKNS4_11LeafManagerISG_E9LeafRangeEf:bb.a
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = shl nuw i64 1, %i.li
  %i.lk = and i64 %i.lg, %i.lj
  %.not.i.i88 = icmp eq i64 %i.lk, 0
  %i.ll = zext nneg i32 %i.lb to i64
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.ll ; 3 uses
  br i1 %.not.i.i88, label %.noexc66, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !390
  %i.lo = and <2 x i32> %i.gn, splat (i32 -128)   ; 2 uses
  %i.lp = extractelement <2 x i32> %i.lo, i64 0
  %.sroa.2.0.insert.ext.i.i.i89 = zext i32 %i.lp to i64
  %.sroa.2.0.insert.shift.i.i.i90 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i89, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.hj to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i90, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4
  %i.lq = extractelement <2 x i32> %i.lo, i64 1
  store i32 %i.lq, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !390
  store ptr %i.ln, ptr %i.by, align 8, !tbaa !1563
  %i.lr = load ptr, ptr %i.lm, align 8, !tbaa !390
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i, %bb.ai, %bb.as
  %i.ls = phi ptr [ %i.lr, %bb.as ], [ %i.ja, %bb.ai ], [ %i.hs, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i ]
  %i.lt = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.ls, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %.noexc66 unwind label %bb.az

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i
  %i.lu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc66

.noexc66:                                         ; preds = %.invoke, %bb.ah, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i, %bb.at, %bb.ar, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.hi, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i ], [ %i.lm, %bb.ar ], [ %i.lt, %.invoke ], [ %i.iv, %bb.ah ], [ %i.ko, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i ], [ %i.lu, %bb.at ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %9, ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, i64 12, i1 false)
  %i.lv = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.lw = add nsw i32 %i.lv, 1
  store i32 %i.lw, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.lx = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc67 unwind label %bb.az

.noexc67:                                         ; preds = %.noexc66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %i.lx, i64 12, i1 false)
  %i.ly = load i32, ptr %i.bt, align 4, !tbaa !363
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.bt, align 4, !tbaa !363
  %i.ma = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc68 unwind label %bb.az

.noexc68:                                         ; preds = %.noexc67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull align 4 dereferenceable(12) %i.ma, i64 12, i1 false)
  %i.mb = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mc = add nsw i32 %i.mb, -1
  store i32 %i.mc, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.md = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc69 unwind label %bb.az

.noexc69:                                         ; preds = %.noexc68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ca, ptr noundef nonnull align 4 dereferenceable(12) %i.md, i64 12, i1 false)
  %i.me = load <2 x i32>, ptr %3, align 8, !tbaa !363
  %i.mf = add nsw <2 x i32> %i.me, <i32 1, i32 -1>
  store <2 x i32> %i.mf, ptr %3, align 8, !tbaa !363
  %i.mg = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc70 unwind label %bb.az

.noexc70:                                         ; preds = %.noexc69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) %i.mg, i64 12, i1 false)
  %i.mh = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mi = add nsw i32 %i.mh, 1
  store i32 %i.mi, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mj = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc71 unwind label %bb.az

.noexc71:                                         ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.mj, i64 12, i1 false)
  %i.mk = load i32, ptr %i.bt, align 4, !tbaa !363
  %i.ml = add nsw i32 %i.mk, 1
  store i32 %i.ml, ptr %i.bt, align 4, !tbaa !363
  %i.mm = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc72 unwind label %bb.az

.noexc72:                                         ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %i.mm, i64 12, i1 false)
  %i.mn = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mo = add nsw i32 %i.mn, -1
  store i32 %i.mo, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mp = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %.noexc72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.mp, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN7openvdb5v13_05tools10BoxSampler7extremaINS0_4math4Vec3IfEELm2EEEvRAT0__AT0__AT0__T_RS7_SC_(ptr noundef nonnull align 4 dereferenceable(96) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %11)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.mq = load float, ptr %i.en, align 4, !tbaa !412 ; 7 uses
  %i.mr = load float, ptr %10, align 4, !tbaa !412 ; 4 uses
  br i1 %i.aa, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %bb.av
  %i.ms = load float, ptr %11, align 4, !tbaa !412 ; 2 uses
  %i.mt = fcmp ogt float %i.mq, %i.mr
  %i.mu = fcmp olt float %i.mq, %i.ms
  %i.mv = select i1 %i.mu, float %i.mq, float %i.ms
  %i.mw = select i1 %i.mt, float %i.mv, float %i.mr
  store float %i.mw, ptr %i.en, align 4, !tbaa !412
  %i.mx = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.my = load float, ptr %i.mx, align 4, !tbaa !412 ; 3 uses
  %i.mz = load float, ptr %i.cg, align 4, !tbaa !412 ; 2 uses
  %i.na = load float, ptr %i.ci, align 4, !tbaa !412 ; 2 uses
  %i.nb = fcmp ogt float %i.my, %i.mz
  %i.nc = fcmp olt float %i.my, %i.na
  %i.nd = select i1 %i.nc, float %i.my, float %i.na
  %i.ne = select i1 %i.nb, float %i.nd, float %i.mz
  store float %i.ne, ptr %i.mx, align 4, !tbaa !412
  %i.nf = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !412 ; 3 uses
  %i.nh = load float, ptr %i.ch, align 4, !tbaa !412 ; 2 uses
  %i.ni = load float, ptr %i.cj, align 4, !tbaa !412 ; 2 uses
  %i.nj = fcmp ogt float %i.ng, %i.nh
  %i.nk = fcmp olt float %i.ng, %i.ni
  %i.nl = select i1 %i.nk, float %i.ng, float %i.ni
  %i.nm = select i1 %i.nj, float %i.nl, float %i.nh
  store float %i.nm, ptr %i.nf, align 4, !tbaa !412
  br label %.loopexit

bb.aw:                                            ; preds = %bb.aa, %bb.z
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ax:                                            ; preds = %.noexc61, %bb.ab
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %bb.ac
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %.invoke, %.noexc72, %.noexc71, %.noexc70, %.noexc69, %.noexc68, %.noexc67, %.noexc66, %bb.au
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ba:                                            ; preds = %bb.av
  %i.nr = fcmp oeq float %i.mq, %i.mr
  br i1 %i.nr, label %bb.bb, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ns = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !412 ; 2 uses
  %i.nu = load float, ptr %i.cg, align 4, !tbaa !412 ; 2 uses
  %i.nv = fcmp oeq float %i.nt, %i.nu
  br i1 %i.nv, label %.split, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split:                                           ; preds = %bb.bb
  %i.nw = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !412
  %i.ny = load float, ptr %i.ch, align 4, !tbaa !412
  %i.nz = fcmp olt float %i.nx, %i.ny
  br i1 %i.nz, label %bb.be, label %bb.bc

_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.ba, %bb.bb
  %.lcssa21.i = phi float [ %i.mq, %bb.ba ], [ %i.nt, %bb.bb ]
  %.lcssa.i = phi float [ %i.mr, %bb.ba ], [ %i.nu, %bb.bb ]
  %i.oa = fcmp olt float %.lcssa21.i, %.lcssa.i
  br i1 %i.oa, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.split, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.ob = load float, ptr %11, align 4, !tbaa !412 ; 2 uses
  %i.oc = fcmp oeq float %i.mq, %i.ob
  br i1 %i.oc, label %bb.bd, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.od = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.oe = load float, ptr %i.od, align 4, !tbaa !412 ; 2 uses
  %i.of = load float, ptr %i.ci, align 4, !tbaa !412 ; 2 uses
  %i.og = fcmp oeq float %i.oe, %i.of
  br i1 %i.og, label %.split115, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split115:                                        ; preds = %bb.bd
  %i.oh = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !412
  %i.oj = load float, ptr %i.cj, align 4, !tbaa !412
  %i.ok = fcmp ogt float %i.oi, %i.oj
  br i1 %i.ok, label %bb.be, label %.loopexit

_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.bc, %bb.bd
  %.lcssa21.i74 = phi float [ %i.mq, %bb.bc ], [ %i.oe, %bb.bd ]
  %.lcssa.i75 = phi float [ %i.ob, %bb.bc ], [ %i.of, %bb.bd ]
  %i.ol = fcmp ogt float %.lcssa21.i74, %.lcssa.i75
  br i1 %i.ol, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.split115, %.split, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.om = sitofp i32 %i.gk to double
  %i.on = sitofp <2 x i32> %i.gn to <2 x double>
  %.sroa.0.0.copyload4.i.i.i77 = load <2 x float>, ptr %i.bz, align 4
  %16 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i78, align 4
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %18 = load <4 x float>, ptr %i.ck, align 8
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i.i = load <2 x float>, ptr %9, align 16
  %.sroa.0.0.copyload4.i.i43.i = load <2 x float>, ptr %i.cb, align 4
  %20 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i44.i, align 4
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %22 = load <4 x float>, ptr %i.cl, align 16
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i48.i = load <2 x float>, ptr %i.ca, align 8
  %.sroa.0.0.copyload4.i.i67.i = load <2 x float>, ptr %i.cd, align 4
  %.sroa.6.0.copyload.i.i69.i = load float, ptr %.sroa.6.0..sroa_idx.i.i68.i, align 4
  %i.oo = load float, ptr %i.cm, align 8, !tbaa !412
  %.sroa.0.0.copyload4.i12.i72.i = load <2 x float>, ptr %i.cc, align 16
  %.sroa.0.0.copyload4.i.i79.i = load <2 x float>, ptr %i.cf, align 4
  %.sroa.6.0.copyload.i.i81.i = load float, ptr %.sroa.6.0..sroa_idx.i.i80.i, align 4
  %i.op = load float, ptr %i.cn, align 16, !tbaa !412
  %.sroa.0.0.copyload4.i12.i84.i = load <2 x float>, ptr %i.ce, align 8
  %i.oq = load double, ptr %15, align 8, !tbaa !410
  %i.or = fsub double %i.oq, %i.om                ; 2 uses
  %i.os = load <2 x float>, ptr %9, align 16, !tbaa !412
  %i.ot = fsub <2 x float> %.sroa.0.0.copyload4.i.i.i77, %i.os
  %i.ou = fpext <2 x float> %i.ot to <2 x double>
  %i.ov = load <2 x float>, ptr %i.ca, align 8, !tbaa !412
  %i.ow = fsub <2 x float> %.sroa.0.0.copyload4.i.i43.i, %i.ov
  %i.ox = fpext <2 x float> %i.ow to <2 x double>
  %i.oy = load <2 x float>, ptr %i.cc, align 16, !tbaa !412
  %i.oz = fsub <2 x float> %.sroa.0.0.copyload4.i.i67.i, %i.oy
  %i.pa = fpext <2 x float> %i.oz to <2 x double>
  %i.pb = load <2 x float>, ptr %i.ce, align 8, !tbaa !412
  %i.pc = fsub <2 x float> %.sroa.0.0.copyload4.i.i79.i, %i.pb
  %i.pd = fpext <2 x float> %i.pc to <2 x double>
  %i.pe = insertelement <2 x float> %17, float %.sroa.6.0.copyload.i.i69.i, i64 1
  %i.pf = insertelement <2 x float> %19, float %i.oo, i64 1 ; 2 uses
  %i.pg = fsub <2 x float> %i.pe, %i.pf
  %i.ph = fpext <2 x float> %i.pg to <2 x double>
  %i.pi = insertelement <2 x float> %21, float %.sroa.6.0.copyload.i.i81.i, i64 1
  %i.pj = insertelement <2 x float> %23, float %i.op, i64 1 ; 2 uses
  %i.pk = fsub <2 x float> %i.pi, %i.pj
  %i.pl = fpext <2 x float> %i.pk to <2 x double>
  %i.pm = load <2 x double>, ptr %i.bs, align 8, !tbaa !410
  %i.pn = fsub <2 x double> %i.pm, %i.on          ; 3 uses
  %i.po = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.pp = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.pq = fmul <2 x double> %i.pp, %i.ou
  %i.pr = fptrunc <2 x double> %i.pq to <2 x float>
  %i.ps = fadd <2 x float> %.sroa.0.0.copyload4.i12.i.i, %i.pr ; 2 uses
  %i.pt = fmul <2 x double> %i.pp, %i.ox
  %i.pu = fptrunc <2 x double> %i.pt to <2 x float>
  %i.pv = fadd <2 x float> %.sroa.0.0.copyload4.i12.i48.i, %i.pu
  %i.pw = fsub <2 x float> %i.pv, %i.ps
  %i.px = fpext <2 x float> %i.pw to <2 x double>
  %i.py = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.pz = fmul <2 x double> %i.py, %i.px
  %i.qa = fptrunc <2 x double> %i.pz to <2 x float>
  %i.qb = fadd <2 x float> %i.ps, %i.qa           ; 2 uses
  %i.qc = fmul <2 x double> %i.pp, %i.pa
  %i.qd = fmul <2 x double> %i.po, %i.ph
  %i.qe = fptrunc <2 x double> %i.qc to <2 x float>
  %i.qf = fptrunc <2 x double> %i.qd to <2 x float>
  %i.qg = fadd <2 x float> %.sroa.0.0.copyload4.i12.i72.i, %i.qe ; 2 uses
  %i.qh = fadd <2 x float> %i.pf, %i.qf           ; 2 uses
  %i.qi = fmul <2 x double> %i.pp, %i.pd
  %i.qj = fmul <2 x double> %i.po, %i.pl
  %i.qk = fptrunc <2 x double> %i.qi to <2 x float>
  %i.ql = fptrunc <2 x double> %i.qj to <2 x float>
  %i.qm = fadd <2 x float> %.sroa.0.0.copyload4.i12.i84.i, %i.qk
  %i.qn = fadd <2 x float> %i.pj, %i.ql
  %i.qo = fsub <2 x float> %i.qm, %i.qg
  %i.qp = fsub <2 x float> %i.qn, %i.qh
  %i.qq = fpext <2 x float> %i.qo to <2 x double>
  %i.qr = fpext <2 x float> %i.qp to <2 x double>
  %i.qs = fmul <2 x double> %i.py, %i.qq
  %i.qt = fmul <2 x double> %i.py, %i.qr
  %i.qu = fptrunc <2 x double> %i.qs to <2 x float>
  %i.qv = fptrunc <2 x double> %i.qt to <2 x float>
  %i.qw = fadd <2 x float> %i.qg, %i.qu
  %i.qx = fadd <2 x float> %i.qh, %i.qv           ; 3 uses
  %i.qy = fsub <2 x float> %i.qw, %i.qb
  %i.qz = extractelement <2 x float> %i.qx, i64 0
  %shift = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.qx
  %i.ra = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.rb = fpext <2 x float> %i.qy to <2 x double>
  %i.rc = fpext float %i.ra to double
  %i.rd = insertelement <2 x double> poison, double %i.or, i64 0
  %i.re = shufflevector <2 x double> %i.rd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rf = fmul <2 x double> %i.re, %i.rb
  %i.rg = fmul double %i.or, %i.rc
  %i.rh = fptrunc <2 x double> %i.rf to <2 x float>
  %i.ri = fptrunc double %i.rg to float
  %i.rj = fadd <2 x float> %i.qb, %i.rh
  %i.rk = fadd float %i.qz, %i.ri
  store <2 x float> %i.rj, ptr %i.en, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %i.rk, ptr %.sroa.5.0..sroa_idx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.split115, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bh

bb.bf:                                            ; preds = %bb.az, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.np, %bb.ay ], [ %i.nq, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ax, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bf ], [ %i.no, %bb.ax ], [ %i.nn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bm

bb.bh:                                            ; preds = %.lr.ph, %.loopexit
  %i.rl = load float, ptr %i.en, align 4, !tbaa !412
  %i.rm = fcmp ueq float %i.rl, %i.cr
  br i1 %i.rm, label %bb.bi, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.rn = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !412
  %i.rp = fcmp ueq float %i.ro, %i.cs
  br i1 %i.rp, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit: ; preds = %bb.bi
  %i.rq = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !412
  %i.rs = fcmp ueq float %i.rr, %.sroa.7111.0.copyload
  br i1 %i.rs, label %bb.bj, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  store <2 x float> %i.bg, ptr %i.en, align 4
  store float %.sroa.7111.0.copyload, ptr %i.rq, align 4
  %i.rt = load ptr, ptr %i.bl, align 8, !tbaa !3009, !nonnull !604, !align !675
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 40
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !3010
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %.sroa.8.0120
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !1562
  %i.ry = load i32, ptr %i.bm, align 8, !tbaa !474 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.sa = and i32 %i.ry, 63
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = shl nuw i64 1, %i.sb
  %i.sd = xor i64 %i.sc, -1
  %i.se = lshr i32 %i.ry, 6
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.sf ; 2 uses
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !555
  %i.si = and i64 %i.sh, %i.sd
  store i64 %i.si, ptr %i.sg, align 8, !tbaa !555
  br label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread: ; preds = %bb.bh, %bb.bi, %bb.bj, %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  %i.sj = load ptr, ptr %i.co, align 8, !tbaa !505 ; 8 uses
  %i.sk = load i32, ptr %i.bm, align 8, !tbaa !474
  %i.sl = add i32 %i.sk, 1                        ; 4 uses
  %i.sm = lshr i32 %i.sl, 6                       ; 3 uses
  %i.sn = icmp ugt i32 %i.sl, 511
  br i1 %i.sn, label %._crit_edge, label %bb.bk

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread
  %i.so = and i32 %i.sl, 63
  %i.sp = zext nneg i32 %i.sm to i64              ; 8 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sp
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !555 ; 2 uses
  %i.ss = zext nneg i32 %i.so to i64              ; 2 uses
  %i.st = shl nuw i64 1, %i.ss
  %i.su = and i64 %i.sr, %i.st
  %.not.i.i.i.i82 = icmp eq i64 %i.su, 0
  br i1 %.not.i.i.i.i82, label %bb.bl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEEppEv.exit

bb.bl:                                            ; preds = %bb.bk
  %i.sv = shl nsw i64 -1, %i.ss
  %i.sw = and i64 %i.sr, %i.sv                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.sw, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i83.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i83.preheader:                       ; preds = %bb.bl
  %exitcond.not.i.i.i.i162 = icmp eq i32 %i.sm, 7
  br i1 %exitcond.not.i.i.i.i162, label %._crit_edge, label %.lr.ph164

.lr.ph.i.i.i.i83:                                 ; preds = %.lr.ph164
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph164.1

.lr.ph164.1:                                      ; preds = %.lr.ph.i.i.i.i83
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.sp, 2 ; 3 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.1
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.sy, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i83.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.1:                               ; preds = %.lr.ph164.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph164.2

.lr.ph164.2:                                      ; preds = %.lr.ph.i.i.i.i83.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.sp, 3 ; 3 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.2
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ta, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i83.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.2:                               ; preds = %.lr.ph164.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph164.3

.lr.ph164.3:                                      ; preds = %.lr.ph.i.i.i.i83.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.sp, 4 ; 3 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.3
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.tc, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i83.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.3:                               ; preds = %.lr.ph164.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph164.4

.lr.ph164.4:                                      ; preds = %.lr.ph.i.i.i.i83.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.sp, 5 ; 3 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.4
  %i.te = load i64, ptr %i.td, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.te, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i83.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.4:                               ; preds = %.lr.ph164.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph164.5

.lr.ph164.5:                                      ; preds = %.lr.ph.i.i.i.i83.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.sp, 6 ; 3 uses
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.5
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.tg, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i83.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.5:                               ; preds = %.lr.ph164.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
end_hunk_9
begin_hunk_10_@_ZNK7openvdb5v13_05tools15VolumeAdvectionINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEELb0ENS0_4util15NullInterrupterEE6AdvectISH_Lm4ENS1_7SamplerILm1ELb0EEEE7limiterERKNS4_11LeafManagerISG_E9LeafRangeEf:bb.a
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = shl nuw i64 1, %i.li
  %i.lk = and i64 %i.lg, %i.lj
  %.not.i.i88 = icmp eq i64 %i.lk, 0
  %i.ll = zext nneg i32 %i.lb to i64
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.ll ; 3 uses
  br i1 %.not.i.i88, label %.noexc66, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !390
  %i.lo = and <2 x i32> %i.gn, splat (i32 -128)   ; 2 uses
  %i.lp = extractelement <2 x i32> %i.lo, i64 0
  %.sroa.2.0.insert.ext.i.i.i89 = zext i32 %i.lp to i64
  %.sroa.2.0.insert.shift.i.i.i90 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i89, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.hj to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i90, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4
  %i.lq = extractelement <2 x i32> %i.lo, i64 1
  store i32 %i.lq, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !390
  store ptr %i.ln, ptr %i.by, align 8, !tbaa !1563
  %i.lr = load ptr, ptr %i.lm, align 8, !tbaa !390
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i, %bb.ai, %bb.as
  %i.ls = phi ptr [ %i.lr, %bb.as ], [ %i.ja, %bb.ai ], [ %i.hs, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKS9_SM_.exit.i ]
  %i.lt = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS8_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKS6_RKNS4_5CoordERT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.ls, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %.noexc66 unwind label %bb.az

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.i
  %i.lu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc66

.noexc66:                                         ; preds = %.invoke, %bb.ah, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i, %bb.at, %bb.ar, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.hi, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKS9_SM_.exit.i ], [ %i.lm, %bb.ar ], [ %i.lt, %.invoke ], [ %i.iv, %bb.ah ], [ %i.ko, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9findCoordERKNS5_5CoordE.exit.thread.i ], [ %i.lu, %bb.at ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %9, ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, i64 12, i1 false)
  %i.lv = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.lw = add nsw i32 %i.lv, 1
  store i32 %i.lw, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.lx = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc67 unwind label %bb.az

.noexc67:                                         ; preds = %.noexc66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %i.lx, i64 12, i1 false)
  %i.ly = load i32, ptr %i.bt, align 4, !tbaa !363
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.bt, align 4, !tbaa !363
  %i.ma = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc68 unwind label %bb.az

.noexc68:                                         ; preds = %.noexc67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull align 4 dereferenceable(12) %i.ma, i64 12, i1 false)
  %i.mb = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mc = add nsw i32 %i.mb, -1
  store i32 %i.mc, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.md = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc69 unwind label %bb.az

.noexc69:                                         ; preds = %.noexc68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ca, ptr noundef nonnull align 4 dereferenceable(12) %i.md, i64 12, i1 false)
  %i.me = load <2 x i32>, ptr %3, align 8, !tbaa !363
  %i.mf = add nsw <2 x i32> %i.me, <i32 1, i32 -1>
  store <2 x i32> %i.mf, ptr %3, align 8, !tbaa !363
  %i.mg = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc70 unwind label %bb.az

.noexc70:                                         ; preds = %.noexc69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) %i.mg, i64 12, i1 false)
  %i.mh = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mi = add nsw i32 %i.mh, 1
  store i32 %i.mi, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mj = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc71 unwind label %bb.az

.noexc71:                                         ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.mj, i64 12, i1 false)
  %i.mk = load i32, ptr %i.bt, align 4, !tbaa !363
  %i.ml = add nsw i32 %i.mk, 1
  store i32 %i.ml, ptr %i.bt, align 4, !tbaa !363
  %i.mm = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc72 unwind label %bb.az

.noexc72:                                         ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %i.mm, i64 12, i1 false)
  %i.mn = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mo = add nsw i32 %i.mn, -1
  store i32 %i.mo, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !363
  %i.mp = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS7_5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %.noexc72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.mp, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN7openvdb5v13_05tools10BoxSampler7extremaINS0_4math4Vec3IfEELm2EEEvRAT0__AT0__AT0__T_RS7_SC_(ptr noundef nonnull align 4 dereferenceable(96) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %11)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.mq = load float, ptr %i.en, align 4, !tbaa !412 ; 7 uses
  %i.mr = load float, ptr %10, align 4, !tbaa !412 ; 4 uses
  br i1 %i.aa, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %bb.av
  %i.ms = load float, ptr %11, align 4, !tbaa !412 ; 2 uses
  %i.mt = fcmp ogt float %i.mq, %i.mr
  %i.mu = fcmp olt float %i.mq, %i.ms
  %i.mv = select i1 %i.mu, float %i.mq, float %i.ms
  %i.mw = select i1 %i.mt, float %i.mv, float %i.mr
  store float %i.mw, ptr %i.en, align 4, !tbaa !412
  %i.mx = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.my = load float, ptr %i.mx, align 4, !tbaa !412 ; 3 uses
  %i.mz = load float, ptr %i.cg, align 4, !tbaa !412 ; 2 uses
  %i.na = load float, ptr %i.ci, align 4, !tbaa !412 ; 2 uses
  %i.nb = fcmp ogt float %i.my, %i.mz
  %i.nc = fcmp olt float %i.my, %i.na
  %i.nd = select i1 %i.nc, float %i.my, float %i.na
  %i.ne = select i1 %i.nb, float %i.nd, float %i.mz
  store float %i.ne, ptr %i.mx, align 4, !tbaa !412
  %i.nf = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !412 ; 3 uses
  %i.nh = load float, ptr %i.ch, align 4, !tbaa !412 ; 2 uses
  %i.ni = load float, ptr %i.cj, align 4, !tbaa !412 ; 2 uses
  %i.nj = fcmp ogt float %i.ng, %i.nh
  %i.nk = fcmp olt float %i.ng, %i.ni
  %i.nl = select i1 %i.nk, float %i.ng, float %i.ni
  %i.nm = select i1 %i.nj, float %i.nl, float %i.nh
  store float %i.nm, ptr %i.nf, align 4, !tbaa !412
  br label %.loopexit

bb.aw:                                            ; preds = %bb.aa, %bb.z
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ax:                                            ; preds = %.noexc61, %bb.ab
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %bb.ac
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %.invoke, %.noexc72, %.noexc71, %.noexc70, %.noexc69, %.noexc68, %.noexc67, %.noexc66, %bb.au
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ba:                                            ; preds = %bb.av
  %i.nr = fcmp oeq float %i.mq, %i.mr
  br i1 %i.nr, label %bb.bb, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ns = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !412 ; 2 uses
  %i.nu = load float, ptr %i.cg, align 4, !tbaa !412 ; 2 uses
  %i.nv = fcmp oeq float %i.nt, %i.nu
  br i1 %i.nv, label %.split, label %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split:                                           ; preds = %bb.bb
  %i.nw = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !412
  %i.ny = load float, ptr %i.ch, align 4, !tbaa !412
  %i.nz = fcmp olt float %i.nx, %i.ny
  br i1 %i.nz, label %bb.be, label %bb.bc

_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.ba, %bb.bb
  %.lcssa21.i = phi float [ %i.mq, %bb.ba ], [ %i.nt, %bb.bb ]
  %.lcssa.i = phi float [ %i.mr, %bb.ba ], [ %i.nu, %bb.bb ]
  %i.oa = fcmp olt float %.lcssa21.i, %.lcssa.i
  br i1 %i.oa, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.split, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.ob = load float, ptr %11, align 4, !tbaa !412 ; 2 uses
  %i.oc = fcmp oeq float %i.mq, %i.ob
  br i1 %i.oc, label %bb.bd, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.od = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.oe = load float, ptr %i.od, align 4, !tbaa !412 ; 2 uses
  %i.of = load float, ptr %i.ci, align 4, !tbaa !412 ; 2 uses
  %i.og = fcmp oeq float %i.oe, %i.of
  br i1 %i.og, label %.split115, label %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit

.split115:                                        ; preds = %bb.bd
  %i.oh = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !412
  %i.oj = load float, ptr %i.cj, align 4, !tbaa !412
  %i.ok = fcmp ogt float %i.oi, %i.oj
  br i1 %i.ok, label %bb.be, label %.loopexit

_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit: ; preds = %bb.bc, %bb.bd
  %.lcssa21.i74 = phi float [ %i.mq, %bb.bc ], [ %i.oe, %bb.bd ]
  %.lcssa.i75 = phi float [ %i.ob, %bb.bc ], [ %i.of, %bb.bd ]
  %i.ol = fcmp ogt float %.lcssa21.i74, %.lcssa.i75
  br i1 %i.ol, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.split115, %.split, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %_ZN7openvdb5v13_04math13cwiseLessThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit
  %i.om = sitofp i32 %i.gk to double
  %i.on = sitofp <2 x i32> %i.gn to <2 x double>
  %.sroa.0.0.copyload4.i.i.i77 = load <2 x float>, ptr %i.bz, align 4
  %16 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i78, align 4
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %18 = load <4 x float>, ptr %i.ck, align 8
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i.i = load <2 x float>, ptr %9, align 16
  %.sroa.0.0.copyload4.i.i43.i = load <2 x float>, ptr %i.cb, align 4
  %20 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i44.i, align 4
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %22 = load <4 x float>, ptr %i.cl, align 16
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.0.copyload4.i12.i48.i = load <2 x float>, ptr %i.ca, align 8
  %.sroa.0.0.copyload4.i.i67.i = load <2 x float>, ptr %i.cd, align 4
  %.sroa.6.0.copyload.i.i69.i = load float, ptr %.sroa.6.0..sroa_idx.i.i68.i, align 4
  %i.oo = load float, ptr %i.cm, align 8, !tbaa !412
  %.sroa.0.0.copyload4.i12.i72.i = load <2 x float>, ptr %i.cc, align 16
  %.sroa.0.0.copyload4.i.i79.i = load <2 x float>, ptr %i.cf, align 4
  %.sroa.6.0.copyload.i.i81.i = load float, ptr %.sroa.6.0..sroa_idx.i.i80.i, align 4
  %i.op = load float, ptr %i.cn, align 16, !tbaa !412
  %.sroa.0.0.copyload4.i12.i84.i = load <2 x float>, ptr %i.ce, align 8
  %i.oq = load double, ptr %15, align 8, !tbaa !410
  %i.or = fsub double %i.oq, %i.om                ; 2 uses
  %i.os = load <2 x float>, ptr %9, align 16, !tbaa !412
  %i.ot = fsub <2 x float> %.sroa.0.0.copyload4.i.i.i77, %i.os
  %i.ou = fpext <2 x float> %i.ot to <2 x double>
  %i.ov = load <2 x float>, ptr %i.ca, align 8, !tbaa !412
  %i.ow = fsub <2 x float> %.sroa.0.0.copyload4.i.i43.i, %i.ov
  %i.ox = fpext <2 x float> %i.ow to <2 x double>
  %i.oy = load <2 x float>, ptr %i.cc, align 16, !tbaa !412
  %i.oz = fsub <2 x float> %.sroa.0.0.copyload4.i.i67.i, %i.oy
  %i.pa = fpext <2 x float> %i.oz to <2 x double>
  %i.pb = load <2 x float>, ptr %i.ce, align 8, !tbaa !412
  %i.pc = fsub <2 x float> %.sroa.0.0.copyload4.i.i79.i, %i.pb
  %i.pd = fpext <2 x float> %i.pc to <2 x double>
  %i.pe = insertelement <2 x float> %17, float %.sroa.6.0.copyload.i.i69.i, i64 1
  %i.pf = insertelement <2 x float> %19, float %i.oo, i64 1 ; 2 uses
  %i.pg = fsub <2 x float> %i.pe, %i.pf
  %i.ph = fpext <2 x float> %i.pg to <2 x double>
  %i.pi = insertelement <2 x float> %21, float %.sroa.6.0.copyload.i.i81.i, i64 1
  %i.pj = insertelement <2 x float> %23, float %i.op, i64 1 ; 2 uses
  %i.pk = fsub <2 x float> %i.pi, %i.pj
  %i.pl = fpext <2 x float> %i.pk to <2 x double>
  %i.pm = load <2 x double>, ptr %i.bs, align 8, !tbaa !410
  %i.pn = fsub <2 x double> %i.pm, %i.on          ; 3 uses
  %i.po = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.pp = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.pq = fmul <2 x double> %i.pp, %i.ou
  %i.pr = fptrunc <2 x double> %i.pq to <2 x float>
  %i.ps = fadd <2 x float> %.sroa.0.0.copyload4.i12.i.i, %i.pr ; 2 uses
  %i.pt = fmul <2 x double> %i.pp, %i.ox
  %i.pu = fptrunc <2 x double> %i.pt to <2 x float>
  %i.pv = fadd <2 x float> %.sroa.0.0.copyload4.i12.i48.i, %i.pu
  %i.pw = fsub <2 x float> %i.pv, %i.ps
  %i.px = fpext <2 x float> %i.pw to <2 x double>
  %i.py = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.pz = fmul <2 x double> %i.py, %i.px
  %i.qa = fptrunc <2 x double> %i.pz to <2 x float>
  %i.qb = fadd <2 x float> %i.ps, %i.qa           ; 2 uses
  %i.qc = fmul <2 x double> %i.pp, %i.pa
  %i.qd = fmul <2 x double> %i.po, %i.ph
  %i.qe = fptrunc <2 x double> %i.qc to <2 x float>
  %i.qf = fptrunc <2 x double> %i.qd to <2 x float>
  %i.qg = fadd <2 x float> %.sroa.0.0.copyload4.i12.i72.i, %i.qe ; 2 uses
  %i.qh = fadd <2 x float> %i.pf, %i.qf           ; 2 uses
  %i.qi = fmul <2 x double> %i.pp, %i.pd
  %i.qj = fmul <2 x double> %i.po, %i.pl
  %i.qk = fptrunc <2 x double> %i.qi to <2 x float>
  %i.ql = fptrunc <2 x double> %i.qj to <2 x float>
  %i.qm = fadd <2 x float> %.sroa.0.0.copyload4.i12.i84.i, %i.qk
  %i.qn = fadd <2 x float> %i.pj, %i.ql
  %i.qo = fsub <2 x float> %i.qm, %i.qg
  %i.qp = fsub <2 x float> %i.qn, %i.qh
  %i.qq = fpext <2 x float> %i.qo to <2 x double>
  %i.qr = fpext <2 x float> %i.qp to <2 x double>
  %i.qs = fmul <2 x double> %i.py, %i.qq
  %i.qt = fmul <2 x double> %i.py, %i.qr
  %i.qu = fptrunc <2 x double> %i.qs to <2 x float>
  %i.qv = fptrunc <2 x double> %i.qt to <2 x float>
  %i.qw = fadd <2 x float> %i.qg, %i.qu
  %i.qx = fadd <2 x float> %i.qh, %i.qv           ; 3 uses
  %i.qy = fsub <2 x float> %i.qw, %i.qb
  %i.qz = extractelement <2 x float> %i.qx, i64 0
  %shift = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.qx
  %i.ra = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.rb = fpext <2 x float> %i.qy to <2 x double>
  %i.rc = fpext float %i.ra to double
  %i.rd = insertelement <2 x double> poison, double %i.or, i64 0
  %i.re = shufflevector <2 x double> %i.rd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rf = fmul <2 x double> %i.re, %i.rb
  %i.rg = fmul double %i.or, %i.rc
  %i.rh = fptrunc <2 x double> %i.rf to <2 x float>
  %i.ri = fptrunc double %i.rg to float
  %i.rj = fadd <2 x float> %i.qb, %i.rh
  %i.rk = fadd float %i.qz, %i.ri
  store <2 x float> %i.rj, ptr %i.en, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %i.rk, ptr %.sroa.5.0..sroa_idx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.split115, %_ZN7openvdb5v13_04math16cwiseGreaterThanIffEEbRKNS1_4Vec3IT_EERKNS3_IT0_EE.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bh

bb.bf:                                            ; preds = %bb.az, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.np, %bb.ay ], [ %i.nq, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ax, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bf ], [ %i.no, %bb.ax ], [ %i.nn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bm

bb.bh:                                            ; preds = %.lr.ph, %.loopexit
  %i.rl = load float, ptr %i.en, align 4, !tbaa !412
  %i.rm = fcmp ueq float %i.rl, %i.cr
  br i1 %i.rm, label %bb.bi, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.rn = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !412
  %i.rp = fcmp ueq float %i.ro, %i.cs
  br i1 %i.rp, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit: ; preds = %bb.bi
  %i.rq = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !412
  %i.rs = fcmp ueq float %i.rr, %.sroa.7111.0.copyload
  br i1 %i.rs, label %bb.bj, label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  store <2 x float> %i.bg, ptr %i.en, align 4
  store float %.sroa.7111.0.copyload, ptr %i.rq, align 4
  %i.rt = load ptr, ptr %i.bl, align 8, !tbaa !3009, !nonnull !604, !align !675
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 40
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !3010
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %.sroa.8.0120
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !1562
  %i.ry = load i32, ptr %i.bm, align 8, !tbaa !474 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.sa = and i32 %i.ry, 63
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = shl nuw i64 1, %i.sb
  %i.sd = xor i64 %i.sc, -1
  %i.se = lshr i32 %i.ry, 6
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.sf ; 2 uses
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !555
  %i.si = and i64 %i.sh, %i.sd
  store i64 %i.si, ptr %i.sg, align 8, !tbaa !555
  br label %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread

_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread: ; preds = %bb.bh, %bb.bi, %bb.bj, %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit
  %i.sj = load ptr, ptr %i.co, align 8, !tbaa !505 ; 8 uses
  %i.sk = load i32, ptr %i.bm, align 8, !tbaa !474
  %i.sl = add i32 %i.sk, 1                        ; 4 uses
  %i.sm = lshr i32 %i.sl, 6                       ; 3 uses
  %i.sn = icmp ugt i32 %i.sl, 511
  br i1 %i.sn, label %._crit_edge, label %bb.bk

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIfEEbRKNS1_4Vec3IT_EES7_S7_.exit.thread
  %i.so = and i32 %i.sl, 63
  %i.sp = zext nneg i32 %i.sm to i64              ; 8 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sp
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !555 ; 2 uses
  %i.ss = zext nneg i32 %i.so to i64              ; 2 uses
  %i.st = shl nuw i64 1, %i.ss
  %i.su = and i64 %i.sr, %i.st
  %.not.i.i.i.i82 = icmp eq i64 %i.su, 0
  br i1 %.not.i.i.i.i82, label %bb.bl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEEppEv.exit

bb.bl:                                            ; preds = %bb.bk
  %i.sv = shl nsw i64 -1, %i.ss
  %i.sw = and i64 %i.sr, %i.sv                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.sw, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i83.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i83.preheader:                       ; preds = %bb.bl
  %exitcond.not.i.i.i.i162 = icmp eq i32 %i.sm, 7
  br i1 %exitcond.not.i.i.i.i162, label %._crit_edge, label %.lr.ph164

.lr.ph.i.i.i.i83:                                 ; preds = %.lr.ph164
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph164.1

.lr.ph164.1:                                      ; preds = %.lr.ph.i.i.i.i83
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.sp, 2 ; 3 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.1
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.sy, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i83.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.1:                               ; preds = %.lr.ph164.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph164.2

.lr.ph164.2:                                      ; preds = %.lr.ph.i.i.i.i83.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.sp, 3 ; 3 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.2
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ta, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i83.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.2:                               ; preds = %.lr.ph164.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph164.3

.lr.ph164.3:                                      ; preds = %.lr.ph.i.i.i.i83.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.sp, 4 ; 3 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.3
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.tc, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i83.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.3:                               ; preds = %.lr.ph164.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph164.4

.lr.ph164.4:                                      ; preds = %.lr.ph.i.i.i.i83.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.sp, 5 ; 3 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.4
  %i.te = load i64, ptr %i.td, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.te, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i83.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.4:                               ; preds = %.lr.ph164.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph164.5

.lr.ph164.5:                                      ; preds = %.lr.ph.i.i.i.i83.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.sp, 6 ; 3 uses
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.5
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !555 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.tg, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i83.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i83.5:                               ; preds = %.lr.ph164.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
end_hunk_10

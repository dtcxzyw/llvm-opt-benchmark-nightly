Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Composite?download=true
inline.NumInlined: 54585
inline.NumDeleted: 17591
loop-unroll.NumCompletelyUnrolled: 189
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 858
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
  store i32 %.118.i.i.i.i, ptr %i.a, align 8, !tbaa !1102
  %i.x = icmp ne i32 %.118.i.i.i.i, 32768
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !2702
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !2703 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.ac) #31 ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !2703
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.promoted.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ac, %bb.e ] ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.ab
  br i1 %.not2.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ah, %bb.h ], [ %.promoted.i.i.i.i, %bb.g ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !957
  %.not1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not1.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.ae) #31 ; 3 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !2703
  %.not.i.i.i.i3 = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i3, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !156

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
  %i.c = load i32, ptr %2, align 4, !tbaa !548
  %i.d = load i32, ptr %i.b, align 8, !tbaa !548
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !548
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !548
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !548
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !548
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !879  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !548  ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %i.w, %i.p
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !548 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.aa, %i.q
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !548
  %i.af = icmp slt i32 %i.ae, %i.r
  br i1 %i.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ah, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !548 ; 2 uses
  %i.ak = icmp slt i32 %i.p, %i.aj
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.p, %i.aj
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !548 ; 2 uses
  %i.ao = icmp slt i32 %i.q, %i.an
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.q, %i.an
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !548
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
  %i.au = load double, ptr %3, align 8, !tbaa !705
  store double %i.au, ptr %6, align 8, !tbaa !952
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.at, ptr %i.av, align 8, !tbaa !953
  br label %.critedge.i66

vector.ph107:                                     ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %i.k, align 4, !tbaa !548
  %i.az = load <2 x i32>, ptr %2, align 4, !tbaa !548
  %i.ba = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ay, i64 2
  %i.bb = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bd = and <4 x i32> %i.bc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bd, ptr %i.ax, align 8, !tbaa !548
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = load <2 x double>, ptr %i.be, align 8
  %broadcast.splat109 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next112.3, %vector.body110 ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x double> %broadcast.splat109, ptr %i.bf, align 8, !tbaa !575
  store <2 x double> %broadcast.splat109, ptr %i.bg, align 8, !tbaa !575
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store <2 x double> %broadcast.splat109, ptr %i.bi, align 8, !tbaa !575
  store <2 x double> %broadcast.splat109, ptr %i.bj, align 8, !tbaa !575
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store <2 x double> %broadcast.splat109, ptr %i.bl, align 8, !tbaa !575
  store <2 x double> %broadcast.splat109, ptr %i.bm, align 8, !tbaa !575
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store <2 x double> %broadcast.splat109, ptr %i.bo, align 8, !tbaa !575
  store <2 x double> %broadcast.splat109, ptr %i.bp, align 8, !tbaa !575
  %index.next112.3 = add nuw nsw i64 %index111, 16 ; 2 uses
  %i.bq = icmp eq i64 %index.next112.3, 32768
  br i1 %i.bq, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body110, !llvm.loop !6728

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body110
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !879 ; 2 uses
  %.not12.i.i.i.i39 = icmp eq ptr %i.br, null
  br i1 %.not12.i.i.i.i39, label %.critedge.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %.014.i.i.i.i41 = phi ptr [ %.1.i.i.i.i47, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.br, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i42 = phi ptr [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !548 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i40
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !548 ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp sgt i32 %i.bx, %i.q
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 40
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !548
  %i.cc = icmp slt i32 %i.cb, %i.r
  br i1 %i.cc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.k, %.lr.ph.i.i.i.i40
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.l, %bb.j
  %.sink.i.i.i.i45 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ]
  %.19.i.i.i.i46 = phi ptr [ %.0813.i.i.i.i42, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ %.014.i.i.i.i41, %bb.l ], [ %.014.i.i.i.i41, %bb.j ], [ %.014.i.i.i.i41, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 %.sink.i.i.i.i45
  %.1.i.i.i.i47 = load ptr, ptr %i.cd, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %.1.i.i.i.i47, null
  br i1 %.not.i.i.i.i48, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i40, !llvm.loop !78

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %i.ce = icmp eq ptr %.19.i.i.i.i46, %i.u
  br i1 %i.ce, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !548 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 36
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !548 ; 2 uses
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp sgt i32 %i.q, %i.ck
  br i1 %i.cm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !548
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
  %i.cs = load double, ptr %3, align 8, !tbaa !705
  store double %i.cs, ptr %6, align 8, !tbaa !952
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.cr, ptr %i.ct, align 8, !tbaa !953
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, %.lr.ph.i.i.i.i51
  %.014.i.i.i.i52 = phi ptr [ %i.t, %.lr.ph.i.i.i.i51 ], [ %.1.i.i.i.i58, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ] ; 7 uses
  %.0813.i.i.i.i53 = phi ptr [ %i.u, %.lr.ph.i.i.i.i51 ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !548 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.p
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = icmp sgt i32 %i.cv, %i.p
  br i1 %i.cx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 36
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !548 ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.q
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = icmp sgt i32 %i.cz, %i.q
  br i1 %i.db, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54: ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 40
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !548
  %i.de = icmp slt i32 %i.dd, %i.r
  br i1 %i.de, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.s, %bb.q
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.t, %bb.r
  %.sink.i.i.i.i56 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ 16, %bb.t ], [ 16, %bb.r ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ]
  %.19.i.i.i.i57 = phi ptr [ %.0813.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ %.014.i.i.i.i52, %bb.t ], [ %.014.i.i.i.i52, %bb.r ], [ %.014.i.i.i.i52, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ] ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 %.sink.i.i.i.i56
  %.1.i.i.i.i58 = load ptr, ptr %i.df, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %.1.i.i.i.i58, null
  br i1 %.not.i.i.i.i59, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60, label %bb.q, !llvm.loop !78

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55
  %i.dg = icmp eq ptr %.19.i.i.i.i57, %i.u
  br i1 %i.dg, label %.critedge.i66, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %i.dh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 32
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !548 ; 2 uses
  %i.dj = icmp slt i32 %i.p, %i.di
  br i1 %i.dj, label %.critedge.i66, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp sgt i32 %i.p, %i.di
  br i1 %i.dk, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 36
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !548 ; 2 uses
  %i.dn = icmp slt i32 %i.q, %i.dm
  br i1 %i.dn, label %.critedge.i66, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = icmp sgt i32 %i.q, %i.dm
  br i1 %i.do, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61: ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 40
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !548
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
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !957 ; 2 uses
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
  %i.f = load ptr, ptr %1, align 8, !tbaa !550
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.i)
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef 8) ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !550
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  tail call void @_ZN7openvdb5v13_02io25setGridBackgroundValuePtrERSt8ios_basePKv(ptr noundef nonnull align 8 dereferenceable(216) %i.o, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !548
  %i.p = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !548
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
  %.pre = load i32, ptr %i.b, align 4, !tbaa !548
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
  %i.am = load i32, ptr %i.c, align 8, !tbaa !548 ; 5 uses
  store i32 %i.am, ptr %3, align 4, !tbaa !548
  %i.an = load i32, ptr %i.w, align 4, !tbaa !548 ; 5 uses
  store i32 %i.an, ptr %i.v, align 4, !tbaa !548
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !548 ; 3 uses
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !548
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ap = load i8, ptr %i.e, align 1, !tbaa !664, !range !867, !noundef !637
  %i.aq = load double, ptr %i.d, align 8, !tbaa !705
  store double %i.aq, ptr %4, align 8, !tbaa !952
  store i8 %i.ap, ptr %i.z, align 8, !tbaa !953
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !879 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ar, %bb.c ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ab, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.at = load i32, ptr %i.as, align 4, !tbaa !548 ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.am
  br i1 %i.au, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = icmp sgt i32 %i.at, %i.am
  br i1 %i.av, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !548 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.an
  br i1 %i.ay, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = icmp sgt i32 %i.ax, %i.an
  br i1 %i.az, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !548
  %i.bc = icmp slt i32 %i.bb, %i.ao
  br i1 %i.bc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.f, %bb.d
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.f ], [ 16, %bb.d ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.f ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.be = icmp eq ptr %.19.i.i.i.i, %i.ab
  br i1 %i.be, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !548 ; 2 uses
  %i.bh = icmp slt i32 %i.am, %i.bg
  br i1 %i.bh, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp sgt i32 %i.am, %i.bg
  br i1 %i.bi, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !548 ; 2 uses
  %i.bl = icmp slt i32 %i.an, %i.bk
  br i1 %i.bl, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = icmp sgt i32 %i.an, %i.bk
  br i1 %i.bm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !548
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
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !548
  %i.bt = icmp ult i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.c, label %.preheader.loopexit, !llvm.loop !7381

._crit_edge:                                      ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.r

vector.ph:                                        ; preds = %.lr.ph47, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02446 = phi i32 [ 0, %.lr.ph47 ], [ %i.ds, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.bu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.bv = load i32, ptr %i.ae, align 8, !tbaa !548
  %i.bw = load <2 x i32>, ptr %i.c, align 8, !tbaa !548
  %i.bx = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.bx, i8 0, i64 270336, i1 false)
  %i.bz = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.bv, i64 2
  %i.ca = shufflevector <2 x i32> %i.bw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cc = and <4 x i32> %i.cb, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.cc, ptr %i.by, align 8, !tbaa !548
  %6 = load <2 x double>, ptr %i.j, align 8
  %broadcast.splat = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cd, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.ce, align 8, !tbaa !575
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  store <2 x double> %broadcast.splat, ptr %i.cg, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.ch, align 8, !tbaa !575
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  store <2 x double> %broadcast.splat, ptr %i.cj, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.ck, align 8, !tbaa !575
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  store <2 x double> %broadcast.splat, ptr %i.cm, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.cn, align 8, !tbaa !575
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.co = icmp eq i64 %index.next.3, 32768
  br i1 %i.co, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !7382

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !548 ; 5 uses
  store i32 %i.cp, ptr %5, align 4, !tbaa !548
  %i.cq = load i32, ptr %i.ad, align 4, !tbaa !548 ; 5 uses
  store i32 %i.cq, ptr %i.af, align 4, !tbaa !548
  %i.cr = load i32, ptr %i.ae, align 8, !tbaa !548 ; 3 uses
  store i32 %i.cr, ptr %i.ag, align 4, !tbaa !548
  %i.cs = load ptr, ptr %i.ah, align 8, !tbaa !879 ; 2 uses
  %.not12.i.i.i.i26 = icmp eq ptr %i.cs, null
  br i1 %.not12.i.i.i.i26, label %.critedge.i42, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %.014.i.i.i.i28 = phi ptr [ %.1.i.i.i.i34, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i29 = phi ptr [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 32
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !548 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, %i.cp
  br i1 %i.cv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.cw = icmp sgt i32 %i.cu, %i.cp
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !548 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %i.cq
  br i1 %i.cz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = icmp sgt i32 %i.cy, %i.cq
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30: ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 40
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !548
  %i.dd = icmp slt i32 %i.dc, %i.cr
  br i1 %i.dd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.l, %.lr.ph.i.i.i.i27
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.m, %bb.k
  %.sink.i.i.i.i32 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ 16, %bb.m ], [ 16, %bb.k ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ]
  %.19.i.i.i.i33 = phi ptr [ %.0813.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ %.014.i.i.i.i28, %bb.m ], [ %.014.i.i.i.i28, %bb.k ], [ %.014.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ] ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 %.sink.i.i.i.i32
  %.1.i.i.i.i34 = load ptr, ptr %i.de, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %.1.i.i.i.i34, null
  br i1 %.not.i.i.i.i35, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, label %.lr.ph.i.i.i.i27, !llvm.loop !78

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %i.df = icmp eq ptr %.19.i.i.i.i33, %i.ai
  br i1 %i.df, label %.critedge.i42, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36
  %i.dg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 32
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !548 ; 2 uses
  %i.di = icmp slt i32 %i.cp, %i.dh
  br i1 %i.di, label %.critedge.i42, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = icmp sgt i32 %i.cp, %i.dh
  br i1 %i.dj, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 36
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !548 ; 2 uses
  %i.dm = icmp slt i32 %i.cq, %i.dl
  br i1 %i.dm, label %.critedge.i42, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = icmp sgt i32 %i.cq, %i.dl
  br i1 %i.dn, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37: ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 40
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !548
  %i.dq = icmp slt i32 %i.cr, %i.dp
  br i1 %i.dq, label %.critedge.i42, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i42:                                    ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %bb.p, %bb.n, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i43 = phi ptr [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37 ], [ %.19.i.i.i.i33, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36 ], [ %.19.i.i.i.i33, %bb.n ], [ %.19.i.i.i.i33, %bb.p ]
  %i.dr = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i43, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.bx) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.o, %bb.q, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %.critedge.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ds = add nuw i32 %.02446, 1                  ; 2 uses
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !548
  %i.du = icmp ult i32 %i.ds, %i.dt
  br i1 %i.du, label %vector.ph, label %._crit_edge, !llvm.loop !7383

bb.r:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %or.cond.not
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>::ChildIter.789", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !550
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  %i.e = load ptr, ptr %1, align 8, !tbaa !550
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.h)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !550
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
  %i.o = load double, ptr %i.n, align 8, !tbaa !705
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 10 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.q, i64 noundef 4096) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 266240 ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i64 noundef 4096) ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !550
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
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !896
  %wide.load202 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !896
  %i.ac = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load202)
  %i.ae = trunc nuw nsw <2 x i64> %i.ac to <2 x i32>
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = add <2 x i32> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i32> %vec.phi201, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 512
  br i1 %i.ai, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit, label %vector.body, !llvm.loop !7384

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
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !548 ; 2 uses
  %.not42222 = icmp sgt i32 %i.ad, %i.ac
  br i1 %.not42222, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph231.split
  %i.ae = and i32 %.0230, -4096                   ; 2 uses
  %i.af = load i32, ptr %i.j, align 4, !tbaa !548
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
  %.pre257 = load i32, ptr %i.b, align 4, !tbaa !548
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
  br i1 %.not.not, label %.lr.ph231.split, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.thread, !llvm.loop !7512

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %bb.c
  %i.ao = phi i32 [ %i.at, %bb.c ], [ %i.y, %.lr.ph226.split.preheader ]
  %i.ap = phi i32 [ %i.au, %bb.c ], [ %i.z, %.lr.ph226.split.preheader ]
  %i.aq = phi i32 [ %i.av, %bb.c ], [ %i.aa, %.lr.ph226.split.preheader ] ; 3 uses
  %.037224 = phi i32 [ %i.aw, %bb.c ], [ %i.ad, %.lr.ph226.split.preheader ] ; 8 uses
  %.sroa.0162.1223 = phi i64 [ %.sroa.0162.2.lcssa, %bb.c ], [ %.sroa.0162.0229, %.lr.ph226.split.preheader ]
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !548 ; 2 uses
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
  %.pre = load i32, ptr %i.g, align 4, !tbaa !548 ; 2 uses
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
  br i1 %.not42.not, label %.lr.ph226.split, label %._crit_edge227.loopexit, !llvm.loop !7513

bb.d:                                             ; preds = %.lr.ph, %bb.dk
  %i.ax = phi i32 [ %i.aq, %.lr.ph ], [ %i.rf, %bb.dk ]
  %.038218 = phi i32 [ %i.ar, %.lr.ph ], [ %i.re, %bb.dk ] ; 8 uses
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !548
  %i.az = sub nsw i32 %.0230, %i.ay               ; 2 uses
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !548
  %i.bb = sub nsw i32 %.037224, %i.ba             ; 2 uses
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !548
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
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !548
  %i.bo = icmp slt i32 %i.bn, %i.bh
  br i1 %i.bo, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !548
  %i.bq = icmp slt i32 %i.bp, %i.bi
  %i.br = icmp slt i32 %i.ax, %i.bj
  %or.cond189 = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond189, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.bm

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.d
  %i.bs = load ptr, ptr %i.s, align 8, !tbaa !879 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.bs, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !548 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.be
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = icmp sgt i32 %i.bu, %i.be
  br i1 %i.bw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !548 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bf
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp sgt i32 %i.by, %i.bf
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !548
  %i.cd = icmp slt i32 %i.cc, %i.bg
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.cf, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !548 ; 2 uses
  %i.ci = icmp slt i32 %i.be, %i.ch
  br i1 %i.ci, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp sgt i32 %i.be, %i.ch
  br i1 %i.cj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !548 ; 2 uses
  %i.cm = icmp slt i32 %i.bf, %i.cl
  br i1 %i.cm, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = icmp sgt i32 %i.bf, %i.cl
  br i1 %i.cn, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !548
  %i.cq = icmp slt i32 %i.bg, %i.cp
  br i1 %i.cq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.l, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cr = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 15 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cr, i8 0, i64 270336, i1 false)
  %i.ct = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.cs, align 8, !tbaa !548
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 270340
  store i32 %i.as, ptr %i.cu, align 4, !tbaa !548
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 270344
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !548
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 270348
  store i32 0, ptr %i.cw, align 4, !tbaa !2675
  %5 = load <2 x double>, ptr %i.r, align 8
  %broadcast.splat = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cx, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.cy, align 8, !tbaa !575
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store <2 x double> %broadcast.splat, ptr %i.da, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.db, align 8, !tbaa !575
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dd, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.de, align 8, !tbaa !575
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dg, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.dh, align 8, !tbaa !575
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next.3, 32768
  br i1 %i.di, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !7514

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !879 ; 2 uses
  %.not12.i.i.i.i46 = icmp eq ptr %i.dj, null
  br i1 %.not12.i.i.i.i46, label %.critedge.i, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %.014.i.i.i.i48 = phi ptr [ %.1.i.i.i.i54, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.dj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i49 = phi ptr [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 32
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !548 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.be
  br i1 %i.dm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i47
  %i.dn = icmp sgt i32 %i.dl, %i.be
  br i1 %i.dn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !548 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.bf
  br i1 %i.dq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = icmp sgt i32 %i.dp, %i.bf
  br i1 %i.dr, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50: ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !548
  %i.du = icmp slt i32 %i.dt, %i.bg
  br i1 %i.du, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.o, %.lr.ph.i.i.i.i47
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.p, %bb.n
  %.sink.i.i.i.i52 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ]
  %.19.i.i.i.i53 = phi ptr [ %.0813.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ %.014.i.i.i.i48, %bb.p ], [ %.014.i.i.i.i48, %bb.n ], [ %.014.i.i.i.i48, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ] ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 %.sink.i.i.i.i52
  %.1.i.i.i.i54 = load ptr, ptr %i.dv, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %.1.i.i.i.i54, null
  br i1 %.not.i.i.i.i55, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i47, !llvm.loop !78

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %i.dw = icmp eq ptr %.19.i.i.i.i53, %i.t
  br i1 %i.dw, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 32
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !548 ; 2 uses
  %i.dz = icmp slt i32 %i.be, %i.dy
  br i1 %i.dz, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = icmp sgt i32 %i.be, %i.dy
  br i1 %i.ea, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !548 ; 2 uses
  %i.ed = icmp slt i32 %i.bf, %i.ec
  br i1 %i.ed, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = icmp sgt i32 %i.bf, %i.ec
  br i1 %i.ee, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 40
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !548
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
  store i32 %i.bg, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !575
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store ptr %i.cr, ptr %i.ek, align 8, !tbaa !957
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  store double 0.000000e+00, ptr %i.el, align 8, !tbaa !952
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  store i8 0, ptr %i.em, align 8, !tbaa !953
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
  %i.es = load i32, ptr %i.ej, align 8, !tbaa !548 ; 2 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !548 ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = icmp sgt i32 %i.es, %i.et
  br i1 %i.ev, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !548 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !548 ; 2 uses
  %i.fa = icmp slt i32 %i.ex, %i.ez
  br i1 %i.fa, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = icmp sgt i32 %i.ex, %i.ez
  br i1 %i.fb, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !548
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !548
  %i.ff = icmp slt i32 %i.fc, %i.fe
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fg = phi i1 [ false, %bb.z ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ %i.ff, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fg, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #22
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !882
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.u, align 8, !tbaa !882
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
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !957 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ac, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.fo = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 12 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !953, !range !867, !noundef !637
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.fo, i8 0, i64 270336, i1 false)
  %i.ft = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.fs, align 8, !tbaa !548
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_:bb.a
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cd ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !896 ; 2 uses
  %i.cg = and i32 %i.ca, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch                    ; 3 uses
  %i.cj = and i64 %i.ci, %i.cf
  %.not.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ck = or i64 %i.ci, %i.cf
  store i64 %i.ck, ptr %i.ce, align 8, !tbaa !896
  %i.cl = getelementptr inbounds nuw i8, ptr %.0, i64 33280
  %i.cm = xor i64 %i.ci, -1
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cd ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !896
  %i.cp = and i64 %i.co, %i.cm
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !896
  %i.cq = zext nneg i32 %i.ca to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.cq
  store ptr %1, ptr %i.cr, align 8, !tbaa !575
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_.exit

bb.g:                                             ; preds = %bb.e
  %i.cs = zext nneg i32 %i.ca to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.cs ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !575 ; 6 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cx = load atomic i32, ptr %i.cw seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %i.cu)
          to label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i unwind label %bb.n ; 0 uses

bb.j:                                             ; preds = %bb.h
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !575
  %.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = load atomic i32, ptr %i.cw seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not3.i.i.i.i, label %bb.l, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i

bb.l:                                             ; preds = %bb.k
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !575 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdaPv(ptr noundef nonnull %i.db) #28
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i

bb.n:                                             ; preds = %bb.i
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  tail call void @__clang_call_terminate(ptr %i.de) #30
  unreachable

_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 96) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i, %bb.g
  store ptr %1, ptr %i.ct, align 8, !tbaa !575
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_.exit

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_.exit: ; preds = %bb.f, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS5_RT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.b, align 4, !tbaa !548
  %i.e = load i32, ptr %i.c, align 8, !tbaa !548
  %i.f = sub nsw i32 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !548
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = load i32, ptr %i.i, align 4, !tbaa !548
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !548
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !548
  %i.p = sub nsw i32 %i.m, %i.o
  %i.q = and i32 %i.f, -4096                      ; 9 uses
  %i.r = and i32 %i.k, -4096                      ; 9 uses
  %i.s = and i32 %i.p, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.r to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.q to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.s, ptr %.sroa.2.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !879  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.v, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !548  ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.q
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = icmp sgt i32 %i.x, %i.q
  br i1 %i.z, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !548 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.r
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp sgt i32 %i.ab, %i.r
  br i1 %i.ad, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !548
  %i.ag = icmp slt i32 %i.af, %i.s
  br i1 %i.ag, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i, %i.v
  br i1 %i.ai, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !548 ; 2 uses
  %i.al = icmp slt i32 %i.q, %i.ak
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp sgt i32 %i.q, %i.ak
  br i1 %i.am, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !548 ; 2 uses
  %i.ap = icmp slt i32 %i.r, %i.ao
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp sgt i32 %i.r, %i.ao
  br i1 %i.aq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !548
  %i.at = icmp slt i32 %i.s, %i.as
  br i1 %i.at, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.b
  %i.au = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 11 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.au, i8 0, i64 270336, i1 false)
  %i.aw = load i32, ptr %i.l, align 4, !tbaa !548
  %i.ax = load <2 x i32>, ptr %i.b, align 4, !tbaa !548
  %i.ay = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.aw, i64 2
  %i.az = shufflevector <2 x i32> %i.ax, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x i32> %i.az, <4 x i32> %i.ay, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bb = and <4 x i32> %i.ba, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bb, ptr %i.av, align 8, !tbaa !548
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load <2 x double>, ptr %i.bc, align 8
  %broadcast.splat64 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index66 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next67.3, %vector.body65 ] ; 5 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index66 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x double> %broadcast.splat64, ptr %i.bd, align 8, !tbaa !575
  store <2 x double> %broadcast.splat64, ptr %i.be, align 8, !tbaa !575
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index66 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store <2 x double> %broadcast.splat64, ptr %i.bg, align 8, !tbaa !575
  store <2 x double> %broadcast.splat64, ptr %i.bh, align 8, !tbaa !575
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index66 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  store <2 x double> %broadcast.splat64, ptr %i.bj, align 8, !tbaa !575
  store <2 x double> %broadcast.splat64, ptr %i.bk, align 8, !tbaa !575
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index66 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store <2 x double> %broadcast.splat64, ptr %i.bm, align 8, !tbaa !575
  store <2 x double> %broadcast.splat64, ptr %i.bn, align 8, !tbaa !575
  %index.next67.3 = add nuw nsw i64 %index66, 16  ; 2 uses
  %i.bo = icmp eq i64 %index.next67.3, 32768
  br i1 %i.bo, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body65, !llvm.loop !7732

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body65
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !879 ; 2 uses
  %.not12.i.i.i.i20 = icmp eq ptr %i.bp, null
  br i1 %.not12.i.i.i.i20, label %.critedge.i, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %.014.i.i.i.i22 = phi ptr [ %.1.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.bp, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i23 = phi ptr [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.v, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 32
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !548 ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.q
  br i1 %i.bs, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i21
  %i.bt = icmp sgt i32 %i.br, %i.q
  br i1 %i.bt, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !548 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %i.r
  br i1 %i.bw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = icmp sgt i32 %i.bv, %i.r
  br i1 %i.bx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24: ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 40
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !548
  %i.ca = icmp slt i32 %i.bz, %i.s
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.k, %.lr.ph.i.i.i.i21
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.l, %bb.j
  %.sink.i.i.i.i26 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ]
  %.19.i.i.i.i27 = phi ptr [ %.0813.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ %.014.i.i.i.i22, %bb.l ], [ %.014.i.i.i.i22, %bb.j ], [ %.014.i.i.i.i22, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ] ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 %.sink.i.i.i.i26
  %.1.i.i.i.i28 = load ptr, ptr %i.cb, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %.1.i.i.i.i28, null
  br i1 %.not.i.i.i.i29, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i21, !llvm.loop !78

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %i.cc = icmp eq ptr %.19.i.i.i.i27, %i.v
  br i1 %i.cc, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 32
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !548 ; 2 uses
  %i.cf = icmp slt i32 %i.q, %i.ce
  br i1 %i.cf, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = icmp sgt i32 %i.q, %i.ce
  br i1 %i.cg, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 36
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !548 ; 2 uses
  %i.cj = icmp slt i32 %i.r, %i.ci
  br i1 %i.cj, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp sgt i32 %i.r, %i.ci
  br i1 %i.ck, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 40
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !548
  %i.cn = icmp slt i32 %i.s, %i.cm
  br i1 %i.cn, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.v, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i27, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i27, %bb.m ], [ %.19.i.i.i.i27, %bb.o ]
  %i.co = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.au) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !957 ; 2 uses
  %.not = icmp eq ptr %i.cq, null
  br i1 %.not, label %bb.q, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.q:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cr = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !957
  %i.cu = icmp eq ptr %i.ct, null
  %i.cv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.cw = load i8, ptr %i.cv, align 8, !range !867
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = select i1 %i.cu, i1 %i.cx, i1 false
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cr, i8 0, i64 270336, i1 false)
  %i.da = load i32, ptr %i.l, align 4, !tbaa !548
  %i.db = load <2 x i32>, ptr %i.b, align 4, !tbaa !548
  %i.dc = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.da, i64 2
  %i.dd = shufflevector <2 x i32> %i.db, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.de = shufflevector <4 x i32> %i.dd, <4 x i32> %i.dc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.df = and <4 x i32> %i.de, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.df, ptr %i.cz, align 8, !tbaa !548
  br i1 %i.cy, label %bb.r, label %vector.ph

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dg, i8 -1, i64 4096, i1 false), !tbaa !896
  br label %vector.ph

vector.ph:                                        ; preds = %bb.q, %bb.r
  %.pre.i31 = load double, ptr %i.cs, align 8, !tbaa !705
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i31, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <2 x double> %broadcast.splat, ptr %i.dh, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.di, align 8, !tbaa !575
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store <2 x double> %broadcast.splat, ptr %i.dk, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.dl, align 8, !tbaa !575
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dn, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.do, align 8, !tbaa !575
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 96
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dq, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.dr, align 8, !tbaa !575
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ds = icmp eq i64 %index.next.3, 32768
  br i1 %i.ds, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35, label %vector.body, !llvm.loop !7733

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(270352) %i.cr)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.p, %bb.n, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35
  %.0 = phi ptr [ %i.cq, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cr, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35 ], [ %i.au, %bb.n ], [ %i.au, %bb.p ], [ %i.au, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.au, %.critedge.i ] ; 2 uses
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !548
  %i.du = and i32 %i.dt, -4096
  %i.dv = load i32, ptr %i.g, align 4, !tbaa !548
  %i.dw = and i32 %i.dv, -4096
  %i.dx = load i32, ptr %i.l, align 4, !tbaa !548
  %i.dy = and i32 %i.dx, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.dw to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.du to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.dz, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.dy, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !575
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %.0, ptr %i.ea, align 8, !tbaa !744
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_(ptr noundef nonnull align 8 dereferenceable(270352) %.0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_05tools9composite19BuildPrimarySegmentINS5_4tree4TreeINS9_8RootNodeINS9_12InternalNodeINSC_INS9_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELNS7_12CSGOperationE0EE20ProcessInternalNodesEEEEEvPNS1_4nodeERKNS1_14execution_dataE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE17touchLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPS4_RKNS0_4math5CoordERT_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.w, i8 0, i64 33792, i1 false)
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !548
  %i.af = load <2 x i32>, ptr %1, align 4, !tbaa !548
  %i.ag = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ae, i64 2
  %i.ah = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> %i.ag, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aj = and <4 x i32> %i.ai, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.aj, ptr %i.ad, align 8, !tbaa !548
  br i1 %.not, label %vector.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 33280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.ak, i8 -1, i64 512, i1 false), !tbaa !896
  br label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.c
  %.pre.i = load double, ptr %i.y, align 8, !tbaa !705
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x double> %broadcast.splat, ptr %i.al, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.am, align 8, !tbaa !575
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store <2 x double> %broadcast.splat, ptr %i.ao, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.ap, align 8, !tbaa !575
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  store <2 x double> %broadcast.splat, ptr %i.ar, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.as, align 8, !tbaa !575
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  store <2 x double> %broadcast.splat, ptr %i.au, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.av, align 8, !tbaa !575
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.aw = icmp eq i64 %index.next.3, 4096
  br i1 %i.aw, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !7748

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !896
  %i.ay = or i64 %i.ax, %i.u
  store i64 %i.ay, ptr %i.q, align 8, !tbaa !896
  %i.az = xor i64 %i.u, -1
  %i.ba = and i64 %i.ab, %i.az
  store i64 %i.ba, ptr %i.aa, align 8, !tbaa !896
  store ptr %i.w, ptr %i.y, align 8, !tbaa !575
  %.pre15 = load i32, ptr %1, align 4, !tbaa !548
  %.pre16 = load i32, ptr %i.d, align 4, !tbaa !548
  %.pre17 = load i32, ptr %i.i, align 4, !tbaa !548
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit
  %.pre-phi = phi i64 [ %.phi.trans.insert, %._crit_edge ], [ %i.x, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bb = phi i32 [ %i.j, %._crit_edge ], [ %.pre17, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bc = phi i32 [ %i.e, %._crit_edge ], [ %.pre16, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bd = phi i32 [ %i.a, %._crit_edge ], [ %.pre15, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.be = phi ptr [ %.pre, %._crit_edge ], [ %i.w, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi
  %i.bg = and i32 %i.bd, -128
  %i.bh = and i32 %i.bc, -128
  %i.bi = and i32 %i.bb, -128
  %.sroa.2.0.insert.ext.i = zext i32 %i.bh to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bg to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bj, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.bi, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !575
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.be, ptr %i.bk, align 8, !tbaa !755
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !575
  %i.bm = tail call noundef ptr @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE17touchLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPS4_RKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  ret ptr %i.bm
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE17touchLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPS5_RKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !548
  %i.c = load i32, ptr %i.a, align 8, !tbaa !548
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !548
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !548
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !548
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !548
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !879  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !548  ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !548  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !548
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !548 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !548 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !548
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !548
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !548
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !548
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load <2 x double>, ptr %i.ba, align 8
  %broadcast.splat60 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index62 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next63.3, %vector.body61 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index62 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x double> %broadcast.splat60, ptr %i.bb, align 8, !tbaa !575
  store <2 x double> %broadcast.splat60, ptr %i.bc, align 8, !tbaa !575
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index62 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x double> %broadcast.splat60, ptr %i.be, align 8, !tbaa !575
  store <2 x double> %broadcast.splat60, ptr %i.bf, align 8, !tbaa !575
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index62 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x double> %broadcast.splat60, ptr %i.bh, align 8, !tbaa !575
  store <2 x double> %broadcast.splat60, ptr %i.bi, align 8, !tbaa !575
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index62 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x double> %broadcast.splat60, ptr %i.bk, align 8, !tbaa !575
  store <2 x double> %broadcast.splat60, ptr %i.bl, align 8, !tbaa !575
  %index.next63.3 = add nuw nsw i64 %index62, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next63.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body61, !llvm.loop !7749

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body61
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !879 ; 2 uses
  %.not12.i.i.i.i17 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i17, label %.critedge.i, label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22
  %.014.i.i.i.i19 = phi ptr [ %.1.i.i.i.i25, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i20 = phi ptr [ %.19.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i19, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !548 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i18
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i19, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !548 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i19, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !548
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21, %bb.j, %.lr.ph.i.i.i.i18
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21, %bb.k, %bb.i
  %.sink.i.i.i.i23 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21 ]
  %.19.i.i.i.i24 = phi ptr [ %.0813.i.i.i.i20, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27 ], [ %.014.i.i.i.i19, %bb.k ], [ %.014.i.i.i.i19, %bb.i ], [ %.014.i.i.i.i19, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i19, i64 %.sink.i.i.i.i23
  %.1.i.i.i.i25 = load ptr, ptr %i.bz, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i26 = icmp eq ptr %.1.i.i.i.i25, null
  br i1 %.not.i.i.i.i26, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i18, !llvm.loop !78

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22
  %i.ca = icmp eq ptr %.19.i.i.i.i24, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !548 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !548 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !548
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i24, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i24, %bb.l ], [ %.19.i.i.i.i24, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !957 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 9 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !957
  %i.cs = icmp eq ptr %i.cr, null
  %i.ct = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.cu = load i8, ptr %i.ct, align 8, !range !867
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = select i1 %i.cs, i1 %i.cv, i1 false
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cp, i8 0, i64 270336, i1 false)
  %i.cy = load i32, ptr %i.j, align 4, !tbaa !548
  %i.cz = load <2 x i32>, ptr %1, align 4, !tbaa !548
  %i.da = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.cy, i64 2
  %i.db = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x i32> %i.db, <4 x i32> %i.da, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dd = and <4 x i32> %i.dc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dd, ptr %i.cx, align 8, !tbaa !548
  br i1 %i.cw, label %bb.q, label %vector.ph

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.de, i8 -1, i64 4096, i1 false), !tbaa !896
  br label %vector.ph

vector.ph:                                        ; preds = %bb.p, %bb.q
  %.pre.i28 = load double, ptr %i.cq, align 8, !tbaa !705
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i28, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <2 x double> %broadcast.splat, ptr %i.df, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.dg, align 8, !tbaa !575
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  store <2 x double> %broadcast.splat, ptr %i.di, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.dj, align 8, !tbaa !575
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dl, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.dm, align 8, !tbaa !575
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 112
  store <2 x double> %broadcast.splat, ptr %i.do, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.dp, align 8, !tbaa !575
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dq = icmp eq i64 %index.next.3, 32768
  br i1 %i.dq, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit32, label %vector.body, !llvm.loop !7750

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit32: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cp)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit32
  %.0 = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cp, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit32 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 2 uses
  %i.dr = load i32, ptr %1, align 4, !tbaa !548
  %i.ds = and i32 %i.dr, -4096
  %i.dt = load i32, ptr %i.e, align 4, !tbaa !548
  %i.du = and i32 %i.dt, -4096
  %i.dv = load i32, ptr %i.j, align 4, !tbaa !548
  %i.dw = and i32 %i.dv, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.du to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ds to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.dx, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.dw, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !575
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %.0, ptr %i.dy, align 8, !tbaa !744
  %i.dz = call noundef ptr @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE17touchLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPS4_RKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(270352) %.0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %i.dz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_05tools9composite19BuildPrimarySegmentINS5_4tree4TreeINS9_8RootNodeINS9_12InternalNodeINSC_INS9_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELNS7_12CSGOperationE0EE16ProcessLeafNodesEEEEEvPNS1_4nodeERKNS1_14execution_dataE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE4fillERKNS0_4math9CoordBBoxERKlb:bb.a
  %i.y = phi i32 [ %i.ai, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 6 uses
  %i.z = phi i32 [ %i.aj, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 2 uses
  %i.aa = phi i32 [ %i.ak, %._crit_edge227 ], [ %i.m, %.lr.ph231.split.preheader ] ; 3 uses
  %i.ab = phi i32 [ %i.al, %._crit_edge227 ], [ %i.m, %.lr.ph231.split.preheader ] ; 3 uses
  %i.ac = phi i32 [ %i.am, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 2 uses
  %.0230 = phi i32 [ %i.an, %._crit_edge227 ], [ %i.a, %.lr.ph231.split.preheader ] ; 9 uses
  %.sroa.0162.0229 = phi i64 [ %.sroa.0162.1.lcssa, %._crit_edge227 ], [ 0, %.lr.ph231.split.preheader ] ; 4 uses
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !548 ; 2 uses
  %.not42222 = icmp sgt i32 %i.ad, %i.ac
  br i1 %.not42222, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph231.split
  %i.ae = and i32 %.0230, -4096                   ; 2 uses
  %i.af = load i32, ptr %i.j, align 4, !tbaa !548
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
  %.pre257 = load i32, ptr %i.b, align 4, !tbaa !548
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
  br i1 %.not.not, label %.lr.ph231.split, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.thread, !llvm.loop !9046

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %bb.c
  %i.ao = phi i32 [ %i.at, %bb.c ], [ %i.y, %.lr.ph226.split.preheader ]
  %i.ap = phi i32 [ %i.au, %bb.c ], [ %i.z, %.lr.ph226.split.preheader ]
  %i.aq = phi i32 [ %i.av, %bb.c ], [ %i.aa, %.lr.ph226.split.preheader ] ; 3 uses
  %.037224 = phi i32 [ %i.aw, %bb.c ], [ %i.ad, %.lr.ph226.split.preheader ] ; 8 uses
  %.sroa.0162.1223 = phi i64 [ %.sroa.0162.2.lcssa, %bb.c ], [ %.sroa.0162.0229, %.lr.ph226.split.preheader ]
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !548 ; 2 uses
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
  %.pre = load i32, ptr %i.g, align 4, !tbaa !548 ; 2 uses
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
  br i1 %.not42.not, label %.lr.ph226.split, label %._crit_edge227.loopexit, !llvm.loop !9047

bb.d:                                             ; preds = %.lr.ph, %bb.dk
  %i.ax = phi i32 [ %i.aq, %.lr.ph ], [ %i.rf, %bb.dk ]
  %.038218 = phi i32 [ %i.ar, %.lr.ph ], [ %i.re, %bb.dk ] ; 8 uses
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !548
  %i.az = sub nsw i32 %.0230, %i.ay               ; 2 uses
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !548
  %i.bb = sub nsw i32 %.037224, %i.ba             ; 2 uses
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !548
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
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !548
  %i.bo = icmp slt i32 %i.bn, %i.bh
  br i1 %i.bo, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !548
  %i.bq = icmp slt i32 %i.bp, %i.bi
  %i.br = icmp slt i32 %i.ax, %i.bj
  %or.cond189 = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond189, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.bm

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.d
  %i.bs = load ptr, ptr %i.s, align 8, !tbaa !879 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.bs, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !548 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.be
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = icmp sgt i32 %i.bu, %i.be
  br i1 %i.bw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !548 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bf
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp sgt i32 %i.by, %i.bf
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !548
  %i.cd = icmp slt i32 %i.cc, %i.bg
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !56

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.cf, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !548 ; 2 uses
  %i.ci = icmp slt i32 %i.be, %i.ch
  br i1 %i.ci, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp sgt i32 %i.be, %i.ch
  br i1 %i.cj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !548 ; 2 uses
  %i.cm = icmp slt i32 %i.bf, %i.cl
  br i1 %i.cm, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = icmp sgt i32 %i.bf, %i.cl
  br i1 %i.cn, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !548
  %i.cq = icmp slt i32 %i.bg, %i.cp
  br i1 %i.cq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.l, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cr = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 15 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cr, i8 0, i64 270336, i1 false)
  %i.ct = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.cs, align 8, !tbaa !548
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 270340
  store i32 %i.as, ptr %i.cu, align 4, !tbaa !548
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 270344
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !548
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 270348
  store i32 0, ptr %i.cw, align 4, !tbaa !3749
  %5 = load <2 x i64>, ptr %i.r, align 8
  %broadcast.splat = shufflevector <2 x i64> %5, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.cx, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat, ptr %i.cy, align 8, !tbaa !575
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.da, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat, ptr %i.db, align 8, !tbaa !575
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.dd, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat, ptr %i.de, align 8, !tbaa !575
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.dg, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat, ptr %i.dh, align 8, !tbaa !575
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next.3, 32768
  br i1 %i.di, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, label %vector.body, !llvm.loop !9048

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !879 ; 2 uses
  %.not12.i.i.i.i46 = icmp eq ptr %i.dj, null
  br i1 %.not12.i.i.i.i46, label %.critedge.i, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %.014.i.i.i.i48 = phi ptr [ %.1.i.i.i.i54, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.dj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ] ; 7 uses
  %.0813.i.i.i.i49 = phi ptr [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 32
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !548 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.be
  br i1 %i.dm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i47
  %i.dn = icmp sgt i32 %i.dl, %i.be
  br i1 %i.dn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !548 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.bf
  br i1 %i.dq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = icmp sgt i32 %i.dp, %i.bf
  br i1 %i.dr, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50: ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !548
  %i.du = icmp slt i32 %i.dt, %i.bg
  br i1 %i.du, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.o, %.lr.ph.i.i.i.i47
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.p, %bb.n
  %.sink.i.i.i.i52 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ]
  %.19.i.i.i.i53 = phi ptr [ %.0813.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ %.014.i.i.i.i48, %bb.p ], [ %.014.i.i.i.i48, %bb.n ], [ %.014.i.i.i.i48, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ] ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 %.sink.i.i.i.i52
  %.1.i.i.i.i54 = load ptr, ptr %i.dv, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %.1.i.i.i.i54, null
  br i1 %.not.i.i.i.i55, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i47, !llvm.loop !56

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %i.dw = icmp eq ptr %.19.i.i.i.i53, %i.t
  br i1 %i.dw, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 32
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !548 ; 2 uses
  %i.dz = icmp slt i32 %i.be, %i.dy
  br i1 %i.dz, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = icmp sgt i32 %i.be, %i.dy
  br i1 %i.ea, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !548 ; 2 uses
  %i.ed = icmp slt i32 %i.bf, %i.ec
  br i1 %i.ed, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = icmp sgt i32 %i.bf, %i.ec
  br i1 %i.ee, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 40
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !548
  %i.eh = icmp slt i32 %i.bg, %i.eg
  br i1 %i.eh, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.s, %bb.q, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ], [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i53, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i53, %bb.q ], [ %.19.i.i.i.i53, %bb.s ]
  %i.ei = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 3 uses
  %.sroa.0145.sroa.0.0.insert.ext = zext i32 %i.be to i64
  %.sroa.0145.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0145.sroa.0.0.insert.ext
  store i64 %.sroa.0145.sroa.0.0.insert.insert, ptr %i.ej, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 40 ; 2 uses
  store i32 %i.bg, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !575
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store ptr %i.cr, ptr %i.ek, align 8, !tbaa !919
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  store i64 0, ptr %i.el, align 8, !tbaa !913
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  store i8 0, ptr %i.em, align 8, !tbaa !914
  %i.en = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ej)
          to label %bb.u unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

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
  %i.es = load i32, ptr %i.ej, align 8, !tbaa !548 ; 2 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !548 ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = icmp sgt i32 %i.es, %i.et
  br i1 %i.ev, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !548 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !548 ; 2 uses
  %i.fa = icmp slt i32 %i.ex, %i.ez
  br i1 %i.fa, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = icmp sgt i32 %i.ex, %i.ez
  br i1 %i.fb, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !548
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !548
  %i.ff = icmp slt i32 %i.fc, %i.fe
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fg = phi i1 [ false, %bb.z ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ %i.ff, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fg, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #22
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !882
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.u, align 8, !tbaa !882
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i
  %.lcssa353.sink = phi ptr [ %i.lt, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65 ], [ %i.ei, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.mu, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65 ], [ %i.fj, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa353.sink, i64 noundef 72) #28
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ab:                                            ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 72) #28
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.m, %bb.k, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !919 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ac, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.fo = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 12 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !914, !range !867, !noundef !637
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.fo, i8 0, i64 270336, i1 false)
  %i.ft = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.fs, align 8, !tbaa !548
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKlRT_:bb.a
  %i.ak = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <4 x i32> %i.ak, <4 x i32> %i.aj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.am = and <4 x i32> %i.al, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.am, ptr %i.ag, align 8, !tbaa !548
  br i1 %.not23, label %vector.ph, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 33280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.an, i8 -1, i64 512, i1 false), !tbaa !896
  br label %vector.ph

vector.ph:                                        ; preds = %._crit_edge, %bb.d
  %.pre.i = load i64, ptr %i.af, align 8, !tbaa !896
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ao, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat, ptr %i.ap, align 8, !tbaa !575
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.ar, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat, ptr %i.as, align 8, !tbaa !575
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.au, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat, ptr %i.av, align 8, !tbaa !575
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.ax, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !575
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.az = icmp eq i64 %index.next.3, 4096
  br i1 %i.az, label %.critedge, label %vector.body, !llvm.loop !9129

.critedge:                                        ; preds = %vector.body
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !896
  %i.bb = or i64 %i.ba, %i.u
  store i64 %i.bb, ptr %i.q, align 8, !tbaa !896
  %i.bc = xor i64 %i.u, -1
  %i.bd = load i64, ptr %i.x, align 8, !tbaa !896
  %i.be = and i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.x, align 8, !tbaa !896
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !575
  %.pre25 = load i32, ptr %1, align 4, !tbaa !548
  %.pre26 = load i32, ptr %i.d, align 4, !tbaa !548
  %.pre27 = load i32, ptr %i.i, align 4, !tbaa !548
  br label %.critedge22

.critedge22:                                      ; preds = %..critedge22_crit_edge, %.critedge
  %.pre-phi = phi i64 [ %.phi.trans.insert, %..critedge22_crit_edge ], [ %.pre28, %.critedge ]
  %i.bf = phi i32 [ %i.j, %..critedge22_crit_edge ], [ %.pre27, %.critedge ]
  %i.bg = phi i32 [ %i.e, %..critedge22_crit_edge ], [ %.pre26, %.critedge ]
  %i.bh = phi i32 [ %i.a, %..critedge22_crit_edge ], [ %.pre25, %.critedge ]
  %i.bi = phi ptr [ %.pre, %..critedge22_crit_edge ], [ %i.ae, %.critedge ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi
  %i.bk = and i32 %i.bh, -128
  %i.bl = and i32 %i.bg, -128
  %i.bm = and i32 %i.bf, -128
  %.sroa.2.0.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bk to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bn, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.bm, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !575
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.bi, ptr %i.bo, align 8, !tbaa !3762
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !575
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKlRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge22
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKlRT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !548
  %i.c = load i32, ptr %i.a, align 8, !tbaa !548
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !548
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !548
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !548
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !548
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
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !879  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !548  ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !548  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !548
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !56

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !548 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !548 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !548
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !548
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !548
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !548
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = load <2 x i64>, ptr %i.ba, align 8
  %broadcast.splat67 = shufflevector <2 x i64> %5, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index69 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next70.3, %vector.body68 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index69 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %broadcast.splat67, ptr %i.bb, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat67, ptr %i.bc, align 8, !tbaa !575
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index69 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x i64> %broadcast.splat67, ptr %i.be, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat67, ptr %i.bf, align 8, !tbaa !575
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index69 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x i64> %broadcast.splat67, ptr %i.bh, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat67, ptr %i.bi, align 8, !tbaa !575
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index69 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x i64> %broadcast.splat67, ptr %i.bk, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat67, ptr %i.bl, align 8, !tbaa !575
  %index.next70.3 = add nuw nsw i64 %index69, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next70.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, label %vector.body68, !llvm.loop !9130

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body68
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !879 ; 2 uses
  %.not12.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i20, label %.critedge.i, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %.014.i.i.i.i22 = phi ptr [ %.1.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ] ; 7 uses
  %.0813.i.i.i.i23 = phi ptr [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !548 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i21
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !548 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !548
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.j, %.lr.ph.i.i.i.i21
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.k, %bb.i
  %.sink.i.i.i.i26 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ]
  %.19.i.i.i.i27 = phi ptr [ %.0813.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ %.014.i.i.i.i22, %bb.k ], [ %.014.i.i.i.i22, %bb.i ], [ %.014.i.i.i.i22, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 %.sink.i.i.i.i26
  %.1.i.i.i.i28 = load ptr, ptr %i.bz, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %.1.i.i.i.i28, null
  br i1 %.not.i.i.i.i29, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i21, !llvm.loop !56

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %i.ca = icmp eq ptr %.19.i.i.i.i27, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !548 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !548 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !548
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ], [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i27, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i27, %bb.l ], [ %.19.i.i.i.i27, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !919 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !867
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !896
  %i.cu = load i64, ptr %2, align 8, !tbaa !896
  %i.cv = icmp eq i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.cw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !919
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = load i8, ptr %i.cp, align 8, !range !867
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = select i1 %i.cz, i1 %i.db, i1 false
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cw, i8 0, i64 270336, i1 false)
  %i.de = load i32, ptr %i.j, align 4, !tbaa !548
  %i.df = load <2 x i32>, ptr %1, align 4, !tbaa !548
  %i.dg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.de, i64 2
  %i.dh = shufflevector <2 x i32> %i.df, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> %i.dg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dj = and <4 x i32> %i.di, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dj, ptr %i.dd, align 8, !tbaa !548
  br i1 %i.dc, label %bb.s, label %vector.ph

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dk, i8 -1, i64 4096, i1 false), !tbaa !896
  br label %vector.ph

vector.ph:                                        ; preds = %bb.r, %bb.s
  %.pre.i31 = load i64, ptr %i.cx, align 8, !tbaa !896
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i31, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.dl, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat, ptr %i.dm, align 8, !tbaa !575
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.do, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat, ptr %i.dp, align 8, !tbaa !575
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.dr, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat, ptr %i.ds, align 8, !tbaa !575
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.du, align 8, !tbaa !575
  store <2 x i64> %broadcast.splat, ptr %i.dv, align 8, !tbaa !575
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dw = icmp eq i64 %index.next.3, 32768
  br i1 %i.dw, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit35, label %vector.body, !llvm.loop !9131

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit35: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cw)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit35, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.0.ph = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit35 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 2 uses
  %i.dx = load i32, ptr %1, align 4, !tbaa !548
  %i.dy = and i32 %i.dx, -4096
  %i.dz = load i32, ptr %i.e, align 4, !tbaa !548
  %i.ea = and i32 %i.dz, -4096
  %i.eb = load i32, ptr %i.j, align 4, !tbaa !548
  %i.ec = and i32 %i.eb, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.ea to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.dy to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ed, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !575
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_:bb.a
  %i.ak = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <4 x i32> %i.ak, <4 x i32> %i.aj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.am = and <4 x i32> %i.al, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.am, ptr %i.ag, align 8, !tbaa !548
  br i1 %.not23, label %vector.ph, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 33280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.an, i8 -1, i64 512, i1 false), !tbaa !896
  br label %vector.ph

vector.ph:                                        ; preds = %._crit_edge, %bb.d
  %.pre.i = load double, ptr %i.af, align 8, !tbaa !705
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ao, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.ap, align 8, !tbaa !575
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store <2 x double> %broadcast.splat, ptr %i.ar, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.as, align 8, !tbaa !575
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store <2 x double> %broadcast.splat, ptr %i.au, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.av, align 8, !tbaa !575
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  store <2 x double> %broadcast.splat, ptr %i.ax, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.ay, align 8, !tbaa !575
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.az = icmp eq i64 %index.next.3, 4096
  br i1 %i.az, label %.critedge, label %vector.body, !llvm.loop !9394

.critedge:                                        ; preds = %vector.body
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !896
  %i.bb = or i64 %i.ba, %i.u
  store i64 %i.bb, ptr %i.q, align 8, !tbaa !896
  %i.bc = xor i64 %i.u, -1
  %i.bd = load i64, ptr %i.x, align 8, !tbaa !896
  %i.be = and i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.x, align 8, !tbaa !896
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !575
  %.pre25 = load i32, ptr %1, align 4, !tbaa !548
  %.pre26 = load i32, ptr %i.d, align 4, !tbaa !548
  %.pre27 = load i32, ptr %i.i, align 4, !tbaa !548
  br label %.critedge22

.critedge22:                                      ; preds = %..critedge22_crit_edge, %.critedge
  %.pre-phi = phi i64 [ %.phi.trans.insert, %..critedge22_crit_edge ], [ %.pre28, %.critedge ]
  %i.bf = phi i32 [ %i.j, %..critedge22_crit_edge ], [ %.pre27, %.critedge ]
  %i.bg = phi i32 [ %i.e, %..critedge22_crit_edge ], [ %.pre26, %.critedge ]
  %i.bh = phi i32 [ %i.a, %..critedge22_crit_edge ], [ %.pre25, %.critedge ]
  %i.bi = phi ptr [ %.pre, %..critedge22_crit_edge ], [ %i.ae, %.critedge ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi
  %i.bk = and i32 %i.bh, -128
  %i.bl = and i32 %i.bg, -128
  %i.bm = and i32 %i.bf, -128
  %.sroa.2.0.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bk to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bn, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.bm, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !575
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.bi, ptr %i.bo, align 8, !tbaa !755
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !575
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge22
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !548
  %i.c = load i32, ptr %i.a, align 8, !tbaa !548
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !548
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !548
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !548
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !548
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
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !879  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !548  ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !548  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !548
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !548 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !548 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !548
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !548
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !548
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !548
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = load <2 x double>, ptr %i.ba, align 8
  %broadcast.splat67 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index69 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next70.3, %vector.body68 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index69 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x double> %broadcast.splat67, ptr %i.bb, align 8, !tbaa !575
  store <2 x double> %broadcast.splat67, ptr %i.bc, align 8, !tbaa !575
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index69 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x double> %broadcast.splat67, ptr %i.be, align 8, !tbaa !575
  store <2 x double> %broadcast.splat67, ptr %i.bf, align 8, !tbaa !575
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index69 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x double> %broadcast.splat67, ptr %i.bh, align 8, !tbaa !575
  store <2 x double> %broadcast.splat67, ptr %i.bi, align 8, !tbaa !575
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index69 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x double> %broadcast.splat67, ptr %i.bk, align 8, !tbaa !575
  store <2 x double> %broadcast.splat67, ptr %i.bl, align 8, !tbaa !575
  %index.next70.3 = add nuw nsw i64 %index69, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next70.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body68, !llvm.loop !9395

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body68
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !879 ; 2 uses
  %.not12.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i20, label %.critedge.i, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %.014.i.i.i.i22 = phi ptr [ %.1.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i23 = phi ptr [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !548 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i21
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !548 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !548
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.j, %.lr.ph.i.i.i.i21
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.k, %bb.i
  %.sink.i.i.i.i26 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ]
  %.19.i.i.i.i27 = phi ptr [ %.0813.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ %.014.i.i.i.i22, %bb.k ], [ %.014.i.i.i.i22, %bb.i ], [ %.014.i.i.i.i22, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 %.sink.i.i.i.i26
  %.1.i.i.i.i28 = load ptr, ptr %i.bz, align 8, !tbaa !886 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %.1.i.i.i.i28, null
  br i1 %.not.i.i.i.i29, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i21, !llvm.loop !78

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %i.ca = icmp eq ptr %.19.i.i.i.i27, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !548 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !548 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !548
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i27, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i27, %bb.l ], [ %.19.i.i.i.i27, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !957 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !867
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !705
  %i.cu = load double, ptr %2, align 8, !tbaa !705
  %i.cv = fcmp oeq double %i.ct, %i.cu
  br i1 %i.cv, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !957
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = load i8, ptr %i.cp, align 8, !range !867
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = select i1 %i.cz, i1 %i.db, i1 false
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cw, i8 0, i64 270336, i1 false)
  %i.de = load i32, ptr %i.j, align 4, !tbaa !548
  %i.df = load <2 x i32>, ptr %1, align 4, !tbaa !548
  %i.dg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.de, i64 2
  %i.dh = shufflevector <2 x i32> %i.df, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> %i.dg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dj = and <4 x i32> %i.di, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dj, ptr %i.dd, align 8, !tbaa !548
  br i1 %i.dc, label %bb.s, label %vector.ph

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dk, i8 -1, i64 4096, i1 false), !tbaa !896
  br label %vector.ph

vector.ph:                                        ; preds = %bb.r, %bb.s
  %.pre.i31 = load double, ptr %i.cx, align 8, !tbaa !705
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i31, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <2 x double> %broadcast.splat, ptr %i.dl, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.dm, align 8, !tbaa !575
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store <2 x double> %broadcast.splat, ptr %i.do, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.dp, align 8, !tbaa !575
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dr, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.ds, align 8, !tbaa !575
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  store <2 x double> %broadcast.splat, ptr %i.du, align 8, !tbaa !575
  store <2 x double> %broadcast.splat, ptr %i.dv, align 8, !tbaa !575
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dw = icmp eq i64 %index.next.3, 32768
  br i1 %i.dw, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35, label %vector.body, !llvm.loop !9396

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cw)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.0.ph = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 2 uses
  %i.dx = load i32, ptr %1, align 4, !tbaa !548
  %i.dy = and i32 %i.dx, -4096
  %i.dz = load i32, ptr %i.e, align 4, !tbaa !548
  %i.ea = and i32 %i.dz, -4096
  %i.eb = load i32, ptr %i.j, align 4, !tbaa !548
  %i.ec = and i32 %i.eb, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.ea to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.dy to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ed, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !575
end_hunk_7

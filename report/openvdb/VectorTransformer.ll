Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VectorTransformer?download=true
inline.NumInlined: 3364
inline.NumDeleted: 1699
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_15MatMulNormalizeEEclERNS4_13IteratorRangeISS_EE:bb.a

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit: ; preds = %bb.b
  %i.v = load i32, ptr %i.c, align 8, !tbaa !270
  %.not7 = icmp eq i32 %i.v, 512
  br i1 %.not7, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %.split5, %.split4, %.split, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !522, !nonnull !272, !align !273
  tail call void @_ZNK7openvdb5v13_05tools15MatMulNormalizeclINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(128) %i.w, ptr noundef nonnull align 8 dereferenceable(272) %1)
  %i.x = load i64, ptr %i.d, align 8, !tbaa !247  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.x, 0
  br i1 %.not3.i.i, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.d, align 8, !tbaa !247
  %i.z = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.critedge.backedge.i.i.i.i
  %i.aa = load i32, ptr %i.g, align 8, !tbaa !267 ; 2 uses
  %i.ab = load i32, ptr %i.l, align 4, !tbaa !274
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.critedge.backedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = load i32, ptr %i.k, align 8, !tbaa !106
  %i.ae = icmp sgt i32 %i.aa, %i.ad
  br i1 %i.ae, label %.critedge.backedge.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit

.critedge.backedge.i.i.i.i:                       ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.af = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit, !llvm.loop !0

_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit: ; preds = %bb.e, %.critedge.backedge.i.i.i.i, %bb.d
  %.pre = load i64, ptr %i.d, align 8, !tbaa !247
  %i.ag = icmp eq i64 %.pre, 0
  br i1 %i.ag, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit.thread, label %bb.b, !llvm.loop !521

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit.thread: ; preds = %bb.c, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit, %.split, %.split4, %.split5, %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"class.openvdb::v13_0::tree::TreeValueIteratorBase", align 8 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef nonnull align 8 dereferenceable(272) %0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.u = load <2 x i32>, ptr %i.s, align 8, !tbaa !46
  %i.v = load i32, ptr %i.s, align 8, !tbaa !267
  store <2 x i32> %i.u, ptr %i.r, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.y = load i32, ptr %i.x, align 8, !tbaa !106
  store i32 %i.y, ptr %i.w, align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr null, ptr %i.ac, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %1, ptr %i.ad, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !110
  store ptr %i.c, ptr %i.g, align 8, !tbaa !111
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.h, ptr %i.af, align 8, !tbaa !112
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.j, ptr %i.ag, align 8, !tbaa !113
  store ptr %i.l, ptr %i.p, align 8, !tbaa !114
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit, %bb.a
  %i.al = phi i32 [ %i.v, %bb.a ], [ %.pre, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.av, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit ] ; 2 uses
  switch i32 %i.al, label %.split2 [
    i32 0, label %.split
    i32 1, label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE4testEv.exit
    i32 2, label %.split3
  ]

.split:                                           ; preds = %bb.b
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !270
  %.not6 = icmp eq i32 %i.am, 512
  br i1 %.not6, label %bb.c, label %bb.d

.split3:                                          ; preds = %bb.b
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !269
  %.not = icmp eq i32 %i.an, 32768
  br i1 %.not, label %bb.c, label %bb.d

.split2:                                          ; preds = %bb.b
  %i.ao = icmp eq i32 %i.al, 3
  %i.ap = load ptr, ptr %i.n, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.ak, align 8
  %i.as = icmp ne ptr %i.ar, %i.aq
  %i.at = select i1 %i.ao, i1 %i.as, i1 false
  br i1 %i.at, label %bb.d, label %bb.c

_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE4testEv.exit: ; preds = %bb.b
  %i.au = load i32, ptr %i.ai, align 8, !tbaa !268
  %.not5 = icmp eq i32 %i.au, 4096
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split3, %.split2, %.split, %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE4testEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i64 %.0

bb.d:                                             ; preds = %.split3, %.split2, %.split, %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE4testEv.exit
  %i.av = add i64 %.0, 1
  %i.aw = call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(272) %1, i1 noundef zeroext false)
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit

.lr.ph.i.i:                                       ; preds = %bb.d, %.critedge.backedge.i.i
  %i.ax = load i32, ptr %i.r, align 8, !tbaa !267 ; 2 uses
  %i.ay = load i32, ptr %i.t, align 4, !tbaa !274
  %i.az = icmp slt i32 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.w, align 8
  %i.bb = icmp sgt i32 %i.ax, %i.ba
  %or.cond = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond, label %.critedge.backedge.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit

.critedge.backedge.i.i:                           ; preds = %.lr.ph.i.i
  %i.bc = call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(272) %1, i1 noundef zeroext false)
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit, !llvm.loop !0

_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit: ; preds = %.lr.ph.i.i, %.critedge.backedge.i.i, %bb.d
  %.pre = load i32, ptr %i.r, align 8, !tbaa !267
  br label %bb.b, !llvm.loop !523
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 19 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i32, ptr %i.c, align 8, !tbaa !267
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %i.ab = phi i32 [ %.pre, %bb.a ], [ %.lcssa656, %.critedge ] ; 7 uses
  %.013 = phi i8 [ %i.a, %bb.a ], [ %.114, %.critedge ] ; 3 uses
  switch i32 %i.ab, label %bb.g [
    i32 0, label %bb.f
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i

bb.d:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !275 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi i32 [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.e ]
  %.sroa.02.05.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %bb.e ]
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i) #27 ; 2 uses
  %i.ag = add i32 %.06.i.i.i.i.i.i, 1             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !524

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i: ; preds = %bb.b, %bb.c
  %.sink3.i.i = phi i64 [ 32, %bb.c ], [ 8, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !46
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !270
  %i.ak = load i32, ptr %i.k, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit

bb.g:                                             ; preds = %bb.b, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i
  %.ph = phi i32 [ -1, %bb.b ], [ %i.ai, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i ] ; 2 uses
  switch i32 %i.ab, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit [
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i

.thread:                                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e, %bb.d
  %.ph261 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !281 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i24, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i25 = load ptr, ptr %i.h, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i26 = icmp eq ptr %i.an, %.sroa.0.0.copyload.i.i.i.i.i25
  br i1 %.not4.i.i.i.i.i.i26, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit, label %.lr.ph.i.i.i.i.i.i27

.lr.ph.i.i.i.i.i.i27:                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i27
  %.06.i.i.i.i.i.i28 = phi i32 [ %i.ap, %.lr.ph.i.i.i.i.i.i27 ], [ 0, %bb.i ]
  %.sroa.02.05.i.i.i.i.i.i29 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i27 ], [ %i.an, %bb.i ]
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i29) #27 ; 2 uses
  %i.ap = add i32 %.06.i.i.i.i.i.i28, 1           ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.ao, %.sroa.0.0.copyload.i.i.i.i.i25
  br i1 %.not.i.i.i.i.i.i30, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit, label %.lr.ph.i.i.i.i.i.i27, !llvm.loop !525

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i: ; preds = %bb.h, %bb.g
  %.sink3.i.i31 = phi i64 [ 32, %bb.h ], [ 8, %bb.g ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink3.i.i31
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit: ; preds = %.lr.ph.i.i.i.i.i.i27, %bb.f, %bb.g, %.thread, %bb.i, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i
  %i.as = phi i32 [ %i.aj, %bb.f ], [ %.ph261, %bb.i ], [ %.ph, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i ], [ %.ph, %bb.g ], [ %.ph261, %.thread ], [ %.ph261, %.lr.ph.i.i.i.i.i.i27 ] ; 6 uses
  %i.at = phi i32 [ %i.ak, %bb.f ], [ 0, %bb.i ], [ %i.ar, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i ], [ -1, %bb.g ], [ 0, %.thread ], [ %i.ap, %.lr.ph.i.i.i.i.i.i27 ] ; 4 uses
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.j, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit
  switch i32 %i.ab, label %.split262 [
    i32 0, label %.split
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit
    i32 2, label %.split263
  ]

.split:                                           ; preds = %bb.j
  %i.av = load i32, ptr %i.k, align 8, !tbaa !270
  %.not328 = icmp eq i32 %i.av, 512
  br i1 %.not328, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread

.split263:                                        ; preds = %bb.j
  %i.aw = load i32, ptr %i.l, align 8, !tbaa !269
  %.not = icmp eq i32 %i.aw, 32768
  br i1 %.not, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit

.split262:                                        ; preds = %bb.j
  %i.ax = icmp eq i32 %i.ab, 3
  %i.ay = load ptr, ptr %i.g, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.h, align 8
  %i.bb = icmp ne ptr %i.ba, %i.az
  %i.bc = select i1 %i.ax, i1 %i.bb, i1 false
  br i1 %i.bc, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit: ; preds = %bb.j
  %i.bd = load i32, ptr %i.m, align 8, !tbaa !268
  %.not327 = icmp eq i32 %i.bd, 4096
  br i1 %.not327, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %bb.k

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread: ; preds = %.split
  %i.be = load i32, ptr %i.j, align 8, !tbaa !270
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.j, align 8, !tbaa !270
  br label %bb.n

bb.k:                                             ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !282 ; 2 uses
  %i.bh = load i32, ptr %i.n, align 8, !tbaa !268
  %i.bi = add i32 %i.bh, 1                        ; 4 uses
  %i.bj = lshr i32 %i.bi, 6                       ; 3 uses
  %i.bk = icmp ugt i32 %i.bi, 4095
  br i1 %i.bk, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = and i32 %i.bi, 63
  %i.bm = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !283 ; 2 uses
  %i.bp = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = and i64 %i.bo, %i.bq
  %.not.not.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = xor i64 %i.bo, -1
  %i.bt = shl nsw i64 -1, %i.bp
  %i.bu = and i64 %i.bt, %i.bs                    ; 2 uses
  %.not25.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not25.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i32.preheader, label %.critedge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i32.preheader:                   ; preds = %bb.m
  %exitcond.not.i.i.i.i.i.i571 = icmp eq i32 %i.bj, 63
  br i1 %exitcond.not.i.i.i.i.i.i571, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, label %.lr.ph

.lr.ph.i.i.i.i.i.i32:                             ; preds = %.lr.ph
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i32.preheader, %.lr.ph.i.i.i.i.i.i32
  %indvars.iv.i.i.i.i.i.i572 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i32 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i32.preheader ]
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i572, 1 ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i.i.i33 = icmp eq i64 %i.bw, -1
  br i1 %.not.i.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i.i32, label %.critedge.loopexit.i.i.i.i.i.i, !llvm.loop !1

.critedge.loopexit.i.i.i.i.i.i:                   ; preds = %.lr.ph
  %i.bx = xor i64 %i.bw, -1
  %i.by = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.critedge.loopexit.i.i.i.i.i.i, %bb.m
  %.016.lcssa.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.m ], [ %i.by, %.critedge.loopexit.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.bx, %.critedge.loopexit.i.i.i.i.i.i ]
  %i.bz = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i, 6
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499: ; preds = %.lr.ph.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i.i32.preheader, %bb.k, %bb.l, %.critedge.i.i.i.i.i.i
  %.118.i.i.i.i.i.i = phi i32 [ 4096, %bb.k ], [ %i.bi, %bb.l ], [ %i.cc, %.critedge.i.i.i.i.i.i ], [ 4096, %.lr.ph.i.i.i.i.i.i32.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i32 ]
  store i32 %.118.i.i.i.i.i.i, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit: ; preds = %.split262, %.split263
  %i.cd = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.ab) ; 0 uses
  %.pre408 = load i32, ptr %i.c, align 8, !tbaa !267 ; 2 uses
  switch i32 %.pre408, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread [
    i32 0, label %bb.n
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41
    i32 2, label %bb.o
    i32 3, label %bb.p
  ]

bb.n:                                             ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit
  %i.ce = load i32, ptr %i.j, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !275 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i34, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i35 = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i36 = icmp eq ptr %i.ch, %.sroa.0.0.copyload.i.i.i.i.i35
  br i1 %.not4.i.i.i.i.i.i36, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %.lr.ph.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i37:                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i37
  %.06.i.i.i.i.i.i38 = phi i32 [ %i.cj, %.lr.ph.i.i.i.i.i.i37 ], [ 0, %bb.q ]
  %.sroa.02.05.i.i.i.i.i.i39 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i37 ], [ %i.ch, %bb.q ]
  %i.ci = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i39) #27 ; 2 uses
  %i.cj = add i32 %.06.i.i.i.i.i.i38, 1           ; 2 uses
  %.not.i.i.i.i.i.i40 = icmp eq ptr %i.ci, %.sroa.0.0.copyload.i.i.i.i.i35
  br i1 %.not.i.i.i.i.i.i40, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %.lr.ph.i.i.i.i.i.i37, !llvm.loop !524

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit, %bb.o
  %i.ck = phi i32 [ 2, %bb.o ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499 ]
  %.sink3.i.i42 = phi i64 [ 32, %bb.o ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i42
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43: ; preds = %.lr.ph.i.i.i.i.i.i37, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41, %bb.q, %bb.p, %bb.n, %.split263, %.split262, %.split, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit
  %i.cn = phi i32 [ 2, %.split263 ], [ 1, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit ], [ %i.ab, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit ], [ 0, %.split ], [ %i.ab, %.split262 ], [ 0, %bb.n ], [ 3, %bb.q ], [ %i.ck, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41 ], [ 3, %bb.p ], [ 3, %.lr.ph.i.i.i.i.i.i37 ] ; 3 uses
  %.011 = phi i32 [ %i.as, %.split263 ], [ %i.as, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit ], [ %i.as, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit ], [ %i.as, %.split ], [ %i.as, %.split262 ], [ %i.ce, %bb.n ], [ 0, %bb.q ], [ %i.cm, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41 ], [ 0, %bb.p ], [ %i.cj, %.lr.ph.i.i.i.i.i.i37 ]
  %i.co = icmp ult i32 %.011, %i.at
  br i1 %i.co, label %bb.r, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread

bb.r:                                             ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43
  %i.cp = trunc nuw i8 %.013 to i1
  br i1 %i.cp, label %.critedge.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i32 %i.cn, label %.split269 [
    i32 0, label %.split268
    i32 1, label %bb.t
  ]

.split268:                                        ; preds = %bb.s
  %i.cq = load i32, ptr %i.j, align 8, !tbaa !270
  %i.cr = add i32 %i.cq, 1                        ; 2 uses
  store i32 %i.cr, ptr %i.j, align 8, !tbaa !270
  %.not330 = icmp eq i32 %i.cr, 512
  br i1 %.not330, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader, label %.thread501

bb.t:                                             ; preds = %bb.s
  %i.cs = load ptr, ptr %i.o, align 8, !tbaa !282 ; 2 uses
  %i.ct = load i32, ptr %i.n, align 8, !tbaa !268
  %i.cu = add i32 %i.ct, 1                        ; 4 uses
  %i.cv = lshr i32 %i.cu, 6                       ; 3 uses
  %i.cw = icmp ugt i32 %i.cu, 4095
  br i1 %i.cw, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = and i32 %i.cu, 63
  %i.cy = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !283 ; 2 uses
  %i.db = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.da, %i.dc
  %.not.not.i.i.i.i.i.i44 = icmp eq i64 %i.dd, 0
  br i1 %.not.not.i.i.i.i.i.i44, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271, label %bb.v

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271: ; preds = %bb.u
  store i32 %i.cu, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65

bb.v:                                             ; preds = %bb.u
  %i.de = xor i64 %i.da, -1
  %i.df = shl nsw i64 -1, %i.db
  %i.dg = and i64 %i.df, %i.de                    ; 2 uses
  %.not25.i.i.i.i.i.i45 = icmp eq i64 %i.dg, 0
  br i1 %.not25.i.i.i.i.i.i45, label %.lr.ph.i.i.i.i.i.i51.preheader, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57

.lr.ph.i.i.i.i.i.i51.preheader:                   ; preds = %bb.v
  %exitcond.not.i.i.i.i.i.i53573 = icmp eq i32 %i.cv, 63
  br i1 %exitcond.not.i.i.i.i.i.i53573, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread, label %.lr.ph575

.lr.ph.i.i.i.i.i.i51:                             ; preds = %.lr.ph575
  %exitcond.not.i.i.i.i.i.i53 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i54, 63
  br i1 %exitcond.not.i.i.i.i.i.i53, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread, label %.lr.ph575, !llvm.loop !1

.lr.ph575:                                        ; preds = %.lr.ph.i.i.i.i.i.i51.preheader, %.lr.ph.i.i.i.i.i.i51
  %indvars.iv.i.i.i.i.i.i52574 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i54, %.lr.ph.i.i.i.i.i.i51 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i51.preheader ]
  %indvars.iv.next.i.i.i.i.i.i54 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i52574, 1 ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i.i.i.i54
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i.i.i55 = icmp eq i64 %i.di, -1
  br i1 %.not.i.i.i.i.i.i55, label %.lr.ph.i.i.i.i.i.i51, label %.critedge.loopexit.i.i.i.i.i.i56, !llvm.loop !1

.critedge.loopexit.i.i.i.i.i.i56:                 ; preds = %.lr.ph575
  %i.dj = xor i64 %i.di, -1
  %i.dk = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i54 to i32
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57

.split269:                                        ; preds = %bb.s
  %i.dl = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.cn)
  br i1 %i.dl, label %bb.w, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread: ; preds = %.lr.ph.i.i.i.i.i.i51, %.lr.ph.i.i.i.i.i.i51.preheader, %bb.t
  store i32 4096, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57: ; preds = %bb.v, %.critedge.loopexit.i.i.i.i.i.i56
  %.016.lcssa.i.i.i.i.i.i47 = phi i32 [ %i.cv, %bb.v ], [ %i.dk, %.critedge.loopexit.i.i.i.i.i.i56 ]
  %.0.lcssa.i.i.i.i.i.i48 = phi i64 [ %i.dg, %bb.v ], [ %i.dj, %.critedge.loopexit.i.i.i.i.i.i56 ]
  %i.dm = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i47, 6
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i48, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = or disjoint i32 %i.dm, %i.do            ; 2 uses
  store i32 %i.dp, ptr %i.n, align 8, !tbaa !268
  %.not329 = icmp eq i32 %i.dp, 4096
  br i1 %.not329, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65

bb.w:                                             ; preds = %.split269
  %.pre409 = load i32, ptr %i.c, align 8, !tbaa !267 ; 2 uses
  switch i32 %.pre409, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67 [
    i32 0, label %.thread501
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

.thread501:                                       ; preds = %.split268, %bb.w
  %i.dq = load i32, ptr %i.j, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67

bb.x:                                             ; preds = %bb.w
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65

bb.y:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !275 ; 2 uses
  %.not.i.i.i.i.i58 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i58, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i59 = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i60 = icmp eq ptr %i.dt, %.sroa.0.0.copyload.i.i.i.i.i59
  br i1 %.not4.i.i.i.i.i.i60, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67, label %.lr.ph.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i61:                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i61
  %.06.i.i.i.i.i.i62 = phi i32 [ %i.dv, %.lr.ph.i.i.i.i.i.i61 ], [ 0, %bb.z ]
  %.sroa.02.05.i.i.i.i.i.i63 = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i61 ], [ %i.dt, %bb.z ]
  %i.du = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i63) #27 ; 2 uses
  %i.dv = add i32 %.06.i.i.i.i.i.i62, 1           ; 2 uses
  %.not.i.i.i.i.i.i64 = icmp eq ptr %i.du, %.sroa.0.0.copyload.i.i.i.i.i59
  br i1 %.not.i.i.i.i.i.i64, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67, label %.lr.ph.i.i.i.i.i.i61, !llvm.loop !524

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271, %bb.w, %bb.x
  %i.dw = phi i32 [ 2, %bb.x ], [ 1, %bb.w ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271 ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57 ]
  %.sink3.i.i66 = phi i64 [ 32, %bb.x ], [ 8, %bb.w ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271 ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i66
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67: ; preds = %.lr.ph.i.i.i.i.i.i61, %bb.w, %.thread501, %bb.y, %bb.z, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65
  %i.dz = phi i32 [ 0, %.thread501 ], [ 3, %bb.z ], [ %i.dw, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65 ], [ %.pre409, %bb.w ], [ 3, %bb.y ], [ 3, %.lr.ph.i.i.i.i.i.i61 ] ; 5 uses
  %i.ea = phi i32 [ %i.dq, %.thread501 ], [ 0, %bb.z ], [ %i.dy, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65 ], [ -1, %bb.w ], [ 0, %bb.y ], [ %i.dv, %.lr.ph.i.i.i.i.i.i61 ]
  %i.eb = icmp eq i32 %i.ea, %i.at
  br i1 %i.eb, label %bb.aa, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82

bb.aa:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67
  switch i32 %i.dz, label %.split274 [
    i32 0, label %.split273
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68
    i32 2, label %.split275
  ]

.split273:                                        ; preds = %bb.aa
  %i.ec = load i32, ptr %i.k, align 8, !tbaa !270
  %.not333 = icmp eq i32 %i.ec, 512
  br i1 %.not333, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread, label %bb.ab

.split275:                                        ; preds = %bb.aa
  %i.ed = load i32, ptr %i.l, align 8, !tbaa !269
  %.not331 = icmp eq i32 %i.ed, 32768
  br i1 %.not331, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504, label %bb.af

.split274:                                        ; preds = %bb.aa
  %i.ee = icmp eq i32 %i.dz, 3
  %i.ef = load ptr, ptr %i.g, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.h, align 8
  %i.ei = icmp ne ptr %i.eh, %i.eg
  %i.ej = select i1 %i.ee, i1 %i.ei, i1 false
  br i1 %i.ej, label %bb.af, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68: ; preds = %bb.aa
  %i.ek = load i32, ptr %i.m, align 8, !tbaa !268
  %.not332 = icmp eq i32 %i.ek, 4096
  br i1 %.not332, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90, label %bb.ac

bb.ab:                                            ; preds = %.split273
  %i.el = load i32, ptr %i.j, align 8, !tbaa !270
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.j, align 8, !tbaa !270
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread

bb.ac:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !282 ; 2 uses
  %i.eo = load i32, ptr %i.n, align 8, !tbaa !268
  %i.ep = add i32 %i.eo, 1                        ; 4 uses
  %i.eq = lshr i32 %i.ep, 6                       ; 3 uses
  %i.er = icmp ugt i32 %i.ep, 4095
  br i1 %i.er, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i74, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.es = and i32 %i.ep, 63
  %i.et = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !283 ; 2 uses
  %i.ew = zext nneg i32 %i.es to i64              ; 2 uses
  %i.ex = shl nuw i64 1, %i.ew
  %i.ey = and i64 %i.ev, %i.ex
  %.not.not.i.i.i.i.i.i69 = icmp eq i64 %i.ey, 0
  br i1 %.not.not.i.i.i.i.i.i69, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i74, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ez = xor i64 %i.ev, -1
  %i.fa = shl nsw i64 -1, %i.ew
  %i.fb = and i64 %i.fa, %i.ez                    ; 2 uses
  %.not25.i.i.i.i.i.i70 = icmp eq i64 %i.fb, 0
  br i1 %.not25.i.i.i.i.i.i70, label %.lr.ph.i.i.i.i.i.i76.preheader, label %.critedge.i.i.i.i.i.i71

.lr.ph.i.i.i.i.i.i76.preheader:                   ; preds = %bb.ae
  %exitcond.not.i.i.i.i.i.i78576 = icmp eq i32 %i.eq, 63
  br i1 %exitcond.not.i.i.i.i.i.i78576, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i74, label %.lr.ph578

.lr.ph.i.i.i.i.i.i76:                             ; preds = %.lr.ph578
  %exitcond.not.i.i.i.i.i.i78 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i79, 63
  br i1 %exitcond.not.i.i.i.i.i.i78, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i74, label %.lr.ph578, !llvm.loop !1

.lr.ph578:                                        ; preds = %.lr.ph.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i76
  %indvars.iv.i.i.i.i.i.i77577 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i79, %.lr.ph.i.i.i.i.i.i76 ], [ %i.et, %.lr.ph.i.i.i.i.i.i76.preheader ]
  %indvars.iv.next.i.i.i.i.i.i79 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i77577, 1 ; 4 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i.i.i.i.i.i79
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i.i.i80 = icmp eq i64 %i.fd, -1
  br i1 %.not.i.i.i.i.i.i80, label %.lr.ph.i.i.i.i.i.i76, label %.critedge.loopexit.i.i.i.i.i.i81, !llvm.loop !1

.critedge.loopexit.i.i.i.i.i.i81:                 ; preds = %.lr.ph578
  %i.fe = xor i64 %i.fd, -1
  %i.ff = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i79 to i32
  br label %.critedge.i.i.i.i.i.i71

.critedge.i.i.i.i.i.i71:                          ; preds = %.critedge.loopexit.i.i.i.i.i.i81, %bb.ae
  %.016.lcssa.i.i.i.i.i.i72 = phi i32 [ %i.eq, %bb.ae ], [ %i.ff, %.critedge.loopexit.i.i.i.i.i.i81 ]
  %.0.lcssa.i.i.i.i.i.i73 = phi i64 [ %i.fb, %bb.ae ], [ %i.fe, %.critedge.loopexit.i.i.i.i.i.i81 ]
  %i.fg = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i72, 6
  %i.fh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i73, i1 true)
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = or disjoint i32 %i.fg, %i.fi
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i74

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i74: ; preds = %.lr.ph.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i.i76.preheader, %.critedge.i.i.i.i.i.i71, %bb.ad, %bb.ac
  %.118.i.i.i.i.i.i75 = phi i32 [ 4096, %bb.ac ], [ %i.ep, %bb.ad ], [ %i.fj, %.critedge.i.i.i.i.i.i71 ], [ 4096, %.lr.ph.i.i.i.i.i.i76.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i76 ]
  store i32 %.118.i.i.i.i.i.i75, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90

bb.af:                                            ; preds = %.split275, %.split274
  %i.fk = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.dz) ; 0 uses
  %.pre410 = load i32, ptr %i.c, align 8, !tbaa !267
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82: ; preds = %bb.af, %.split274, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67
  %i.fl = phi i32 [ %.pre410, %bb.af ], [ %i.dz, %.split274 ], [ %i.dz, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67 ]
  switch i32 %i.fl, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader [
    i32 0, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90
    i32 2, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504
    i32 3, label %bb.ag
  ]

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread: ; preds = %.split273, %bb.ab, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82
  %i.fm = load i32, ptr %i.j, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504: ; preds = %.split275, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90

bb.ag:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !275 ; 2 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i83, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i84 = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i85 = icmp eq ptr %i.fp, %.sroa.0.0.copyload.i.i.i.i.i84
  br i1 %.not4.i.i.i.i.i.i85, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92, label %.lr.ph.i.i.i.i.i.i86

.lr.ph.i.i.i.i.i.i86:                             ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i86
  %.06.i.i.i.i.i.i87 = phi i32 [ %i.fr, %.lr.ph.i.i.i.i.i.i86 ], [ 0, %bb.ah ]
  %.sroa.02.05.i.i.i.i.i.i88 = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i86 ], [ %i.fp, %bb.ah ]
  %i.fq = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i88) #27 ; 2 uses
  %i.fr = add i32 %.06.i.i.i.i.i.i87, 1           ; 2 uses
  %.not.i.i.i.i.i.i89 = icmp eq ptr %i.fq, %.sroa.0.0.copyload.i.i.i.i.i84
  br i1 %.not.i.i.i.i.i.i89, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92, label %.lr.ph.i.i.i.i.i.i86, !llvm.loop !524

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90: ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i74, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504
  %.sink3.i.i91 = phi i64 [ 32, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504 ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82 ], [ 8, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i74 ], [ 8, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i91
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92: ; preds = %.lr.ph.i.i.i.i.i.i86, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread, %bb.ag, %bb.ah, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90
  %i.fu = phi i32 [ %i.fm, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread ], [ 0, %bb.ah ], [ %i.ft, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90 ], [ 0, %bb.ag ], [ %i.fr, %.lr.ph.i.i.i.i.i.i86 ]
  %i.fv = icmp ult i32 %i.fu, %i.at
  br i1 %i.fv, label %.critedge.thread, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43
  %i.fw = phi i32 [ %.pre408, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit ], [ %i.cn, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43 ]
  %i.fx = trunc nuw i8 %.013 to i1
  br i1 %i.fx, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader, label %bb.ai

bb.ai:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread
  %i.fy = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.fw) ; 0 uses
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread, %.split269, %.split268, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread, %bb.ai, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread: ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader
  %i.fz = load i32, ptr %i.c, align 8, !tbaa !267 ; 11 uses
  %i.ga = icmp eq i32 %i.fz, 0                    ; 3 uses
  br i1 %i.ga, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread
  switch i32 %i.fz, label %bb.ao [
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i100
    i32 2, label %bb.ak
    i32 3, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i100

bb.al:                                            ; preds = %bb.aj
  %i.gb = load ptr, ptr %i.g, align 8, !tbaa !281 ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i.i93, label %.thread281, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i94 = load ptr, ptr %i.h, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i95 = icmp eq ptr %i.gd, %.sroa.0.0.copyload.i.i.i.i.i94
  br i1 %.not4.i.i.i.i.i.i95, label %.thread281, label %.lr.ph.i.i.i.i.i.i96

end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb:bb.a
  %i.mt = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.ms), !noalias !549
  store ptr %i.mq, ptr %i.mr, align 8, !tbaa !293
  br label %bb.cl

bb.cc:                                            ; preds = %bb.bt
  %i.mu = load ptr, ptr %i.s, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mv = load ptr, ptr %i.g, align 8, !tbaa !281
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.h, align 8, !tbaa !286 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.mx, %i.mw
  br i1 %.not9.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 48
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !551 ; 3 uses
  %.not7.not.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not7.not.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 524288 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %bb.cf
  %.013.i.i.i.i.i.i.i234 = phi ptr [ %i.na, %bb.cf ], [ %i.ni, %bb.ck ] ; 5 uses
  %.0712.i.i.i.i.i.i.i235 = phi i32 [ 0, %bb.cf ], [ %i.nj, %bb.ck ] ; 5 uses
  %i.nb = load i64, ptr %.013.i.i.i.i.i.i.i234, align 8, !tbaa !283, !noalias !552 ; 2 uses
  %.not.i.i.i.i.i.i.i236 = icmp eq i64 %i.nb, 0
  br i1 %.not.i.i.i.i.i.i.i236, label %bb.ch, label %.critedge.thread.i.i.i.i.i.i.i237

bb.ch:                                            ; preds = %bb.cg
  %i.nc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 8
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !283, !noalias !552 ; 2 uses
  %.not.i.i.i.i.i.i.i236.1 = icmp eq i64 %i.nd, 0
  br i1 %.not.i.i.i.i.i.i.i236.1, label %bb.ci, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704

bb.ci:                                            ; preds = %bb.ch
  %i.ne = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 16
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !283, !noalias !552 ; 2 uses
  %.not.i.i.i.i.i.i.i236.2 = icmp eq i64 %i.nf, 0
  br i1 %.not.i.i.i.i.i.i.i236.2, label %bb.cj, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701

bb.cj:                                            ; preds = %bb.ci
  %i.ng = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 24
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !283, !noalias !552 ; 2 uses
  %.not.i.i.i.i.i.i.i236.3 = icmp eq i64 %i.nh, 0
  br i1 %.not.i.i.i.i.i.i.i236.3, label %bb.ck, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit

bb.ck:                                            ; preds = %bb.cj
  %i.ni = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 32
  %i.nj = add nuw nsw i32 %.0712.i.i.i.i.i.i.i235, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i238.3 = icmp eq i32 %i.nj, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i238.3, label %.loopexit.i.i.i, label %bb.cg, !llvm.loop !6

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit: ; preds = %bb.cj
  %i.nk = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 3
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701: ; preds = %bb.ci
  %i.nl = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 2
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704: ; preds = %bb.ch
  %i.nm = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 1
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237:                ; preds = %bb.cg, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit
  %.0712.i.i.i.i.i.i.i235.lcssa = phi i32 [ %i.nm, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704 ], [ %i.nl, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701 ], [ %i.nk, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i235, %bb.cg ]
  %.lcssa619 = phi i64 [ %i.nd, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704 ], [ %i.nf, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701 ], [ %i.nh, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit ], [ %i.nb, %bb.cg ]
  %i.nn = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i235.lcssa, 6
  %i.no = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa619, i1 true)
  %i.np = trunc nuw nsw i64 %i.no to i32
  %i.nq = or disjoint i32 %i.nn, %i.np
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.ck, %.critedge.thread.i.i.i.i.i.i.i237
  %i.nr = phi i32 [ %i.nq, %.critedge.thread.i.i.i.i.i.i.i237 ], [ 32768, %bb.ck ]
  store ptr %i.mz, ptr %i.mu, align 8, !tbaa !296
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i.i, %bb.cb, %bb.bx
  %.sink31.i.sink30.i = phi ptr [ %i.mj, %bb.bx ], [ %i.mu, %.loopexit.i.i.i ], [ %i.mr, %bb.cb ] ; 2 uses
  %.sink29.i.sink.i = phi i32 [ 512, %bb.bx ], [ %i.nr, %.loopexit.i.i.i ], [ %i.mt, %bb.cb ]
  %.sink.i.sink.i = phi ptr [ %i.mk, %bb.bx ], [ %i.na, %.loopexit.i.i.i ], [ %i.ms, %bb.cb ]
  %i.ns = getelementptr inbounds nuw i8, ptr %.sink31.i.sink30.i, i64 8
  store i32 %.sink29.i.sink.i, ptr %i.ns, align 8, !tbaa !46
  %i.nt = getelementptr inbounds nuw i8, ptr %.sink31.i.sink30.i, i64 16
  store ptr %.sink.i.sink.i, ptr %i.nt, align 8, !tbaa !297
  %i.nu = load i32, ptr %i.c, align 8, !tbaa !267
  %i.nv = add i32 %i.nu, -1                       ; 3 uses
  store i32 %i.nv, ptr %i.c, align 8, !tbaa !267
  switch i32 %i.nv, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit [
    i32 0, label %bb.cm
    i32 1, label %bb.cu
    i32 2, label %bb.cx
    i32 3, label %bb.de
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.nw = load ptr, ptr %0, align 8               ; 9 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.oa = load atomic i32, ptr %i.nz seq_cst, align 4, !noalias !553
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.oa, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.nw), !noalias !553
  br label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  %i.ob = load ptr, ptr %i.nw, align 8, !tbaa !241, !noalias !553 ; 2 uses
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %bb.cp, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i

bb.cp:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 12 ; 4 uses
  %i.oe = atomicrmw xchg ptr %i.od, i8 1 seq_cst, align 1, !noalias !553
  %i.of = trunc i8 %i.oe to i1
  br i1 %i.of, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cp, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i ], [ 1, %bb.cp ] ; 8 uses
  %i.og = icmp slt i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 17
  br i1 %i.og, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.oh = icmp sgt i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.oh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.cq
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.i.i.i.i.i.prol = phi i32 [ %i.oi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.oi = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !553
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !538

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.oi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.oj = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.oj, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.01.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ok, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !553
  tail call void @llvm.x86.sse2.pause(), !noalias !553
  tail call void @llvm.x86.sse2.pause(), !noalias !553
  tail call void @llvm.x86.sse2.pause(), !noalias !553
  tail call void @llvm.x86.sse2.pause(), !noalias !553
  tail call void @llvm.x86.sse2.pause(), !noalias !553
  tail call void @llvm.x86.sse2.pause(), !noalias !553
  %i.ok = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause(), !noalias !553
  %i.ol = icmp sgt i32 %.01.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.ol, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.cq
  %i.om = shl i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.on = tail call noundef i32 @sched_yield() #21, !noalias !553 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cr, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i32 [ %i.om, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %bb.cr ]
  %i.oo = atomicrmw xchg ptr %i.od, i8 1 seq_cst, align 1, !noalias !553
  %i.op = trunc i8 %i.oo to i1
  br i1 %i.op, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i, !llvm.loop !8

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i, %bb.cp
  %i.oq = load ptr, ptr %i.nw, align 8, !tbaa !241, !noalias !553 ; 2 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %bb.cs, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i

bb.cs:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i
  %i.os = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znam(i64 noundef 6144) #28
          to label %bb.ct unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i.i.i, !noalias !553 ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.os, ptr %i.nw, align 8, !tbaa !241, !noalias !553
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.cs
  %i.ot = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.od release, align 4, !noalias !553
  resume { ptr, i32 } %i.ot

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i: ; preds = %bb.ct, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i
  %i.ou = phi ptr [ %i.os, %bb.ct ], [ %i.oq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i ]
  store atomic i8 0, ptr %i.od release, align 4, !noalias !553
  br label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i

_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i, %bb.cm
  %.sroa.11.0.i = phi ptr [ undef, %bb.cm ], [ %i.ou, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ %i.ob, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  %.sroa.87.0.i = phi ptr [ null, %bb.cm ], [ %i.ny, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ %i.ny, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  %.sroa.5.0.i = phi i32 [ 512, %bb.cm ], [ 0, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ 0, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  store ptr %i.nw, ptr %i.b, align 8, !tbaa !554
  store i32 %.sroa.5.0.i, ptr %i.j, align 8, !tbaa !270
  store ptr %.sroa.87.0.i, ptr %i.w, align 8, !tbaa !284
  store ptr %.sroa.11.0.i, ptr %i.x, align 8, !tbaa !299
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

bb.cu:                                            ; preds = %bb.cl
  %i.ov = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 65536 ; 2 uses
  %i.oy = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE12findFirstOffEv(ptr noundef nonnull align 8 dereferenceable(512) %i.ox), !noalias !555
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.86.0.i.i = phi ptr [ %i.ox, %bb.cv ], [ null, %bb.cu ]
  %.sroa.5.0.i.i = phi i32 [ %i.oy, %bb.cv ], [ 4096, %bb.cu ]
  store ptr %i.ov, ptr %i.d, align 8, !tbaa !300
  store i32 %.sroa.5.0.i.i, ptr %i.n, align 8, !tbaa !268
  store ptr %.sroa.86.0.i.i, ptr %i.o, align 8, !tbaa !282
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

bb.cx:                                            ; preds = %bb.cl
  %i.oz = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 524288 ; 3 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.dd, %bb.cy
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.pb, %bb.cy ], [ %i.pj, %bb.dd ] ; 5 uses
  %.0712.i.i.i.i.i.i.i = phi i32 [ 0, %bb.cy ], [ %i.pk, %bb.dd ] ; 5 uses
  %i.pc = load i64, ptr %.013.i.i.i.i.i.i.i, align 8, !tbaa !283, !noalias !556 ; 2 uses
  %.not.i.i.i.i.i.i6.i = icmp eq i64 %i.pc, -1
  br i1 %.not.i.i.i.i.i.i6.i, label %bb.da, label %.critedge.thread.i.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.pd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 8
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !283, !noalias !556 ; 2 uses
  %.not.i.i.i.i.i.i6.i.1 = icmp eq i64 %i.pe, -1
  br i1 %.not.i.i.i.i.i.i6.i.1, label %bb.db, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716

bb.db:                                            ; preds = %bb.da
  %i.pf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 16
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !283, !noalias !556 ; 2 uses
  %.not.i.i.i.i.i.i6.i.2 = icmp eq i64 %i.pg, -1
  br i1 %.not.i.i.i.i.i.i6.i.2, label %bb.dc, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713

bb.dc:                                            ; preds = %bb.db
  %i.ph = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 24
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !283, !noalias !556 ; 2 uses
  %.not.i.i.i.i.i.i6.i.3 = icmp eq i64 %i.pi, -1
  br i1 %.not.i.i.i.i.i.i6.i.3, label %bb.dd, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit

bb.dd:                                            ; preds = %bb.dc
  %i.pj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 32
  %i.pk = add nuw nsw i32 %.0712.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i32 %i.pk, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i, label %bb.cz, !llvm.loop !9

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit:   ; preds = %bb.dc
  %i.pl = or disjoint i32 %.0712.i.i.i.i.i.i.i, 3
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713: ; preds = %bb.db
  %i.pm = or disjoint i32 %.0712.i.i.i.i.i.i.i, 2
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716: ; preds = %bb.da
  %i.pn = or disjoint i32 %.0712.i.i.i.i.i.i.i, 1
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i:                   ; preds = %bb.cz, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit
  %.0712.i.i.i.i.i.i.i.lcssa = phi i32 [ %i.pn, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716 ], [ %i.pm, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713 ], [ %i.pl, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i, %bb.cz ]
  %.lcssa622 = phi i64 [ %i.pe, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716 ], [ %i.pg, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713 ], [ %i.pi, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit ], [ %i.pc, %bb.cz ]
  %i.po = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i.lcssa, 6
  %i.pp = xor i64 %.lcssa622, -1
  %i.pq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pp, i1 true)
  %i.pr = trunc nuw nsw i64 %i.pq to i32
  %i.ps = or disjoint i32 %i.po, %i.pr
  br label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i

_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i: ; preds = %bb.dd, %.critedge.thread.i.i.i.i.i.i.i, %bb.cx
  %.sroa.86.0.i.i.i = phi ptr [ null, %bb.cx ], [ %i.pb, %.critedge.thread.i.i.i.i.i.i.i ], [ %i.pb, %bb.dd ]
  %.sroa.5.0.i.i.i = phi i32 [ 32768, %bb.cx ], [ %i.ps, %.critedge.thread.i.i.i.i.i.i.i ], [ 32768, %bb.dd ]
  store ptr %i.oz, ptr %i.p, align 8, !tbaa !301
  store i32 %.sroa.5.0.i.i.i, ptr %i.v, align 8, !tbaa !269
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i

bb.de:                                            ; preds = %bb.cl
  %i.pt = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !279 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 2 uses
  %.not1.i.i.i.i.i.i.i.i = icmp eq ptr %i.px, %i.pw
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.df, %bb.dg
  %.sroa.2.0.i.i.i.i.i.i = phi ptr [ %i.qb, %bb.dg ], [ %i.pw, %bb.df ] ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i.i.i.i.i, i64 48
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !291
  %i.qa = icmp eq ptr %i.pz, null
  br i1 %i.qa, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.qb = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i.i.i.i.i.i) #27 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.qb, %i.px
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !10

_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i: ; preds = %bb.dg, %.lr.ph.i.i.i.i.i.i.i.i, %bb.df, %bb.de
  %.sroa.5.0.i.i.i.i = phi ptr [ null, %bb.de ], [ %i.pw, %bb.df ], [ %i.qb, %bb.dg ], [ %.sroa.2.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %i.pt, ptr %i.e, align 8
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i

_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i: ; preds = %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i
  %.sink.i.i.i = phi i64 [ 32, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i ], [ 16, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i ]
  %.sroa.5.0.i.sink.i.i.i = phi ptr [ %.sroa.5.0.i.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i ], [ %.sroa.86.0.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i ]
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink.i.i.i
  store ptr %.sroa.5.0.i.sink.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i, %bb.cw, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i
  %.pr = load i32, ptr %i.c, align 8, !tbaa !267
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split, %bb.cl
  %i.qc = phi i32 [ %.pr, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split ], [ %i.nv, %bb.cl ] ; 5 uses
  switch i32 %i.qc, label %bb.dl [
    i32 0, label %bb.dk
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166
    i32 2, label %bb.dh
    i32 3, label %bb.di
  ]

bb.dh:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166

bb.di:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  %i.qd = load ptr, ptr %i.e, align 8, !tbaa !275 ; 2 uses
  %.not.i.i.i.i.i159 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i.i.i159, label %.thread297, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i160 = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i161 = icmp eq ptr %i.qf, %.sroa.0.0.copyload.i.i.i.i.i160
  br i1 %.not4.i.i.i.i.i.i161, label %.thread297, label %.lr.ph.i.i.i.i.i.i162

.lr.ph.i.i.i.i.i.i162:                            ; preds = %bb.dj, %.lr.ph.i.i.i.i.i.i162
  %.06.i.i.i.i.i.i163 = phi i32 [ %i.qh, %.lr.ph.i.i.i.i.i.i162 ], [ 0, %bb.dj ]
  %.sroa.02.05.i.i.i.i.i.i164 = phi ptr [ %i.qg, %.lr.ph.i.i.i.i.i.i162 ], [ %i.qf, %bb.dj ]
  %i.qg = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i164) #27 ; 2 uses
  %i.qh = add i32 %.06.i.i.i.i.i.i163, 1          ; 2 uses
  %.not.i.i.i.i.i.i165 = icmp eq ptr %i.qg, %.sroa.0.0.copyload.i.i.i.i.i160
  br i1 %.not.i.i.i.i.i.i165, label %.thread297, label %.lr.ph.i.i.i.i.i.i162, !llvm.loop !524

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit, %bb.dh
  %.sink3.i.i167 = phi i64 [ 32, %bb.dh ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit ]
  %i.qi = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i167
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !46
  br label %bb.dl

bb.dk:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  %i.qk = load i32, ptr %i.j, align 8, !tbaa !270
  %i.ql = load i32, ptr %i.k, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178

bb.dl:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166
  %.ph295 = phi i32 [ -1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit ], [ %i.qj, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166 ] ; 2 uses
  switch i32 %i.qc, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178 [
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176
    i32 2, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176

.thread297:                                       ; preds = %.lr.ph.i.i.i.i.i.i162, %bb.dj, %bb.di
  %.ph295299 = phi i32 [ 0, %bb.di ], [ 0, %bb.dj ], [ %i.qh, %.lr.ph.i.i.i.i.i.i162 ] ; 3 uses
  %i.qm = load ptr, ptr %i.g, align 8, !tbaa !281 ; 2 uses
  %.not.i.i.i.i.i169 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i.i.i.i169, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %bb.dn

bb.dn:                                            ; preds = %.thread297
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i170 = load ptr, ptr %i.h, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i171 = icmp eq ptr %i.qo, %.sroa.0.0.copyload.i.i.i.i.i170
  br i1 %.not4.i.i.i.i.i.i171, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %.lr.ph.i.i.i.i.i.i172

.lr.ph.i.i.i.i.i.i172:                            ; preds = %bb.dn, %.lr.ph.i.i.i.i.i.i172
  %.06.i.i.i.i.i.i173 = phi i32 [ %i.qq, %.lr.ph.i.i.i.i.i.i172 ], [ 0, %bb.dn ]
  %.sroa.02.05.i.i.i.i.i.i174 = phi ptr [ %i.qp, %.lr.ph.i.i.i.i.i.i172 ], [ %i.qo, %bb.dn ]
  %i.qp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i174) #27 ; 2 uses
  %i.qq = add i32 %.06.i.i.i.i.i.i173, 1          ; 2 uses
  %.not.i.i.i.i.i.i175 = icmp eq ptr %i.qp, %.sroa.0.0.copyload.i.i.i.i.i170
  br i1 %.not.i.i.i.i.i.i175, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %.lr.ph.i.i.i.i.i.i172, !llvm.loop !525

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176: ; preds = %bb.dm, %bb.dl
  %.sink3.i.i177 = phi i64 [ 32, %bb.dm ], [ 8, %bb.dl ]
  %i.qr = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink3.i.i177
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178: ; preds = %.lr.ph.i.i.i.i.i.i172, %bb.dk, %bb.dl, %.thread297, %bb.dn, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176
  %i.qt = phi i32 [ %i.qk, %bb.dk ], [ %.ph295299, %bb.dn ], [ %.ph295, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176 ], [ %.ph295, %bb.dl ], [ %.ph295299, %.thread297 ], [ %.ph295299, %.lr.ph.i.i.i.i.i.i172 ]
  %i.qu = phi i32 [ %i.ql, %bb.dk ], [ 0, %bb.dn ], [ %i.qs, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176 ], [ -1, %bb.dl ], [ 0, %.thread297 ], [ %i.qq, %.lr.ph.i.i.i.i.i.i172 ]
  %i.qv = icmp eq i32 %i.qt, %i.qu
  br i1 %i.qv, label %bb.do, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.do:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178
  switch i32 %i.qc, label %.split301 [
    i32 0, label %.split300
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179
    i32 2, label %.split302
  ]

.split300:                                        ; preds = %bb.do
  %i.qw = load i32, ptr %i.k, align 8, !tbaa !270
  %.not336 = icmp eq i32 %i.qw, 512
  br i1 %.not336, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dp

.split302:                                        ; preds = %bb.do
  %i.qx = load i32, ptr %i.l, align 8, !tbaa !269
  %.not334 = icmp eq i32 %i.qx, 32768
  br i1 %.not334, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dt

.split301:                                        ; preds = %bb.do
  %i.qy = icmp eq i32 %i.qc, 3
  %i.qz = load ptr, ptr %i.g, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = load ptr, ptr %i.h, align 8
  %i.rc = icmp ne ptr %i.rb, %i.ra
  %i.rd = select i1 %i.qy, i1 %i.rc, i1 false
  br i1 %i.rd, label %bb.dt, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179: ; preds = %bb.do
  %i.re = load i32, ptr %i.m, align 8, !tbaa !268
  %.not335 = icmp eq i32 %i.re, 4096
  br i1 %.not335, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dq

bb.dp:                                            ; preds = %.split300
  %i.rf = load i32, ptr %i.j, align 8, !tbaa !270
  %i.rg = add i32 %i.rf, 1
  store i32 %i.rg, ptr %i.j, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.dq:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179
  %i.rh = load ptr, ptr %i.o, align 8, !tbaa !282 ; 2 uses
  %i.ri = load i32, ptr %i.n, align 8, !tbaa !268
  %i.rj = add i32 %i.ri, 1                        ; 4 uses
  %i.rk = lshr i32 %i.rj, 6                       ; 3 uses
  %i.rl = icmp ugt i32 %i.rj, 4095
  br i1 %i.rl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i185, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.rm = and i32 %i.rj, 63
  %i.rn = zext nneg i32 %i.rk to i64              ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %i.rn
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !283 ; 2 uses
  %i.rq = zext nneg i32 %i.rm to i64              ; 2 uses
  %i.rr = shl nuw i64 1, %i.rq
  %i.rs = and i64 %i.rp, %i.rr
  %.not.not.i.i.i.i.i.i180 = icmp eq i64 %i.rs, 0
  br i1 %.not.not.i.i.i.i.i.i180, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i185, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.rt = xor i64 %i.rp, -1
  %i.ru = shl nsw i64 -1, %i.rq
  %i.rv = and i64 %i.ru, %i.rt                    ; 2 uses
  %.not25.i.i.i.i.i.i181 = icmp eq i64 %i.rv, 0
  br i1 %.not25.i.i.i.i.i.i181, label %.lr.ph.i.i.i.i.i.i187.preheader, label %.critedge.i.i.i.i.i.i182

.lr.ph.i.i.i.i.i.i187.preheader:                  ; preds = %bb.ds
  %exitcond.not.i.i.i.i.i.i189579 = icmp eq i32 %i.rk, 63
  br i1 %exitcond.not.i.i.i.i.i.i189579, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i185, label %.lr.ph581

.lr.ph.i.i.i.i.i.i187:                            ; preds = %.lr.ph581
  %exitcond.not.i.i.i.i.i.i189 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i190, 63
  br i1 %exitcond.not.i.i.i.i.i.i189, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i185, label %.lr.ph581, !llvm.loop !1

.lr.ph581:                                        ; preds = %.lr.ph.i.i.i.i.i.i187.preheader, %.lr.ph.i.i.i.i.i.i187
  %indvars.iv.i.i.i.i.i.i188580 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i190, %.lr.ph.i.i.i.i.i.i187 ], [ %i.rn, %.lr.ph.i.i.i.i.i.i187.preheader ]
  %indvars.iv.next.i.i.i.i.i.i190 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i188580, 1 ; 4 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %indvars.iv.next.i.i.i.i.i.i190
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i.i.i191 = icmp eq i64 %i.rx, -1
  br i1 %.not.i.i.i.i.i.i191, label %.lr.ph.i.i.i.i.i.i187, label %.critedge.loopexit.i.i.i.i.i.i192, !llvm.loop !1

.critedge.loopexit.i.i.i.i.i.i192:                ; preds = %.lr.ph581
  %i.ry = xor i64 %i.rx, -1
  %i.rz = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i190 to i32
  br label %.critedge.i.i.i.i.i.i182

.critedge.i.i.i.i.i.i182:                         ; preds = %.critedge.loopexit.i.i.i.i.i.i192, %bb.ds
  %.016.lcssa.i.i.i.i.i.i183 = phi i32 [ %i.rk, %bb.ds ], [ %i.rz, %.critedge.loopexit.i.i.i.i.i.i192 ]
  %.0.lcssa.i.i.i.i.i.i184 = phi i64 [ %i.rv, %bb.ds ], [ %i.ry, %.critedge.loopexit.i.i.i.i.i.i192 ]
  %i.sa = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i183, 6
  %i.sb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i184, i1 true)
  %i.sc = trunc nuw nsw i64 %i.sb to i32
  %i.sd = or disjoint i32 %i.sa, %i.sc
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i185

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i185: ; preds = %.lr.ph.i.i.i.i.i.i187, %.lr.ph.i.i.i.i.i.i187.preheader, %.critedge.i.i.i.i.i.i182, %bb.dr, %bb.dq
  %.118.i.i.i.i.i.i186 = phi i32 [ 4096, %bb.dq ], [ %i.rj, %bb.dr ], [ %i.sd, %.critedge.i.i.i.i.i.i182 ], [ 4096, %.lr.ph.i.i.i.i.i.i187.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i187 ]
  store i32 %.118.i.i.i.i.i.i186, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.dt:                                            ; preds = %.split302, %.split301
  %i.se = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.qc) ; 0 uses
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge: ; preds = %bb.dt, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i185, %bb.dp, %.split302, %.split301, %.split300, %bb.br, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i150, %bb.bn, %.split291, %.split290, %.split289, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit143, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit144
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread, !llvm.loop !547

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread: ; preds = %bb.bt, %bb.bv, %bb.cc, %bb.cd, %bb.ce, %bb.ca, %bb.bw, %bb.by, %bb.bz, %bb.bu, %bb.bs, %.thread281, %bb.aq, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112
  %.promoted = load i32, ptr %i.c, align 8, !tbaa !267
  br label %bb.du

bb.du:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread
  %i.sf = phi i32 [ %.promoted, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread ], [ %i.wf, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221 ] ; 4 uses
  %.114 = phi i8 [ %.013, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221 ]
  %.1.not = phi i1 [ true, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread ], [ false, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221 ]
  switch i32 %i.sf, label %.split307 [
    i32 0, label %.split306
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194
    i32 2, label %.split308
  ]

.split306:                                        ; preds = %bb.du
  %i.sg = load i32, ptr %i.k, align 8, !tbaa !270
  %.not341 = icmp eq i32 %i.sg, 512
  br i1 %.not341, label %.split312, label %.critedge

.split308:                                        ; preds = %bb.du
  %i.sh = load i32, ptr %i.l, align 8, !tbaa !269
  %.not337 = icmp eq i32 %i.sh, 32768
  br i1 %.not337, label %.split314, label %.critedge

.split307:                                        ; preds = %bb.du
  %i.si = icmp eq i32 %i.sf, 3                    ; 3 uses
  %i.sj = load ptr, ptr %i.g, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.h, align 8
  %i.sm = icmp ne ptr %i.sl, %i.sk
  %i.sn = select i1 %i.si, i1 %i.sm, i1 false
  br i1 %i.sn, label %.critedge, label %.split313

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194: ; preds = %bb.du
  %i.so = load i32, ptr %i.m, align 8, !tbaa !268
  %.not339 = icmp eq i32 %i.so, 4096
  br i1 %.not339, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit, label %.critedge

.split312:                                        ; preds = %.split306
  %i.sp = load i32, ptr %i.j, align 8, !tbaa !270
  %.not342 = icmp eq i32 %i.sp, 512
  br i1 %.not342, label %.thread316.thread326, label %.critedge

.thread316.thread326:                             ; preds = %.split312
  store i32 1, ptr %i.c, align 8, !tbaa !267
  %i.sq = load ptr, ptr %i.z, align 8, !tbaa !282 ; 2 uses
  %i.sr = load i32, ptr %i.m, align 8, !tbaa !268
  %i.ss = add i32 %i.sr, 1                        ; 4 uses
  %i.st = lshr i32 %i.ss, 6                       ; 3 uses
  %i.su = icmp ugt i32 %i.ss, 4095
  br i1 %i.su, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i196, label %bb.dz

.split314:                                        ; preds = %.split308
  %i.sv = load i32, ptr %i.v, align 8, !tbaa !269
  %.not338 = icmp eq i32 %i.sv, 32768
  br i1 %.not338, label %.thread316.thread, label %.critedge

.split313:                                        ; preds = %.split307
  %i.sw = load ptr, ptr %i.e, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.f, align 8
  %i.sz = icmp ne ptr %i.sy, %i.sx
  %i.ta = select i1 %i.si, i1 %i.sz, i1 false
  br i1 %i.ta, label %.critedge, label %bb.dv

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit: ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194
  %i.tb = load i32, ptr %i.n, align 8, !tbaa !268
  %.not340 = icmp eq i32 %i.tb, 4096
  br i1 %.not340, label %.thread316.thread, label %.critedge

bb.dv:                                            ; preds = %.split313
  br i1 %i.si, label %.critedge.thread, label %.thread316

.thread316.thread:                                ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit, %.split314
  %i.tc = add nuw nsw i32 %i.sf, 1                ; 2 uses
  store i32 %i.tc, ptr %i.c, align 8, !tbaa !267
  br label %bb.eb

.thread316:                                       ; preds = %bb.dv
  %i.td = add i32 %i.sf, 1                        ; 3 uses
  store i32 %i.td, ptr %i.c, align 8, !tbaa !267
  %cond = icmp eq i32 %i.td, 0
  br i1 %cond, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %.thread316
  %i.te = load ptr, ptr %i.aa, align 8, !tbaa !284 ; 8 uses
  %i.tf = load i32, ptr %i.k, align 8, !tbaa !270
  %i.tg = add i32 %i.tf, 1                        ; 4 uses
  %i.th = lshr i32 %i.tg, 6                       ; 3 uses
  %i.ti = icmp ugt i32 %i.tg, 511
  br i1 %i.ti, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.tj = and i32 %i.tg, 63
  %i.tk = zext nneg i32 %i.th to i64              ; 8 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.tk
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !283 ; 2 uses
  %i.tn = zext nneg i32 %i.tj to i64              ; 2 uses
  %i.to = shl nuw i64 1, %i.tn
  %i.tp = and i64 %i.tm, %i.to
  %.not.i.i.i.i.i208 = icmp eq i64 %i.tp, 0
  br i1 %.not.i.i.i.i.i208, label %bb.dy, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209

bb.dy:                                            ; preds = %bb.dx
  %i.tq = shl nsw i64 -1, %i.tn
  %i.tr = and i64 %i.tm, %i.tq                    ; 2 uses
  %.not2226.i.i.i.i.i211 = icmp eq i64 %i.tr, 0
  br i1 %.not2226.i.i.i.i.i211, label %.lr.ph.i.i.i.i.i215.preheader, label %.critedge.i.i.i.i.i212

.lr.ph.i.i.i.i.i215.preheader:                    ; preds = %bb.dy
  %exitcond.not.i.i.i.i.i217600 = icmp eq i32 %i.th, 7
  br i1 %exitcond.not.i.i.i.i.i217600, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209, label %.lr.ph602

.lr.ph.i.i.i.i.i215:                              ; preds = %.lr.ph602
  %exitcond.not.i.i.i.i.i217 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218, 7
  br i1 %exitcond.not.i.i.i.i.i217, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.1

.lr.ph602.1:                                      ; preds = %.lr.ph.i.i.i.i.i215
  %indvars.iv.next.i.i.i.i.i218.1 = add nuw nsw i64 %i.tk, 2 ; 3 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.1
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.1 = icmp eq i64 %i.tt, 0
  br i1 %.not22.i.i.i.i.i219.1, label %.lr.ph.i.i.i.i.i215.1, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.1:                            ; preds = %.lr.ph602.1
  %exitcond.not.i.i.i.i.i217.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.1, 7
  br i1 %exitcond.not.i.i.i.i.i217.1, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.2

.lr.ph602.2:                                      ; preds = %.lr.ph.i.i.i.i.i215.1
  %indvars.iv.next.i.i.i.i.i218.2 = add nuw nsw i64 %i.tk, 3 ; 3 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.2
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.2 = icmp eq i64 %i.tv, 0
  br i1 %.not22.i.i.i.i.i219.2, label %.lr.ph.i.i.i.i.i215.2, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.2:                            ; preds = %.lr.ph602.2
  %exitcond.not.i.i.i.i.i217.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.2, 7
  br i1 %exitcond.not.i.i.i.i.i217.2, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.3

.lr.ph602.3:                                      ; preds = %.lr.ph.i.i.i.i.i215.2
  %indvars.iv.next.i.i.i.i.i218.3 = add nuw nsw i64 %i.tk, 4 ; 3 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.3
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.3 = icmp eq i64 %i.tx, 0
  br i1 %.not22.i.i.i.i.i219.3, label %.lr.ph.i.i.i.i.i215.3, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.3:                            ; preds = %.lr.ph602.3
  %exitcond.not.i.i.i.i.i217.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.3, 7
  br i1 %exitcond.not.i.i.i.i.i217.3, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.4

.lr.ph602.4:                                      ; preds = %.lr.ph.i.i.i.i.i215.3
  %indvars.iv.next.i.i.i.i.i218.4 = add nuw nsw i64 %i.tk, 5 ; 3 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.4
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.4 = icmp eq i64 %i.tz, 0
  br i1 %.not22.i.i.i.i.i219.4, label %.lr.ph.i.i.i.i.i215.4, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.4:                            ; preds = %.lr.ph602.4
  %exitcond.not.i.i.i.i.i217.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.4, 7
  br i1 %exitcond.not.i.i.i.i.i217.4, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.5

.lr.ph602.5:                                      ; preds = %.lr.ph.i.i.i.i.i215.4
  %indvars.iv.next.i.i.i.i.i218.5 = add nuw nsw i64 %i.tk, 6 ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.5
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.5 = icmp eq i64 %i.ub, 0
  br i1 %.not22.i.i.i.i.i219.5, label %.lr.ph.i.i.i.i.i215.5, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.5:                            ; preds = %.lr.ph602.5
  %exitcond.not.i.i.i.i.i217.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.5, 7
  br i1 %exitcond.not.i.i.i.i.i217.5, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.6

.lr.ph602.6:                                      ; preds = %.lr.ph.i.i.i.i.i215.5
  %indvars.iv.next.i.i.i.i.i218.6 = add nuw nsw i64 %i.tk, 7 ; 2 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.6
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.6 = icmp eq i64 %i.ud, 0
  br i1 %.not22.i.i.i.i.i219.6, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph602:                                        ; preds = %.lr.ph.i.i.i.i.i215.preheader
  %indvars.iv.next.i.i.i.i.i218 = add nuw nsw i64 %i.tk, 1 ; 3 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219 = icmp eq i64 %i.uf, 0
  br i1 %.not22.i.i.i.i.i219, label %.lr.ph.i.i.i.i.i215, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.critedge.loopexit.i.i.i.i.i220:                  ; preds = %.lr.ph602.6, %.lr.ph602.5, %.lr.ph602.4, %.lr.ph602.3, %.lr.ph602.2, %.lr.ph602.1, %.lr.ph602
  %indvars.iv.next.i.i.i.i.i218.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i.i218, %.lr.ph602 ], [ %indvars.iv.next.i.i.i.i.i218.1, %.lr.ph602.1 ], [ %indvars.iv.next.i.i.i.i.i218.2, %.lr.ph602.2 ], [ %indvars.iv.next.i.i.i.i.i218.3, %.lr.ph602.3 ], [ %indvars.iv.next.i.i.i.i.i218.4, %.lr.ph602.4 ], [ %indvars.iv.next.i.i.i.i.i218.5, %.lr.ph602.5 ], [ %indvars.iv.next.i.i.i.i.i218.6, %.lr.ph602.6 ]
  %.lcssa651 = phi i64 [ %i.uf, %.lr.ph602 ], [ %i.tt, %.lr.ph602.1 ], [ %i.tv, %.lr.ph602.2 ], [ %i.tx, %.lr.ph602.3 ], [ %i.tz, %.lr.ph602.4 ], [ %i.ub, %.lr.ph602.5 ], [ %i.ud, %.lr.ph602.6 ]
  %i.ug = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i218.lcssa to i32
  br label %.critedge.i.i.i.i.i212

.critedge.i.i.i.i.i212:                           ; preds = %.critedge.loopexit.i.i.i.i.i220, %bb.dy
  %.016.lcssa.i.i.i.i.i213 = phi i32 [ %i.th, %bb.dy ], [ %i.ug, %.critedge.loopexit.i.i.i.i.i220 ]
  %.0.lcssa.i.i.i.i.i214 = phi i64 [ %i.tr, %bb.dy ], [ %.lcssa651, %.critedge.loopexit.i.i.i.i.i220 ]
  %i.uh = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i213, 6
  %i.ui = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i214, i1 true)
  %i.uj = trunc nuw nsw i64 %i.ui to i32
  %i.uk = or disjoint i32 %i.uh, %i.uj
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209: ; preds = %.lr.ph.i.i.i.i.i215, %.lr.ph.i.i.i.i.i215.1, %.lr.ph.i.i.i.i.i215.2, %.lr.ph.i.i.i.i.i215.3, %.lr.ph.i.i.i.i.i215.4, %.lr.ph.i.i.i.i.i215.5, %.lr.ph602.6, %.lr.ph.i.i.i.i.i215.preheader, %.critedge.i.i.i.i.i212, %bb.dx, %bb.dw
  %.118.i.i.i.i.i210 = phi i32 [ 512, %bb.dw ], [ %i.tg, %bb.dx ], [ %i.uk, %.critedge.i.i.i.i.i212 ], [ 512, %.lr.ph.i.i.i.i.i215.preheader ], [ 512, %.lr.ph602.6 ], [ 512, %.lr.ph.i.i.i.i.i215.5 ], [ 512, %.lr.ph.i.i.i.i.i215.4 ], [ 512, %.lr.ph.i.i.i.i.i215.3 ], [ 512, %.lr.ph.i.i.i.i.i215.2 ], [ 512, %.lr.ph.i.i.i.i.i215.1 ], [ 512, %.lr.ph.i.i.i.i.i215 ]
  store i32 %.118.i.i.i.i.i210, ptr %i.k, align 8, !tbaa !270
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221

bb.dz:                                            ; preds = %.thread316.thread326
  %i.ul = and i32 %i.ss, 63
  %i.um = zext nneg i32 %i.st to i64              ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.um
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !283 ; 2 uses
  %i.up = zext nneg i32 %i.ul to i64              ; 2 uses
  %i.uq = shl nuw i64 1, %i.up
  %i.ur = and i64 %i.uo, %i.uq
  %.not.i.i.i.i.i.i195 = icmp eq i64 %i.ur, 0
  br i1 %.not.i.i.i.i.i.i195, label %bb.ea, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i196

bb.ea:                                            ; preds = %bb.dz
  %i.us = shl nsw i64 -1, %i.up
  %i.ut = and i64 %i.uo, %i.us                    ; 2 uses
  %.not2226.i.i.i.i.i.i198 = icmp eq i64 %i.ut, 0
  br i1 %.not2226.i.i.i.i.i.i198, label %.lr.ph.i.i.i.i.i.i202.preheader, label %.critedge.i.i.i.i.i.i199

.lr.ph.i.i.i.i.i.i202.preheader:                  ; preds = %bb.ea
  %exitcond.not.i.i.i.i.i.i204594 = icmp eq i32 %i.st, 63
  br i1 %exitcond.not.i.i.i.i.i.i204594, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i196, label %.lr.ph596

.lr.ph.i.i.i.i.i.i202:                            ; preds = %.lr.ph596
  %exitcond.not.i.i.i.i.i.i204 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i205, 63
  br i1 %exitcond.not.i.i.i.i.i.i204, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i196, label %.lr.ph596, !llvm.loop !3

.lr.ph596:                                        ; preds = %.lr.ph.i.i.i.i.i.i202.preheader, %.lr.ph.i.i.i.i.i.i202
  %indvars.iv.i.i.i.i.i.i203595 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i205, %.lr.ph.i.i.i.i.i.i202 ], [ %i.um, %.lr.ph.i.i.i.i.i.i202.preheader ]
  %indvars.iv.next.i.i.i.i.i.i205 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i203595, 1 ; 4 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %indvars.iv.next.i.i.i.i.i.i205
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i.i206 = icmp eq i64 %i.uv, 0
  br i1 %.not22.i.i.i.i.i.i206, label %.lr.ph.i.i.i.i.i.i202, label %.critedge.loopexit.i.i.i.i.i.i207, !llvm.loop !3

.critedge.loopexit.i.i.i.i.i.i207:                ; preds = %.lr.ph596
  %i.uw = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i205 to i32
  br label %.critedge.i.i.i.i.i.i199

.critedge.i.i.i.i.i.i199:                         ; preds = %.critedge.loopexit.i.i.i.i.i.i207, %bb.ea
  %.016.lcssa.i.i.i.i.i.i200 = phi i32 [ %i.st, %bb.ea ], [ %i.uw, %.critedge.loopexit.i.i.i.i.i.i207 ]
  %.0.lcssa.i.i.i.i.i.i201 = phi i64 [ %i.ut, %bb.ea ], [ %i.uv, %.critedge.loopexit.i.i.i.i.i.i207 ]
  %i.ux = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i200, 6
  %i.uy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i201, i1 true)
  %i.uz = trunc nuw nsw i64 %i.uy to i32
  %i.va = or disjoint i32 %i.ux, %i.uz
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i196

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i196: ; preds = %.lr.ph.i.i.i.i.i.i202, %.lr.ph.i.i.i.i.i.i202.preheader, %.critedge.i.i.i.i.i.i199, %bb.dz, %.thread316.thread326
  %.118.i.i.i.i.i.i197 = phi i32 [ 4096, %.thread316.thread326 ], [ %i.ss, %bb.dz ], [ %i.va, %.critedge.i.i.i.i.i.i199 ], [ 4096, %.lr.ph.i.i.i.i.i.i202.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i202 ]
  store i32 %.118.i.i.i.i.i.i197, ptr %i.m, align 8, !tbaa !268
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221

bb.eb:                                            ; preds = %.thread316, %.thread316.thread
  %i.vb = phi i32 [ %i.tc, %.thread316.thread ], [ %i.td, %.thread316 ] ; 2 uses
  switch i32 %i.vb, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221 [
    i32 2, label %bb.ec
    i32 3, label %bb.ef
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.vc = load ptr, ptr %i.y, align 8, !tbaa !285 ; 2 uses
  %i.vd = load i32, ptr %i.l, align 8, !tbaa !269
  %i.ve = add i32 %i.vd, 1                        ; 4 uses
  %i.vf = lshr i32 %i.ve, 6                       ; 3 uses
  %i.vg = icmp ugt i32 %i.ve, 32767
  br i1 %i.vg, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE4nextEv.exit.i247, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vh = and i32 %i.ve, 63
  %i.vi = zext nneg i32 %i.vf to i64              ; 2 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.vi
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !283 ; 2 uses
  %i.vl = zext nneg i32 %i.vh to i64              ; 2 uses
  %i.vm = shl nuw i64 1, %i.vl
  %i.vn = and i64 %i.vk, %i.vm
  %.not.i.i.i.i.i246 = icmp eq i64 %i.vn, 0
  br i1 %.not.i.i.i.i.i246, label %bb.ee, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE4nextEv.exit.i247

bb.ee:                                            ; preds = %bb.ed
  %i.vo = shl nsw i64 -1, %i.vl
  %i.vp = and i64 %i.vk, %i.vo                    ; 2 uses
  %.not2226.i.i.i.i.i249 = icmp eq i64 %i.vp, 0
  br i1 %.not2226.i.i.i.i.i249, label %.lr.ph.i.i.i.i.i253.preheader, label %.critedge.i.i.i.i.i250

.lr.ph.i.i.i.i.i253.preheader:                    ; preds = %bb.ee
  %exitcond.not.i.i.i.i.i255597 = icmp eq i32 %i.vf, 511
  br i1 %exitcond.not.i.i.i.i.i255597, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE4nextEv.exit.i247, label %.lr.ph599

.lr.ph.i.i.i.i.i253:                              ; preds = %.lr.ph599
  %exitcond.not.i.i.i.i.i255 = icmp eq i64 %indvars.iv.next.i.i.i.i.i256, 511
  br i1 %exitcond.not.i.i.i.i.i255, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE4nextEv.exit.i247, label %.lr.ph599, !llvm.loop !4

.lr.ph599:                                        ; preds = %.lr.ph.i.i.i.i.i253.preheader, %.lr.ph.i.i.i.i.i253
  %indvars.iv.i.i.i.i.i254598 = phi i64 [ %indvars.iv.next.i.i.i.i.i256, %.lr.ph.i.i.i.i.i253 ], [ %i.vi, %.lr.ph.i.i.i.i.i253.preheader ]
  %indvars.iv.next.i.i.i.i.i256 = add nuw nsw i64 %indvars.iv.i.i.i.i.i254598, 1 ; 4 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.next.i.i.i.i.i256
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i257 = icmp eq i64 %i.vr, 0
  br i1 %.not22.i.i.i.i.i257, label %.lr.ph.i.i.i.i.i253, label %.critedge.loopexit.i.i.i.i.i258, !llvm.loop !4

.critedge.loopexit.i.i.i.i.i258:                  ; preds = %.lr.ph599
  %i.vs = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i256 to i32
  br label %.critedge.i.i.i.i.i250

.critedge.i.i.i.i.i250:                           ; preds = %.critedge.loopexit.i.i.i.i.i258, %bb.ee
  %.016.lcssa.i.i.i.i.i251 = phi i32 [ %i.vf, %bb.ee ], [ %i.vs, %.critedge.loopexit.i.i.i.i.i258 ]
  %.0.lcssa.i.i.i.i.i252 = phi i64 [ %i.vp, %bb.ee ], [ %i.vr, %.critedge.loopexit.i.i.i.i.i258 ]
  %i.vt = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i251, 6
  %i.vu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i252, i1 true)
  %i.vv = trunc nuw nsw i64 %i.vu to i32
  %i.vw = or disjoint i32 %i.vt, %i.vv
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE4nextEv.exit.i247

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE4nextEv.exit.i247: ; preds = %.lr.ph.i.i.i.i.i253, %.lr.ph.i.i.i.i.i253.preheader, %.critedge.i.i.i.i.i250, %bb.ed, %bb.ec
  %.118.i.i.i.i.i248 = phi i32 [ 32768, %bb.ec ], [ %i.ve, %bb.ed ], [ %i.vw, %.critedge.i.i.i.i.i250 ], [ 32768, %.lr.ph.i.i.i.i.i253.preheader ], [ 32768, %.lr.ph.i.i.i.i.i253 ]
  store i32 %.118.i.i.i.i.i248, ptr %i.l, align 8, !tbaa !269
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221

bb.ef:                                            ; preds = %bb.eb
  %i.vx = load ptr, ptr %i.g, align 8, !tbaa !281
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 8 ; 3 uses
  %i.vz = load ptr, ptr %i.h, align 8, !tbaa !286 ; 3 uses
  %.not.i.i.i.i239 = icmp eq ptr %i.vz, %i.vy
  br i1 %.not.i.i.i.i239, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.wa = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.vz) #27 ; 2 uses
  store ptr %i.wa, ptr %i.h, align 8, !tbaa !286
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.promoted.i.i.i.i.i240 = phi ptr [ %i.wa, %bb.eg ], [ %i.vz, %bb.ef ] ; 2 uses
  %.not2.i.i.i.i.i241 = icmp eq ptr %.promoted.i.i.i.i.i240, %i.vy
  br i1 %.not2.i.i.i.i.i241, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221, label %.lr.ph.i.i.i.i2.i242

.lr.ph.i.i.i.i2.i242:                             ; preds = %bb.eh, %bb.ei
  %i.wb = phi ptr [ %i.we, %bb.ei ], [ %.promoted.i.i.i.i.i240, %bb.eh ] ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 48
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !291
  %.not1.i.i.i.i.i243 = icmp eq ptr %i.wd, null
  br i1 %.not1.i.i.i.i.i243, label %bb.ei, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221

bb.ei:                                            ; preds = %.lr.ph.i.i.i.i2.i242
  %i.we = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.wb) #27 ; 3 uses
  store ptr %i.we, ptr %i.h, align 8, !tbaa !286
  %.not.i.i.i.i3.i245 = icmp eq ptr %i.we, %i.vy
  br i1 %.not.i.i.i.i3.i245, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221, label %.lr.ph.i.i.i.i2.i242, !llvm.loop !5

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221: ; preds = %.lr.ph.i.i.i.i2.i242, %bb.ei, %bb.eh, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE4nextEv.exit.i247, %bb.eb, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i196
  %i.wf = phi i32 [ 1, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i196 ], [ 3, %bb.eh ], [ 2, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE4nextEv.exit.i247 ], [ %i.vb, %bb.eb ], [ 0, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit.i209 ], [ 3, %bb.ei ], [ 3, %.lr.ph.i.i.i.i2.i242 ]
  br label %bb.du, !llvm.loop !548

.critedge:                                        ; preds = %.split314, %.split313, %.split312, %.split308, %.split307, %.split306, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194
  %.lcssa656 = phi i32 [ 2, %.split314 ], [ 3, %.split313 ], [ 0, %.split312 ], [ 2, %.split308 ], [ 3, %.split307 ], [ 0, %.split306 ], [ 1, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit ], [ 1, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194 ]
  br i1 %.1.not, label %.critedge.thread, label %bb.b

.critedge.thread:                                 ; preds = %bb.r, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92, %.critedge, %bb.dv
  %.116.mux325 = phi i1 [ false, %bb.dv ], [ true, %.critedge ], [ true, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92 ], [ true, %bb.r ]
  ret i1 %.116.mux325
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !284  ; 8 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !270
  %i.e = add i32 %i.d, 1                          ; 4 uses
  %i.f = lshr i32 %i.e, 6                         ; 3 uses
  %i.g = icmp ugt i32 %i.e, 511
  br i1 %i.g, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.e, 63
  %i.i = zext nneg i32 %i.f to i64                ; 8 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !283  ; 2 uses
  %i.l = zext nneg i32 %i.h to i64                ; 2 uses
  %i.m = shl nuw i64 1, %i.l
  %i.n = and i64 %i.k, %i.m
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit

bb.d:                                             ; preds = %bb.c
  %i.o = shl nsw i64 -1, %i.l
  %i.p = and i64 %i.k, %i.o                       ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %exitcond.not.i.i.i.i13 = icmp eq i32 %i.f, 7
  br i1 %exitcond.not.i.i.i.i13, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit, label %.lr.ph15

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph15
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit, label %.lr.ph15.1

.lr.ph15.1:                                       ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.i, 2 ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.1
  %i.r = load i64, ptr %i.q, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.r, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph15.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit, label %.lr.ph15.2

.lr.ph15.2:                                       ; preds = %.lr.ph.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.i, 3 ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.2
  %i.t = load i64, ptr %i.s, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.t, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph15.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit, label %.lr.ph15.3

.lr.ph15.3:                                       ; preds = %.lr.ph.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.i, 4 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.3
  %i.v = load i64, ptr %i.u, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.v, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph15.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit, label %.lr.ph15.4

.lr.ph15.4:                                       ; preds = %.lr.ph.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.i, 5 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.4
  %i.x = load i64, ptr %i.w, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.x, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph15.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit, label %.lr.ph15.5

.lr.ph15.5:                                       ; preds = %.lr.ph.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.i, 6 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.5
  %i.z = load i64, ptr %i.y, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.z, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph15.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit, label %.lr.ph15.6

.lr.ph15.6:                                       ; preds = %.lr.ph.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.i, 7 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.6
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.ab, 0
  br i1 %.not22.i.i.i.i.6, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph15:                                         ; preds = %.lr.ph.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.i, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph15.6, %.lr.ph15.5, %.lr.ph15.4, %.lr.ph15.3, %.lr.ph15.2, %.lr.ph15.1, %.lr.ph15
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph15 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph15.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph15.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph15.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph15.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph15.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph15.6 ]
  %.lcssa = phi i64 [ %i.ad, %.lr.ph15 ], [ %i.r, %.lr.ph15.1 ], [ %i.t, %.lr.ph15.2 ], [ %i.v, %.lr.ph15.3 ], [ %i.x, %.lr.ph15.4 ], [ %i.z, %.lr.ph15.5 ], [ %i.ab, %.lr.ph15.6 ]
  %i.ae = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.d
  %.016.lcssa.i.i.i.i = phi i32 [ %i.f, %bb.d ], [ %i.ae, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.af = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEE4nextEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %.lr.ph15.6, %.lr.ph.i.i.i.i.preheader, %bb.b, %bb.c, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ 512, %bb.b ], [ %i.e, %bb.c ], [ %i.ai, %.critedge.i.i.i.i ], [ 512, %.lr.ph.i.i.i.i.preheader ], [ 512, %.lr.ph15.6 ], [ 512, %.lr.ph.i.i.i.i.5 ], [ 512, %.lr.ph.i.i.i.i.4 ], [ 512, %.lr.ph.i.i.i.i.3 ], [ 512, %.lr.ph.i.i.i.i.2 ], [ 512, %.lr.ph.i.i.i.i.1 ], [ 512, %.lr.ph.i.i.i.i ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.a, align 8, !tbaa !270
  %i.aj = icmp ne i32 %.118.i.i.i.i, 512
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE4nextEj.exit

bb.e:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !282 ; 2 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !268
  %i.ao = add i32 %i.an, 1                        ; 4 uses
  %i.ap = lshr i32 %i.ao, 6                       ; 3 uses
  %i.aq = icmp ugt i32 %i.ao, 4095
  br i1 %i.aq, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = and i32 %i.ao, 63
  %i.as = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !283 ; 2 uses
  %i.av = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = and i64 %i.au, %i.aw
  %.not.i.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ay = shl nsw i64 -1, %i.av
  %i.az = and i64 %i.au, %i.ay                    ; 2 uses
  %.not2226.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not2226.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %exitcond.not.i.i.i.i.i11 = icmp eq i32 %i.ap, 63
  br i1 %exitcond.not.i.i.i.i.i11, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i, label %.lr.ph

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i, label %.lr.ph, !llvm.loop !3

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i12 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.as, %.lr.ph.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i12, 1 ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.i.i.i.i.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !3

.critedge.loopexit.i.i.i.i.i:                     ; preds = %.lr.ph
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.g
  %.016.lcssa.i.i.i.i.i = phi i32 [ %i.ap, %bb.g ], [ %i.bc, %.critedge.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.az, %bb.g ], [ %i.bb, %.critedge.loopexit.i.i.i.i.i ]
  %i.bd = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i, 6
  %i.be = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %.critedge.i.i.i.i.i, %bb.f, %bb.e
  %.118.i.i.i.i.i = phi i32 [ 4096, %bb.e ], [ %i.ao, %bb.f ], [ %i.bg, %.critedge.i.i.i.i.i ], [ 4096, %.lr.ph.i.i.i.i.i.preheader ], [ 4096, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i32 %.118.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !268
  %i.bh = icmp ne i32 %.118.i.i.i.i.i, 4096
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_15MatMulNormalizeEEclERNS4_13IteratorRangeISS_EE:bb.a

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit: ; preds = %bb.b
  %i.v = load i32, ptr %i.c, align 8, !tbaa !270
  %.not7 = icmp eq i32 %i.v, 512
  br i1 %.not7, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %.split5, %.split4, %.split, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !620, !nonnull !272, !align !273
  tail call void @_ZNK7openvdb5v13_05tools15MatMulNormalizeclINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(128) %i.w, ptr noundef nonnull align 8 dereferenceable(272) %1)
  %i.x = load i64, ptr %i.d, align 8, !tbaa !394  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.x, 0
  br i1 %.not3.i.i, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.d, align 8, !tbaa !394
  %i.z = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.critedge.backedge.i.i.i.i
  %i.aa = load i32, ptr %i.g, align 8, !tbaa !395 ; 2 uses
  %i.ab = load i32, ptr %i.l, align 4, !tbaa !397
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.critedge.backedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = load i32, ptr %i.k, align 8, !tbaa !168
  %i.ae = icmp sgt i32 %i.aa, %i.ad
  br i1 %i.ae, label %.critedge.backedge.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit

.critedge.backedge.i.i.i.i:                       ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.af = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit, !llvm.loop !20

_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit: ; preds = %bb.e, %.critedge.backedge.i.i.i.i, %bb.d
  %.pre = load i64, ptr %i.d, align 8, !tbaa !394
  %i.ag = icmp eq i64 %.pre, 0
  br i1 %i.ag, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit.thread, label %bb.b, !llvm.loop !619

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit.thread: ; preds = %bb.c, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit, %.split, %.split4, %.split5, %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"class.openvdb::v13_0::tree::TreeValueIteratorBase.163", align 8 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef nonnull align 8 dereferenceable(272) %0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.u = load <2 x i32>, ptr %i.s, align 8, !tbaa !46
  %i.v = load i32, ptr %i.s, align 8, !tbaa !395
  store <2 x i32> %i.u, ptr %i.r, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.y = load i32, ptr %i.x, align 8, !tbaa !168
  store i32 %i.y, ptr %i.w, align 8, !tbaa !168
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !169
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !169
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr null, ptr %i.ac, align 8, !tbaa !170
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %1, ptr %i.ad, align 8, !tbaa !171
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !172
  store ptr %i.c, ptr %i.g, align 8, !tbaa !173
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.h, ptr %i.af, align 8, !tbaa !174
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.j, ptr %i.ag, align 8, !tbaa !175
  store ptr %i.l, ptr %i.p, align 8, !tbaa !176
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit, %bb.a
  %i.al = phi i32 [ %i.v, %bb.a ], [ %.pre, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.av, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit ] ; 2 uses
  switch i32 %i.al, label %.split2 [
    i32 0, label %.split
    i32 1, label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE4testEv.exit
    i32 2, label %.split3
  ]

.split:                                           ; preds = %bb.b
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !270
  %.not6 = icmp eq i32 %i.am, 512
  br i1 %.not6, label %bb.c, label %bb.d

.split3:                                          ; preds = %bb.b
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !269
  %.not = icmp eq i32 %i.an, 32768
  br i1 %.not, label %bb.c, label %bb.d

.split2:                                          ; preds = %bb.b
  %i.ao = icmp eq i32 %i.al, 3
  %i.ap = load ptr, ptr %i.n, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.ak, align 8
  %i.as = icmp ne ptr %i.ar, %i.aq
  %i.at = select i1 %i.ao, i1 %i.as, i1 false
  br i1 %i.at, label %bb.d, label %bb.c

_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE4testEv.exit: ; preds = %bb.b
  %i.au = load i32, ptr %i.ai, align 8, !tbaa !268
  %.not5 = icmp eq i32 %i.au, 4096
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split3, %.split2, %.split, %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE4testEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i64 %.0

bb.d:                                             ; preds = %.split3, %.split2, %.split, %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE4testEv.exit
  %i.av = add i64 %.0, 1
  %i.aw = call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(272) %1, i1 noundef zeroext false)
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit

.lr.ph.i.i:                                       ; preds = %bb.d, %.critedge.backedge.i.i
  %i.ax = load i32, ptr %i.r, align 8, !tbaa !395 ; 2 uses
  %i.ay = load i32, ptr %i.t, align 4, !tbaa !397
  %i.az = icmp slt i32 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.w, align 8
  %i.bb = icmp sgt i32 %i.ax, %i.ba
  %or.cond = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond, label %.critedge.backedge.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit

.critedge.backedge.i.i:                           ; preds = %.lr.ph.i.i
  %i.bc = call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(272) %1, i1 noundef zeroext false)
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit, !llvm.loop !20

_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit: ; preds = %.lr.ph.i.i, %.critedge.backedge.i.i, %bb.d
  %.pre = load i32, ptr %i.r, align 8, !tbaa !395
  br label %bb.b, !llvm.loop !621
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 19 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i32, ptr %i.c, align 8, !tbaa !395
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %i.ab = phi i32 [ %.pre, %bb.a ], [ %.lcssa656, %.critedge ] ; 7 uses
  %.013 = phi i8 [ %i.a, %bb.a ], [ %.114, %.critedge ] ; 3 uses
  switch i32 %i.ab, label %bb.g [
    i32 0, label %bb.f
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i

bb.d:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !398 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi i32 [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.e ]
  %.sroa.02.05.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %bb.e ]
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i) #27 ; 2 uses
  %i.ag = add i32 %.06.i.i.i.i.i.i, 1             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !622

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i: ; preds = %bb.b, %bb.c
  %.sink3.i.i = phi i64 [ 32, %bb.c ], [ 8, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !46
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !270
  %i.ak = load i32, ptr %i.k, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit

bb.g:                                             ; preds = %bb.b, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i
  %.ph = phi i32 [ -1, %bb.b ], [ %i.ai, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i ] ; 2 uses
  switch i32 %i.ab, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit [
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i

.thread:                                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e, %bb.d
  %.ph261 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !399 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i24, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i25 = load ptr, ptr %i.h, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i26 = icmp eq ptr %i.an, %.sroa.0.0.copyload.i.i.i.i.i25
  br i1 %.not4.i.i.i.i.i.i26, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit, label %.lr.ph.i.i.i.i.i.i27

.lr.ph.i.i.i.i.i.i27:                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i27
  %.06.i.i.i.i.i.i28 = phi i32 [ %i.ap, %.lr.ph.i.i.i.i.i.i27 ], [ 0, %bb.i ]
  %.sroa.02.05.i.i.i.i.i.i29 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i27 ], [ %i.an, %bb.i ]
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i29) #27 ; 2 uses
  %i.ap = add i32 %.06.i.i.i.i.i.i28, 1           ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.ao, %.sroa.0.0.copyload.i.i.i.i.i25
  br i1 %.not.i.i.i.i.i.i30, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit, label %.lr.ph.i.i.i.i.i.i27, !llvm.loop !623

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i: ; preds = %bb.h, %bb.g
  %.sink3.i.i31 = phi i64 [ 32, %bb.h ], [ 8, %bb.g ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink3.i.i31
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit: ; preds = %.lr.ph.i.i.i.i.i.i27, %bb.f, %bb.g, %.thread, %bb.i, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i
  %i.as = phi i32 [ %i.aj, %bb.f ], [ %.ph261, %bb.i ], [ %.ph, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i ], [ %.ph, %bb.g ], [ %.ph261, %.thread ], [ %.ph261, %.lr.ph.i.i.i.i.i.i27 ] ; 6 uses
  %i.at = phi i32 [ %i.ak, %bb.f ], [ 0, %bb.i ], [ %i.ar, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i ], [ -1, %bb.g ], [ 0, %.thread ], [ %i.ap, %.lr.ph.i.i.i.i.i.i27 ] ; 4 uses
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.j, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit
  switch i32 %i.ab, label %.split262 [
    i32 0, label %.split
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit
    i32 2, label %.split263
  ]

.split:                                           ; preds = %bb.j
  %i.av = load i32, ptr %i.k, align 8, !tbaa !270
  %.not328 = icmp eq i32 %i.av, 512
  br i1 %.not328, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread

.split263:                                        ; preds = %bb.j
  %i.aw = load i32, ptr %i.l, align 8, !tbaa !269
  %.not = icmp eq i32 %i.aw, 32768
  br i1 %.not, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit

.split262:                                        ; preds = %bb.j
  %i.ax = icmp eq i32 %i.ab, 3
  %i.ay = load ptr, ptr %i.g, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.h, align 8
  %i.bb = icmp ne ptr %i.ba, %i.az
  %i.bc = select i1 %i.ax, i1 %i.bb, i1 false
  br i1 %i.bc, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit: ; preds = %bb.j
  %i.bd = load i32, ptr %i.m, align 8, !tbaa !268
  %.not327 = icmp eq i32 %i.bd, 4096
  br i1 %.not327, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %bb.k

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread: ; preds = %.split
  %i.be = load i32, ptr %i.j, align 8, !tbaa !270
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.j, align 8, !tbaa !270
  br label %bb.n

bb.k:                                             ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !282 ; 2 uses
  %i.bh = load i32, ptr %i.n, align 8, !tbaa !268
  %i.bi = add i32 %i.bh, 1                        ; 4 uses
  %i.bj = lshr i32 %i.bi, 6                       ; 3 uses
  %i.bk = icmp ugt i32 %i.bi, 4095
  br i1 %i.bk, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = and i32 %i.bi, 63
  %i.bm = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !283 ; 2 uses
  %i.bp = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = and i64 %i.bo, %i.bq
  %.not.not.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = xor i64 %i.bo, -1
  %i.bt = shl nsw i64 -1, %i.bp
  %i.bu = and i64 %i.bt, %i.bs                    ; 2 uses
  %.not25.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not25.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i32.preheader, label %.critedge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i32.preheader:                   ; preds = %bb.m
  %exitcond.not.i.i.i.i.i.i571 = icmp eq i32 %i.bj, 63
  br i1 %exitcond.not.i.i.i.i.i.i571, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, label %.lr.ph

.lr.ph.i.i.i.i.i.i32:                             ; preds = %.lr.ph
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i32.preheader, %.lr.ph.i.i.i.i.i.i32
  %indvars.iv.i.i.i.i.i.i572 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i32 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i32.preheader ]
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i572, 1 ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i.i.i33 = icmp eq i64 %i.bw, -1
  br i1 %.not.i.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i.i32, label %.critedge.loopexit.i.i.i.i.i.i, !llvm.loop !1

.critedge.loopexit.i.i.i.i.i.i:                   ; preds = %.lr.ph
  %i.bx = xor i64 %i.bw, -1
  %i.by = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.critedge.loopexit.i.i.i.i.i.i, %bb.m
  %.016.lcssa.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.m ], [ %i.by, %.critedge.loopexit.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.bx, %.critedge.loopexit.i.i.i.i.i.i ]
  %i.bz = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i, 6
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499: ; preds = %.lr.ph.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i.i32.preheader, %bb.k, %bb.l, %.critedge.i.i.i.i.i.i
  %.118.i.i.i.i.i.i = phi i32 [ 4096, %bb.k ], [ %i.bi, %bb.l ], [ %i.cc, %.critedge.i.i.i.i.i.i ], [ 4096, %.lr.ph.i.i.i.i.i.i32.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i32 ]
  store i32 %.118.i.i.i.i.i.i, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit: ; preds = %.split262, %.split263
  %i.cd = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.ab) ; 0 uses
  %.pre408 = load i32, ptr %i.c, align 8, !tbaa !395 ; 2 uses
  switch i32 %.pre408, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread [
    i32 0, label %bb.n
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41
    i32 2, label %bb.o
    i32 3, label %bb.p
  ]

bb.n:                                             ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit
  %i.ce = load i32, ptr %i.j, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !398 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i34, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i35 = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i36 = icmp eq ptr %i.ch, %.sroa.0.0.copyload.i.i.i.i.i35
  br i1 %.not4.i.i.i.i.i.i36, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %.lr.ph.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i37:                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i37
  %.06.i.i.i.i.i.i38 = phi i32 [ %i.cj, %.lr.ph.i.i.i.i.i.i37 ], [ 0, %bb.q ]
  %.sroa.02.05.i.i.i.i.i.i39 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i37 ], [ %i.ch, %bb.q ]
  %i.ci = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i39) #27 ; 2 uses
  %i.cj = add i32 %.06.i.i.i.i.i.i38, 1           ; 2 uses
  %.not.i.i.i.i.i.i40 = icmp eq ptr %i.ci, %.sroa.0.0.copyload.i.i.i.i.i35
  br i1 %.not.i.i.i.i.i.i40, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %.lr.ph.i.i.i.i.i.i37, !llvm.loop !622

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit, %bb.o
  %i.ck = phi i32 [ 2, %bb.o ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499 ]
  %.sink3.i.i42 = phi i64 [ 32, %bb.o ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i42
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43: ; preds = %.lr.ph.i.i.i.i.i.i37, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41, %bb.q, %bb.p, %bb.n, %.split263, %.split262, %.split, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit
  %i.cn = phi i32 [ 2, %.split263 ], [ 1, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit ], [ %i.ab, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit ], [ 0, %.split ], [ %i.ab, %.split262 ], [ 0, %bb.n ], [ 3, %bb.q ], [ %i.ck, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41 ], [ 3, %bb.p ], [ 3, %.lr.ph.i.i.i.i.i.i37 ] ; 3 uses
  %.011 = phi i32 [ %i.as, %.split263 ], [ %i.as, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit ], [ %i.as, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit ], [ %i.as, %.split ], [ %i.as, %.split262 ], [ %i.ce, %bb.n ], [ 0, %bb.q ], [ %i.cm, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41 ], [ 0, %bb.p ], [ %i.cj, %.lr.ph.i.i.i.i.i.i37 ]
  %i.co = icmp ult i32 %.011, %i.at
  br i1 %i.co, label %bb.r, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread

bb.r:                                             ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43
  %i.cp = trunc nuw i8 %.013 to i1
  br i1 %i.cp, label %.critedge.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i32 %i.cn, label %.split269 [
    i32 0, label %.split268
    i32 1, label %bb.t
  ]

.split268:                                        ; preds = %bb.s
  %i.cq = load i32, ptr %i.j, align 8, !tbaa !270
  %i.cr = add i32 %i.cq, 1                        ; 2 uses
  store i32 %i.cr, ptr %i.j, align 8, !tbaa !270
  %.not330 = icmp eq i32 %i.cr, 512
  br i1 %.not330, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader, label %.thread501

bb.t:                                             ; preds = %bb.s
  %i.cs = load ptr, ptr %i.o, align 8, !tbaa !282 ; 2 uses
  %i.ct = load i32, ptr %i.n, align 8, !tbaa !268
  %i.cu = add i32 %i.ct, 1                        ; 4 uses
  %i.cv = lshr i32 %i.cu, 6                       ; 3 uses
  %i.cw = icmp ugt i32 %i.cu, 4095
  br i1 %i.cw, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = and i32 %i.cu, 63
  %i.cy = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !283 ; 2 uses
  %i.db = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.da, %i.dc
  %.not.not.i.i.i.i.i.i44 = icmp eq i64 %i.dd, 0
  br i1 %.not.not.i.i.i.i.i.i44, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271, label %bb.v

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271: ; preds = %bb.u
  store i32 %i.cu, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65

bb.v:                                             ; preds = %bb.u
  %i.de = xor i64 %i.da, -1
  %i.df = shl nsw i64 -1, %i.db
  %i.dg = and i64 %i.df, %i.de                    ; 2 uses
  %.not25.i.i.i.i.i.i45 = icmp eq i64 %i.dg, 0
  br i1 %.not25.i.i.i.i.i.i45, label %.lr.ph.i.i.i.i.i.i51.preheader, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57

.lr.ph.i.i.i.i.i.i51.preheader:                   ; preds = %bb.v
  %exitcond.not.i.i.i.i.i.i53573 = icmp eq i32 %i.cv, 63
  br i1 %exitcond.not.i.i.i.i.i.i53573, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread, label %.lr.ph575

.lr.ph.i.i.i.i.i.i51:                             ; preds = %.lr.ph575
  %exitcond.not.i.i.i.i.i.i53 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i54, 63
  br i1 %exitcond.not.i.i.i.i.i.i53, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread, label %.lr.ph575, !llvm.loop !1

.lr.ph575:                                        ; preds = %.lr.ph.i.i.i.i.i.i51.preheader, %.lr.ph.i.i.i.i.i.i51
  %indvars.iv.i.i.i.i.i.i52574 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i54, %.lr.ph.i.i.i.i.i.i51 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i51.preheader ]
  %indvars.iv.next.i.i.i.i.i.i54 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i52574, 1 ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i.i.i.i54
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i.i.i55 = icmp eq i64 %i.di, -1
  br i1 %.not.i.i.i.i.i.i55, label %.lr.ph.i.i.i.i.i.i51, label %.critedge.loopexit.i.i.i.i.i.i56, !llvm.loop !1

.critedge.loopexit.i.i.i.i.i.i56:                 ; preds = %.lr.ph575
  %i.dj = xor i64 %i.di, -1
  %i.dk = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i54 to i32
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57

.split269:                                        ; preds = %bb.s
  %i.dl = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.cn)
  br i1 %i.dl, label %bb.w, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread: ; preds = %.lr.ph.i.i.i.i.i.i51, %.lr.ph.i.i.i.i.i.i51.preheader, %bb.t
  store i32 4096, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57: ; preds = %bb.v, %.critedge.loopexit.i.i.i.i.i.i56
  %.016.lcssa.i.i.i.i.i.i47 = phi i32 [ %i.cv, %bb.v ], [ %i.dk, %.critedge.loopexit.i.i.i.i.i.i56 ]
  %.0.lcssa.i.i.i.i.i.i48 = phi i64 [ %i.dg, %bb.v ], [ %i.dj, %.critedge.loopexit.i.i.i.i.i.i56 ]
  %i.dm = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i47, 6
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i48, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = or disjoint i32 %i.dm, %i.do            ; 2 uses
  store i32 %i.dp, ptr %i.n, align 8, !tbaa !268
  %.not329 = icmp eq i32 %i.dp, 4096
  br i1 %.not329, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65

bb.w:                                             ; preds = %.split269
  %.pre409 = load i32, ptr %i.c, align 8, !tbaa !395 ; 2 uses
  switch i32 %.pre409, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67 [
    i32 0, label %.thread501
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

.thread501:                                       ; preds = %.split268, %bb.w
  %i.dq = load i32, ptr %i.j, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67

bb.x:                                             ; preds = %bb.w
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65

bb.y:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !398 ; 2 uses
  %.not.i.i.i.i.i58 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i58, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i59 = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i60 = icmp eq ptr %i.dt, %.sroa.0.0.copyload.i.i.i.i.i59
  br i1 %.not4.i.i.i.i.i.i60, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67, label %.lr.ph.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i61:                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i61
  %.06.i.i.i.i.i.i62 = phi i32 [ %i.dv, %.lr.ph.i.i.i.i.i.i61 ], [ 0, %bb.z ]
  %.sroa.02.05.i.i.i.i.i.i63 = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i61 ], [ %i.dt, %bb.z ]
  %i.du = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i63) #27 ; 2 uses
  %i.dv = add i32 %.06.i.i.i.i.i.i62, 1           ; 2 uses
  %.not.i.i.i.i.i.i64 = icmp eq ptr %i.du, %.sroa.0.0.copyload.i.i.i.i.i59
  br i1 %.not.i.i.i.i.i.i64, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67, label %.lr.ph.i.i.i.i.i.i61, !llvm.loop !622

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271, %bb.w, %bb.x
  %i.dw = phi i32 [ 2, %bb.x ], [ 1, %bb.w ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271 ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57 ]
  %.sink3.i.i66 = phi i64 [ 32, %bb.x ], [ 8, %bb.w ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271 ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i66
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67: ; preds = %.lr.ph.i.i.i.i.i.i61, %bb.w, %.thread501, %bb.y, %bb.z, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65
  %i.dz = phi i32 [ 0, %.thread501 ], [ 3, %bb.z ], [ %i.dw, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65 ], [ %.pre409, %bb.w ], [ 3, %bb.y ], [ 3, %.lr.ph.i.i.i.i.i.i61 ] ; 5 uses
  %i.ea = phi i32 [ %i.dq, %.thread501 ], [ 0, %bb.z ], [ %i.dy, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65 ], [ -1, %bb.w ], [ 0, %bb.y ], [ %i.dv, %.lr.ph.i.i.i.i.i.i61 ]
  %i.eb = icmp eq i32 %i.ea, %i.at
  br i1 %i.eb, label %bb.aa, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82

bb.aa:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67
  switch i32 %i.dz, label %.split274 [
    i32 0, label %.split273
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68
    i32 2, label %.split275
  ]

.split273:                                        ; preds = %bb.aa
  %i.ec = load i32, ptr %i.k, align 8, !tbaa !270
  %.not333 = icmp eq i32 %i.ec, 512
  br i1 %.not333, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread, label %bb.ab

.split275:                                        ; preds = %bb.aa
  %i.ed = load i32, ptr %i.l, align 8, !tbaa !269
  %.not331 = icmp eq i32 %i.ed, 32768
  br i1 %.not331, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504, label %bb.af

.split274:                                        ; preds = %bb.aa
  %i.ee = icmp eq i32 %i.dz, 3
  %i.ef = load ptr, ptr %i.g, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.h, align 8
  %i.ei = icmp ne ptr %i.eh, %i.eg
  %i.ej = select i1 %i.ee, i1 %i.ei, i1 false
  br i1 %i.ej, label %bb.af, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68: ; preds = %bb.aa
  %i.ek = load i32, ptr %i.m, align 8, !tbaa !268
  %.not332 = icmp eq i32 %i.ek, 4096
  br i1 %.not332, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90, label %bb.ac

bb.ab:                                            ; preds = %.split273
  %i.el = load i32, ptr %i.j, align 8, !tbaa !270
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.j, align 8, !tbaa !270
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread

bb.ac:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !282 ; 2 uses
  %i.eo = load i32, ptr %i.n, align 8, !tbaa !268
  %i.ep = add i32 %i.eo, 1                        ; 4 uses
  %i.eq = lshr i32 %i.ep, 6                       ; 3 uses
  %i.er = icmp ugt i32 %i.ep, 4095
  br i1 %i.er, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i74, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.es = and i32 %i.ep, 63
  %i.et = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !283 ; 2 uses
  %i.ew = zext nneg i32 %i.es to i64              ; 2 uses
  %i.ex = shl nuw i64 1, %i.ew
  %i.ey = and i64 %i.ev, %i.ex
  %.not.not.i.i.i.i.i.i69 = icmp eq i64 %i.ey, 0
  br i1 %.not.not.i.i.i.i.i.i69, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i74, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ez = xor i64 %i.ev, -1
  %i.fa = shl nsw i64 -1, %i.ew
  %i.fb = and i64 %i.fa, %i.ez                    ; 2 uses
  %.not25.i.i.i.i.i.i70 = icmp eq i64 %i.fb, 0
  br i1 %.not25.i.i.i.i.i.i70, label %.lr.ph.i.i.i.i.i.i76.preheader, label %.critedge.i.i.i.i.i.i71

.lr.ph.i.i.i.i.i.i76.preheader:                   ; preds = %bb.ae
  %exitcond.not.i.i.i.i.i.i78576 = icmp eq i32 %i.eq, 63
  br i1 %exitcond.not.i.i.i.i.i.i78576, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i74, label %.lr.ph578

.lr.ph.i.i.i.i.i.i76:                             ; preds = %.lr.ph578
  %exitcond.not.i.i.i.i.i.i78 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i79, 63
  br i1 %exitcond.not.i.i.i.i.i.i78, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i74, label %.lr.ph578, !llvm.loop !1

.lr.ph578:                                        ; preds = %.lr.ph.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i76
  %indvars.iv.i.i.i.i.i.i77577 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i79, %.lr.ph.i.i.i.i.i.i76 ], [ %i.et, %.lr.ph.i.i.i.i.i.i76.preheader ]
  %indvars.iv.next.i.i.i.i.i.i79 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i77577, 1 ; 4 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i.i.i.i.i.i79
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i.i.i80 = icmp eq i64 %i.fd, -1
  br i1 %.not.i.i.i.i.i.i80, label %.lr.ph.i.i.i.i.i.i76, label %.critedge.loopexit.i.i.i.i.i.i81, !llvm.loop !1

.critedge.loopexit.i.i.i.i.i.i81:                 ; preds = %.lr.ph578
  %i.fe = xor i64 %i.fd, -1
  %i.ff = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i79 to i32
  br label %.critedge.i.i.i.i.i.i71

.critedge.i.i.i.i.i.i71:                          ; preds = %.critedge.loopexit.i.i.i.i.i.i81, %bb.ae
  %.016.lcssa.i.i.i.i.i.i72 = phi i32 [ %i.eq, %bb.ae ], [ %i.ff, %.critedge.loopexit.i.i.i.i.i.i81 ]
  %.0.lcssa.i.i.i.i.i.i73 = phi i64 [ %i.fb, %bb.ae ], [ %i.fe, %.critedge.loopexit.i.i.i.i.i.i81 ]
  %i.fg = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i72, 6
  %i.fh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i73, i1 true)
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = or disjoint i32 %i.fg, %i.fi
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i74

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i74: ; preds = %.lr.ph.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i.i76.preheader, %.critedge.i.i.i.i.i.i71, %bb.ad, %bb.ac
  %.118.i.i.i.i.i.i75 = phi i32 [ 4096, %bb.ac ], [ %i.ep, %bb.ad ], [ %i.fj, %.critedge.i.i.i.i.i.i71 ], [ 4096, %.lr.ph.i.i.i.i.i.i76.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i76 ]
  store i32 %.118.i.i.i.i.i.i75, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90

bb.af:                                            ; preds = %.split275, %.split274
  %i.fk = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.dz) ; 0 uses
  %.pre410 = load i32, ptr %i.c, align 8, !tbaa !395
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82: ; preds = %bb.af, %.split274, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67
  %i.fl = phi i32 [ %.pre410, %bb.af ], [ %i.dz, %.split274 ], [ %i.dz, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67 ]
  switch i32 %i.fl, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader [
    i32 0, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90
    i32 2, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504
    i32 3, label %bb.ag
  ]

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread: ; preds = %.split273, %bb.ab, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82
  %i.fm = load i32, ptr %i.j, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504: ; preds = %.split275, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90

bb.ag:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !398 ; 2 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i83, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i84 = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i85 = icmp eq ptr %i.fp, %.sroa.0.0.copyload.i.i.i.i.i84
  br i1 %.not4.i.i.i.i.i.i85, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92, label %.lr.ph.i.i.i.i.i.i86

.lr.ph.i.i.i.i.i.i86:                             ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i86
  %.06.i.i.i.i.i.i87 = phi i32 [ %i.fr, %.lr.ph.i.i.i.i.i.i86 ], [ 0, %bb.ah ]
  %.sroa.02.05.i.i.i.i.i.i88 = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i86 ], [ %i.fp, %bb.ah ]
  %i.fq = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i88) #27 ; 2 uses
  %i.fr = add i32 %.06.i.i.i.i.i.i87, 1           ; 2 uses
  %.not.i.i.i.i.i.i89 = icmp eq ptr %i.fq, %.sroa.0.0.copyload.i.i.i.i.i84
  br i1 %.not.i.i.i.i.i.i89, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92, label %.lr.ph.i.i.i.i.i.i86, !llvm.loop !622

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90: ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i74, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504
  %.sink3.i.i91 = phi i64 [ 32, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504 ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82 ], [ 8, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i74 ], [ 8, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i91
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92: ; preds = %.lr.ph.i.i.i.i.i.i86, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread, %bb.ag, %bb.ah, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90
  %i.fu = phi i32 [ %i.fm, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread ], [ 0, %bb.ah ], [ %i.ft, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90 ], [ 0, %bb.ag ], [ %i.fr, %.lr.ph.i.i.i.i.i.i86 ]
  %i.fv = icmp ult i32 %i.fu, %i.at
  br i1 %i.fv, label %.critedge.thread, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43
  %i.fw = phi i32 [ %.pre408, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit ], [ %i.cn, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43 ]
  %i.fx = trunc nuw i8 %.013 to i1
  br i1 %i.fx, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader, label %bb.ai

bb.ai:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread
  %i.fy = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.fw) ; 0 uses
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread, %.split269, %.split268, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread, %bb.ai, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread: ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader
  %i.fz = load i32, ptr %i.c, align 8, !tbaa !395 ; 11 uses
  %i.ga = icmp eq i32 %i.fz, 0                    ; 3 uses
  br i1 %i.ga, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread
  switch i32 %i.fz, label %bb.ao [
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i100
    i32 2, label %bb.ak
    i32 3, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i100

bb.al:                                            ; preds = %bb.aj
  %i.gb = load ptr, ptr %i.g, align 8, !tbaa !399 ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i.i93, label %.thread281, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i94 = load ptr, ptr %i.h, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i95 = icmp eq ptr %i.gd, %.sroa.0.0.copyload.i.i.i.i.i94
  br i1 %.not4.i.i.i.i.i.i95, label %.thread281, label %.lr.ph.i.i.i.i.i.i96

end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb:bb.a
  %i.mt = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.ms), !noalias !647
  store ptr %i.mq, ptr %i.mr, align 8, !tbaa !407
  br label %bb.cl

bb.cc:                                            ; preds = %bb.bt
  %i.mu = load ptr, ptr %i.s, align 8, !tbaa !173 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mv = load ptr, ptr %i.g, align 8, !tbaa !399
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.h, align 8, !tbaa !400 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.mx, %i.mw
  br i1 %.not9.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 48
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !649 ; 3 uses
  %.not7.not.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not7.not.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 786432 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %bb.cf
  %.013.i.i.i.i.i.i.i234 = phi ptr [ %i.na, %bb.cf ], [ %i.ni, %bb.ck ] ; 5 uses
  %.0712.i.i.i.i.i.i.i235 = phi i32 [ 0, %bb.cf ], [ %i.nj, %bb.ck ] ; 5 uses
  %i.nb = load i64, ptr %.013.i.i.i.i.i.i.i234, align 8, !tbaa !283, !noalias !650 ; 2 uses
  %.not.i.i.i.i.i.i.i236 = icmp eq i64 %i.nb, 0
  br i1 %.not.i.i.i.i.i.i.i236, label %bb.ch, label %.critedge.thread.i.i.i.i.i.i.i237

bb.ch:                                            ; preds = %bb.cg
  %i.nc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 8
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !283, !noalias !650 ; 2 uses
  %.not.i.i.i.i.i.i.i236.1 = icmp eq i64 %i.nd, 0
  br i1 %.not.i.i.i.i.i.i.i236.1, label %bb.ci, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704

bb.ci:                                            ; preds = %bb.ch
  %i.ne = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 16
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !283, !noalias !650 ; 2 uses
  %.not.i.i.i.i.i.i.i236.2 = icmp eq i64 %i.nf, 0
  br i1 %.not.i.i.i.i.i.i.i236.2, label %bb.cj, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701

bb.cj:                                            ; preds = %bb.ci
  %i.ng = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 24
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !283, !noalias !650 ; 2 uses
  %.not.i.i.i.i.i.i.i236.3 = icmp eq i64 %i.nh, 0
  br i1 %.not.i.i.i.i.i.i.i236.3, label %bb.ck, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit

bb.ck:                                            ; preds = %bb.cj
  %i.ni = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 32
  %i.nj = add nuw nsw i32 %.0712.i.i.i.i.i.i.i235, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i238.3 = icmp eq i32 %i.nj, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i238.3, label %.loopexit.i.i.i, label %bb.cg, !llvm.loop !6

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit: ; preds = %bb.cj
  %i.nk = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 3
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701: ; preds = %bb.ci
  %i.nl = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 2
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704: ; preds = %bb.ch
  %i.nm = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 1
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237:                ; preds = %bb.cg, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit
  %.0712.i.i.i.i.i.i.i235.lcssa = phi i32 [ %i.nm, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704 ], [ %i.nl, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701 ], [ %i.nk, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i235, %bb.cg ]
  %.lcssa619 = phi i64 [ %i.nd, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704 ], [ %i.nf, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701 ], [ %i.nh, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit ], [ %i.nb, %bb.cg ]
  %i.nn = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i235.lcssa, 6
  %i.no = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa619, i1 true)
  %i.np = trunc nuw nsw i64 %i.no to i32
  %i.nq = or disjoint i32 %i.nn, %i.np
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.ck, %.critedge.thread.i.i.i.i.i.i.i237
  %i.nr = phi i32 [ %i.nq, %.critedge.thread.i.i.i.i.i.i.i237 ], [ 32768, %bb.ck ]
  store ptr %i.mz, ptr %i.mu, align 8, !tbaa !408
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i.i, %bb.cb, %bb.bx
  %.sink31.i.sink30.i = phi ptr [ %i.mj, %bb.bx ], [ %i.mu, %.loopexit.i.i.i ], [ %i.mr, %bb.cb ] ; 2 uses
  %.sink29.i.sink.i = phi i32 [ 512, %bb.bx ], [ %i.nr, %.loopexit.i.i.i ], [ %i.mt, %bb.cb ]
  %.sink.i.sink.i = phi ptr [ %i.mk, %bb.bx ], [ %i.na, %.loopexit.i.i.i ], [ %i.ms, %bb.cb ]
  %i.ns = getelementptr inbounds nuw i8, ptr %.sink31.i.sink30.i, i64 8
  store i32 %.sink29.i.sink.i, ptr %i.ns, align 8, !tbaa !46
  %i.nt = getelementptr inbounds nuw i8, ptr %.sink31.i.sink30.i, i64 16
  store ptr %.sink.i.sink.i, ptr %i.nt, align 8, !tbaa !297
  %i.nu = load i32, ptr %i.c, align 8, !tbaa !395
  %i.nv = add i32 %i.nu, -1                       ; 3 uses
  store i32 %i.nv, ptr %i.c, align 8, !tbaa !395
  switch i32 %i.nv, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit [
    i32 0, label %bb.cm
    i32 1, label %bb.cu
    i32 2, label %bb.cx
    i32 3, label %bb.de
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.nw = load ptr, ptr %0, align 8               ; 9 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.oa = load atomic i32, ptr %i.nz seq_cst, align 4, !noalias !651
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.oa, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.nw), !noalias !651
  br label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  %i.ob = load ptr, ptr %i.nw, align 8, !tbaa !241, !noalias !651 ; 2 uses
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %bb.cp, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i

bb.cp:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 12 ; 4 uses
  %i.oe = atomicrmw xchg ptr %i.od, i8 1 seq_cst, align 1, !noalias !651
  %i.of = trunc i8 %i.oe to i1
  br i1 %i.of, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cp, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i ], [ 1, %bb.cp ] ; 8 uses
  %i.og = icmp slt i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 17
  br i1 %i.og, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.oh = icmp sgt i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.oh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.cq
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.i.i.i.i.i.prol = phi i32 [ %i.oi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.oi = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !651
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !636

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.oi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.oj = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.oj, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.01.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ok, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !651
  tail call void @llvm.x86.sse2.pause(), !noalias !651
  tail call void @llvm.x86.sse2.pause(), !noalias !651
  tail call void @llvm.x86.sse2.pause(), !noalias !651
  tail call void @llvm.x86.sse2.pause(), !noalias !651
  tail call void @llvm.x86.sse2.pause(), !noalias !651
  tail call void @llvm.x86.sse2.pause(), !noalias !651
  %i.ok = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause(), !noalias !651
  %i.ol = icmp sgt i32 %.01.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.ol, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.cq
  %i.om = shl i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.on = tail call noundef i32 @sched_yield() #21, !noalias !651 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cr, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i32 [ %i.om, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %bb.cr ]
  %i.oo = atomicrmw xchg ptr %i.od, i8 1 seq_cst, align 1, !noalias !651
  %i.op = trunc i8 %i.oo to i1
  br i1 %i.op, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i, !llvm.loop !8

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i, %bb.cp
  %i.oq = load ptr, ptr %i.nw, align 8, !tbaa !241, !noalias !651 ; 2 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %bb.cs, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i

bb.cs:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i
  %i.os = invoke noalias noundef nonnull dereferenceable(12288) ptr @_Znam(i64 noundef 12288) #28
          to label %bb.ct unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i.i.i, !noalias !651 ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.os, ptr %i.nw, align 8, !tbaa !241, !noalias !651
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.cs
  %i.ot = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.od release, align 4, !noalias !651
  resume { ptr, i32 } %i.ot

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i: ; preds = %bb.ct, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i
  %i.ou = phi ptr [ %i.os, %bb.ct ], [ %i.oq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i ]
  store atomic i8 0, ptr %i.od release, align 4, !noalias !651
  br label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i

_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i, %bb.cm
  %.sroa.11.0.i = phi ptr [ undef, %bb.cm ], [ %i.ou, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ %i.ob, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  %.sroa.87.0.i = phi ptr [ null, %bb.cm ], [ %i.ny, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ %i.ny, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  %.sroa.5.0.i = phi i32 [ 512, %bb.cm ], [ 0, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ 0, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  store ptr %i.nw, ptr %i.b, align 8, !tbaa !652
  store i32 %.sroa.5.0.i, ptr %i.j, align 8, !tbaa !270
  store ptr %.sroa.87.0.i, ptr %i.w, align 8, !tbaa !284
  store ptr %.sroa.11.0.i, ptr %i.x, align 8, !tbaa !409
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

bb.cu:                                            ; preds = %bb.cl
  %i.ov = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 98304 ; 2 uses
  %i.oy = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE12findFirstOffEv(ptr noundef nonnull align 8 dereferenceable(512) %i.ox), !noalias !653
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.86.0.i.i = phi ptr [ %i.ox, %bb.cv ], [ null, %bb.cu ]
  %.sroa.5.0.i.i = phi i32 [ %i.oy, %bb.cv ], [ 4096, %bb.cu ]
  store ptr %i.ov, ptr %i.d, align 8, !tbaa !410
  store i32 %.sroa.5.0.i.i, ptr %i.n, align 8, !tbaa !268
  store ptr %.sroa.86.0.i.i, ptr %i.o, align 8, !tbaa !282
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

bb.cx:                                            ; preds = %bb.cl
  %i.oz = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 786432 ; 3 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.dd, %bb.cy
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.pb, %bb.cy ], [ %i.pj, %bb.dd ] ; 5 uses
  %.0712.i.i.i.i.i.i.i = phi i32 [ 0, %bb.cy ], [ %i.pk, %bb.dd ] ; 5 uses
  %i.pc = load i64, ptr %.013.i.i.i.i.i.i.i, align 8, !tbaa !283, !noalias !654 ; 2 uses
  %.not.i.i.i.i.i.i6.i = icmp eq i64 %i.pc, -1
  br i1 %.not.i.i.i.i.i.i6.i, label %bb.da, label %.critedge.thread.i.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.pd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 8
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !283, !noalias !654 ; 2 uses
  %.not.i.i.i.i.i.i6.i.1 = icmp eq i64 %i.pe, -1
  br i1 %.not.i.i.i.i.i.i6.i.1, label %bb.db, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716

bb.db:                                            ; preds = %bb.da
  %i.pf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 16
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !283, !noalias !654 ; 2 uses
  %.not.i.i.i.i.i.i6.i.2 = icmp eq i64 %i.pg, -1
  br i1 %.not.i.i.i.i.i.i6.i.2, label %bb.dc, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713

bb.dc:                                            ; preds = %bb.db
  %i.ph = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 24
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !283, !noalias !654 ; 2 uses
  %.not.i.i.i.i.i.i6.i.3 = icmp eq i64 %i.pi, -1
  br i1 %.not.i.i.i.i.i.i6.i.3, label %bb.dd, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit

bb.dd:                                            ; preds = %bb.dc
  %i.pj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 32
  %i.pk = add nuw nsw i32 %.0712.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i32 %i.pk, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i, label %bb.cz, !llvm.loop !9

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit:   ; preds = %bb.dc
  %i.pl = or disjoint i32 %.0712.i.i.i.i.i.i.i, 3
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713: ; preds = %bb.db
  %i.pm = or disjoint i32 %.0712.i.i.i.i.i.i.i, 2
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716: ; preds = %bb.da
  %i.pn = or disjoint i32 %.0712.i.i.i.i.i.i.i, 1
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i:                   ; preds = %bb.cz, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit
  %.0712.i.i.i.i.i.i.i.lcssa = phi i32 [ %i.pn, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716 ], [ %i.pm, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713 ], [ %i.pl, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i, %bb.cz ]
  %.lcssa622 = phi i64 [ %i.pe, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716 ], [ %i.pg, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713 ], [ %i.pi, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit ], [ %i.pc, %bb.cz ]
  %i.po = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i.lcssa, 6
  %i.pp = xor i64 %.lcssa622, -1
  %i.pq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pp, i1 true)
  %i.pr = trunc nuw nsw i64 %i.pq to i32
  %i.ps = or disjoint i32 %i.po, %i.pr
  br label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i

_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i: ; preds = %bb.dd, %.critedge.thread.i.i.i.i.i.i.i, %bb.cx
  %.sroa.86.0.i.i.i = phi ptr [ null, %bb.cx ], [ %i.pb, %.critedge.thread.i.i.i.i.i.i.i ], [ %i.pb, %bb.dd ]
  %.sroa.5.0.i.i.i = phi i32 [ 32768, %bb.cx ], [ %i.ps, %.critedge.thread.i.i.i.i.i.i.i ], [ 32768, %bb.dd ]
  store ptr %i.oz, ptr %i.p, align 8, !tbaa !411
  store i32 %.sroa.5.0.i.i.i, ptr %i.v, align 8, !tbaa !269
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i

bb.de:                                            ; preds = %bb.cl
  %i.pt = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !279 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 2 uses
  %.not1.i.i.i.i.i.i.i.i = icmp eq ptr %i.px, %i.pw
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.df, %bb.dg
  %.sroa.2.0.i.i.i.i.i.i = phi ptr [ %i.qb, %bb.dg ], [ %i.pw, %bb.df ] ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i.i.i.i.i, i64 48
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !405
  %i.qa = icmp eq ptr %i.pz, null
  br i1 %i.qa, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.qb = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i.i.i.i.i.i) #27 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.qb, %i.px
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !22

_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i: ; preds = %bb.dg, %.lr.ph.i.i.i.i.i.i.i.i, %bb.df, %bb.de
  %.sroa.5.0.i.i.i.i = phi ptr [ null, %bb.de ], [ %i.pw, %bb.df ], [ %i.qb, %bb.dg ], [ %.sroa.2.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %i.pt, ptr %i.e, align 8
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i

_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i: ; preds = %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i
  %.sink.i.i.i = phi i64 [ 32, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i ], [ 16, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i ]
  %.sroa.5.0.i.sink.i.i.i = phi ptr [ %.sroa.5.0.i.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i ], [ %.sroa.86.0.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i ]
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink.i.i.i
  store ptr %.sroa.5.0.i.sink.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i, %bb.cw, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i
  %.pr = load i32, ptr %i.c, align 8, !tbaa !395
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split, %bb.cl
  %i.qc = phi i32 [ %.pr, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split ], [ %i.nv, %bb.cl ] ; 5 uses
  switch i32 %i.qc, label %bb.dl [
    i32 0, label %bb.dk
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166
    i32 2, label %bb.dh
    i32 3, label %bb.di
  ]

bb.dh:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166

bb.di:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  %i.qd = load ptr, ptr %i.e, align 8, !tbaa !398 ; 2 uses
  %.not.i.i.i.i.i159 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i.i.i159, label %.thread297, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i160 = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i161 = icmp eq ptr %i.qf, %.sroa.0.0.copyload.i.i.i.i.i160
  br i1 %.not4.i.i.i.i.i.i161, label %.thread297, label %.lr.ph.i.i.i.i.i.i162

.lr.ph.i.i.i.i.i.i162:                            ; preds = %bb.dj, %.lr.ph.i.i.i.i.i.i162
  %.06.i.i.i.i.i.i163 = phi i32 [ %i.qh, %.lr.ph.i.i.i.i.i.i162 ], [ 0, %bb.dj ]
  %.sroa.02.05.i.i.i.i.i.i164 = phi ptr [ %i.qg, %.lr.ph.i.i.i.i.i.i162 ], [ %i.qf, %bb.dj ]
  %i.qg = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i164) #27 ; 2 uses
  %i.qh = add i32 %.06.i.i.i.i.i.i163, 1          ; 2 uses
  %.not.i.i.i.i.i.i165 = icmp eq ptr %i.qg, %.sroa.0.0.copyload.i.i.i.i.i160
  br i1 %.not.i.i.i.i.i.i165, label %.thread297, label %.lr.ph.i.i.i.i.i.i162, !llvm.loop !622

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit, %bb.dh
  %.sink3.i.i167 = phi i64 [ 32, %bb.dh ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit ]
  %i.qi = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i167
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !46
  br label %bb.dl

bb.dk:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  %i.qk = load i32, ptr %i.j, align 8, !tbaa !270
  %i.ql = load i32, ptr %i.k, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178

bb.dl:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166
  %.ph295 = phi i32 [ -1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit ], [ %i.qj, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166 ] ; 2 uses
  switch i32 %i.qc, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178 [
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176
    i32 2, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176

.thread297:                                       ; preds = %.lr.ph.i.i.i.i.i.i162, %bb.dj, %bb.di
  %.ph295299 = phi i32 [ 0, %bb.di ], [ 0, %bb.dj ], [ %i.qh, %.lr.ph.i.i.i.i.i.i162 ] ; 3 uses
  %i.qm = load ptr, ptr %i.g, align 8, !tbaa !399 ; 2 uses
  %.not.i.i.i.i.i169 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i.i.i.i169, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %bb.dn

bb.dn:                                            ; preds = %.thread297
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i170 = load ptr, ptr %i.h, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i171 = icmp eq ptr %i.qo, %.sroa.0.0.copyload.i.i.i.i.i170
  br i1 %.not4.i.i.i.i.i.i171, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %.lr.ph.i.i.i.i.i.i172

.lr.ph.i.i.i.i.i.i172:                            ; preds = %bb.dn, %.lr.ph.i.i.i.i.i.i172
  %.06.i.i.i.i.i.i173 = phi i32 [ %i.qq, %.lr.ph.i.i.i.i.i.i172 ], [ 0, %bb.dn ]
  %.sroa.02.05.i.i.i.i.i.i174 = phi ptr [ %i.qp, %.lr.ph.i.i.i.i.i.i172 ], [ %i.qo, %bb.dn ]
  %i.qp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i174) #27 ; 2 uses
  %i.qq = add i32 %.06.i.i.i.i.i.i173, 1          ; 2 uses
  %.not.i.i.i.i.i.i175 = icmp eq ptr %i.qp, %.sroa.0.0.copyload.i.i.i.i.i170
  br i1 %.not.i.i.i.i.i.i175, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %.lr.ph.i.i.i.i.i.i172, !llvm.loop !623

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176: ; preds = %bb.dm, %bb.dl
  %.sink3.i.i177 = phi i64 [ 32, %bb.dm ], [ 8, %bb.dl ]
  %i.qr = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink3.i.i177
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178: ; preds = %.lr.ph.i.i.i.i.i.i172, %bb.dk, %bb.dl, %.thread297, %bb.dn, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176
  %i.qt = phi i32 [ %i.qk, %bb.dk ], [ %.ph295299, %bb.dn ], [ %.ph295, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176 ], [ %.ph295, %bb.dl ], [ %.ph295299, %.thread297 ], [ %.ph295299, %.lr.ph.i.i.i.i.i.i172 ]
  %i.qu = phi i32 [ %i.ql, %bb.dk ], [ 0, %bb.dn ], [ %i.qs, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176 ], [ -1, %bb.dl ], [ 0, %.thread297 ], [ %i.qq, %.lr.ph.i.i.i.i.i.i172 ]
  %i.qv = icmp eq i32 %i.qt, %i.qu
  br i1 %i.qv, label %bb.do, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.do:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178
  switch i32 %i.qc, label %.split301 [
    i32 0, label %.split300
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179
    i32 2, label %.split302
  ]

.split300:                                        ; preds = %bb.do
  %i.qw = load i32, ptr %i.k, align 8, !tbaa !270
  %.not336 = icmp eq i32 %i.qw, 512
  br i1 %.not336, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dp

.split302:                                        ; preds = %bb.do
  %i.qx = load i32, ptr %i.l, align 8, !tbaa !269
  %.not334 = icmp eq i32 %i.qx, 32768
  br i1 %.not334, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dt

.split301:                                        ; preds = %bb.do
  %i.qy = icmp eq i32 %i.qc, 3
  %i.qz = load ptr, ptr %i.g, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = load ptr, ptr %i.h, align 8
  %i.rc = icmp ne ptr %i.rb, %i.ra
  %i.rd = select i1 %i.qy, i1 %i.rc, i1 false
  br i1 %i.rd, label %bb.dt, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179: ; preds = %bb.do
  %i.re = load i32, ptr %i.m, align 8, !tbaa !268
  %.not335 = icmp eq i32 %i.re, 4096
  br i1 %.not335, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dq

bb.dp:                                            ; preds = %.split300
  %i.rf = load i32, ptr %i.j, align 8, !tbaa !270
  %i.rg = add i32 %i.rf, 1
  store i32 %i.rg, ptr %i.j, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.dq:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179
  %i.rh = load ptr, ptr %i.o, align 8, !tbaa !282 ; 2 uses
  %i.ri = load i32, ptr %i.n, align 8, !tbaa !268
  %i.rj = add i32 %i.ri, 1                        ; 4 uses
  %i.rk = lshr i32 %i.rj, 6                       ; 3 uses
  %i.rl = icmp ugt i32 %i.rj, 4095
  br i1 %i.rl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i185, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.rm = and i32 %i.rj, 63
  %i.rn = zext nneg i32 %i.rk to i64              ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %i.rn
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !283 ; 2 uses
  %i.rq = zext nneg i32 %i.rm to i64              ; 2 uses
  %i.rr = shl nuw i64 1, %i.rq
  %i.rs = and i64 %i.rp, %i.rr
  %.not.not.i.i.i.i.i.i180 = icmp eq i64 %i.rs, 0
  br i1 %.not.not.i.i.i.i.i.i180, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i185, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.rt = xor i64 %i.rp, -1
  %i.ru = shl nsw i64 -1, %i.rq
  %i.rv = and i64 %i.ru, %i.rt                    ; 2 uses
  %.not25.i.i.i.i.i.i181 = icmp eq i64 %i.rv, 0
  br i1 %.not25.i.i.i.i.i.i181, label %.lr.ph.i.i.i.i.i.i187.preheader, label %.critedge.i.i.i.i.i.i182

.lr.ph.i.i.i.i.i.i187.preheader:                  ; preds = %bb.ds
  %exitcond.not.i.i.i.i.i.i189579 = icmp eq i32 %i.rk, 63
  br i1 %exitcond.not.i.i.i.i.i.i189579, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i185, label %.lr.ph581

.lr.ph.i.i.i.i.i.i187:                            ; preds = %.lr.ph581
  %exitcond.not.i.i.i.i.i.i189 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i190, 63
  br i1 %exitcond.not.i.i.i.i.i.i189, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i185, label %.lr.ph581, !llvm.loop !1

.lr.ph581:                                        ; preds = %.lr.ph.i.i.i.i.i.i187.preheader, %.lr.ph.i.i.i.i.i.i187
  %indvars.iv.i.i.i.i.i.i188580 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i190, %.lr.ph.i.i.i.i.i.i187 ], [ %i.rn, %.lr.ph.i.i.i.i.i.i187.preheader ]
  %indvars.iv.next.i.i.i.i.i.i190 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i188580, 1 ; 4 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %indvars.iv.next.i.i.i.i.i.i190
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i.i.i191 = icmp eq i64 %i.rx, -1
  br i1 %.not.i.i.i.i.i.i191, label %.lr.ph.i.i.i.i.i.i187, label %.critedge.loopexit.i.i.i.i.i.i192, !llvm.loop !1

.critedge.loopexit.i.i.i.i.i.i192:                ; preds = %.lr.ph581
  %i.ry = xor i64 %i.rx, -1
  %i.rz = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i190 to i32
  br label %.critedge.i.i.i.i.i.i182

.critedge.i.i.i.i.i.i182:                         ; preds = %.critedge.loopexit.i.i.i.i.i.i192, %bb.ds
  %.016.lcssa.i.i.i.i.i.i183 = phi i32 [ %i.rk, %bb.ds ], [ %i.rz, %.critedge.loopexit.i.i.i.i.i.i192 ]
  %.0.lcssa.i.i.i.i.i.i184 = phi i64 [ %i.rv, %bb.ds ], [ %i.ry, %.critedge.loopexit.i.i.i.i.i.i192 ]
  %i.sa = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i183, 6
  %i.sb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i184, i1 true)
  %i.sc = trunc nuw nsw i64 %i.sb to i32
  %i.sd = or disjoint i32 %i.sa, %i.sc
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i185

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i185: ; preds = %.lr.ph.i.i.i.i.i.i187, %.lr.ph.i.i.i.i.i.i187.preheader, %.critedge.i.i.i.i.i.i182, %bb.dr, %bb.dq
  %.118.i.i.i.i.i.i186 = phi i32 [ 4096, %bb.dq ], [ %i.rj, %bb.dr ], [ %i.sd, %.critedge.i.i.i.i.i.i182 ], [ 4096, %.lr.ph.i.i.i.i.i.i187.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i187 ]
  store i32 %.118.i.i.i.i.i.i186, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.dt:                                            ; preds = %.split302, %.split301
  %i.se = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.qc) ; 0 uses
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge: ; preds = %bb.dt, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i185, %bb.dp, %.split302, %.split301, %.split300, %bb.br, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i150, %bb.bn, %.split291, %.split290, %.split289, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit143, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit144
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread, !llvm.loop !645

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread: ; preds = %bb.bt, %bb.bv, %bb.cc, %bb.cd, %bb.ce, %bb.ca, %bb.bw, %bb.by, %bb.bz, %bb.bu, %bb.bs, %.thread281, %bb.aq, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112
  %.promoted = load i32, ptr %i.c, align 8, !tbaa !395
  br label %bb.du

bb.du:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread
  %i.sf = phi i32 [ %.promoted, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread ], [ %i.wf, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221 ] ; 4 uses
  %.114 = phi i8 [ %.013, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221 ]
  %.1.not = phi i1 [ true, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread ], [ false, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221 ]
  switch i32 %i.sf, label %.split307 [
    i32 0, label %.split306
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194
    i32 2, label %.split308
  ]

.split306:                                        ; preds = %bb.du
  %i.sg = load i32, ptr %i.k, align 8, !tbaa !270
  %.not341 = icmp eq i32 %i.sg, 512
  br i1 %.not341, label %.split312, label %.critedge

.split308:                                        ; preds = %bb.du
  %i.sh = load i32, ptr %i.l, align 8, !tbaa !269
  %.not337 = icmp eq i32 %i.sh, 32768
  br i1 %.not337, label %.split314, label %.critedge

.split307:                                        ; preds = %bb.du
  %i.si = icmp eq i32 %i.sf, 3                    ; 3 uses
  %i.sj = load ptr, ptr %i.g, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.h, align 8
  %i.sm = icmp ne ptr %i.sl, %i.sk
  %i.sn = select i1 %i.si, i1 %i.sm, i1 false
  br i1 %i.sn, label %.critedge, label %.split313

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194: ; preds = %bb.du
  %i.so = load i32, ptr %i.m, align 8, !tbaa !268
  %.not339 = icmp eq i32 %i.so, 4096
  br i1 %.not339, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit, label %.critedge

.split312:                                        ; preds = %.split306
  %i.sp = load i32, ptr %i.j, align 8, !tbaa !270
  %.not342 = icmp eq i32 %i.sp, 512
  br i1 %.not342, label %.thread316.thread326, label %.critedge

.thread316.thread326:                             ; preds = %.split312
  store i32 1, ptr %i.c, align 8, !tbaa !395
  %i.sq = load ptr, ptr %i.z, align 8, !tbaa !282 ; 2 uses
  %i.sr = load i32, ptr %i.m, align 8, !tbaa !268
  %i.ss = add i32 %i.sr, 1                        ; 4 uses
  %i.st = lshr i32 %i.ss, 6                       ; 3 uses
  %i.su = icmp ugt i32 %i.ss, 4095
  br i1 %i.su, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i196, label %bb.dz

.split314:                                        ; preds = %.split308
  %i.sv = load i32, ptr %i.v, align 8, !tbaa !269
  %.not338 = icmp eq i32 %i.sv, 32768
  br i1 %.not338, label %.thread316.thread, label %.critedge

.split313:                                        ; preds = %.split307
  %i.sw = load ptr, ptr %i.e, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.f, align 8
  %i.sz = icmp ne ptr %i.sy, %i.sx
  %i.ta = select i1 %i.si, i1 %i.sz, i1 false
  br i1 %i.ta, label %.critedge, label %bb.dv

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit: ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194
  %i.tb = load i32, ptr %i.n, align 8, !tbaa !268
  %.not340 = icmp eq i32 %i.tb, 4096
  br i1 %.not340, label %.thread316.thread, label %.critedge

bb.dv:                                            ; preds = %.split313
  br i1 %i.si, label %.critedge.thread, label %.thread316

.thread316.thread:                                ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit, %.split314
  %i.tc = add nuw nsw i32 %i.sf, 1                ; 2 uses
  store i32 %i.tc, ptr %i.c, align 8, !tbaa !395
  br label %bb.eb

.thread316:                                       ; preds = %bb.dv
  %i.td = add i32 %i.sf, 1                        ; 3 uses
  store i32 %i.td, ptr %i.c, align 8, !tbaa !395
  %cond = icmp eq i32 %i.td, 0
  br i1 %cond, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %.thread316
  %i.te = load ptr, ptr %i.aa, align 8, !tbaa !284 ; 8 uses
  %i.tf = load i32, ptr %i.k, align 8, !tbaa !270
  %i.tg = add i32 %i.tf, 1                        ; 4 uses
  %i.th = lshr i32 %i.tg, 6                       ; 3 uses
  %i.ti = icmp ugt i32 %i.tg, 511
  br i1 %i.ti, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.tj = and i32 %i.tg, 63
  %i.tk = zext nneg i32 %i.th to i64              ; 8 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.tk
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !283 ; 2 uses
  %i.tn = zext nneg i32 %i.tj to i64              ; 2 uses
  %i.to = shl nuw i64 1, %i.tn
  %i.tp = and i64 %i.tm, %i.to
  %.not.i.i.i.i.i208 = icmp eq i64 %i.tp, 0
  br i1 %.not.i.i.i.i.i208, label %bb.dy, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209

bb.dy:                                            ; preds = %bb.dx
  %i.tq = shl nsw i64 -1, %i.tn
  %i.tr = and i64 %i.tm, %i.tq                    ; 2 uses
  %.not2226.i.i.i.i.i211 = icmp eq i64 %i.tr, 0
  br i1 %.not2226.i.i.i.i.i211, label %.lr.ph.i.i.i.i.i215.preheader, label %.critedge.i.i.i.i.i212

.lr.ph.i.i.i.i.i215.preheader:                    ; preds = %bb.dy
  %exitcond.not.i.i.i.i.i217600 = icmp eq i32 %i.th, 7
  br i1 %exitcond.not.i.i.i.i.i217600, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209, label %.lr.ph602

.lr.ph.i.i.i.i.i215:                              ; preds = %.lr.ph602
  %exitcond.not.i.i.i.i.i217 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218, 7
  br i1 %exitcond.not.i.i.i.i.i217, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.1

.lr.ph602.1:                                      ; preds = %.lr.ph.i.i.i.i.i215
  %indvars.iv.next.i.i.i.i.i218.1 = add nuw nsw i64 %i.tk, 2 ; 3 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.1
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.1 = icmp eq i64 %i.tt, 0
  br i1 %.not22.i.i.i.i.i219.1, label %.lr.ph.i.i.i.i.i215.1, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.1:                            ; preds = %.lr.ph602.1
  %exitcond.not.i.i.i.i.i217.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.1, 7
  br i1 %exitcond.not.i.i.i.i.i217.1, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.2

.lr.ph602.2:                                      ; preds = %.lr.ph.i.i.i.i.i215.1
  %indvars.iv.next.i.i.i.i.i218.2 = add nuw nsw i64 %i.tk, 3 ; 3 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.2
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.2 = icmp eq i64 %i.tv, 0
  br i1 %.not22.i.i.i.i.i219.2, label %.lr.ph.i.i.i.i.i215.2, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.2:                            ; preds = %.lr.ph602.2
  %exitcond.not.i.i.i.i.i217.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.2, 7
  br i1 %exitcond.not.i.i.i.i.i217.2, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.3

.lr.ph602.3:                                      ; preds = %.lr.ph.i.i.i.i.i215.2
  %indvars.iv.next.i.i.i.i.i218.3 = add nuw nsw i64 %i.tk, 4 ; 3 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.3
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.3 = icmp eq i64 %i.tx, 0
  br i1 %.not22.i.i.i.i.i219.3, label %.lr.ph.i.i.i.i.i215.3, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.3:                            ; preds = %.lr.ph602.3
  %exitcond.not.i.i.i.i.i217.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.3, 7
  br i1 %exitcond.not.i.i.i.i.i217.3, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.4

.lr.ph602.4:                                      ; preds = %.lr.ph.i.i.i.i.i215.3
  %indvars.iv.next.i.i.i.i.i218.4 = add nuw nsw i64 %i.tk, 5 ; 3 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.4
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.4 = icmp eq i64 %i.tz, 0
  br i1 %.not22.i.i.i.i.i219.4, label %.lr.ph.i.i.i.i.i215.4, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.4:                            ; preds = %.lr.ph602.4
  %exitcond.not.i.i.i.i.i217.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.4, 7
  br i1 %exitcond.not.i.i.i.i.i217.4, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.5

.lr.ph602.5:                                      ; preds = %.lr.ph.i.i.i.i.i215.4
  %indvars.iv.next.i.i.i.i.i218.5 = add nuw nsw i64 %i.tk, 6 ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.5
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.5 = icmp eq i64 %i.ub, 0
  br i1 %.not22.i.i.i.i.i219.5, label %.lr.ph.i.i.i.i.i215.5, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.5:                            ; preds = %.lr.ph602.5
  %exitcond.not.i.i.i.i.i217.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.5, 7
  br i1 %exitcond.not.i.i.i.i.i217.5, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.6

.lr.ph602.6:                                      ; preds = %.lr.ph.i.i.i.i.i215.5
  %indvars.iv.next.i.i.i.i.i218.6 = add nuw nsw i64 %i.tk, 7 ; 2 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.6
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.6 = icmp eq i64 %i.ud, 0
  br i1 %.not22.i.i.i.i.i219.6, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph602:                                        ; preds = %.lr.ph.i.i.i.i.i215.preheader
  %indvars.iv.next.i.i.i.i.i218 = add nuw nsw i64 %i.tk, 1 ; 3 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219 = icmp eq i64 %i.uf, 0
  br i1 %.not22.i.i.i.i.i219, label %.lr.ph.i.i.i.i.i215, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.critedge.loopexit.i.i.i.i.i220:                  ; preds = %.lr.ph602.6, %.lr.ph602.5, %.lr.ph602.4, %.lr.ph602.3, %.lr.ph602.2, %.lr.ph602.1, %.lr.ph602
  %indvars.iv.next.i.i.i.i.i218.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i.i218, %.lr.ph602 ], [ %indvars.iv.next.i.i.i.i.i218.1, %.lr.ph602.1 ], [ %indvars.iv.next.i.i.i.i.i218.2, %.lr.ph602.2 ], [ %indvars.iv.next.i.i.i.i.i218.3, %.lr.ph602.3 ], [ %indvars.iv.next.i.i.i.i.i218.4, %.lr.ph602.4 ], [ %indvars.iv.next.i.i.i.i.i218.5, %.lr.ph602.5 ], [ %indvars.iv.next.i.i.i.i.i218.6, %.lr.ph602.6 ]
  %.lcssa651 = phi i64 [ %i.uf, %.lr.ph602 ], [ %i.tt, %.lr.ph602.1 ], [ %i.tv, %.lr.ph602.2 ], [ %i.tx, %.lr.ph602.3 ], [ %i.tz, %.lr.ph602.4 ], [ %i.ub, %.lr.ph602.5 ], [ %i.ud, %.lr.ph602.6 ]
  %i.ug = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i218.lcssa to i32
  br label %.critedge.i.i.i.i.i212

.critedge.i.i.i.i.i212:                           ; preds = %.critedge.loopexit.i.i.i.i.i220, %bb.dy
  %.016.lcssa.i.i.i.i.i213 = phi i32 [ %i.th, %bb.dy ], [ %i.ug, %.critedge.loopexit.i.i.i.i.i220 ]
  %.0.lcssa.i.i.i.i.i214 = phi i64 [ %i.tr, %bb.dy ], [ %.lcssa651, %.critedge.loopexit.i.i.i.i.i220 ]
  %i.uh = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i213, 6
  %i.ui = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i214, i1 true)
  %i.uj = trunc nuw nsw i64 %i.ui to i32
  %i.uk = or disjoint i32 %i.uh, %i.uj
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209: ; preds = %.lr.ph.i.i.i.i.i215, %.lr.ph.i.i.i.i.i215.1, %.lr.ph.i.i.i.i.i215.2, %.lr.ph.i.i.i.i.i215.3, %.lr.ph.i.i.i.i.i215.4, %.lr.ph.i.i.i.i.i215.5, %.lr.ph602.6, %.lr.ph.i.i.i.i.i215.preheader, %.critedge.i.i.i.i.i212, %bb.dx, %bb.dw
  %.118.i.i.i.i.i210 = phi i32 [ 512, %bb.dw ], [ %i.tg, %bb.dx ], [ %i.uk, %.critedge.i.i.i.i.i212 ], [ 512, %.lr.ph.i.i.i.i.i215.preheader ], [ 512, %.lr.ph602.6 ], [ 512, %.lr.ph.i.i.i.i.i215.5 ], [ 512, %.lr.ph.i.i.i.i.i215.4 ], [ 512, %.lr.ph.i.i.i.i.i215.3 ], [ 512, %.lr.ph.i.i.i.i.i215.2 ], [ 512, %.lr.ph.i.i.i.i.i215.1 ], [ 512, %.lr.ph.i.i.i.i.i215 ]
  store i32 %.118.i.i.i.i.i210, ptr %i.k, align 8, !tbaa !270
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221

bb.dz:                                            ; preds = %.thread316.thread326
  %i.ul = and i32 %i.ss, 63
  %i.um = zext nneg i32 %i.st to i64              ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.um
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !283 ; 2 uses
  %i.up = zext nneg i32 %i.ul to i64              ; 2 uses
  %i.uq = shl nuw i64 1, %i.up
  %i.ur = and i64 %i.uo, %i.uq
  %.not.i.i.i.i.i.i195 = icmp eq i64 %i.ur, 0
  br i1 %.not.i.i.i.i.i.i195, label %bb.ea, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i196

bb.ea:                                            ; preds = %bb.dz
  %i.us = shl nsw i64 -1, %i.up
  %i.ut = and i64 %i.uo, %i.us                    ; 2 uses
  %.not2226.i.i.i.i.i.i198 = icmp eq i64 %i.ut, 0
  br i1 %.not2226.i.i.i.i.i.i198, label %.lr.ph.i.i.i.i.i.i202.preheader, label %.critedge.i.i.i.i.i.i199

.lr.ph.i.i.i.i.i.i202.preheader:                  ; preds = %bb.ea
  %exitcond.not.i.i.i.i.i.i204594 = icmp eq i32 %i.st, 63
  br i1 %exitcond.not.i.i.i.i.i.i204594, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i196, label %.lr.ph596

.lr.ph.i.i.i.i.i.i202:                            ; preds = %.lr.ph596
  %exitcond.not.i.i.i.i.i.i204 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i205, 63
  br i1 %exitcond.not.i.i.i.i.i.i204, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i196, label %.lr.ph596, !llvm.loop !3

.lr.ph596:                                        ; preds = %.lr.ph.i.i.i.i.i.i202.preheader, %.lr.ph.i.i.i.i.i.i202
  %indvars.iv.i.i.i.i.i.i203595 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i205, %.lr.ph.i.i.i.i.i.i202 ], [ %i.um, %.lr.ph.i.i.i.i.i.i202.preheader ]
  %indvars.iv.next.i.i.i.i.i.i205 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i203595, 1 ; 4 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %indvars.iv.next.i.i.i.i.i.i205
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i.i206 = icmp eq i64 %i.uv, 0
  br i1 %.not22.i.i.i.i.i.i206, label %.lr.ph.i.i.i.i.i.i202, label %.critedge.loopexit.i.i.i.i.i.i207, !llvm.loop !3

.critedge.loopexit.i.i.i.i.i.i207:                ; preds = %.lr.ph596
  %i.uw = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i205 to i32
  br label %.critedge.i.i.i.i.i.i199

.critedge.i.i.i.i.i.i199:                         ; preds = %.critedge.loopexit.i.i.i.i.i.i207, %bb.ea
  %.016.lcssa.i.i.i.i.i.i200 = phi i32 [ %i.st, %bb.ea ], [ %i.uw, %.critedge.loopexit.i.i.i.i.i.i207 ]
  %.0.lcssa.i.i.i.i.i.i201 = phi i64 [ %i.ut, %bb.ea ], [ %i.uv, %.critedge.loopexit.i.i.i.i.i.i207 ]
  %i.ux = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i200, 6
  %i.uy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i201, i1 true)
  %i.uz = trunc nuw nsw i64 %i.uy to i32
  %i.va = or disjoint i32 %i.ux, %i.uz
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i196

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i196: ; preds = %.lr.ph.i.i.i.i.i.i202, %.lr.ph.i.i.i.i.i.i202.preheader, %.critedge.i.i.i.i.i.i199, %bb.dz, %.thread316.thread326
  %.118.i.i.i.i.i.i197 = phi i32 [ 4096, %.thread316.thread326 ], [ %i.ss, %bb.dz ], [ %i.va, %.critedge.i.i.i.i.i.i199 ], [ 4096, %.lr.ph.i.i.i.i.i.i202.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i202 ]
  store i32 %.118.i.i.i.i.i.i197, ptr %i.m, align 8, !tbaa !268
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221

bb.eb:                                            ; preds = %.thread316, %.thread316.thread
  %i.vb = phi i32 [ %i.tc, %.thread316.thread ], [ %i.td, %.thread316 ] ; 2 uses
  switch i32 %i.vb, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221 [
    i32 2, label %bb.ec
    i32 3, label %bb.ef
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.vc = load ptr, ptr %i.y, align 8, !tbaa !285 ; 2 uses
  %i.vd = load i32, ptr %i.l, align 8, !tbaa !269
  %i.ve = add i32 %i.vd, 1                        ; 4 uses
  %i.vf = lshr i32 %i.ve, 6                       ; 3 uses
  %i.vg = icmp ugt i32 %i.ve, 32767
  br i1 %i.vg, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE4nextEv.exit.i247, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vh = and i32 %i.ve, 63
  %i.vi = zext nneg i32 %i.vf to i64              ; 2 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.vi
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !283 ; 2 uses
  %i.vl = zext nneg i32 %i.vh to i64              ; 2 uses
  %i.vm = shl nuw i64 1, %i.vl
  %i.vn = and i64 %i.vk, %i.vm
  %.not.i.i.i.i.i246 = icmp eq i64 %i.vn, 0
  br i1 %.not.i.i.i.i.i246, label %bb.ee, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE4nextEv.exit.i247

bb.ee:                                            ; preds = %bb.ed
  %i.vo = shl nsw i64 -1, %i.vl
  %i.vp = and i64 %i.vk, %i.vo                    ; 2 uses
  %.not2226.i.i.i.i.i249 = icmp eq i64 %i.vp, 0
  br i1 %.not2226.i.i.i.i.i249, label %.lr.ph.i.i.i.i.i253.preheader, label %.critedge.i.i.i.i.i250

.lr.ph.i.i.i.i.i253.preheader:                    ; preds = %bb.ee
  %exitcond.not.i.i.i.i.i255597 = icmp eq i32 %i.vf, 511
  br i1 %exitcond.not.i.i.i.i.i255597, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE4nextEv.exit.i247, label %.lr.ph599

.lr.ph.i.i.i.i.i253:                              ; preds = %.lr.ph599
  %exitcond.not.i.i.i.i.i255 = icmp eq i64 %indvars.iv.next.i.i.i.i.i256, 511
  br i1 %exitcond.not.i.i.i.i.i255, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE4nextEv.exit.i247, label %.lr.ph599, !llvm.loop !4

.lr.ph599:                                        ; preds = %.lr.ph.i.i.i.i.i253.preheader, %.lr.ph.i.i.i.i.i253
  %indvars.iv.i.i.i.i.i254598 = phi i64 [ %indvars.iv.next.i.i.i.i.i256, %.lr.ph.i.i.i.i.i253 ], [ %i.vi, %.lr.ph.i.i.i.i.i253.preheader ]
  %indvars.iv.next.i.i.i.i.i256 = add nuw nsw i64 %indvars.iv.i.i.i.i.i254598, 1 ; 4 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.next.i.i.i.i.i256
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i257 = icmp eq i64 %i.vr, 0
  br i1 %.not22.i.i.i.i.i257, label %.lr.ph.i.i.i.i.i253, label %.critedge.loopexit.i.i.i.i.i258, !llvm.loop !4

.critedge.loopexit.i.i.i.i.i258:                  ; preds = %.lr.ph599
  %i.vs = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i256 to i32
  br label %.critedge.i.i.i.i.i250

.critedge.i.i.i.i.i250:                           ; preds = %.critedge.loopexit.i.i.i.i.i258, %bb.ee
  %.016.lcssa.i.i.i.i.i251 = phi i32 [ %i.vf, %bb.ee ], [ %i.vs, %.critedge.loopexit.i.i.i.i.i258 ]
  %.0.lcssa.i.i.i.i.i252 = phi i64 [ %i.vp, %bb.ee ], [ %i.vr, %.critedge.loopexit.i.i.i.i.i258 ]
  %i.vt = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i251, 6
  %i.vu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i252, i1 true)
  %i.vv = trunc nuw nsw i64 %i.vu to i32
  %i.vw = or disjoint i32 %i.vt, %i.vv
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE4nextEv.exit.i247

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE4nextEv.exit.i247: ; preds = %.lr.ph.i.i.i.i.i253, %.lr.ph.i.i.i.i.i253.preheader, %.critedge.i.i.i.i.i250, %bb.ed, %bb.ec
  %.118.i.i.i.i.i248 = phi i32 [ 32768, %bb.ec ], [ %i.ve, %bb.ed ], [ %i.vw, %.critedge.i.i.i.i.i250 ], [ 32768, %.lr.ph.i.i.i.i.i253.preheader ], [ 32768, %.lr.ph.i.i.i.i.i253 ]
  store i32 %.118.i.i.i.i.i248, ptr %i.l, align 8, !tbaa !269
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221

bb.ef:                                            ; preds = %bb.eb
  %i.vx = load ptr, ptr %i.g, align 8, !tbaa !399
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 8 ; 3 uses
  %i.vz = load ptr, ptr %i.h, align 8, !tbaa !400 ; 3 uses
  %.not.i.i.i.i239 = icmp eq ptr %i.vz, %i.vy
  br i1 %.not.i.i.i.i239, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.wa = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.vz) #27 ; 2 uses
  store ptr %i.wa, ptr %i.h, align 8, !tbaa !400
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.promoted.i.i.i.i.i240 = phi ptr [ %i.wa, %bb.eg ], [ %i.vz, %bb.ef ] ; 2 uses
  %.not2.i.i.i.i.i241 = icmp eq ptr %.promoted.i.i.i.i.i240, %i.vy
  br i1 %.not2.i.i.i.i.i241, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221, label %.lr.ph.i.i.i.i2.i242

.lr.ph.i.i.i.i2.i242:                             ; preds = %bb.eh, %bb.ei
  %i.wb = phi ptr [ %i.we, %bb.ei ], [ %.promoted.i.i.i.i.i240, %bb.eh ] ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 48
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !405
  %.not1.i.i.i.i.i243 = icmp eq ptr %i.wd, null
  br i1 %.not1.i.i.i.i.i243, label %bb.ei, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221

bb.ei:                                            ; preds = %.lr.ph.i.i.i.i2.i242
  %i.we = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.wb) #27 ; 3 uses
  store ptr %i.we, ptr %i.h, align 8, !tbaa !400
  %.not.i.i.i.i3.i245 = icmp eq ptr %i.we, %i.vy
  br i1 %.not.i.i.i.i3.i245, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221, label %.lr.ph.i.i.i.i2.i242, !llvm.loop !21

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221: ; preds = %.lr.ph.i.i.i.i2.i242, %bb.ei, %bb.eh, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE4nextEv.exit.i247, %bb.eb, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i196
  %i.wf = phi i32 [ 1, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i196 ], [ 3, %bb.eh ], [ 2, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE4nextEv.exit.i247 ], [ %i.vb, %bb.eb ], [ 0, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit.i209 ], [ 3, %bb.ei ], [ 3, %.lr.ph.i.i.i.i2.i242 ]
  br label %bb.du, !llvm.loop !646

.critedge:                                        ; preds = %.split314, %.split313, %.split312, %.split308, %.split307, %.split306, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194
  %.lcssa656 = phi i32 [ 2, %.split314 ], [ 3, %.split313 ], [ 0, %.split312 ], [ 2, %.split308 ], [ 3, %.split307 ], [ 0, %.split306 ], [ 1, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit ], [ 1, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194 ]
  br i1 %.1.not, label %.critedge.thread, label %bb.b

.critedge.thread:                                 ; preds = %bb.r, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92, %.critedge, %bb.dv
  %.116.mux325 = phi i1 [ false, %bb.dv ], [ true, %.critedge ], [ true, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92 ], [ true, %bb.r ]
  ret i1 %.116.mux325
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !284  ; 8 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !270
  %i.e = add i32 %i.d, 1                          ; 4 uses
  %i.f = lshr i32 %i.e, 6                         ; 3 uses
  %i.g = icmp ugt i32 %i.e, 511
  br i1 %i.g, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.e, 63
  %i.i = zext nneg i32 %i.f to i64                ; 8 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !283  ; 2 uses
  %i.l = zext nneg i32 %i.h to i64                ; 2 uses
  %i.m = shl nuw i64 1, %i.l
  %i.n = and i64 %i.k, %i.m
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit

bb.d:                                             ; preds = %bb.c
  %i.o = shl nsw i64 -1, %i.l
  %i.p = and i64 %i.k, %i.o                       ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %exitcond.not.i.i.i.i13 = icmp eq i32 %i.f, 7
  br i1 %exitcond.not.i.i.i.i13, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit, label %.lr.ph15

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph15
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit, label %.lr.ph15.1

.lr.ph15.1:                                       ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.i, 2 ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.1
  %i.r = load i64, ptr %i.q, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.r, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph15.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit, label %.lr.ph15.2

.lr.ph15.2:                                       ; preds = %.lr.ph.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.i, 3 ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.2
  %i.t = load i64, ptr %i.s, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.t, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph15.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit, label %.lr.ph15.3

.lr.ph15.3:                                       ; preds = %.lr.ph.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.i, 4 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.3
  %i.v = load i64, ptr %i.u, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.v, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph15.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit, label %.lr.ph15.4

.lr.ph15.4:                                       ; preds = %.lr.ph.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.i, 5 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.4
  %i.x = load i64, ptr %i.w, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.x, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph15.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit, label %.lr.ph15.5

.lr.ph15.5:                                       ; preds = %.lr.ph.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.i, 6 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.5
  %i.z = load i64, ptr %i.y, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.z, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph15.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit, label %.lr.ph15.6

.lr.ph15.6:                                       ; preds = %.lr.ph.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.i, 7 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.6
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.ab, 0
  br i1 %.not22.i.i.i.i.6, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph15:                                         ; preds = %.lr.ph.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.i, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph15.6, %.lr.ph15.5, %.lr.ph15.4, %.lr.ph15.3, %.lr.ph15.2, %.lr.ph15.1, %.lr.ph15
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph15 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph15.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph15.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph15.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph15.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph15.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph15.6 ]
  %.lcssa = phi i64 [ %i.ad, %.lr.ph15 ], [ %i.r, %.lr.ph15.1 ], [ %i.t, %.lr.ph15.2 ], [ %i.v, %.lr.ph15.3 ], [ %i.x, %.lr.ph15.4 ], [ %i.z, %.lr.ph15.5 ], [ %i.ab, %.lr.ph15.6 ]
  %i.ae = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.d
  %.016.lcssa.i.i.i.i = phi i32 [ %i.f, %bb.d ], [ %i.ae, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.af = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEE4nextEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %.lr.ph15.6, %.lr.ph.i.i.i.i.preheader, %bb.b, %bb.c, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ 512, %bb.b ], [ %i.e, %bb.c ], [ %i.ai, %.critedge.i.i.i.i ], [ 512, %.lr.ph.i.i.i.i.preheader ], [ 512, %.lr.ph15.6 ], [ 512, %.lr.ph.i.i.i.i.5 ], [ 512, %.lr.ph.i.i.i.i.4 ], [ 512, %.lr.ph.i.i.i.i.3 ], [ 512, %.lr.ph.i.i.i.i.2 ], [ 512, %.lr.ph.i.i.i.i.1 ], [ 512, %.lr.ph.i.i.i.i ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.a, align 8, !tbaa !270
  %i.aj = icmp ne i32 %.118.i.i.i.i, 512
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE4nextEj.exit

bb.e:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !282 ; 2 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !268
  %i.ao = add i32 %i.an, 1                        ; 4 uses
  %i.ap = lshr i32 %i.ao, 6                       ; 3 uses
  %i.aq = icmp ugt i32 %i.ao, 4095
  br i1 %i.aq, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = and i32 %i.ao, 63
  %i.as = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !283 ; 2 uses
  %i.av = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = and i64 %i.au, %i.aw
  %.not.i.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ay = shl nsw i64 -1, %i.av
  %i.az = and i64 %i.au, %i.ay                    ; 2 uses
  %.not2226.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not2226.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %exitcond.not.i.i.i.i.i11 = icmp eq i32 %i.ap, 63
  br i1 %exitcond.not.i.i.i.i.i11, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i, label %.lr.ph

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i, label %.lr.ph, !llvm.loop !3

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i12 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.as, %.lr.ph.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i12, 1 ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.i.i.i.i.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !3

.critedge.loopexit.i.i.i.i.i:                     ; preds = %.lr.ph
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.g
  %.016.lcssa.i.i.i.i.i = phi i32 [ %i.ap, %bb.g ], [ %i.bc, %.critedge.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.az, %bb.g ], [ %i.bb, %.critedge.loopexit.i.i.i.i.i ]
  %i.bd = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i, 6
  %i.be = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %.critedge.i.i.i.i.i, %bb.f, %bb.e
  %.118.i.i.i.i.i = phi i32 [ 4096, %bb.e ], [ %i.ao, %bb.f ], [ %i.bg, %.critedge.i.i.i.i.i ], [ 4096, %.lr.ph.i.i.i.i.i.preheader ], [ 4096, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i32 %.118.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !268
  %i.bh = icmp ne i32 %.118.i.i.i.i.i, 4096
end_hunk_3
begin_hunk_4_@_ZNK7openvdb5v13_05tools8valxform15SharedOpApplierINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEKNS1_15MatMulNormalizeEEclERNS4_13IteratorRangeISS_EE:bb.a

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit: ; preds = %bb.b
  %i.v = load i32, ptr %i.c, align 8, !tbaa !270
  %.not7 = icmp eq i32 %i.v, 512
  br i1 %.not7, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %.split5, %.split4, %.split, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !708, !nonnull !272, !align !273
  tail call void @_ZNK7openvdb5v13_05tools15MatMulNormalizeclINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(128) %i.w, ptr noundef nonnull align 8 dereferenceable(272) %1)
  %i.x = load i64, ptr %i.d, align 8, !tbaa !428  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.x, 0
  br i1 %.not3.i.i, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.d, align 8, !tbaa !428
  %i.z = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.critedge.backedge.i.i.i.i
  %i.aa = load i32, ptr %i.g, align 8, !tbaa !429 ; 2 uses
  %i.ab = load i32, ptr %i.l, align 4, !tbaa !431
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.critedge.backedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = load i32, ptr %i.k, align 8, !tbaa !224
  %i.ae = icmp sgt i32 %i.aa, %i.ad
  br i1 %i.ae, label %.critedge.backedge.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit

.critedge.backedge.i.i.i.i:                       ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.af = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext false)
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit, !llvm.loop !26

_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit: ; preds = %bb.e, %.critedge.backedge.i.i.i.i, %bb.d
  %.pre = load i64, ptr %i.d, align 8, !tbaa !428
  %i.ag = icmp eq i64 %.pre, 0
  br i1 %i.ag, label %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit.thread, label %bb.b, !llvm.loop !707

_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit.thread: ; preds = %bb.c, %_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEcvbEv.exit, %.split, %.split4, %.split5, %_ZN7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEEppEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7openvdb5v13_04tree13IteratorRangeINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"class.openvdb::v13_0::tree::TreeValueIteratorBase.251", align 8 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef nonnull align 8 dereferenceable(272) %0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.u = load <2 x i32>, ptr %i.s, align 8, !tbaa !46
  %i.v = load i32, ptr %i.s, align 8, !tbaa !429
  store <2 x i32> %i.u, ptr %i.r, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.y = load i32, ptr %i.x, align 8, !tbaa !224
  store i32 %i.y, ptr %i.w, align 8, !tbaa !224
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !225
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !225
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr null, ptr %i.ac, align 8, !tbaa !226
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %1, ptr %i.ad, align 8, !tbaa !227
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !228
  store ptr %i.c, ptr %i.g, align 8, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.h, ptr %i.af, align 8, !tbaa !230
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.j, ptr %i.ag, align 8, !tbaa !231
  store ptr %i.l, ptr %i.p, align 8, !tbaa !232
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit, %bb.a
  %i.al = phi i32 [ %i.v, %bb.a ], [ %.pre, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.av, %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit ] ; 2 uses
  switch i32 %i.al, label %.split2 [
    i32 0, label %.split
    i32 1, label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE4testEv.exit
    i32 2, label %.split3
  ]

.split:                                           ; preds = %bb.b
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !270
  %.not6 = icmp eq i32 %i.am, 512
  br i1 %.not6, label %bb.c, label %bb.d

.split3:                                          ; preds = %bb.b
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !269
  %.not = icmp eq i32 %i.an, 32768
  br i1 %.not, label %bb.c, label %bb.d

.split2:                                          ; preds = %bb.b
  %i.ao = icmp eq i32 %i.al, 3
  %i.ap = load ptr, ptr %i.n, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.ak, align 8
  %i.as = icmp ne ptr %i.ar, %i.aq
  %i.at = select i1 %i.ao, i1 %i.as, i1 false
  br i1 %i.at, label %bb.d, label %bb.c

_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE4testEv.exit: ; preds = %bb.b
  %i.au = load i32, ptr %i.ai, align 8, !tbaa !268
  %.not5 = icmp eq i32 %i.au, 4096
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split3, %.split2, %.split, %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE4testEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i64 %.0

bb.d:                                             ; preds = %.split3, %.split2, %.split, %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE4testEv.exit
  %i.av = add i64 %.0, 1
  %i.aw = call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(272) %1, i1 noundef zeroext false)
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit

.lr.ph.i.i:                                       ; preds = %bb.d, %.critedge.backedge.i.i
  %i.ax = load i32, ptr %i.r, align 8, !tbaa !429 ; 2 uses
  %i.ay = load i32, ptr %i.t, align 4, !tbaa !431
  %i.az = icmp slt i32 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.w, align 8
  %i.bb = icmp sgt i32 %i.ax, %i.ba
  %or.cond = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond, label %.critedge.backedge.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit

.critedge.backedge.i.i:                           ; preds = %.lr.ph.i.i
  %i.bc = call noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(272) %1, i1 noundef zeroext false)
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit, !llvm.loop !26

_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEppEv.exit: ; preds = %.lr.ph.i.i, %.critedge.backedge.i.i, %bb.d
  %.pre = load i32, ptr %i.r, align 8, !tbaa !429
  br label %bb.b, !llvm.loop !709
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb(ptr noundef nonnull align 8 dereferenceable(272) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 19 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i32, ptr %i.c, align 8, !tbaa !429
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %i.ab = phi i32 [ %.pre, %bb.a ], [ %.lcssa656, %.critedge ] ; 7 uses
  %.013 = phi i8 [ %i.a, %bb.a ], [ %.114, %.critedge ] ; 3 uses
  switch i32 %i.ab, label %bb.g [
    i32 0, label %bb.f
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i

bb.d:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !432 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ae, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi i32 [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.e ]
  %.sroa.02.05.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %bb.e ]
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i) #27 ; 2 uses
  %i.ag = add i32 %.06.i.i.i.i.i.i, 1             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !710

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i: ; preds = %bb.b, %bb.c
  %.sink3.i.i = phi i64 [ 32, %bb.c ], [ 8, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !46
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !270
  %i.ak = load i32, ptr %i.k, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit

bb.g:                                             ; preds = %bb.b, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i
  %.ph = phi i32 [ -1, %bb.b ], [ %i.ai, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i ] ; 2 uses
  switch i32 %i.ab, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit [
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i

.thread:                                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e, %bb.d
  %.ph261 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !433 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i24, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i25 = load ptr, ptr %i.h, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i26 = icmp eq ptr %i.an, %.sroa.0.0.copyload.i.i.i.i.i25
  br i1 %.not4.i.i.i.i.i.i26, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit, label %.lr.ph.i.i.i.i.i.i27

.lr.ph.i.i.i.i.i.i27:                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i27
  %.06.i.i.i.i.i.i28 = phi i32 [ %i.ap, %.lr.ph.i.i.i.i.i.i27 ], [ 0, %bb.i ]
  %.sroa.02.05.i.i.i.i.i.i29 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i27 ], [ %i.an, %bb.i ]
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i29) #27 ; 2 uses
  %i.ap = add i32 %.06.i.i.i.i.i.i28, 1           ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.ao, %.sroa.0.0.copyload.i.i.i.i.i25
  br i1 %.not.i.i.i.i.i.i30, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit, label %.lr.ph.i.i.i.i.i.i27, !llvm.loop !711

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i: ; preds = %bb.h, %bb.g
  %.sink3.i.i31 = phi i64 [ 32, %bb.h ], [ 8, %bb.g ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink3.i.i31
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit: ; preds = %.lr.ph.i.i.i.i.i.i27, %bb.f, %bb.g, %.thread, %bb.i, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i
  %i.as = phi i32 [ %i.aj, %bb.f ], [ %.ph261, %bb.i ], [ %.ph, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i ], [ %.ph, %bb.g ], [ %.ph261, %.thread ], [ %.ph261, %.lr.ph.i.i.i.i.i.i27 ] ; 6 uses
  %i.at = phi i32 [ %i.ak, %bb.f ], [ 0, %bb.i ], [ %i.ar, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i ], [ -1, %bb.g ], [ 0, %.thread ], [ %i.ap, %.lr.ph.i.i.i.i.i.i27 ] ; 4 uses
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.j, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit
  switch i32 %i.ab, label %.split262 [
    i32 0, label %.split
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit
    i32 2, label %.split263
  ]

.split:                                           ; preds = %bb.j
  %i.av = load i32, ptr %i.k, align 8, !tbaa !270
  %.not328 = icmp eq i32 %i.av, 512
  br i1 %.not328, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread

.split263:                                        ; preds = %bb.j
  %i.aw = load i32, ptr %i.l, align 8, !tbaa !269
  %.not = icmp eq i32 %i.aw, 32768
  br i1 %.not, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit

.split262:                                        ; preds = %bb.j
  %i.ax = icmp eq i32 %i.ab, 3
  %i.ay = load ptr, ptr %i.g, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.h, align 8
  %i.bb = icmp ne ptr %i.ba, %i.az
  %i.bc = select i1 %i.ax, i1 %i.bb, i1 false
  br i1 %i.bc, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit: ; preds = %bb.j
  %i.bd = load i32, ptr %i.m, align 8, !tbaa !268
  %.not327 = icmp eq i32 %i.bd, 4096
  br i1 %.not327, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %bb.k

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread: ; preds = %.split
  %i.be = load i32, ptr %i.j, align 8, !tbaa !270
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.j, align 8, !tbaa !270
  br label %bb.n

bb.k:                                             ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !282 ; 2 uses
  %i.bh = load i32, ptr %i.n, align 8, !tbaa !268
  %i.bi = add i32 %i.bh, 1                        ; 4 uses
  %i.bj = lshr i32 %i.bi, 6                       ; 3 uses
  %i.bk = icmp ugt i32 %i.bi, 4095
  br i1 %i.bk, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = and i32 %i.bi, 63
  %i.bm = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !283 ; 2 uses
  %i.bp = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = and i64 %i.bo, %i.bq
  %.not.not.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = xor i64 %i.bo, -1
  %i.bt = shl nsw i64 -1, %i.bp
  %i.bu = and i64 %i.bt, %i.bs                    ; 2 uses
  %.not25.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not25.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i32.preheader, label %.critedge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i32.preheader:                   ; preds = %bb.m
  %exitcond.not.i.i.i.i.i.i571 = icmp eq i32 %i.bj, 63
  br i1 %exitcond.not.i.i.i.i.i.i571, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, label %.lr.ph

.lr.ph.i.i.i.i.i.i32:                             ; preds = %.lr.ph
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i32.preheader, %.lr.ph.i.i.i.i.i.i32
  %indvars.iv.i.i.i.i.i.i572 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i32 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i32.preheader ]
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i572, 1 ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i.i.i33 = icmp eq i64 %i.bw, -1
  br i1 %.not.i.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i.i32, label %.critedge.loopexit.i.i.i.i.i.i, !llvm.loop !1

.critedge.loopexit.i.i.i.i.i.i:                   ; preds = %.lr.ph
  %i.bx = xor i64 %i.bw, -1
  %i.by = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.critedge.loopexit.i.i.i.i.i.i, %bb.m
  %.016.lcssa.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.m ], [ %i.by, %.critedge.loopexit.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.bx, %.critedge.loopexit.i.i.i.i.i.i ]
  %i.bz = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i, 6
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499: ; preds = %.lr.ph.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i.i32.preheader, %bb.k, %bb.l, %.critedge.i.i.i.i.i.i
  %.118.i.i.i.i.i.i = phi i32 [ 4096, %bb.k ], [ %i.bi, %bb.l ], [ %i.cc, %.critedge.i.i.i.i.i.i ], [ 4096, %.lr.ph.i.i.i.i.i.i32.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i32 ]
  store i32 %.118.i.i.i.i.i.i, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit: ; preds = %.split262, %.split263
  %i.cd = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.ab) ; 0 uses
  %.pre408 = load i32, ptr %i.c, align 8, !tbaa !429 ; 2 uses
  switch i32 %.pre408, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread [
    i32 0, label %bb.n
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41
    i32 2, label %bb.o
    i32 3, label %bb.p
  ]

bb.n:                                             ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit
  %i.ce = load i32, ptr %i.j, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !432 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i34, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i35 = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i36 = icmp eq ptr %i.ch, %.sroa.0.0.copyload.i.i.i.i.i35
  br i1 %.not4.i.i.i.i.i.i36, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %.lr.ph.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i37:                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i37
  %.06.i.i.i.i.i.i38 = phi i32 [ %i.cj, %.lr.ph.i.i.i.i.i.i37 ], [ 0, %bb.q ]
  %.sroa.02.05.i.i.i.i.i.i39 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i37 ], [ %i.ch, %bb.q ]
  %i.ci = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i39) #27 ; 2 uses
  %i.cj = add i32 %.06.i.i.i.i.i.i38, 1           ; 2 uses
  %.not.i.i.i.i.i.i40 = icmp eq ptr %i.ci, %.sroa.0.0.copyload.i.i.i.i.i35
  br i1 %.not.i.i.i.i.i.i40, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43, label %.lr.ph.i.i.i.i.i.i37, !llvm.loop !710

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit, %bb.o
  %i.ck = phi i32 [ 2, %bb.o ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499 ]
  %.sink3.i.i42 = phi i64 [ 32, %bb.o ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit.thread499 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i42
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43: ; preds = %.lr.ph.i.i.i.i.i.i37, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41, %bb.q, %bb.p, %bb.n, %.split263, %.split262, %.split, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit
  %i.cn = phi i32 [ 2, %.split263 ], [ 1, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit ], [ %i.ab, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit ], [ 0, %.split ], [ %i.ab, %.split262 ], [ 0, %bb.n ], [ 3, %bb.q ], [ %i.ck, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41 ], [ 3, %bb.p ], [ 3, %.lr.ph.i.i.i.i.i.i37 ] ; 3 uses
  %.011 = phi i32 [ %i.as, %.split263 ], [ %i.as, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit ], [ %i.as, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit ], [ %i.as, %.split ], [ %i.as, %.split262 ], [ %i.ce, %bb.n ], [ 0, %bb.q ], [ %i.cm, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i41 ], [ 0, %bb.p ], [ %i.cj, %.lr.ph.i.i.i.i.i.i37 ]
  %i.co = icmp ult i32 %.011, %i.at
  br i1 %i.co, label %bb.r, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread

bb.r:                                             ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43
  %i.cp = trunc nuw i8 %.013 to i1
  br i1 %i.cp, label %.critedge.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i32 %i.cn, label %.split269 [
    i32 0, label %.split268
    i32 1, label %bb.t
  ]

.split268:                                        ; preds = %bb.s
  %i.cq = load i32, ptr %i.j, align 8, !tbaa !270
  %i.cr = add i32 %i.cq, 1                        ; 2 uses
  store i32 %i.cr, ptr %i.j, align 8, !tbaa !270
  %.not330 = icmp eq i32 %i.cr, 512
  br i1 %.not330, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader, label %.thread501

bb.t:                                             ; preds = %bb.s
  %i.cs = load ptr, ptr %i.o, align 8, !tbaa !282 ; 2 uses
  %i.ct = load i32, ptr %i.n, align 8, !tbaa !268
  %i.cu = add i32 %i.ct, 1                        ; 4 uses
  %i.cv = lshr i32 %i.cu, 6                       ; 3 uses
  %i.cw = icmp ugt i32 %i.cu, 4095
  br i1 %i.cw, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = and i32 %i.cu, 63
  %i.cy = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !283 ; 2 uses
  %i.db = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.da, %i.dc
  %.not.not.i.i.i.i.i.i44 = icmp eq i64 %i.dd, 0
  br i1 %.not.not.i.i.i.i.i.i44, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271, label %bb.v

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271: ; preds = %bb.u
  store i32 %i.cu, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65

bb.v:                                             ; preds = %bb.u
  %i.de = xor i64 %i.da, -1
  %i.df = shl nsw i64 -1, %i.db
  %i.dg = and i64 %i.df, %i.de                    ; 2 uses
  %.not25.i.i.i.i.i.i45 = icmp eq i64 %i.dg, 0
  br i1 %.not25.i.i.i.i.i.i45, label %.lr.ph.i.i.i.i.i.i51.preheader, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57

.lr.ph.i.i.i.i.i.i51.preheader:                   ; preds = %bb.v
  %exitcond.not.i.i.i.i.i.i53573 = icmp eq i32 %i.cv, 63
  br i1 %exitcond.not.i.i.i.i.i.i53573, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread, label %.lr.ph575

.lr.ph.i.i.i.i.i.i51:                             ; preds = %.lr.ph575
  %exitcond.not.i.i.i.i.i.i53 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i54, 63
  br i1 %exitcond.not.i.i.i.i.i.i53, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread, label %.lr.ph575, !llvm.loop !1

.lr.ph575:                                        ; preds = %.lr.ph.i.i.i.i.i.i51.preheader, %.lr.ph.i.i.i.i.i.i51
  %indvars.iv.i.i.i.i.i.i52574 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i54, %.lr.ph.i.i.i.i.i.i51 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i51.preheader ]
  %indvars.iv.next.i.i.i.i.i.i54 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i52574, 1 ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i.i.i.i54
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i.i.i55 = icmp eq i64 %i.di, -1
  br i1 %.not.i.i.i.i.i.i55, label %.lr.ph.i.i.i.i.i.i51, label %.critedge.loopexit.i.i.i.i.i.i56, !llvm.loop !1

.critedge.loopexit.i.i.i.i.i.i56:                 ; preds = %.lr.ph575
  %i.dj = xor i64 %i.di, -1
  %i.dk = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i54 to i32
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57

.split269:                                        ; preds = %bb.s
  %i.dl = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.cn)
  br i1 %i.dl, label %bb.w, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread: ; preds = %.lr.ph.i.i.i.i.i.i51, %.lr.ph.i.i.i.i.i.i51.preheader, %bb.t
  store i32 4096, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57: ; preds = %bb.v, %.critedge.loopexit.i.i.i.i.i.i56
  %.016.lcssa.i.i.i.i.i.i47 = phi i32 [ %i.cv, %bb.v ], [ %i.dk, %.critedge.loopexit.i.i.i.i.i.i56 ]
  %.0.lcssa.i.i.i.i.i.i48 = phi i64 [ %i.dg, %bb.v ], [ %i.dj, %.critedge.loopexit.i.i.i.i.i.i56 ]
  %i.dm = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i47, 6
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i48, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = or disjoint i32 %i.dm, %i.do            ; 2 uses
  store i32 %i.dp, ptr %i.n, align 8, !tbaa !268
  %.not329 = icmp eq i32 %i.dp, 4096
  br i1 %.not329, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65

bb.w:                                             ; preds = %.split269
  %.pre409 = load i32, ptr %i.c, align 8, !tbaa !429 ; 2 uses
  switch i32 %.pre409, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67 [
    i32 0, label %.thread501
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

.thread501:                                       ; preds = %.split268, %bb.w
  %i.dq = load i32, ptr %i.j, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67

bb.x:                                             ; preds = %bb.w
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65

bb.y:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !432 ; 2 uses
  %.not.i.i.i.i.i58 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i58, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i59 = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i60 = icmp eq ptr %i.dt, %.sroa.0.0.copyload.i.i.i.i.i59
  br i1 %.not4.i.i.i.i.i.i60, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67, label %.lr.ph.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i61:                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i61
  %.06.i.i.i.i.i.i62 = phi i32 [ %i.dv, %.lr.ph.i.i.i.i.i.i61 ], [ 0, %bb.z ]
  %.sroa.02.05.i.i.i.i.i.i63 = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i61 ], [ %i.dt, %bb.z ]
  %i.du = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i63) #27 ; 2 uses
  %i.dv = add i32 %.06.i.i.i.i.i.i62, 1           ; 2 uses
  %.not.i.i.i.i.i.i64 = icmp eq ptr %i.du, %.sroa.0.0.copyload.i.i.i.i.i59
  br i1 %.not.i.i.i.i.i.i64, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67, label %.lr.ph.i.i.i.i.i.i61, !llvm.loop !710

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271, %bb.w, %bb.x
  %i.dw = phi i32 [ 2, %bb.x ], [ 1, %bb.w ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271 ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57 ]
  %.sink3.i.i66 = phi i64 [ 32, %bb.x ], [ 8, %bb.w ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread271 ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i66
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67: ; preds = %.lr.ph.i.i.i.i.i.i61, %bb.w, %.thread501, %bb.y, %bb.z, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65
  %i.dz = phi i32 [ 0, %.thread501 ], [ 3, %bb.z ], [ %i.dw, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65 ], [ %.pre409, %bb.w ], [ 3, %bb.y ], [ 3, %.lr.ph.i.i.i.i.i.i61 ] ; 5 uses
  %i.ea = phi i32 [ %i.dq, %.thread501 ], [ 0, %bb.z ], [ %i.dy, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i65 ], [ -1, %bb.w ], [ 0, %bb.y ], [ %i.dv, %.lr.ph.i.i.i.i.i.i61 ]
  %i.eb = icmp eq i32 %i.ea, %i.at
  br i1 %i.eb, label %bb.aa, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82

bb.aa:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67
  switch i32 %i.dz, label %.split274 [
    i32 0, label %.split273
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68
    i32 2, label %.split275
  ]

.split273:                                        ; preds = %bb.aa
  %i.ec = load i32, ptr %i.k, align 8, !tbaa !270
  %.not333 = icmp eq i32 %i.ec, 512
  br i1 %.not333, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread, label %bb.ab

.split275:                                        ; preds = %bb.aa
  %i.ed = load i32, ptr %i.l, align 8, !tbaa !269
  %.not331 = icmp eq i32 %i.ed, 32768
  br i1 %.not331, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504, label %bb.af

.split274:                                        ; preds = %bb.aa
  %i.ee = icmp eq i32 %i.dz, 3
  %i.ef = load ptr, ptr %i.g, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.h, align 8
  %i.ei = icmp ne ptr %i.eh, %i.eg
  %i.ej = select i1 %i.ee, i1 %i.ei, i1 false
  br i1 %i.ej, label %bb.af, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68: ; preds = %bb.aa
  %i.ek = load i32, ptr %i.m, align 8, !tbaa !268
  %.not332 = icmp eq i32 %i.ek, 4096
  br i1 %.not332, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90, label %bb.ac

bb.ab:                                            ; preds = %.split273
  %i.el = load i32, ptr %i.j, align 8, !tbaa !270
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.j, align 8, !tbaa !270
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread

bb.ac:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !282 ; 2 uses
  %i.eo = load i32, ptr %i.n, align 8, !tbaa !268
  %i.ep = add i32 %i.eo, 1                        ; 4 uses
  %i.eq = lshr i32 %i.ep, 6                       ; 3 uses
  %i.er = icmp ugt i32 %i.ep, 4095
  br i1 %i.er, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i74, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.es = and i32 %i.ep, 63
  %i.et = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !283 ; 2 uses
  %i.ew = zext nneg i32 %i.es to i64              ; 2 uses
  %i.ex = shl nuw i64 1, %i.ew
  %i.ey = and i64 %i.ev, %i.ex
  %.not.not.i.i.i.i.i.i69 = icmp eq i64 %i.ey, 0
  br i1 %.not.not.i.i.i.i.i.i69, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i74, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ez = xor i64 %i.ev, -1
  %i.fa = shl nsw i64 -1, %i.ew
  %i.fb = and i64 %i.fa, %i.ez                    ; 2 uses
  %.not25.i.i.i.i.i.i70 = icmp eq i64 %i.fb, 0
  br i1 %.not25.i.i.i.i.i.i70, label %.lr.ph.i.i.i.i.i.i76.preheader, label %.critedge.i.i.i.i.i.i71

.lr.ph.i.i.i.i.i.i76.preheader:                   ; preds = %bb.ae
  %exitcond.not.i.i.i.i.i.i78576 = icmp eq i32 %i.eq, 63
  br i1 %exitcond.not.i.i.i.i.i.i78576, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i74, label %.lr.ph578

.lr.ph.i.i.i.i.i.i76:                             ; preds = %.lr.ph578
  %exitcond.not.i.i.i.i.i.i78 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i79, 63
  br i1 %exitcond.not.i.i.i.i.i.i78, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i74, label %.lr.ph578, !llvm.loop !1

.lr.ph578:                                        ; preds = %.lr.ph.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i76
  %indvars.iv.i.i.i.i.i.i77577 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i79, %.lr.ph.i.i.i.i.i.i76 ], [ %i.et, %.lr.ph.i.i.i.i.i.i76.preheader ]
  %indvars.iv.next.i.i.i.i.i.i79 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i77577, 1 ; 4 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i.i.i.i.i.i79
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i.i.i80 = icmp eq i64 %i.fd, -1
  br i1 %.not.i.i.i.i.i.i80, label %.lr.ph.i.i.i.i.i.i76, label %.critedge.loopexit.i.i.i.i.i.i81, !llvm.loop !1

.critedge.loopexit.i.i.i.i.i.i81:                 ; preds = %.lr.ph578
  %i.fe = xor i64 %i.fd, -1
  %i.ff = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i79 to i32
  br label %.critedge.i.i.i.i.i.i71

.critedge.i.i.i.i.i.i71:                          ; preds = %.critedge.loopexit.i.i.i.i.i.i81, %bb.ae
  %.016.lcssa.i.i.i.i.i.i72 = phi i32 [ %i.eq, %bb.ae ], [ %i.ff, %.critedge.loopexit.i.i.i.i.i.i81 ]
  %.0.lcssa.i.i.i.i.i.i73 = phi i64 [ %i.fb, %bb.ae ], [ %i.fe, %.critedge.loopexit.i.i.i.i.i.i81 ]
  %i.fg = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i72, 6
  %i.fh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i73, i1 true)
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = or disjoint i32 %i.fg, %i.fi
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i74

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i74: ; preds = %.lr.ph.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i.i76.preheader, %.critedge.i.i.i.i.i.i71, %bb.ad, %bb.ac
  %.118.i.i.i.i.i.i75 = phi i32 [ 4096, %bb.ac ], [ %i.ep, %bb.ad ], [ %i.fj, %.critedge.i.i.i.i.i.i71 ], [ 4096, %.lr.ph.i.i.i.i.i.i76.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i76 ]
  store i32 %.118.i.i.i.i.i.i75, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90

bb.af:                                            ; preds = %.split275, %.split274
  %i.fk = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.dz) ; 0 uses
  %.pre410 = load i32, ptr %i.c, align 8, !tbaa !429
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82: ; preds = %bb.af, %.split274, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67
  %i.fl = phi i32 [ %.pre410, %bb.af ], [ %i.dz, %.split274 ], [ %i.dz, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit67 ]
  switch i32 %i.fl, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader [
    i32 0, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90
    i32 2, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504
    i32 3, label %bb.ag
  ]

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread: ; preds = %.split273, %bb.ab, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82
  %i.fm = load i32, ptr %i.j, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504: ; preds = %.split275, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90

bb.ag:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !432 ; 2 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i83, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i84 = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i85 = icmp eq ptr %i.fp, %.sroa.0.0.copyload.i.i.i.i.i84
  br i1 %.not4.i.i.i.i.i.i85, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92, label %.lr.ph.i.i.i.i.i.i86

.lr.ph.i.i.i.i.i.i86:                             ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i86
  %.06.i.i.i.i.i.i87 = phi i32 [ %i.fr, %.lr.ph.i.i.i.i.i.i86 ], [ 0, %bb.ah ]
  %.sroa.02.05.i.i.i.i.i.i88 = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i86 ], [ %i.fp, %bb.ah ]
  %i.fq = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i88) #27 ; 2 uses
  %i.fr = add i32 %.06.i.i.i.i.i.i87, 1           ; 2 uses
  %.not.i.i.i.i.i.i89 = icmp eq ptr %i.fq, %.sroa.0.0.copyload.i.i.i.i.i84
  br i1 %.not.i.i.i.i.i.i89, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92, label %.lr.ph.i.i.i.i.i.i86, !llvm.loop !710

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90: ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i74, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504
  %.sink3.i.i91 = phi i64 [ 32, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread504 ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82 ], [ 8, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i74 ], [ 8, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit68 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i91
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92: ; preds = %.lr.ph.i.i.i.i.i.i86, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread, %bb.ag, %bb.ah, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90
  %i.fu = phi i32 [ %i.fm, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82.thread ], [ 0, %bb.ah ], [ %i.ft, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i90 ], [ 0, %bb.ag ], [ %i.fr, %.lr.ph.i.i.i.i.i.i86 ]
  %i.fv = icmp ult i32 %i.fu, %i.at
  br i1 %i.fv, label %.critedge.thread, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43
  %i.fw = phi i32 [ %.pre408, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit ], [ %i.cn, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43 ]
  %i.fx = trunc nuw i8 %.013 to i1
  br i1 %i.fx, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader, label %bb.ai

bb.ai:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread
  %i.fy = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.fw) ; 0 uses
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit82, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57.thread, %.split269, %.split268, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit43.thread, %bb.ai, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit57, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread: ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.preheader
  %i.fz = load i32, ptr %i.c, align 8, !tbaa !429 ; 11 uses
  %i.ga = icmp eq i32 %i.fz, 0                    ; 3 uses
  br i1 %i.ga, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread
  switch i32 %i.fz, label %bb.ao [
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i100
    i32 2, label %bb.ak
    i32 3, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i100

bb.al:                                            ; preds = %bb.aj
  %i.gb = load ptr, ptr %i.g, align 8, !tbaa !433 ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i.i93, label %.thread281, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i94 = load ptr, ptr %i.h, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i95 = icmp eq ptr %i.gd, %.sroa.0.0.copyload.i.i.i.i.i94
  br i1 %.not4.i.i.i.i.i.i95, label %.thread281, label %.lr.ph.i.i.i.i.i.i96

end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb:bb.a
  %i.mt = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.ms), !noalias !735
  store ptr %i.mq, ptr %i.mr, align 8, !tbaa !441
  br label %bb.cl

bb.cc:                                            ; preds = %bb.bt
  %i.mu = load ptr, ptr %i.s, align 8, !tbaa !229 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mv = load ptr, ptr %i.g, align 8, !tbaa !433
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.h, align 8, !tbaa !434 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.mx, %i.mw
  br i1 %.not9.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 48
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !737 ; 3 uses
  %.not7.not.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not7.not.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 524288 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %bb.cf
  %.013.i.i.i.i.i.i.i234 = phi ptr [ %i.na, %bb.cf ], [ %i.ni, %bb.ck ] ; 5 uses
  %.0712.i.i.i.i.i.i.i235 = phi i32 [ 0, %bb.cf ], [ %i.nj, %bb.ck ] ; 5 uses
  %i.nb = load i64, ptr %.013.i.i.i.i.i.i.i234, align 8, !tbaa !283, !noalias !738 ; 2 uses
  %.not.i.i.i.i.i.i.i236 = icmp eq i64 %i.nb, 0
  br i1 %.not.i.i.i.i.i.i.i236, label %bb.ch, label %.critedge.thread.i.i.i.i.i.i.i237

bb.ch:                                            ; preds = %bb.cg
  %i.nc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 8
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !283, !noalias !738 ; 2 uses
  %.not.i.i.i.i.i.i.i236.1 = icmp eq i64 %i.nd, 0
  br i1 %.not.i.i.i.i.i.i.i236.1, label %bb.ci, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704

bb.ci:                                            ; preds = %bb.ch
  %i.ne = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 16
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !283, !noalias !738 ; 2 uses
  %.not.i.i.i.i.i.i.i236.2 = icmp eq i64 %i.nf, 0
  br i1 %.not.i.i.i.i.i.i.i236.2, label %bb.cj, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701

bb.cj:                                            ; preds = %bb.ci
  %i.ng = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 24
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !283, !noalias !738 ; 2 uses
  %.not.i.i.i.i.i.i.i236.3 = icmp eq i64 %i.nh, 0
  br i1 %.not.i.i.i.i.i.i.i236.3, label %bb.ck, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit

bb.ck:                                            ; preds = %bb.cj
  %i.ni = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 32
  %i.nj = add nuw nsw i32 %.0712.i.i.i.i.i.i.i235, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i238.3 = icmp eq i32 %i.nj, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i238.3, label %.loopexit.i.i.i, label %bb.cg, !llvm.loop !6

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit: ; preds = %bb.cj
  %i.nk = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 3
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701: ; preds = %bb.ci
  %i.nl = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 2
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704: ; preds = %bb.ch
  %i.nm = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 1
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237:                ; preds = %bb.cg, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit
  %.0712.i.i.i.i.i.i.i235.lcssa = phi i32 [ %i.nm, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704 ], [ %i.nl, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701 ], [ %i.nk, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i235, %bb.cg ]
  %.lcssa619 = phi i64 [ %i.nd, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit704 ], [ %i.nf, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit701 ], [ %i.nh, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit ], [ %i.nb, %bb.cg ]
  %i.nn = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i235.lcssa, 6
  %i.no = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa619, i1 true)
  %i.np = trunc nuw nsw i64 %i.no to i32
  %i.nq = or disjoint i32 %i.nn, %i.np
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.ck, %.critedge.thread.i.i.i.i.i.i.i237
  %i.nr = phi i32 [ %i.nq, %.critedge.thread.i.i.i.i.i.i.i237 ], [ 32768, %bb.ck ]
  store ptr %i.mz, ptr %i.mu, align 8, !tbaa !442
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i.i, %bb.cb, %bb.bx
  %.sink31.i.sink30.i = phi ptr [ %i.mj, %bb.bx ], [ %i.mu, %.loopexit.i.i.i ], [ %i.mr, %bb.cb ] ; 2 uses
  %.sink29.i.sink.i = phi i32 [ 512, %bb.bx ], [ %i.nr, %.loopexit.i.i.i ], [ %i.mt, %bb.cb ]
  %.sink.i.sink.i = phi ptr [ %i.mk, %bb.bx ], [ %i.na, %.loopexit.i.i.i ], [ %i.ms, %bb.cb ]
  %i.ns = getelementptr inbounds nuw i8, ptr %.sink31.i.sink30.i, i64 8
  store i32 %.sink29.i.sink.i, ptr %i.ns, align 8, !tbaa !46
  %i.nt = getelementptr inbounds nuw i8, ptr %.sink31.i.sink30.i, i64 16
  store ptr %.sink.i.sink.i, ptr %i.nt, align 8, !tbaa !297
  %i.nu = load i32, ptr %i.c, align 8, !tbaa !429
  %i.nv = add i32 %i.nu, -1                       ; 3 uses
  store i32 %i.nv, ptr %i.c, align 8, !tbaa !429
  switch i32 %i.nv, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit [
    i32 0, label %bb.cm
    i32 1, label %bb.cu
    i32 2, label %bb.cx
    i32 3, label %bb.de
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.nw = load ptr, ptr %0, align 8               ; 9 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.oa = load atomic i32, ptr %i.nz seq_cst, align 4, !noalias !739
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.oa, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.nw), !noalias !739
  br label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  %i.ob = load ptr, ptr %i.nw, align 8, !tbaa !241, !noalias !739 ; 2 uses
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %bb.cp, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i

bb.cp:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 12 ; 4 uses
  %i.oe = atomicrmw xchg ptr %i.od, i8 1 seq_cst, align 1, !noalias !739
  %i.of = trunc i8 %i.oe to i1
  br i1 %i.of, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cp, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i ], [ 1, %bb.cp ] ; 8 uses
  %i.og = icmp slt i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 17
  br i1 %i.og, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.oh = icmp sgt i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.oh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.cq
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.i.i.i.i.i.prol = phi i32 [ %i.oi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.oi = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !739
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !724

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.oi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.oj = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.oj, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.01.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ok, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !739
  tail call void @llvm.x86.sse2.pause(), !noalias !739
  tail call void @llvm.x86.sse2.pause(), !noalias !739
  tail call void @llvm.x86.sse2.pause(), !noalias !739
  tail call void @llvm.x86.sse2.pause(), !noalias !739
  tail call void @llvm.x86.sse2.pause(), !noalias !739
  tail call void @llvm.x86.sse2.pause(), !noalias !739
  %i.ok = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause(), !noalias !739
  %i.ol = icmp sgt i32 %.01.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.ol, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.cq
  %i.om = shl i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.on = tail call noundef i32 @sched_yield() #21, !noalias !739 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cr, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i32 [ %i.om, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %bb.cr ]
  %i.oo = atomicrmw xchg ptr %i.od, i8 1 seq_cst, align 1, !noalias !739
  %i.op = trunc i8 %i.oo to i1
  br i1 %i.op, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i, !llvm.loop !8

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i, %bb.cp
  %i.oq = load ptr, ptr %i.nw, align 8, !tbaa !241, !noalias !739 ; 2 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %bb.cs, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i

bb.cs:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i
  %i.os = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znam(i64 noundef 6144) #28
          to label %bb.ct unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i.i.i, !noalias !739 ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.os, ptr %i.nw, align 8, !tbaa !241, !noalias !739
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.cs
  %i.ot = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.od release, align 4, !noalias !739
  resume { ptr, i32 } %i.ot

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i: ; preds = %bb.ct, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i
  %i.ou = phi ptr [ %i.os, %bb.ct ], [ %i.oq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i ]
  store atomic i8 0, ptr %i.od release, align 4, !noalias !739
  br label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i

_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i, %bb.cm
  %.sroa.11.0.i = phi ptr [ undef, %bb.cm ], [ %i.ou, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ %i.ob, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  %.sroa.87.0.i = phi ptr [ null, %bb.cm ], [ %i.ny, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ %i.ny, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  %.sroa.5.0.i = phi i32 [ 512, %bb.cm ], [ 0, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ 0, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  store ptr %i.nw, ptr %i.b, align 8, !tbaa !740
  store i32 %.sroa.5.0.i, ptr %i.j, align 8, !tbaa !270
  store ptr %.sroa.87.0.i, ptr %i.w, align 8, !tbaa !284
  store ptr %.sroa.11.0.i, ptr %i.x, align 8, !tbaa !443
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

bb.cu:                                            ; preds = %bb.cl
  %i.ov = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 65536 ; 2 uses
  %i.oy = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE12findFirstOffEv(ptr noundef nonnull align 8 dereferenceable(512) %i.ox), !noalias !741
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.86.0.i.i = phi ptr [ %i.ox, %bb.cv ], [ null, %bb.cu ]
  %.sroa.5.0.i.i = phi i32 [ %i.oy, %bb.cv ], [ 4096, %bb.cu ]
  store ptr %i.ov, ptr %i.d, align 8, !tbaa !444
  store i32 %.sroa.5.0.i.i, ptr %i.n, align 8, !tbaa !268
  store ptr %.sroa.86.0.i.i, ptr %i.o, align 8, !tbaa !282
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

bb.cx:                                            ; preds = %bb.cl
  %i.oz = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 524288 ; 3 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.dd, %bb.cy
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.pb, %bb.cy ], [ %i.pj, %bb.dd ] ; 5 uses
  %.0712.i.i.i.i.i.i.i = phi i32 [ 0, %bb.cy ], [ %i.pk, %bb.dd ] ; 5 uses
  %i.pc = load i64, ptr %.013.i.i.i.i.i.i.i, align 8, !tbaa !283, !noalias !742 ; 2 uses
  %.not.i.i.i.i.i.i6.i = icmp eq i64 %i.pc, -1
  br i1 %.not.i.i.i.i.i.i6.i, label %bb.da, label %.critedge.thread.i.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.pd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 8
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !283, !noalias !742 ; 2 uses
  %.not.i.i.i.i.i.i6.i.1 = icmp eq i64 %i.pe, -1
  br i1 %.not.i.i.i.i.i.i6.i.1, label %bb.db, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716

bb.db:                                            ; preds = %bb.da
  %i.pf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 16
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !283, !noalias !742 ; 2 uses
  %.not.i.i.i.i.i.i6.i.2 = icmp eq i64 %i.pg, -1
  br i1 %.not.i.i.i.i.i.i6.i.2, label %bb.dc, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713

bb.dc:                                            ; preds = %bb.db
  %i.ph = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 24
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !283, !noalias !742 ; 2 uses
  %.not.i.i.i.i.i.i6.i.3 = icmp eq i64 %i.pi, -1
  br i1 %.not.i.i.i.i.i.i6.i.3, label %bb.dd, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit

bb.dd:                                            ; preds = %bb.dc
  %i.pj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 32
  %i.pk = add nuw nsw i32 %.0712.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i32 %i.pk, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i, label %bb.cz, !llvm.loop !9

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit:   ; preds = %bb.dc
  %i.pl = or disjoint i32 %.0712.i.i.i.i.i.i.i, 3
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713: ; preds = %bb.db
  %i.pm = or disjoint i32 %.0712.i.i.i.i.i.i.i, 2
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716: ; preds = %bb.da
  %i.pn = or disjoint i32 %.0712.i.i.i.i.i.i.i, 1
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i:                   ; preds = %bb.cz, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit
  %.0712.i.i.i.i.i.i.i.lcssa = phi i32 [ %i.pn, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716 ], [ %i.pm, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713 ], [ %i.pl, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i, %bb.cz ]
  %.lcssa622 = phi i64 [ %i.pe, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit716 ], [ %i.pg, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit713 ], [ %i.pi, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit ], [ %i.pc, %bb.cz ]
  %i.po = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i.lcssa, 6
  %i.pp = xor i64 %.lcssa622, -1
  %i.pq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pp, i1 true)
  %i.pr = trunc nuw nsw i64 %i.pq to i32
  %i.ps = or disjoint i32 %i.po, %i.pr
  br label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i

_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i: ; preds = %bb.dd, %.critedge.thread.i.i.i.i.i.i.i, %bb.cx
  %.sroa.86.0.i.i.i = phi ptr [ null, %bb.cx ], [ %i.pb, %.critedge.thread.i.i.i.i.i.i.i ], [ %i.pb, %bb.dd ]
  %.sroa.5.0.i.i.i = phi i32 [ 32768, %bb.cx ], [ %i.ps, %.critedge.thread.i.i.i.i.i.i.i ], [ 32768, %bb.dd ]
  store ptr %i.oz, ptr %i.p, align 8, !tbaa !445
  store i32 %.sroa.5.0.i.i.i, ptr %i.v, align 8, !tbaa !269
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i

bb.de:                                            ; preds = %bb.cl
  %i.pt = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !279 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 2 uses
  %.not1.i.i.i.i.i.i.i.i = icmp eq ptr %i.px, %i.pw
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.df, %bb.dg
  %.sroa.2.0.i.i.i.i.i.i = phi ptr [ %i.qb, %bb.dg ], [ %i.pw, %bb.df ] ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i.i.i.i.i, i64 48
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !439
  %i.qa = icmp eq ptr %i.pz, null
  br i1 %i.qa, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.qb = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i.i.i.i.i.i) #27 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.qb, %i.px
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !28

_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i: ; preds = %bb.dg, %.lr.ph.i.i.i.i.i.i.i.i, %bb.df, %bb.de
  %.sroa.5.0.i.i.i.i = phi ptr [ null, %bb.de ], [ %i.pw, %bb.df ], [ %i.qb, %bb.dg ], [ %.sroa.2.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %i.pt, ptr %i.e, align 8
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i

_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i: ; preds = %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i
  %.sink.i.i.i = phi i64 [ 32, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i ], [ 16, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i ]
  %.sroa.5.0.i.sink.i.i.i = phi ptr [ %.sroa.5.0.i.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i ], [ %.sroa.86.0.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i ]
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink.i.i.i
  store ptr %.sroa.5.0.i.sink.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i, %bb.cw, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i
  %.pr = load i32, ptr %i.c, align 8, !tbaa !429
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split, %bb.cl
  %i.qc = phi i32 [ %.pr, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split ], [ %i.nv, %bb.cl ] ; 5 uses
  switch i32 %i.qc, label %bb.dl [
    i32 0, label %bb.dk
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166
    i32 2, label %bb.dh
    i32 3, label %bb.di
  ]

bb.dh:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166

bb.di:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  %i.qd = load ptr, ptr %i.e, align 8, !tbaa !432 ; 2 uses
  %.not.i.i.i.i.i159 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i.i.i159, label %.thread297, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i160 = load ptr, ptr %i.f, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i161 = icmp eq ptr %i.qf, %.sroa.0.0.copyload.i.i.i.i.i160
  br i1 %.not4.i.i.i.i.i.i161, label %.thread297, label %.lr.ph.i.i.i.i.i.i162

.lr.ph.i.i.i.i.i.i162:                            ; preds = %bb.dj, %.lr.ph.i.i.i.i.i.i162
  %.06.i.i.i.i.i.i163 = phi i32 [ %i.qh, %.lr.ph.i.i.i.i.i.i162 ], [ 0, %bb.dj ]
  %.sroa.02.05.i.i.i.i.i.i164 = phi ptr [ %i.qg, %.lr.ph.i.i.i.i.i.i162 ], [ %i.qf, %bb.dj ]
  %i.qg = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i164) #27 ; 2 uses
  %i.qh = add i32 %.06.i.i.i.i.i.i163, 1          ; 2 uses
  %.not.i.i.i.i.i.i165 = icmp eq ptr %i.qg, %.sroa.0.0.copyload.i.i.i.i.i160
  br i1 %.not.i.i.i.i.i.i165, label %.thread297, label %.lr.ph.i.i.i.i.i.i162, !llvm.loop !710

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit, %bb.dh
  %.sink3.i.i167 = phi i64 [ 32, %bb.dh ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit ]
  %i.qi = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i167
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !46
  br label %bb.dl

bb.dk:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  %i.qk = load i32, ptr %i.j, align 8, !tbaa !270
  %i.ql = load i32, ptr %i.k, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178

bb.dl:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166
  %.ph295 = phi i32 [ -1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit ], [ %i.qj, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166 ] ; 2 uses
  switch i32 %i.qc, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178 [
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176
    i32 2, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176

.thread297:                                       ; preds = %.lr.ph.i.i.i.i.i.i162, %bb.dj, %bb.di
  %.ph295299 = phi i32 [ 0, %bb.di ], [ 0, %bb.dj ], [ %i.qh, %.lr.ph.i.i.i.i.i.i162 ] ; 3 uses
  %i.qm = load ptr, ptr %i.g, align 8, !tbaa !433 ; 2 uses
  %.not.i.i.i.i.i169 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i.i.i.i169, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %bb.dn

bb.dn:                                            ; preds = %.thread297
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !279 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i170 = load ptr, ptr %i.h, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i.i.i171 = icmp eq ptr %i.qo, %.sroa.0.0.copyload.i.i.i.i.i170
  br i1 %.not4.i.i.i.i.i.i171, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %.lr.ph.i.i.i.i.i.i172

.lr.ph.i.i.i.i.i.i172:                            ; preds = %bb.dn, %.lr.ph.i.i.i.i.i.i172
  %.06.i.i.i.i.i.i173 = phi i32 [ %i.qq, %.lr.ph.i.i.i.i.i.i172 ], [ 0, %bb.dn ]
  %.sroa.02.05.i.i.i.i.i.i174 = phi ptr [ %i.qp, %.lr.ph.i.i.i.i.i.i172 ], [ %i.qo, %bb.dn ]
  %i.qp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i174) #27 ; 2 uses
  %i.qq = add i32 %.06.i.i.i.i.i.i173, 1          ; 2 uses
  %.not.i.i.i.i.i.i175 = icmp eq ptr %i.qp, %.sroa.0.0.copyload.i.i.i.i.i170
  br i1 %.not.i.i.i.i.i.i175, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %.lr.ph.i.i.i.i.i.i172, !llvm.loop !711

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176: ; preds = %bb.dm, %bb.dl
  %.sink3.i.i177 = phi i64 [ 32, %bb.dm ], [ 8, %bb.dl ]
  %i.qr = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink3.i.i177
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !46
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178: ; preds = %.lr.ph.i.i.i.i.i.i172, %bb.dk, %bb.dl, %.thread297, %bb.dn, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176
  %i.qt = phi i32 [ %i.qk, %bb.dk ], [ %.ph295299, %bb.dn ], [ %.ph295, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176 ], [ %.ph295, %bb.dl ], [ %.ph295299, %.thread297 ], [ %.ph295299, %.lr.ph.i.i.i.i.i.i172 ]
  %i.qu = phi i32 [ %i.ql, %bb.dk ], [ 0, %bb.dn ], [ %i.qs, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176 ], [ -1, %bb.dl ], [ 0, %.thread297 ], [ %i.qq, %.lr.ph.i.i.i.i.i.i172 ]
  %i.qv = icmp eq i32 %i.qt, %i.qu
  br i1 %i.qv, label %bb.do, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.do:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178
  switch i32 %i.qc, label %.split301 [
    i32 0, label %.split300
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179
    i32 2, label %.split302
  ]

.split300:                                        ; preds = %bb.do
  %i.qw = load i32, ptr %i.k, align 8, !tbaa !270
  %.not336 = icmp eq i32 %i.qw, 512
  br i1 %.not336, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dp

.split302:                                        ; preds = %bb.do
  %i.qx = load i32, ptr %i.l, align 8, !tbaa !269
  %.not334 = icmp eq i32 %i.qx, 32768
  br i1 %.not334, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dt

.split301:                                        ; preds = %bb.do
  %i.qy = icmp eq i32 %i.qc, 3
  %i.qz = load ptr, ptr %i.g, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = load ptr, ptr %i.h, align 8
  %i.rc = icmp ne ptr %i.rb, %i.ra
  %i.rd = select i1 %i.qy, i1 %i.rc, i1 false
  br i1 %i.rd, label %bb.dt, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179: ; preds = %bb.do
  %i.re = load i32, ptr %i.m, align 8, !tbaa !268
  %.not335 = icmp eq i32 %i.re, 4096
  br i1 %.not335, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dq

bb.dp:                                            ; preds = %.split300
  %i.rf = load i32, ptr %i.j, align 8, !tbaa !270
  %i.rg = add i32 %i.rf, 1
  store i32 %i.rg, ptr %i.j, align 8, !tbaa !270
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.dq:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179
  %i.rh = load ptr, ptr %i.o, align 8, !tbaa !282 ; 2 uses
  %i.ri = load i32, ptr %i.n, align 8, !tbaa !268
  %i.rj = add i32 %i.ri, 1                        ; 4 uses
  %i.rk = lshr i32 %i.rj, 6                       ; 3 uses
  %i.rl = icmp ugt i32 %i.rj, 4095
  br i1 %i.rl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i185, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.rm = and i32 %i.rj, 63
  %i.rn = zext nneg i32 %i.rk to i64              ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %i.rn
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !283 ; 2 uses
  %i.rq = zext nneg i32 %i.rm to i64              ; 2 uses
  %i.rr = shl nuw i64 1, %i.rq
  %i.rs = and i64 %i.rp, %i.rr
  %.not.not.i.i.i.i.i.i180 = icmp eq i64 %i.rs, 0
  br i1 %.not.not.i.i.i.i.i.i180, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i185, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.rt = xor i64 %i.rp, -1
  %i.ru = shl nsw i64 -1, %i.rq
  %i.rv = and i64 %i.ru, %i.rt                    ; 2 uses
  %.not25.i.i.i.i.i.i181 = icmp eq i64 %i.rv, 0
  br i1 %.not25.i.i.i.i.i.i181, label %.lr.ph.i.i.i.i.i.i187.preheader, label %.critedge.i.i.i.i.i.i182

.lr.ph.i.i.i.i.i.i187.preheader:                  ; preds = %bb.ds
  %exitcond.not.i.i.i.i.i.i189579 = icmp eq i32 %i.rk, 63
  br i1 %exitcond.not.i.i.i.i.i.i189579, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i185, label %.lr.ph581

.lr.ph.i.i.i.i.i.i187:                            ; preds = %.lr.ph581
  %exitcond.not.i.i.i.i.i.i189 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i190, 63
  br i1 %exitcond.not.i.i.i.i.i.i189, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i185, label %.lr.ph581, !llvm.loop !1

.lr.ph581:                                        ; preds = %.lr.ph.i.i.i.i.i.i187.preheader, %.lr.ph.i.i.i.i.i.i187
  %indvars.iv.i.i.i.i.i.i188580 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i190, %.lr.ph.i.i.i.i.i.i187 ], [ %i.rn, %.lr.ph.i.i.i.i.i.i187.preheader ]
  %indvars.iv.next.i.i.i.i.i.i190 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i188580, 1 ; 4 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %indvars.iv.next.i.i.i.i.i.i190
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i.i.i191 = icmp eq i64 %i.rx, -1
  br i1 %.not.i.i.i.i.i.i191, label %.lr.ph.i.i.i.i.i.i187, label %.critedge.loopexit.i.i.i.i.i.i192, !llvm.loop !1

.critedge.loopexit.i.i.i.i.i.i192:                ; preds = %.lr.ph581
  %i.ry = xor i64 %i.rx, -1
  %i.rz = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i190 to i32
  br label %.critedge.i.i.i.i.i.i182

.critedge.i.i.i.i.i.i182:                         ; preds = %.critedge.loopexit.i.i.i.i.i.i192, %bb.ds
  %.016.lcssa.i.i.i.i.i.i183 = phi i32 [ %i.rk, %bb.ds ], [ %i.rz, %.critedge.loopexit.i.i.i.i.i.i192 ]
  %.0.lcssa.i.i.i.i.i.i184 = phi i64 [ %i.rv, %bb.ds ], [ %i.ry, %.critedge.loopexit.i.i.i.i.i.i192 ]
  %i.sa = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i183, 6
  %i.sb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i184, i1 true)
  %i.sc = trunc nuw nsw i64 %i.sb to i32
  %i.sd = or disjoint i32 %i.sa, %i.sc
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i185

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i185: ; preds = %.lr.ph.i.i.i.i.i.i187, %.lr.ph.i.i.i.i.i.i187.preheader, %.critedge.i.i.i.i.i.i182, %bb.dr, %bb.dq
  %.118.i.i.i.i.i.i186 = phi i32 [ 4096, %bb.dq ], [ %i.rj, %bb.dr ], [ %i.sd, %.critedge.i.i.i.i.i.i182 ], [ 4096, %.lr.ph.i.i.i.i.i.i187.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i187 ]
  store i32 %.118.i.i.i.i.i.i186, ptr %i.n, align 8, !tbaa !268
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.dt:                                            ; preds = %.split302, %.split301
  %i.se = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.qc) ; 0 uses
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge: ; preds = %bb.dt, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i185, %bb.dp, %.split302, %.split301, %.split300, %bb.br, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i150, %bb.bn, %.split291, %.split290, %.split289, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit143, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit144
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread, !llvm.loop !733

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread: ; preds = %bb.bt, %bb.bv, %bb.cc, %bb.cd, %bb.ce, %bb.ca, %bb.bw, %bb.by, %bb.bz, %bb.bu, %bb.bs, %.thread281, %bb.aq, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112
  %.promoted = load i32, ptr %i.c, align 8, !tbaa !429
  br label %bb.du

bb.du:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread
  %i.sf = phi i32 [ %.promoted, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread ], [ %i.wf, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221 ] ; 4 uses
  %.114 = phi i8 [ %.013, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread ], [ 1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221 ]
  %.1.not = phi i1 [ true, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread ], [ false, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221 ]
  switch i32 %i.sf, label %.split307 [
    i32 0, label %.split306
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194
    i32 2, label %.split308
  ]

.split306:                                        ; preds = %bb.du
  %i.sg = load i32, ptr %i.k, align 8, !tbaa !270
  %.not341 = icmp eq i32 %i.sg, 512
  br i1 %.not341, label %.split312, label %.critedge

.split308:                                        ; preds = %bb.du
  %i.sh = load i32, ptr %i.l, align 8, !tbaa !269
  %.not337 = icmp eq i32 %i.sh, 32768
  br i1 %.not337, label %.split314, label %.critedge

.split307:                                        ; preds = %bb.du
  %i.si = icmp eq i32 %i.sf, 3                    ; 3 uses
  %i.sj = load ptr, ptr %i.g, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.h, align 8
  %i.sm = icmp ne ptr %i.sl, %i.sk
  %i.sn = select i1 %i.si, i1 %i.sm, i1 false
  br i1 %i.sn, label %.critedge, label %.split313

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194: ; preds = %bb.du
  %i.so = load i32, ptr %i.m, align 8, !tbaa !268
  %.not339 = icmp eq i32 %i.so, 4096
  br i1 %.not339, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit, label %.critedge

.split312:                                        ; preds = %.split306
  %i.sp = load i32, ptr %i.j, align 8, !tbaa !270
  %.not342 = icmp eq i32 %i.sp, 512
  br i1 %.not342, label %.thread316.thread326, label %.critedge

.thread316.thread326:                             ; preds = %.split312
  store i32 1, ptr %i.c, align 8, !tbaa !429
  %i.sq = load ptr, ptr %i.z, align 8, !tbaa !282 ; 2 uses
  %i.sr = load i32, ptr %i.m, align 8, !tbaa !268
  %i.ss = add i32 %i.sr, 1                        ; 4 uses
  %i.st = lshr i32 %i.ss, 6                       ; 3 uses
  %i.su = icmp ugt i32 %i.ss, 4095
  br i1 %i.su, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i196, label %bb.dz

.split314:                                        ; preds = %.split308
  %i.sv = load i32, ptr %i.v, align 8, !tbaa !269
  %.not338 = icmp eq i32 %i.sv, 32768
  br i1 %.not338, label %.thread316.thread, label %.critedge

.split313:                                        ; preds = %.split307
  %i.sw = load ptr, ptr %i.e, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.f, align 8
  %i.sz = icmp ne ptr %i.sy, %i.sx
  %i.ta = select i1 %i.si, i1 %i.sz, i1 false
  br i1 %i.ta, label %.critedge, label %bb.dv

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit: ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194
  %i.tb = load i32, ptr %i.n, align 8, !tbaa !268
  %.not340 = icmp eq i32 %i.tb, 4096
  br i1 %.not340, label %.thread316.thread, label %.critedge

bb.dv:                                            ; preds = %.split313
  br i1 %i.si, label %.critedge.thread, label %.thread316

.thread316.thread:                                ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit, %.split314
  %i.tc = add nuw nsw i32 %i.sf, 1                ; 2 uses
  store i32 %i.tc, ptr %i.c, align 8, !tbaa !429
  br label %bb.eb

.thread316:                                       ; preds = %bb.dv
  %i.td = add i32 %i.sf, 1                        ; 3 uses
  store i32 %i.td, ptr %i.c, align 8, !tbaa !429
  %cond = icmp eq i32 %i.td, 0
  br i1 %cond, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %.thread316
  %i.te = load ptr, ptr %i.aa, align 8, !tbaa !284 ; 8 uses
  %i.tf = load i32, ptr %i.k, align 8, !tbaa !270
  %i.tg = add i32 %i.tf, 1                        ; 4 uses
  %i.th = lshr i32 %i.tg, 6                       ; 3 uses
  %i.ti = icmp ugt i32 %i.tg, 511
  br i1 %i.ti, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.tj = and i32 %i.tg, 63
  %i.tk = zext nneg i32 %i.th to i64              ; 8 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.tk
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !283 ; 2 uses
  %i.tn = zext nneg i32 %i.tj to i64              ; 2 uses
  %i.to = shl nuw i64 1, %i.tn
  %i.tp = and i64 %i.tm, %i.to
  %.not.i.i.i.i.i208 = icmp eq i64 %i.tp, 0
  br i1 %.not.i.i.i.i.i208, label %bb.dy, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209

bb.dy:                                            ; preds = %bb.dx
  %i.tq = shl nsw i64 -1, %i.tn
  %i.tr = and i64 %i.tm, %i.tq                    ; 2 uses
  %.not2226.i.i.i.i.i211 = icmp eq i64 %i.tr, 0
  br i1 %.not2226.i.i.i.i.i211, label %.lr.ph.i.i.i.i.i215.preheader, label %.critedge.i.i.i.i.i212

.lr.ph.i.i.i.i.i215.preheader:                    ; preds = %bb.dy
  %exitcond.not.i.i.i.i.i217600 = icmp eq i32 %i.th, 7
  br i1 %exitcond.not.i.i.i.i.i217600, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209, label %.lr.ph602

.lr.ph.i.i.i.i.i215:                              ; preds = %.lr.ph602
  %exitcond.not.i.i.i.i.i217 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218, 7
  br i1 %exitcond.not.i.i.i.i.i217, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.1

.lr.ph602.1:                                      ; preds = %.lr.ph.i.i.i.i.i215
  %indvars.iv.next.i.i.i.i.i218.1 = add nuw nsw i64 %i.tk, 2 ; 3 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.1
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.1 = icmp eq i64 %i.tt, 0
  br i1 %.not22.i.i.i.i.i219.1, label %.lr.ph.i.i.i.i.i215.1, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.1:                            ; preds = %.lr.ph602.1
  %exitcond.not.i.i.i.i.i217.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.1, 7
  br i1 %exitcond.not.i.i.i.i.i217.1, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.2

.lr.ph602.2:                                      ; preds = %.lr.ph.i.i.i.i.i215.1
  %indvars.iv.next.i.i.i.i.i218.2 = add nuw nsw i64 %i.tk, 3 ; 3 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.2
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.2 = icmp eq i64 %i.tv, 0
  br i1 %.not22.i.i.i.i.i219.2, label %.lr.ph.i.i.i.i.i215.2, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.2:                            ; preds = %.lr.ph602.2
  %exitcond.not.i.i.i.i.i217.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.2, 7
  br i1 %exitcond.not.i.i.i.i.i217.2, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.3

.lr.ph602.3:                                      ; preds = %.lr.ph.i.i.i.i.i215.2
  %indvars.iv.next.i.i.i.i.i218.3 = add nuw nsw i64 %i.tk, 4 ; 3 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.3
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.3 = icmp eq i64 %i.tx, 0
  br i1 %.not22.i.i.i.i.i219.3, label %.lr.ph.i.i.i.i.i215.3, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.3:                            ; preds = %.lr.ph602.3
  %exitcond.not.i.i.i.i.i217.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.3, 7
  br i1 %exitcond.not.i.i.i.i.i217.3, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.4

.lr.ph602.4:                                      ; preds = %.lr.ph.i.i.i.i.i215.3
  %indvars.iv.next.i.i.i.i.i218.4 = add nuw nsw i64 %i.tk, 5 ; 3 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.4
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.4 = icmp eq i64 %i.tz, 0
  br i1 %.not22.i.i.i.i.i219.4, label %.lr.ph.i.i.i.i.i215.4, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.4:                            ; preds = %.lr.ph602.4
  %exitcond.not.i.i.i.i.i217.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.4, 7
  br i1 %exitcond.not.i.i.i.i.i217.4, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.5

.lr.ph602.5:                                      ; preds = %.lr.ph.i.i.i.i.i215.4
  %indvars.iv.next.i.i.i.i.i218.5 = add nuw nsw i64 %i.tk, 6 ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.5
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.5 = icmp eq i64 %i.ub, 0
  br i1 %.not22.i.i.i.i.i219.5, label %.lr.ph.i.i.i.i.i215.5, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph.i.i.i.i.i215.5:                            ; preds = %.lr.ph602.5
  %exitcond.not.i.i.i.i.i217.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.i218.5, 7
  br i1 %exitcond.not.i.i.i.i.i217.5, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209, label %.lr.ph602.6

.lr.ph602.6:                                      ; preds = %.lr.ph.i.i.i.i.i215.5
  %indvars.iv.next.i.i.i.i.i218.6 = add nuw nsw i64 %i.tk, 7 ; 2 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218.6
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219.6 = icmp eq i64 %i.ud, 0
  br i1 %.not22.i.i.i.i.i219.6, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.lr.ph602:                                        ; preds = %.lr.ph.i.i.i.i.i215.preheader
  %indvars.iv.next.i.i.i.i.i218 = add nuw nsw i64 %i.tk, 1 ; 3 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i.i.i218
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i219 = icmp eq i64 %i.uf, 0
  br i1 %.not22.i.i.i.i.i219, label %.lr.ph.i.i.i.i.i215, label %.critedge.loopexit.i.i.i.i.i220, !llvm.loop !2

.critedge.loopexit.i.i.i.i.i220:                  ; preds = %.lr.ph602.6, %.lr.ph602.5, %.lr.ph602.4, %.lr.ph602.3, %.lr.ph602.2, %.lr.ph602.1, %.lr.ph602
  %indvars.iv.next.i.i.i.i.i218.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i.i218, %.lr.ph602 ], [ %indvars.iv.next.i.i.i.i.i218.1, %.lr.ph602.1 ], [ %indvars.iv.next.i.i.i.i.i218.2, %.lr.ph602.2 ], [ %indvars.iv.next.i.i.i.i.i218.3, %.lr.ph602.3 ], [ %indvars.iv.next.i.i.i.i.i218.4, %.lr.ph602.4 ], [ %indvars.iv.next.i.i.i.i.i218.5, %.lr.ph602.5 ], [ %indvars.iv.next.i.i.i.i.i218.6, %.lr.ph602.6 ]
  %.lcssa651 = phi i64 [ %i.uf, %.lr.ph602 ], [ %i.tt, %.lr.ph602.1 ], [ %i.tv, %.lr.ph602.2 ], [ %i.tx, %.lr.ph602.3 ], [ %i.tz, %.lr.ph602.4 ], [ %i.ub, %.lr.ph602.5 ], [ %i.ud, %.lr.ph602.6 ]
  %i.ug = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i218.lcssa to i32
  br label %.critedge.i.i.i.i.i212

.critedge.i.i.i.i.i212:                           ; preds = %.critedge.loopexit.i.i.i.i.i220, %bb.dy
  %.016.lcssa.i.i.i.i.i213 = phi i32 [ %i.th, %bb.dy ], [ %i.ug, %.critedge.loopexit.i.i.i.i.i220 ]
  %.0.lcssa.i.i.i.i.i214 = phi i64 [ %i.tr, %bb.dy ], [ %.lcssa651, %.critedge.loopexit.i.i.i.i.i220 ]
  %i.uh = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i213, 6
  %i.ui = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i214, i1 true)
  %i.uj = trunc nuw nsw i64 %i.ui to i32
  %i.uk = or disjoint i32 %i.uh, %i.uj
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209: ; preds = %.lr.ph.i.i.i.i.i215, %.lr.ph.i.i.i.i.i215.1, %.lr.ph.i.i.i.i.i215.2, %.lr.ph.i.i.i.i.i215.3, %.lr.ph.i.i.i.i.i215.4, %.lr.ph.i.i.i.i.i215.5, %.lr.ph602.6, %.lr.ph.i.i.i.i.i215.preheader, %.critedge.i.i.i.i.i212, %bb.dx, %bb.dw
  %.118.i.i.i.i.i210 = phi i32 [ 512, %bb.dw ], [ %i.tg, %bb.dx ], [ %i.uk, %.critedge.i.i.i.i.i212 ], [ 512, %.lr.ph.i.i.i.i.i215.preheader ], [ 512, %.lr.ph602.6 ], [ 512, %.lr.ph.i.i.i.i.i215.5 ], [ 512, %.lr.ph.i.i.i.i.i215.4 ], [ 512, %.lr.ph.i.i.i.i.i215.3 ], [ 512, %.lr.ph.i.i.i.i.i215.2 ], [ 512, %.lr.ph.i.i.i.i.i215.1 ], [ 512, %.lr.ph.i.i.i.i.i215 ]
  store i32 %.118.i.i.i.i.i210, ptr %i.k, align 8, !tbaa !270
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221

bb.dz:                                            ; preds = %.thread316.thread326
  %i.ul = and i32 %i.ss, 63
  %i.um = zext nneg i32 %i.st to i64              ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.um
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !283 ; 2 uses
  %i.up = zext nneg i32 %i.ul to i64              ; 2 uses
  %i.uq = shl nuw i64 1, %i.up
  %i.ur = and i64 %i.uo, %i.uq
  %.not.i.i.i.i.i.i195 = icmp eq i64 %i.ur, 0
  br i1 %.not.i.i.i.i.i.i195, label %bb.ea, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i196

bb.ea:                                            ; preds = %bb.dz
  %i.us = shl nsw i64 -1, %i.up
  %i.ut = and i64 %i.uo, %i.us                    ; 2 uses
  %.not2226.i.i.i.i.i.i198 = icmp eq i64 %i.ut, 0
  br i1 %.not2226.i.i.i.i.i.i198, label %.lr.ph.i.i.i.i.i.i202.preheader, label %.critedge.i.i.i.i.i.i199

.lr.ph.i.i.i.i.i.i202.preheader:                  ; preds = %bb.ea
  %exitcond.not.i.i.i.i.i.i204594 = icmp eq i32 %i.st, 63
  br i1 %exitcond.not.i.i.i.i.i.i204594, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i196, label %.lr.ph596

.lr.ph.i.i.i.i.i.i202:                            ; preds = %.lr.ph596
  %exitcond.not.i.i.i.i.i.i204 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i205, 63
  br i1 %exitcond.not.i.i.i.i.i.i204, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i196, label %.lr.ph596, !llvm.loop !3

.lr.ph596:                                        ; preds = %.lr.ph.i.i.i.i.i.i202.preheader, %.lr.ph.i.i.i.i.i.i202
  %indvars.iv.i.i.i.i.i.i203595 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i205, %.lr.ph.i.i.i.i.i.i202 ], [ %i.um, %.lr.ph.i.i.i.i.i.i202.preheader ]
  %indvars.iv.next.i.i.i.i.i.i205 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i203595, 1 ; 4 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %indvars.iv.next.i.i.i.i.i.i205
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i.i206 = icmp eq i64 %i.uv, 0
  br i1 %.not22.i.i.i.i.i.i206, label %.lr.ph.i.i.i.i.i.i202, label %.critedge.loopexit.i.i.i.i.i.i207, !llvm.loop !3

.critedge.loopexit.i.i.i.i.i.i207:                ; preds = %.lr.ph596
  %i.uw = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i205 to i32
  br label %.critedge.i.i.i.i.i.i199

.critedge.i.i.i.i.i.i199:                         ; preds = %.critedge.loopexit.i.i.i.i.i.i207, %bb.ea
  %.016.lcssa.i.i.i.i.i.i200 = phi i32 [ %i.st, %bb.ea ], [ %i.uw, %.critedge.loopexit.i.i.i.i.i.i207 ]
  %.0.lcssa.i.i.i.i.i.i201 = phi i64 [ %i.ut, %bb.ea ], [ %i.uv, %.critedge.loopexit.i.i.i.i.i.i207 ]
  %i.ux = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i200, 6
  %i.uy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i201, i1 true)
  %i.uz = trunc nuw nsw i64 %i.uy to i32
  %i.va = or disjoint i32 %i.ux, %i.uz
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i196

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i196: ; preds = %.lr.ph.i.i.i.i.i.i202, %.lr.ph.i.i.i.i.i.i202.preheader, %.critedge.i.i.i.i.i.i199, %bb.dz, %.thread316.thread326
  %.118.i.i.i.i.i.i197 = phi i32 [ 4096, %.thread316.thread326 ], [ %i.ss, %bb.dz ], [ %i.va, %.critedge.i.i.i.i.i.i199 ], [ 4096, %.lr.ph.i.i.i.i.i.i202.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i202 ]
  store i32 %.118.i.i.i.i.i.i197, ptr %i.m, align 8, !tbaa !268
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221

bb.eb:                                            ; preds = %.thread316, %.thread316.thread
  %i.vb = phi i32 [ %i.tc, %.thread316.thread ], [ %i.td, %.thread316 ] ; 2 uses
  switch i32 %i.vb, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221 [
    i32 2, label %bb.ec
    i32 3, label %bb.ef
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.vc = load ptr, ptr %i.y, align 8, !tbaa !285 ; 2 uses
  %i.vd = load i32, ptr %i.l, align 8, !tbaa !269
  %i.ve = add i32 %i.vd, 1                        ; 4 uses
  %i.vf = lshr i32 %i.ve, 6                       ; 3 uses
  %i.vg = icmp ugt i32 %i.ve, 32767
  br i1 %i.vg, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE4nextEv.exit.i247, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vh = and i32 %i.ve, 63
  %i.vi = zext nneg i32 %i.vf to i64              ; 2 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.vi
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !283 ; 2 uses
  %i.vl = zext nneg i32 %i.vh to i64              ; 2 uses
  %i.vm = shl nuw i64 1, %i.vl
  %i.vn = and i64 %i.vk, %i.vm
  %.not.i.i.i.i.i246 = icmp eq i64 %i.vn, 0
  br i1 %.not.i.i.i.i.i246, label %bb.ee, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE4nextEv.exit.i247

bb.ee:                                            ; preds = %bb.ed
  %i.vo = shl nsw i64 -1, %i.vl
  %i.vp = and i64 %i.vk, %i.vo                    ; 2 uses
  %.not2226.i.i.i.i.i249 = icmp eq i64 %i.vp, 0
  br i1 %.not2226.i.i.i.i.i249, label %.lr.ph.i.i.i.i.i253.preheader, label %.critedge.i.i.i.i.i250

.lr.ph.i.i.i.i.i253.preheader:                    ; preds = %bb.ee
  %exitcond.not.i.i.i.i.i255597 = icmp eq i32 %i.vf, 511
  br i1 %exitcond.not.i.i.i.i.i255597, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE4nextEv.exit.i247, label %.lr.ph599

.lr.ph.i.i.i.i.i253:                              ; preds = %.lr.ph599
  %exitcond.not.i.i.i.i.i255 = icmp eq i64 %indvars.iv.next.i.i.i.i.i256, 511
  br i1 %exitcond.not.i.i.i.i.i255, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE4nextEv.exit.i247, label %.lr.ph599, !llvm.loop !4

.lr.ph599:                                        ; preds = %.lr.ph.i.i.i.i.i253.preheader, %.lr.ph.i.i.i.i.i253
  %indvars.iv.i.i.i.i.i254598 = phi i64 [ %indvars.iv.next.i.i.i.i.i256, %.lr.ph.i.i.i.i.i253 ], [ %i.vi, %.lr.ph.i.i.i.i.i253.preheader ]
  %indvars.iv.next.i.i.i.i.i256 = add nuw nsw i64 %indvars.iv.i.i.i.i.i254598, 1 ; 4 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.next.i.i.i.i.i256
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i257 = icmp eq i64 %i.vr, 0
  br i1 %.not22.i.i.i.i.i257, label %.lr.ph.i.i.i.i.i253, label %.critedge.loopexit.i.i.i.i.i258, !llvm.loop !4

.critedge.loopexit.i.i.i.i.i258:                  ; preds = %.lr.ph599
  %i.vs = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i256 to i32
  br label %.critedge.i.i.i.i.i250

.critedge.i.i.i.i.i250:                           ; preds = %.critedge.loopexit.i.i.i.i.i258, %bb.ee
  %.016.lcssa.i.i.i.i.i251 = phi i32 [ %i.vf, %bb.ee ], [ %i.vs, %.critedge.loopexit.i.i.i.i.i258 ]
  %.0.lcssa.i.i.i.i.i252 = phi i64 [ %i.vp, %bb.ee ], [ %i.vr, %.critedge.loopexit.i.i.i.i.i258 ]
  %i.vt = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i251, 6
  %i.vu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i252, i1 true)
  %i.vv = trunc nuw nsw i64 %i.vu to i32
  %i.vw = or disjoint i32 %i.vt, %i.vv
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE4nextEv.exit.i247

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE4nextEv.exit.i247: ; preds = %.lr.ph.i.i.i.i.i253, %.lr.ph.i.i.i.i.i253.preheader, %.critedge.i.i.i.i.i250, %bb.ed, %bb.ec
  %.118.i.i.i.i.i248 = phi i32 [ 32768, %bb.ec ], [ %i.ve, %bb.ed ], [ %i.vw, %.critedge.i.i.i.i.i250 ], [ 32768, %.lr.ph.i.i.i.i.i253.preheader ], [ 32768, %.lr.ph.i.i.i.i.i253 ]
  store i32 %.118.i.i.i.i.i248, ptr %i.l, align 8, !tbaa !269
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221

bb.ef:                                            ; preds = %bb.eb
  %i.vx = load ptr, ptr %i.g, align 8, !tbaa !433
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 8 ; 3 uses
  %i.vz = load ptr, ptr %i.h, align 8, !tbaa !434 ; 3 uses
  %.not.i.i.i.i239 = icmp eq ptr %i.vz, %i.vy
  br i1 %.not.i.i.i.i239, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.wa = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.vz) #27 ; 2 uses
  store ptr %i.wa, ptr %i.h, align 8, !tbaa !434
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.promoted.i.i.i.i.i240 = phi ptr [ %i.wa, %bb.eg ], [ %i.vz, %bb.ef ] ; 2 uses
  %.not2.i.i.i.i.i241 = icmp eq ptr %.promoted.i.i.i.i.i240, %i.vy
  br i1 %.not2.i.i.i.i.i241, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221, label %.lr.ph.i.i.i.i2.i242

.lr.ph.i.i.i.i2.i242:                             ; preds = %bb.eh, %bb.ei
  %i.wb = phi ptr [ %i.we, %bb.ei ], [ %.promoted.i.i.i.i.i240, %bb.eh ] ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 48
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !439
  %.not1.i.i.i.i.i243 = icmp eq ptr %i.wd, null
  br i1 %.not1.i.i.i.i.i243, label %bb.ei, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221

bb.ei:                                            ; preds = %.lr.ph.i.i.i.i2.i242
  %i.we = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.wb) #27 ; 3 uses
  store ptr %i.we, ptr %i.h, align 8, !tbaa !434
  %.not.i.i.i.i3.i245 = icmp eq ptr %i.we, %i.vy
  br i1 %.not.i.i.i.i3.i245, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221, label %.lr.ph.i.i.i.i2.i242, !llvm.loop !27

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj.exit221: ; preds = %.lr.ph.i.i.i.i2.i242, %bb.ei, %bb.eh, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE4nextEv.exit.i247, %bb.eb, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i196
  %i.wf = phi i32 [ 1, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i196 ], [ 3, %bb.eh ], [ 2, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE4nextEv.exit.i247 ], [ %i.vb, %bb.eb ], [ 0, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit.i209 ], [ 3, %bb.ei ], [ 3, %.lr.ph.i.i.i.i2.i242 ]
  br label %bb.du, !llvm.loop !734

.critedge:                                        ; preds = %.split314, %.split313, %.split312, %.split308, %.split307, %.split306, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194
  %.lcssa656 = phi i32 [ 2, %.split314 ], [ 3, %.split313 ], [ 0, %.split312 ], [ 2, %.split308 ], [ 3, %.split307 ], [ 0, %.split306 ], [ 1, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit ], [ 1, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit194 ]
  br i1 %.1.not, label %.critedge.thread, label %bb.b

.critedge.thread:                                 ; preds = %bb.r, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92, %.critedge, %bb.dv
  %.116.mux325 = phi i1 [ false, %bb.dv ], [ true, %.critedge ], [ true, %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92 ], [ true, %bb.r ]
  ret i1 %.116.mux325
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4nextEj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !284  ; 8 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !270
  %i.e = add i32 %i.d, 1                          ; 4 uses
  %i.f = lshr i32 %i.e, 6                         ; 3 uses
  %i.g = icmp ugt i32 %i.e, 511
  br i1 %i.g, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.e, 63
  %i.i = zext nneg i32 %i.f to i64                ; 8 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !283  ; 2 uses
  %i.l = zext nneg i32 %i.h to i64                ; 2 uses
  %i.m = shl nuw i64 1, %i.l
  %i.n = and i64 %i.k, %i.m
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit

bb.d:                                             ; preds = %bb.c
  %i.o = shl nsw i64 -1, %i.l
  %i.p = and i64 %i.k, %i.o                       ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %exitcond.not.i.i.i.i13 = icmp eq i32 %i.f, 7
  br i1 %exitcond.not.i.i.i.i13, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit, label %.lr.ph15

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph15
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit, label %.lr.ph15.1

.lr.ph15.1:                                       ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.i, 2 ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.1
  %i.r = load i64, ptr %i.q, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.r, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph15.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit, label %.lr.ph15.2

.lr.ph15.2:                                       ; preds = %.lr.ph.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.i, 3 ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.2
  %i.t = load i64, ptr %i.s, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.t, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph15.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit, label %.lr.ph15.3

.lr.ph15.3:                                       ; preds = %.lr.ph.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.i, 4 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.3
  %i.v = load i64, ptr %i.u, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.v, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph15.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit, label %.lr.ph15.4

.lr.ph15.4:                                       ; preds = %.lr.ph.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.i, 5 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.4
  %i.x = load i64, ptr %i.w, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.x, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph15.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit, label %.lr.ph15.5

.lr.ph15.5:                                       ; preds = %.lr.ph.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.i, 6 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.5
  %i.z = load i64, ptr %i.y, align 8, !tbaa !283  ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.z, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph15.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit, label %.lr.ph15.6

.lr.ph15.6:                                       ; preds = %.lr.ph.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.i, 7 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i.6
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.ab, 0
  br i1 %.not22.i.i.i.i.6, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.lr.ph15:                                         ; preds = %.lr.ph.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.i, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !2

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph15.6, %.lr.ph15.5, %.lr.ph15.4, %.lr.ph15.3, %.lr.ph15.2, %.lr.ph15.1, %.lr.ph15
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph15 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph15.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph15.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph15.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph15.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph15.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph15.6 ]
  %.lcssa = phi i64 [ %i.ad, %.lr.ph15 ], [ %i.r, %.lr.ph15.1 ], [ %i.t, %.lr.ph15.2 ], [ %i.v, %.lr.ph15.3 ], [ %i.x, %.lr.ph15.4 ], [ %i.z, %.lr.ph15.5 ], [ %i.ab, %.lr.ph15.6 ]
  %i.ae = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.d
  %.016.lcssa.i.i.i.i = phi i32 [ %i.f, %bb.d ], [ %i.ae, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.af = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IiEELj3EEEE4nextEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %.lr.ph15.6, %.lr.ph.i.i.i.i.preheader, %bb.b, %bb.c, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ 512, %bb.b ], [ %i.e, %bb.c ], [ %i.ai, %.critedge.i.i.i.i ], [ 512, %.lr.ph.i.i.i.i.preheader ], [ 512, %.lr.ph15.6 ], [ 512, %.lr.ph.i.i.i.i.5 ], [ 512, %.lr.ph.i.i.i.i.4 ], [ 512, %.lr.ph.i.i.i.i.3 ], [ 512, %.lr.ph.i.i.i.i.2 ], [ 512, %.lr.ph.i.i.i.i.1 ], [ 512, %.lr.ph.i.i.i.i ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.a, align 8, !tbaa !270
  %i.aj = icmp ne i32 %.118.i.i.i.i, 512
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE4nextEj.exit

bb.e:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !282 ; 2 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !268
  %i.ao = add i32 %i.an, 1                        ; 4 uses
  %i.ap = lshr i32 %i.ao, 6                       ; 3 uses
  %i.aq = icmp ugt i32 %i.ao, 4095
  br i1 %i.aq, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = and i32 %i.ao, 63
  %i.as = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !283 ; 2 uses
  %i.av = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = and i64 %i.au, %i.aw
  %.not.i.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ay = shl nsw i64 -1, %i.av
  %i.az = and i64 %i.au, %i.ay                    ; 2 uses
  %.not2226.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not2226.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %exitcond.not.i.i.i.i.i11 = icmp eq i32 %i.ap, 63
  br i1 %exitcond.not.i.i.i.i.i11, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i, label %.lr.ph

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i, label %.lr.ph, !llvm.loop !3

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i12 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.as, %.lr.ph.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i12, 1 ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.i.i.i.i.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !283 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !3

.critedge.loopexit.i.i.i.i.i:                     ; preds = %.lr.ph
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.g
  %.016.lcssa.i.i.i.i.i = phi i32 [ %i.ap, %bb.g ], [ %i.bc, %.critedge.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.az, %bb.g ], [ %i.bb, %.critedge.loopexit.i.i.i.i.i ]
  %i.bd = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i, 6
  %i.be = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %.critedge.i.i.i.i.i, %bb.f, %bb.e
  %.118.i.i.i.i.i = phi i32 [ 4096, %bb.e ], [ %i.ao, %bb.f ], [ %i.bg, %.critedge.i.i.i.i.i ], [ 4096, %.lr.ph.i.i.i.i.i.preheader ], [ 4096, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i32 %.118.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !268
  %i.bh = icmp ne i32 %.118.i.i.i.i.i, 4096
end_hunk_5

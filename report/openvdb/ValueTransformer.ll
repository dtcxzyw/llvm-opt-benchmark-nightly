Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/ValueTransformer?download=true
inline.NumInlined: 4690
inline.NumDeleted: 1931
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 184
begin_hunk_0_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE11modifyValueINS0_5tools8valxform5SumOpIS7_EEEEvRKNS5_5CoordERKT_:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !28

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(532496) ptr @_Znwm(i64 noundef 532496) #24 ; 19 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread
  %.idx.i = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread ], [ %.add.i.7, %bb.i ] ; 9 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  store ptr null, ptr %.ptr.i, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr null, ptr %.ptr.i.1, align 8, !tbaa !84
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr null, ptr %.ptr.i.2, align 8, !tbaa !84
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store ptr null, ptr %.ptr.i.3, align 8, !tbaa !84
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr null, ptr %.ptr.i.4, align 8, !tbaa !84
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.5 = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store ptr null, ptr %.ptr.i.5, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.6 = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store ptr null, ptr %.ptr.i.6, align 8, !tbaa !84
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.7 = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  store ptr null, ptr %.ptr.i.7, align 8, !tbaa !84
  %.add.i.7 = add nuw nsw i64 %.idx.i, 128        ; 2 uses
  %i.ba = icmp eq i64 %.add.i.7, 524288
  br i1 %i.ba, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 524288
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 532480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.bc, i8 0, i64 8192, i1 false)
  %i.be = load i32, ptr %i.j, align 4, !tbaa !59
  %i.bf = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.bg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.be, i64 2
  %i.bh = shufflevector <2 x i32> %i.bf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bi = shufflevector <4 x i32> %i.bh, <4 x i32> %i.bg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bj = and <4 x i32> %i.bi, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bj, ptr %i.bd, align 8, !tbaa !59
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.i = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i.3, %bb.k ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(12) %i.bb, i64 12, i1 false)
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(12) %i.bb, i64 12, i1 false)
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(12) %i.bb, i64 12, i1 false)
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(12) %i.bb, i64 12, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 32768
  br i1 %exitcond.not.i.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit, label %bb.k, !llvm.loop !29

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit: ; preds = %bb.k
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %.not12.i.i.i.i21 = icmp eq ptr %i.br, null
  br i1 %.not12.i.i.i.i21, label %.critedge.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %.014.i.i.i.i23 = phi ptr [ %.1.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.br, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit ] ; 7 uses
  %.0813.i.i.i.i24 = phi ptr [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.o
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i22
  %i.bv = icmp sgt i32 %i.bt, %i.o
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59 ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.p
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp sgt i32 %i.bx, %i.p
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25: ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 40
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !59
  %i.cc = icmp slt i32 %i.cb, %i.q
  br i1 %i.cc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.m, %.lr.ph.i.i.i.i22
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.n, %bb.l
  %.sink.i.i.i.i27 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ 16, %bb.n ], [ 16, %bb.l ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ]
  %.19.i.i.i.i28 = phi ptr [ %.0813.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ %.014.i.i.i.i23, %bb.n ], [ %.014.i.i.i.i23, %bb.l ], [ %.014.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.cd, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE11lower_boundERSI_.exit.i, label %.lr.ph.i.i.i.i22, !llvm.loop !28

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE11lower_boundERSI_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %i.ce = icmp eq ptr %.19.i.i.i.i28, %i.t
  br i1 %i.ce, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE11lower_boundERSI_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ch = icmp slt i32 %i.o, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = icmp sgt i32 %i.o, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 36
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !59 ; 2 uses
  %i.cl = icmp slt i32 %i.p, %i.ck
  br i1 %i.cl, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = icmp sgt i32 %i.p, %i.ck
  br i1 %i.cm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !59
  %i.cp = icmp slt i32 %i.q, %i.co
  br i1 %i.cp, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.q, %bb.o, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE11lower_boundERSI_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i28, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE11lower_boundERSI_.exit.i ], [ %.19.i.i.i.i28, %bb.o ], [ %.19.i.i.i.i28, %bb.q ]
  %i.cq = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE22_M_emplace_hint_uniqueIJRS5_RSE_EEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(532496) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !200 ; 2 uses
  %.not = icmp eq ptr %i.cs, null
  br i1 %.not, label %bb.s, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 68 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 4, !range !57
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !63
  %i.cz = fadd float %.sroa.9.0.copyload, %i.cy
  %i.da = load <2 x float>, ptr %i.cw, align 8    ; 2 uses
  %i.db = load <2 x float>, ptr %2, align 4, !tbaa !63
  %i.dc = fadd <2 x float> %i.da, %i.db
  %i.dd = fcmp une <2 x float> %i.da, %i.dc       ; 2 uses
  %4 = extractelement <2 x i1> %i.dd, i64 0
  %5 = extractelement <2 x i1> %i.dd, i64 1
  %or.cond60.not66 = select i1 %4, i1 true, i1 %5
  %i.de = fcmp une float %.sroa.9.0.copyload, %i.cz
  %or.cond63 = select i1 %or.cond60.not66, i1 true, i1 %i.de
  br i1 %or.cond63, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.t, %bb.s
  %i.df = tail call noalias noundef nonnull dereferenceable(532496) ptr @_Znwm(i64 noundef 532496) #24 ; 17 uses
  %i.dg = load ptr, ptr %i.cr, align 8, !tbaa !200
  %i.dh = load i8, ptr %i.ct, align 4, !range !57
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.thread
  %.idx.i32 = phi i64 [ 0, %.thread ], [ %.add.i34.7, %bb.u ] ; 9 uses
  %.ptr.i33 = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  store ptr null, ptr %.ptr.i33, align 8, !tbaa !84
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.1 = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store ptr null, ptr %.ptr.i33.1, align 8, !tbaa !84
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.2 = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store ptr null, ptr %.ptr.i33.2, align 8, !tbaa !84
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.3 = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  store ptr null, ptr %.ptr.i33.3, align 8, !tbaa !84
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.4 = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  store ptr null, ptr %.ptr.i33.4, align 8, !tbaa !84
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.5 = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  store ptr null, ptr %.ptr.i33.5, align 8, !tbaa !84
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.6 = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  store ptr null, ptr %.ptr.i33.6, align 8, !tbaa !84
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.7 = getelementptr inbounds nuw i8, ptr %i.do, i64 112
  store ptr null, ptr %.ptr.i33.7, align 8, !tbaa !84
  %.add.i34.7 = add nuw nsw i64 %.idx.i32, 128    ; 2 uses
  %i.dp = icmp eq i64 %.add.i34.7, 524288
  br i1 %i.dp, label %bb.v, label %bb.u

bb.v:                                             ; preds = %bb.u
  %i.dq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56 ; 4 uses
  %i.dr = icmp eq ptr %i.dg, null
  %i.ds = trunc nuw i8 %i.dh to i1
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 524288
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 532480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.du, i8 0, i64 8192, i1 false)
  %i.dw = load i32, ptr %i.j, align 4, !tbaa !59
  %i.dx = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.dy = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.dw, i64 2
  %i.dz = shufflevector <2 x i32> %i.dx, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> %i.dy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.eb = and <4 x i32> %i.ea, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.eb, ptr %i.dv, align 8, !tbaa !59
  br i1 %i.dt, label %bb.w, label %.preheader

bb.w:                                             ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %i.df, i64 528384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.ec, i8 -1, i64 4096, i1 false), !tbaa !61
  br label %.preheader

.preheader:                                       ; preds = %bb.w, %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader
  %indvars.iv.i35 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.i36.3, %bb.x ] ; 5 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv.i35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(12) %i.dq, i64 12, i1 false)
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv.i35
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(12) %i.dq, i64 12, i1 false)
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv.i35
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(12) %i.dq, i64 12, i1 false)
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv.i35
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(12) %i.dq, i64 12, i1 false)
  %indvars.iv.next.i36.3 = add nuw nsw i64 %indvars.iv.i35, 4 ; 2 uses
  %exitcond.not.i37.3 = icmp eq i64 %indvars.iv.next.i36.3, 32768
  br i1 %exitcond.not.i37.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit38, label %bb.x, !llvm.loop !29

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit38: ; preds = %bb.x
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStruct3setERSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(532496) %i.df)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.r, %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit38, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit
  %.1.ph = phi ptr [ %i.cs, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit ], [ %i.df, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit38 ], [ %i.as, %bb.p ], [ %i.as, %bb.r ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ]
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5SumOpIS6_EEEEvRKNS4_5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(532496) %.1.ph, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2)
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5SumOpIS6_EEEEvRKNS4_5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(532496) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !59
  %i.b = shl i32 %i.a, 3
  %i.c = and i32 %i.b, 31744
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59
  %i.f = lshr i32 %i.e, 2
  %i.g = and i32 %i.f, 992
  %i.h = or disjoint i32 %i.g, %i.c               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59
  %i.k = lshr i32 %i.j, 7
  %i.l = and i32 %i.k, 31
  %i.m = or disjoint i32 %i.h, %i.l               ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 524288
  %i.o = lshr i32 %i.h, 6
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = and i32 %i.m, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t                      ; 4 uses
  %i.v = and i64 %i.u, %i.r
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.b, label %..critedge23_crit_edge

..critedge23_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = zext nneg i32 %i.m to i64
  %.phi.trans.insert30 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert30, align 8, !tbaa !84
  br label %.critedge23

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 528384
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = and i64 %i.y, %i.u
  %.not29 = icmp eq i64 %i.z, 0                   ; 2 uses
  br i1 %.not29, label %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = zext nneg i32 %i.m to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aa ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !63
  %i.ae = fadd float %.sroa.9.0.copyload, %i.ad
  %i.af = load <2 x float>, ptr %i.ab, align 8    ; 2 uses
  %i.ag = load <2 x float>, ptr %2, align 4, !tbaa !63
  %i.ah = fadd <2 x float> %i.af, %i.ag
  %i.ai = fcmp oeq <2 x float> %i.af, %i.ah       ; 2 uses
  %3 = extractelement <2 x i1> %i.ai, i64 0
  %4 = extractelement <2 x i1> %i.ai, i64 1
  %or.cond = select i1 %3, i1 %4, i1 false
  %i.aj = fcmp oeq float %.sroa.9.0.copyload, %i.ae
  %or.cond28 = select i1 %or.cond, i1 %i.aj, i1 false
  br i1 %or.cond28, label %bb.h, label %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread

_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread: ; preds = %bb.c, %bb.b
  %i.ak = tail call noalias noundef nonnull dereferenceable(66576) ptr @_Znwm(i64 noundef 66576) #24 ; 17 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread
  %.idx.i = phi i64 [ 0, %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread ], [ %.add.i.7, %bb.d ] ; 9 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  store ptr null, ptr %.ptr.i, align 8, !tbaa !84
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr null, ptr %.ptr.i.1, align 8, !tbaa !84
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr null, ptr %.ptr.i.2, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store ptr null, ptr %.ptr.i.3, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store ptr null, ptr %.ptr.i.4, align 8, !tbaa !84
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.5 = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store ptr null, ptr %.ptr.i.5, align 8, !tbaa !84
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.6 = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store ptr null, ptr %.ptr.i.6, align 8, !tbaa !84
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.7 = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  store ptr null, ptr %.ptr.i.7, align 8, !tbaa !84
  %.add.i.7 = add nuw nsw i64 %.idx.i, 128        ; 2 uses
  %i.as = icmp eq i64 %.add.i.7, 65536
  br i1 %i.as, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.at = zext nneg i32 %i.m to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 65536
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 66560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.av, i8 0, i64 1024, i1 false)
  %i.ax = load i32, ptr %i.i, align 4, !tbaa !59
  %i.ay = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.az = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ax, i64 2
  %i.ba = shufflevector <2 x i32> %i.ay, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> %i.az, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bc = and <4 x i32> %i.bb, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.bc, ptr %i.aw, align 8, !tbaa !59
  br i1 %.not29, label %.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 66048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.bd, i8 -1, i64 512, i1 false), !tbaa !61
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader
  %indvars.iv.i = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.i.3, %bb.g ] ; 5 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false)
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false)
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false)
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 4096
  br i1 %exitcond.not.i.3, label %.critedge, label %bb.g, !llvm.loop !30

.critedge:                                        ; preds = %bb.g
  %i.bl = load i64, ptr %i.q, align 8, !tbaa !61
  %i.bm = or i64 %i.bl, %i.u
  store i64 %i.bm, ptr %i.q, align 8, !tbaa !61
  %i.bn = xor i64 %i.u, -1
  %i.bo = load i64, ptr %i.x, align 8, !tbaa !61
  %i.bp = and i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %i.x, align 8, !tbaa !61
  store ptr %i.ak, ptr %i.au, align 8, !tbaa !84
  br label %.critedge23

.critedge23:                                      ; preds = %..critedge23_crit_edge, %.critedge
  %i.bq = phi ptr [ %.pre, %..critedge23_crit_edge ], [ %i.ak, %.critedge ]
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE11modifyValueINS0_5tools8valxform5SumOpIS6_EEEEvRKNS4_5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %.critedge23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE11modifyValueINS0_5tools8valxform5SumOpIS6_EEEEvRKNS4_5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(66576) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !59     ; 2 uses
  %i.b = shl i32 %i.a, 5
  %i.c = and i32 %i.b, 3840
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59   ; 2 uses
  %i.f = shl i32 %i.e, 1
  %i.g = and i32 %i.f, 240
  %i.h = or disjoint i32 %i.g, %i.c               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59   ; 2 uses
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 15
  %i.m = or disjoint i32 %i.h, %i.l               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 65536
  %i.o = lshr i32 %i.h, 6
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = and i32 %i.m, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t                      ; 4 uses
  %i.v = and i64 %i.u, %i.r
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.b, label %..critedge23_crit_edge

..critedge23_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = zext nneg i32 %i.m to i64
  %.phi.trans.insert30 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert30, align 8, !tbaa !84
  br label %.critedge23

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 66048
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = and i64 %i.y, %i.u
  %i.aa = icmp ne i64 %i.z, 0                     ; 2 uses
  %i.ab = zext nneg i32 %i.m to i64               ; 2 uses
  br i1 %i.aa, label %bb.c, label %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ab ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !63
  %i.af = fadd float %.sroa.9.0.copyload, %i.ae
  %i.ag = load <2 x float>, ptr %i.ac, align 8    ; 2 uses
  %i.ah = load <2 x float>, ptr %2, align 4, !tbaa !63
  %i.ai = fadd <2 x float> %i.ag, %i.ah
  %i.aj = fcmp oeq <2 x float> %i.ag, %i.ai       ; 2 uses
  %3 = extractelement <2 x i1> %i.aj, i64 0
  %4 = extractelement <2 x i1> %i.aj, i64 1
  %or.cond = select i1 %3, i1 %4, i1 false
  %i.ak = fcmp oeq float %.sroa.9.0.copyload, %i.af
  %or.cond29 = select i1 %or.cond, i1 %i.ak, i1 false
  br i1 %or.cond29, label %bb.e, label %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread

_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread: ; preds = %bb.b, %bb.c
  %i.al = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 19 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ab ; 5 uses
  %i.an = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znam(i64 noundef 6144) #24
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread
  store ptr %i.an, ptr %i.al, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i8 0, ptr %i.ao, align 4, !tbaa !119
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store atomic i32 0, ptr %i.ap seq_cst, align 8
  %i.aq = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %i.al)
          to label %.noexc24 unwind label %bb.d   ; 0 uses

.noexc24:                                         ; preds = %.noexc
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %.critedge, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.noexc24, %.preheader.i.i.i
  %.07.i.i.i = phi i32 [ %i.av, %.preheader.i.i.i ], [ 512, %.noexc24 ]
  %.036.i.i.i = phi ptr [ %i.aw, %.preheader.i.i.i ], [ %i.ar, %.noexc24 ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.036.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.am, i64 12, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.as, ptr noundef nonnull align 8 dereferenceable(12) %i.am, i64 12, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.at, ptr noundef nonnull align 8 dereferenceable(12) %i.am, i64 12, i1 false)
  %i.av = add nsw i32 %.07.i.i.i, -4              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %i.am, i64 12, i1 false)
  %.not5.i.i.i.3 = icmp eq i32 %i.av, 0
  br i1 %.not5.i.i.i.3, label %.critedge, label %.preheader.i.i.i, !llvm.loop !33

.critedge:                                        ; preds = %.preheader.i.i.i, %.noexc24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ay = sext i1 %i.aa to i64                    ; 8 uses
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i64 %i.ay, ptr %i.bb, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 %i.ay, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 %i.ay, ptr %i.bd, align 8, !tbaa !61
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i64 %i.ay, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i64 %i.ay, ptr %i.bf, align 8, !tbaa !61
  %i.bg = load i32, ptr %1, align 4, !tbaa !59
  %i.bh = and i32 %i.bg, -8
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !59
  %i.bj = and i32 %i.bi, -8
  %i.bk = load i32, ptr %i.i, align 4, !tbaa !59
  %i.bl = and i32 %i.bk, -8
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bj to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bm, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  store i32 %i.bl, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 92
  store i32 0, ptr %i.bn, align 4, !tbaa !203
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !61
  %i.bp = or i64 %i.bo, %i.u
  store i64 %i.bp, ptr %i.q, align 8, !tbaa !61
  %i.bq = xor i64 %i.u, -1
  %i.br = load i64, ptr %i.x, align 8, !tbaa !61
  %i.bs = and i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.x, align 8, !tbaa !61
  store ptr %i.al, ptr %i.am, align 8, !tbaa !84
  %.pre31 = load i32, ptr %1, align 4, !tbaa !59
  %.pre32 = load i32, ptr %i.d, align 4, !tbaa !59
  %.pre33 = load i32, ptr %i.i, align 4, !tbaa !59
  br label %.critedge23

bb.d:                                             ; preds = %.noexc, %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 96) #25
  resume { ptr, i32 } %i.bt

.critedge23:                                      ; preds = %..critedge23_crit_edge, %.critedge
  %i.bu = phi i32 [ %i.j, %..critedge23_crit_edge ], [ %.pre33, %.critedge ]
  %i.bv = phi i32 [ %i.e, %..critedge23_crit_edge ], [ %.pre32, %.critedge ]
  %i.bw = phi i32 [ %i.a, %..critedge23_crit_edge ], [ %.pre31, %.critedge ]
  %i.bx = phi ptr [ %.pre, %..critedge23_crit_edge ], [ %i.al, %.critedge ]
  %i.by = shl i32 %i.bw, 6
  %i.bz = and i32 %i.by, 448
  %i.ca = shl i32 %i.bv, 3
  %i.cb = and i32 %i.ca, 56
  %i.cc = or disjoint i32 %i.cb, %i.bz
  %i.cd = and i32 %i.bu, 7
  %i.ce = or disjoint i32 %i.cc, %i.cd
  tail call void @_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE11modifyValueINS0_5tools8valxform5SumOpIS5_EEEEvjRKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.bx, i32 noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE11modifyValueINS0_5tools8valxform5SumOpIS5_EEEEvjRKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %0)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit: ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !84
  %.not.i4 = icmp eq ptr %i.c, null
  br i1 %.not.i4, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit.thread, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit
  %i.d = load atomic i32, ptr %i.a seq_cst, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit.thread

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit
  %i.e = load atomic i8, ptr @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.f, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero) #15
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store <2 x float> zeroinitializer, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero, align 4
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero, i64 8), align 4
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 12, ptr nonnull @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.i = load atomic i32, ptr %i.a seq_cst, align 8
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EEixEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %0)
  br label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EEixEj.exit

_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EEixEj.exit: ; preds = %bb.f, %bb.g
  %i.j = load ptr, ptr %0, align 8, !tbaa !84     ; 2 uses
  %.not5.i.i = icmp eq ptr %i.j, null
  %i.k = zext i32 %1 to i64
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.k
  %.0.i.i = select i1 %.not5.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero, ptr %i.l ; 4 uses
  %i.m = load float, ptr %2, align 4, !tbaa !63
  %i.n = load float, ptr %.0.i.i, align 4, !tbaa !63
  %i.o = fadd float %i.m, %i.n
  store float %i.o, ptr %.0.i.i, align 4, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !63
  %i.t = fadd float %i.q, %i.s
  store float %i.t, ptr %i.r, align 4, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !63
  %i.y = fadd float %i.v, %i.x
  store float %i.y, ptr %i.w, align 4, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = and i32 %1, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = lshr i32 %1, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ae ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !61
  %i.ah = or i64 %i.ag, %i.ac
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !61
  br label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit.thread

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit.thread: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit, %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EEixEj.exit, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE11modifyValueINS0_5tools8valxform5SumOpIS7_EEEEvRKNS5_5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE11modifyValueINS0_5tools8valxform6MultOpIS7_EEEEvRKNS5_5CoordERKT_:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !28

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(532496) ptr @_Znwm(i64 noundef 532496) #24 ; 19 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread
  %.idx.i = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit.thread ], [ %.add.i.7, %bb.i ] ; 9 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  store ptr null, ptr %.ptr.i, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr null, ptr %.ptr.i.1, align 8, !tbaa !84
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr null, ptr %.ptr.i.2, align 8, !tbaa !84
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store ptr null, ptr %.ptr.i.3, align 8, !tbaa !84
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr null, ptr %.ptr.i.4, align 8, !tbaa !84
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.5 = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store ptr null, ptr %.ptr.i.5, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.6 = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store ptr null, ptr %.ptr.i.6, align 8, !tbaa !84
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.ptr.i.7 = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  store ptr null, ptr %.ptr.i.7, align 8, !tbaa !84
  %.add.i.7 = add nuw nsw i64 %.idx.i, 128        ; 2 uses
  %i.ba = icmp eq i64 %.add.i.7, 524288
  br i1 %i.ba, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 524288
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 532480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.bc, i8 0, i64 8192, i1 false)
  %i.be = load i32, ptr %i.j, align 4, !tbaa !59
  %i.bf = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.bg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.be, i64 2
  %i.bh = shufflevector <2 x i32> %i.bf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bi = shufflevector <4 x i32> %i.bh, <4 x i32> %i.bg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bj = and <4 x i32> %i.bi, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bj, ptr %i.bd, align 8, !tbaa !59
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.i = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i.3, %bb.k ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(12) %i.bb, i64 12, i1 false)
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(12) %i.bb, i64 12, i1 false)
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(12) %i.bb, i64 12, i1 false)
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(12) %i.bb, i64 12, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 32768
  br i1 %exitcond.not.i.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit, label %bb.k, !llvm.loop !29

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit: ; preds = %bb.k
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %.not12.i.i.i.i21 = icmp eq ptr %i.br, null
  br i1 %.not12.i.i.i.i21, label %.critedge.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %.014.i.i.i.i23 = phi ptr [ %.1.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.br, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit ] ; 7 uses
  %.0813.i.i.i.i24 = phi ptr [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.o
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i22
  %i.bv = icmp sgt i32 %i.bt, %i.o
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59 ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.p
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp sgt i32 %i.bx, %i.p
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25: ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 40
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !59
  %i.cc = icmp slt i32 %i.cb, %i.q
  br i1 %i.cc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.m, %.lr.ph.i.i.i.i22
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.n, %bb.l
  %.sink.i.i.i.i27 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ 16, %bb.n ], [ 16, %bb.l ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ]
  %.19.i.i.i.i28 = phi ptr [ %.0813.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ %.014.i.i.i.i23, %bb.n ], [ %.014.i.i.i.i23, %bb.l ], [ %.014.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.cd, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE11lower_boundERSI_.exit.i, label %.lr.ph.i.i.i.i22, !llvm.loop !28

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE11lower_boundERSI_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %i.ce = icmp eq ptr %.19.i.i.i.i28, %i.t
  br i1 %i.ce, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE11lower_boundERSI_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ch = icmp slt i32 %i.o, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = icmp sgt i32 %i.o, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 36
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !59 ; 2 uses
  %i.cl = icmp slt i32 %i.p, %i.ck
  br i1 %i.cl, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = icmp sgt i32 %i.p, %i.ck
  br i1 %i.cm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !59
  %i.cp = icmp slt i32 %i.q, %i.co
  br i1 %i.cp, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.q, %bb.o, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE11lower_boundERSI_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i28, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE11lower_boundERSI_.exit.i ], [ %.19.i.i.i.i28, %bb.o ], [ %.19.i.i.i.i28, %bb.q ]
  %i.cq = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE22_M_emplace_hint_uniqueIJRS5_RSE_EEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(532496) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !200 ; 2 uses
  %.not = icmp eq ptr %i.cs, null
  br i1 %.not, label %bb.s, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 68 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 4, !range !57
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !63
  %i.cz = fmul float %.sroa.9.0.copyload, %i.cy
  %i.da = load <2 x float>, ptr %i.cw, align 8    ; 2 uses
  %i.db = load <2 x float>, ptr %2, align 4, !tbaa !63
  %i.dc = fmul <2 x float> %i.da, %i.db
  %i.dd = fcmp une <2 x float> %i.da, %i.dc       ; 2 uses
  %4 = extractelement <2 x i1> %i.dd, i64 0
  %5 = extractelement <2 x i1> %i.dd, i64 1
  %or.cond60.not66 = select i1 %4, i1 true, i1 %5
  %i.de = fcmp une float %.sroa.9.0.copyload, %i.cz
  %or.cond63 = select i1 %or.cond60.not66, i1 true, i1 %i.de
  br i1 %or.cond63, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.t, %bb.s
  %i.df = tail call noalias noundef nonnull dereferenceable(532496) ptr @_Znwm(i64 noundef 532496) #24 ; 17 uses
  %i.dg = load ptr, ptr %i.cr, align 8, !tbaa !200
  %i.dh = load i8, ptr %i.ct, align 4, !range !57
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.thread
  %.idx.i32 = phi i64 [ 0, %.thread ], [ %.add.i34.7, %bb.u ] ; 9 uses
  %.ptr.i33 = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  store ptr null, ptr %.ptr.i33, align 8, !tbaa !84
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.1 = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store ptr null, ptr %.ptr.i33.1, align 8, !tbaa !84
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.2 = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store ptr null, ptr %.ptr.i33.2, align 8, !tbaa !84
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.3 = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  store ptr null, ptr %.ptr.i33.3, align 8, !tbaa !84
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.4 = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  store ptr null, ptr %.ptr.i33.4, align 8, !tbaa !84
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.5 = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  store ptr null, ptr %.ptr.i33.5, align 8, !tbaa !84
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.6 = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  store ptr null, ptr %.ptr.i33.6, align 8, !tbaa !84
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i32
  %.ptr.i33.7 = getelementptr inbounds nuw i8, ptr %i.do, i64 112
  store ptr null, ptr %.ptr.i33.7, align 8, !tbaa !84
  %.add.i34.7 = add nuw nsw i64 %.idx.i32, 128    ; 2 uses
  %i.dp = icmp eq i64 %.add.i34.7, 524288
  br i1 %i.dp, label %bb.v, label %bb.u

bb.v:                                             ; preds = %bb.u
  %i.dq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56 ; 4 uses
  %i.dr = icmp eq ptr %i.dg, null
  %i.ds = trunc nuw i8 %i.dh to i1
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 524288
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 532480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.du, i8 0, i64 8192, i1 false)
  %i.dw = load i32, ptr %i.j, align 4, !tbaa !59
  %i.dx = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.dy = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.dw, i64 2
  %i.dz = shufflevector <2 x i32> %i.dx, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> %i.dy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.eb = and <4 x i32> %i.ea, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.eb, ptr %i.dv, align 8, !tbaa !59
  br i1 %i.dt, label %bb.w, label %.preheader

bb.w:                                             ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %i.df, i64 528384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.ec, i8 -1, i64 4096, i1 false), !tbaa !61
  br label %.preheader

.preheader:                                       ; preds = %bb.w, %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader
  %indvars.iv.i35 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.i36.3, %bb.x ] ; 5 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv.i35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(12) %i.dq, i64 12, i1 false)
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv.i35
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(12) %i.dq, i64 12, i1 false)
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv.i35
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(12) %i.dq, i64 12, i1 false)
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv.i35
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(12) %i.dq, i64 12, i1 false)
  %indvars.iv.next.i36.3 = add nuw nsw i64 %indvars.iv.i35, 4 ; 2 uses
  %exitcond.not.i37.3 = icmp eq i64 %indvars.iv.next.i36.3, 32768
  br i1 %exitcond.not.i37.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit38, label %bb.x, !llvm.loop !29

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit38: ; preds = %bb.x
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStruct3setERSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(532496) %i.df)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.r, %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit38, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit
  %.1.ph = phi ptr [ %i.cs, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE7findKeyERKNS5_5CoordE.exit ], [ %i.df, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEC2ERKNS4_5CoordERKS6_b.exit38 ], [ %i.as, %bb.p ], [ %i.as, %bb.r ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ]
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform6MultOpIS6_EEEEvRKNS4_5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(532496) %.1.ph, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2)
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SE_EEE7emplaceIJRSI_RSC_EEESH_ISt17_Rb_tree_iteratorISJ_EbEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform6MultOpIS6_EEEEvRKNS4_5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(532496) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !59
  %i.b = shl i32 %i.a, 3
  %i.c = and i32 %i.b, 31744
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59
  %i.f = lshr i32 %i.e, 2
  %i.g = and i32 %i.f, 992
  %i.h = or disjoint i32 %i.g, %i.c               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59
  %i.k = lshr i32 %i.j, 7
  %i.l = and i32 %i.k, 31
  %i.m = or disjoint i32 %i.h, %i.l               ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 524288
  %i.o = lshr i32 %i.h, 6
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = and i32 %i.m, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t                      ; 4 uses
  %i.v = and i64 %i.u, %i.r
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.b, label %..critedge23_crit_edge

..critedge23_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = zext nneg i32 %i.m to i64
  %.phi.trans.insert30 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert30, align 8, !tbaa !84
  br label %.critedge23

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 528384
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = and i64 %i.y, %i.u
  %.not29 = icmp eq i64 %i.z, 0                   ; 2 uses
  br i1 %.not29, label %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = zext nneg i32 %i.m to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aa ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !63
  %i.ae = fmul float %.sroa.9.0.copyload, %i.ad
  %i.af = load <2 x float>, ptr %i.ab, align 8    ; 2 uses
  %i.ag = load <2 x float>, ptr %2, align 4, !tbaa !63
  %i.ah = fmul <2 x float> %i.af, %i.ag
  %i.ai = fcmp oeq <2 x float> %i.af, %i.ah       ; 2 uses
  %3 = extractelement <2 x i1> %i.ai, i64 0
  %4 = extractelement <2 x i1> %i.ai, i64 1
  %or.cond = select i1 %3, i1 %4, i1 false
  %i.aj = fcmp oeq float %.sroa.9.0.copyload, %i.ae
  %or.cond28 = select i1 %or.cond, i1 %i.aj, i1 false
  br i1 %or.cond28, label %bb.h, label %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread

_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread: ; preds = %bb.c, %bb.b
  %i.ak = tail call noalias noundef nonnull dereferenceable(66576) ptr @_Znwm(i64 noundef 66576) #24 ; 17 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread
  %.idx.i = phi i64 [ 0, %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread ], [ %.add.i.7, %bb.d ] ; 9 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  store ptr null, ptr %.ptr.i, align 8, !tbaa !84
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr null, ptr %.ptr.i.1, align 8, !tbaa !84
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr null, ptr %.ptr.i.2, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store ptr null, ptr %.ptr.i.3, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store ptr null, ptr %.ptr.i.4, align 8, !tbaa !84
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.5 = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store ptr null, ptr %.ptr.i.5, align 8, !tbaa !84
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.6 = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store ptr null, ptr %.ptr.i.6, align 8, !tbaa !84
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %.ptr.i.7 = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  store ptr null, ptr %.ptr.i.7, align 8, !tbaa !84
  %.add.i.7 = add nuw nsw i64 %.idx.i, 128        ; 2 uses
  %i.as = icmp eq i64 %.add.i.7, 65536
  br i1 %i.as, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.at = zext nneg i32 %i.m to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 65536
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 66560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.av, i8 0, i64 1024, i1 false)
  %i.ax = load i32, ptr %i.i, align 4, !tbaa !59
  %i.ay = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.az = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ax, i64 2
  %i.ba = shufflevector <2 x i32> %i.ay, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> %i.az, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bc = and <4 x i32> %i.bb, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.bc, ptr %i.aw, align 8, !tbaa !59
  br i1 %.not29, label %.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 66048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.bd, i8 -1, i64 512, i1 false), !tbaa !61
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader
  %indvars.iv.i = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.i.3, %bb.g ] ; 5 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false)
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false)
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false)
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 4096
  br i1 %exitcond.not.i.3, label %.critedge, label %bb.g, !llvm.loop !30

.critedge:                                        ; preds = %bb.g
  %i.bl = load i64, ptr %i.q, align 8, !tbaa !61
  %i.bm = or i64 %i.bl, %i.u
  store i64 %i.bm, ptr %i.q, align 8, !tbaa !61
  %i.bn = xor i64 %i.u, -1
  %i.bo = load i64, ptr %i.x, align 8, !tbaa !61
  %i.bp = and i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %i.x, align 8, !tbaa !61
  store ptr %i.ak, ptr %i.au, align 8, !tbaa !84
  br label %.critedge23

.critedge23:                                      ; preds = %..critedge23_crit_edge, %.critedge
  %i.bq = phi ptr [ %.pre, %..critedge23_crit_edge ], [ %i.ak, %.critedge ]
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE11modifyValueINS0_5tools8valxform6MultOpIS6_EEEEvRKNS4_5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(66576) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %.critedge23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE11modifyValueINS0_5tools8valxform6MultOpIS6_EEEEvRKNS4_5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(66576) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !59     ; 2 uses
  %i.b = shl i32 %i.a, 5
  %i.c = and i32 %i.b, 3840
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59   ; 2 uses
  %i.f = shl i32 %i.e, 1
  %i.g = and i32 %i.f, 240
  %i.h = or disjoint i32 %i.g, %i.c               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59   ; 2 uses
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 15
  %i.m = or disjoint i32 %i.h, %i.l               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 65536
  %i.o = lshr i32 %i.h, 6
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = and i32 %i.m, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t                      ; 4 uses
  %i.v = and i64 %i.u, %i.r
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.b, label %..critedge23_crit_edge

..critedge23_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = zext nneg i32 %i.m to i64
  %.phi.trans.insert30 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert30, align 8, !tbaa !84
  br label %.critedge23

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 66048
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = and i64 %i.y, %i.u
  %i.aa = icmp ne i64 %i.z, 0                     ; 2 uses
  %i.ab = zext nneg i32 %i.m to i64               ; 2 uses
  br i1 %i.aa, label %bb.c, label %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ab ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !63
  %i.af = fmul float %.sroa.9.0.copyload, %i.ae
  %i.ag = load <2 x float>, ptr %i.ac, align 8    ; 2 uses
  %i.ah = load <2 x float>, ptr %2, align 4, !tbaa !63
  %i.ai = fmul <2 x float> %i.ag, %i.ah
  %i.aj = fcmp oeq <2 x float> %i.ag, %i.ai       ; 2 uses
  %3 = extractelement <2 x i1> %i.aj, i64 0
  %4 = extractelement <2 x i1> %i.aj, i64 1
  %or.cond = select i1 %3, i1 %4, i1 false
  %i.ak = fcmp oeq float %.sroa.9.0.copyload, %i.af
  %or.cond29 = select i1 %or.cond, i1 %i.ak, i1 false
  br i1 %or.cond29, label %bb.e, label %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread

_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread: ; preds = %bb.b, %bb.c
  %i.al = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 19 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ab ; 5 uses
  %i.an = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znam(i64 noundef 6144) #24
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread
  store ptr %i.an, ptr %i.al, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i8 0, ptr %i.ao, align 4, !tbaa !119
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store atomic i32 0, ptr %i.ap seq_cst, align 8
  %i.aq = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %i.al)
          to label %.noexc24 unwind label %bb.d   ; 0 uses

.noexc24:                                         ; preds = %.noexc
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %.critedge, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.noexc24, %.preheader.i.i.i
  %.07.i.i.i = phi i32 [ %i.av, %.preheader.i.i.i ], [ 512, %.noexc24 ]
  %.036.i.i.i = phi ptr [ %i.aw, %.preheader.i.i.i ], [ %i.ar, %.noexc24 ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.036.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.am, i64 12, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.as, ptr noundef nonnull align 8 dereferenceable(12) %i.am, i64 12, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.at, ptr noundef nonnull align 8 dereferenceable(12) %i.am, i64 12, i1 false)
  %i.av = add nsw i32 %.07.i.i.i, -4              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %i.am, i64 12, i1 false)
  %.not5.i.i.i.3 = icmp eq i32 %i.av, 0
  br i1 %.not5.i.i.i.3, label %.critedge, label %.preheader.i.i.i, !llvm.loop !33

.critedge:                                        ; preds = %.preheader.i.i.i, %.noexc24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ay = sext i1 %i.aa to i64                    ; 8 uses
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i64 %i.ay, ptr %i.bb, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 %i.ay, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 %i.ay, ptr %i.bd, align 8, !tbaa !61
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i64 %i.ay, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i64 %i.ay, ptr %i.bf, align 8, !tbaa !61
  %i.bg = load i32, ptr %1, align 4, !tbaa !59
  %i.bh = and i32 %i.bg, -8
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !59
  %i.bj = and i32 %i.bi, -8
  %i.bk = load i32, ptr %i.i, align 4, !tbaa !59
  %i.bl = and i32 %i.bk, -8
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bj to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bm, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  store i32 %i.bl, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 92
  store i32 0, ptr %i.bn, align 4, !tbaa !203
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !61
  %i.bp = or i64 %i.bo, %i.u
  store i64 %i.bp, ptr %i.q, align 8, !tbaa !61
  %i.bq = xor i64 %i.u, -1
  %i.br = load i64, ptr %i.x, align 8, !tbaa !61
  %i.bs = and i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.x, align 8, !tbaa !61
  store ptr %i.al, ptr %i.am, align 8, !tbaa !84
  %.pre31 = load i32, ptr %1, align 4, !tbaa !59
  %.pre32 = load i32, ptr %i.d, align 4, !tbaa !59
  %.pre33 = load i32, ptr %i.i, align 4, !tbaa !59
  br label %.critedge23

bb.d:                                             ; preds = %.noexc, %_ZN7openvdb5v13_04math14isExactlyEqualINS1_4Vec3IfEES4_EEbRKT_RKT0_.exit.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 96) #25
  resume { ptr, i32 } %i.bt

.critedge23:                                      ; preds = %..critedge23_crit_edge, %.critedge
  %i.bu = phi i32 [ %i.j, %..critedge23_crit_edge ], [ %.pre33, %.critedge ]
  %i.bv = phi i32 [ %i.e, %..critedge23_crit_edge ], [ %.pre32, %.critedge ]
  %i.bw = phi i32 [ %i.a, %..critedge23_crit_edge ], [ %.pre31, %.critedge ]
  %i.bx = phi ptr [ %.pre, %..critedge23_crit_edge ], [ %i.al, %.critedge ]
  %i.by = shl i32 %i.bw, 6
  %i.bz = and i32 %i.by, 448
  %i.ca = shl i32 %i.bv, 3
  %i.cb = and i32 %i.ca, 56
  %i.cc = or disjoint i32 %i.cb, %i.bz
  %i.cd = and i32 %i.bu, 7
  %i.ce = or disjoint i32 %i.cc, %i.cd
  tail call void @_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE11modifyValueINS0_5tools8valxform6MultOpIS5_EEEEvjRKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.bx, i32 noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE11modifyValueINS0_5tools8valxform6MultOpIS5_EEEEvjRKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %0)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit: ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !84
  %.not.i4 = icmp eq ptr %i.c, null
  br i1 %.not.i4, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit.thread, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit
  %i.d = load atomic i32, ptr %i.a seq_cst, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit.thread

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit
  %i.e = load atomic i8, ptr @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.f, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero) #15
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store <2 x float> zeroinitializer, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero, align 4
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero, i64 8), align 4
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 12, ptr nonnull @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.i = load atomic i32, ptr %i.a seq_cst, align 8
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EEixEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %0)
  br label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EEixEj.exit

_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EEixEj.exit: ; preds = %bb.f, %bb.g
  %i.j = load ptr, ptr %0, align 8, !tbaa !84     ; 2 uses
  %.not5.i.i = icmp eq ptr %i.j, null
  %i.k = zext i32 %1 to i64
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.k
  %.0.i.i = select i1 %.not5.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE2atEjE5sZero, ptr %i.l ; 4 uses
  %i.m = load float, ptr %2, align 4, !tbaa !63
  %i.n = load float, ptr %.0.i.i, align 4, !tbaa !63
  %i.o = fmul float %i.m, %i.n
  store float %i.o, ptr %.0.i.i, align 4, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !63
  %i.t = fmul float %i.q, %i.s
  store float %i.t, ptr %i.r, align 4, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !63
  %i.y = fmul float %i.v, %i.x
  store float %i.y, ptr %i.w, align 4, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = and i32 %1, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = lshr i32 %1, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ae ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !61
  %i.ah = or i64 %i.ag, %i.ac
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !61
  br label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit.thread

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit.thread: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit, %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EEixEj.exit, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE5emptyEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE11modifyValueINS0_5tools8valxform6MultOpIS7_EEEEvRKNS5_5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1

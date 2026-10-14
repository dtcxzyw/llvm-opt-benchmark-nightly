Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Morphology?download=true
inline.NumInlined: 68333
inline.NumDeleted: 20965
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 335
loop-unroll.NumUnrolled: 1703
begin_hunk_0_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE17touchLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPS4_RKNS0_4math5CoordERT_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.w, i8 0, i64 33792, i1 false)
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !464
  %i.af = load <2 x i32>, ptr %1, align 4, !tbaa !464
  %i.ag = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ae, i64 2
  %i.ah = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> %i.ag, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aj = and <4 x i32> %i.ai, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.aj, ptr %i.ad, align 8, !tbaa !464
  br i1 %.not, label %vector.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 33280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.ak, i8 -1, i64 512, i1 false), !tbaa !513
  br label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.c
  %.pre.i = load i64, ptr %i.y, align 8, !tbaa !513
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.al, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat, ptr %i.am, align 8, !tbaa !485
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.ao, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat, ptr %i.ap, align 8, !tbaa !485
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.ar, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat, ptr %i.as, align 8, !tbaa !485
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.au, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat, ptr %i.av, align 8, !tbaa !485
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.aw = icmp eq i64 %index.next.3, 4096
  br i1 %i.aw, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ERKNS0_4math5CoordERKlb.exit, label %vector.body, !llvm.loop !7818

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !513
  %i.ay = or i64 %i.ax, %i.u
  store i64 %i.ay, ptr %i.q, align 8, !tbaa !513
  %i.az = xor i64 %i.u, -1
  %i.ba = and i64 %i.ab, %i.az
  store i64 %i.ba, ptr %i.aa, align 8, !tbaa !513
  store ptr %i.w, ptr %i.y, align 8, !tbaa !485
  %.pre15 = load i32, ptr %1, align 4, !tbaa !464
  %.pre16 = load i32, ptr %i.d, align 4, !tbaa !464
  %.pre17 = load i32, ptr %i.i, align 4, !tbaa !464
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ERKNS0_4math5CoordERKlb.exit
  %.pre-phi = phi i64 [ %.phi.trans.insert, %._crit_edge ], [ %i.x, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.bb = phi i32 [ %i.j, %._crit_edge ], [ %.pre17, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.bc = phi i32 [ %i.e, %._crit_edge ], [ %.pre16, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.bd = phi i32 [ %i.a, %._crit_edge ], [ %.pre15, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.be = phi ptr [ %.pre, %._crit_edge ], [ %i.w, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ERKNS0_4math5CoordERKlb.exit ]
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
  store i32 %i.bi, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !485
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.be, ptr %i.bk, align 8, !tbaa !2943
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !485
  %i.bm = tail call noundef ptr @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE17touchLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPS4_RKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  ret ptr %i.bm
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE17touchLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPS5_RKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !464
  %i.c = load i32, ptr %i.a, align 8, !tbaa !464
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !464
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !464
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !464
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !644  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !464  ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !464
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !271

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !464 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !464 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !464
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !464
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !464
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !464
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load <2 x i64>, ptr %i.ba, align 8
  %broadcast.splat60 = shufflevector <2 x i64> %4, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index62 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next63.3, %vector.body61 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index62 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %broadcast.splat60, ptr %i.bb, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat60, ptr %i.bc, align 8, !tbaa !485
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index62 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x i64> %broadcast.splat60, ptr %i.be, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat60, ptr %i.bf, align 8, !tbaa !485
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index62 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x i64> %broadcast.splat60, ptr %i.bh, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat60, ptr %i.bi, align 8, !tbaa !485
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index62 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x i64> %broadcast.splat60, ptr %i.bk, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat60, ptr %i.bl, align 8, !tbaa !485
  %index.next63.3 = add nuw nsw i64 %index62, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next63.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, label %vector.body61, !llvm.loop !7819

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body61
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !644 ; 2 uses
  %.not12.i.i.i.i17 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i17, label %.critedge.i, label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22
  %.014.i.i.i.i19 = phi ptr [ %.1.i.i.i.i25, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ] ; 7 uses
  %.0813.i.i.i.i20 = phi ptr [ %.19.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i19, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !464 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i18
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i19, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !464 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i19, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !464
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21, %bb.j, %.lr.ph.i.i.i.i18
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21, %bb.k, %bb.i
  %.sink.i.i.i.i23 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21 ]
  %.19.i.i.i.i24 = phi ptr [ %.0813.i.i.i.i20, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27 ], [ %.014.i.i.i.i19, %bb.k ], [ %.014.i.i.i.i19, %bb.i ], [ %.014.i.i.i.i19, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i19, i64 %.sink.i.i.i.i23
  %.1.i.i.i.i25 = load ptr, ptr %i.bz, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i26 = icmp eq ptr %.1.i.i.i.i25, null
  br i1 %.not.i.i.i.i26, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i18, !llvm.loop !271

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22
  %i.ca = icmp eq ptr %.19.i.i.i.i24, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !464 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !464 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !464
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ], [ %.19.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i24, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i24, %bb.l ], [ %.19.i.i.i.i24, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !818 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 9 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !818
  %i.cs = icmp eq ptr %i.cr, null
  %i.ct = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.cu = load i8, ptr %i.ct, align 8, !range !512
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = select i1 %i.cs, i1 %i.cv, i1 false
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cp, i8 0, i64 270336, i1 false)
  %i.cy = load i32, ptr %i.j, align 4, !tbaa !464
  %i.cz = load <2 x i32>, ptr %1, align 4, !tbaa !464
  %i.da = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.cy, i64 2
  %i.db = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x i32> %i.db, <4 x i32> %i.da, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dd = and <4 x i32> %i.dc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dd, ptr %i.cx, align 8, !tbaa !464
  br i1 %i.cw, label %bb.q, label %vector.ph

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.de, i8 -1, i64 4096, i1 false), !tbaa !513
  br label %vector.ph

vector.ph:                                        ; preds = %bb.p, %bb.q
  %.pre.i28 = load i64, ptr %i.cq, align 8, !tbaa !513
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i28, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.df, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat, ptr %i.dg, align 8, !tbaa !485
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.di, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat, ptr %i.dj, align 8, !tbaa !485
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.dl, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat, ptr %i.dm, align 8, !tbaa !485
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.do, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat, ptr %i.dp, align 8, !tbaa !485
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dq = icmp eq i64 %index.next.3, 32768
  br i1 %i.dq, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit32, label %vector.body, !llvm.loop !7820

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit32: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cp)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit32
  %.0 = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cp, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit32 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 2 uses
  %i.dr = load i32, ptr %1, align 4, !tbaa !464
  %i.ds = and i32 %i.dr, -4096
  %i.dt = load i32, ptr %i.e, align 4, !tbaa !464
  %i.du = and i32 %i.dt, -4096
  %i.dv = load i32, ptr %i.j, align 4, !tbaa !464
  %i.dw = and i32 %i.dv, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.du to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ds to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.dx, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.dw, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !485
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %.0, ptr %i.dy, align 8, !tbaa !2982
  %i.dz = call noundef ptr @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE17touchLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPS4_RKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(270352) %.0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %i.dz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(270352) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKlbRT_:bb.a
bb.i:                                             ; preds = %bb.b
  %i.bv = zext nneg i32 %i.n to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !485 ; 5 uses
  %.not = icmp eq i32 %1, 2
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = and i32 %i.b, -128
  %i.bz = and i32 %i.f, -128
  %i.ca = and i32 %i.k, -128
  %.sroa.2.0.insert.ext.i46 = zext i32 %i.bz to i64
  %.sroa.2.0.insert.shift.i47 = shl nuw i64 %.sroa.2.0.insert.ext.i46, 32
  %.sroa.0.0.insert.ext.i48 = zext i32 %i.by to i64
  %.sroa.0.0.insert.insert.i49 = or disjoint i64 %.sroa.2.0.insert.shift.i47, %.sroa.0.0.insert.ext.i48
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i64 %.sroa.0.0.insert.insert.i49, ptr %i.cb, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 %i.ca, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !485
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %i.bx, ptr %i.cc, align 8, !tbaa !2943
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKlbRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.bx, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cd = icmp eq ptr %i.bx, null
  br i1 %i.cd, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit52, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EED2Ev(ptr noundef nonnull align 8 dead_on_return(33808) dereferenceable(33808) %i.bx) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 33808) #30
  %.pre = load i64, ptr %i.r, align 8, !tbaa !513
  br label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit52

_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit52: ; preds = %bb.l, %bb.k
  %i.ce = phi i64 [ %.pre, %bb.l ], [ %i.s, %bb.k ]
  %i.cf = xor i64 %i.v, -1                        ; 2 uses
  %i.cg = and i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.r, align 8, !tbaa !513
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 266240
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.q ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !513 ; 2 uses
  %i.ck = or i64 %i.cj, %i.v
  %i.cl = and i64 %i.cj, %i.cf
  %.sink = select i1 %4, i64 %i.ck, i64 %i.cl
  store i64 %.sink, ptr %i.ci, align 8, !tbaa !513
  %i.cm = load i64, ptr %3, align 8, !tbaa !513
  store i64 %i.cm, ptr %i.bw, align 8, !tbaa !485
  br label %bb.m

bb.m:                                             ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ERKNS0_4math5CoordERKlb.exit, %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit52, %bb.j, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKlbRT_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<long, 3>, 4>, 5>>::Tile", align 8 ; 8 uses
  %8 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<long, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<long, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !464
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !464  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !464
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !464  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !464
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = and i32 %i.e, -4096                      ; 13 uses
  %i.q = and i32 %i.j, -4096                      ; 13 uses
  %i.r = and i32 %i.o, -4096                      ; 7 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.q to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !644  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !464  ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %i.w, %i.p
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !464 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.aa, %i.q
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !464
  %i.af = icmp slt i32 %i.ae, %i.r
  br i1 %i.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !271

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ah, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !464 ; 2 uses
  %i.ak = icmp slt i32 %i.p, %i.aj
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.p, %i.aj
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !464 ; 2 uses
  %i.ao = icmp slt i32 %i.q, %i.an
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.q, %i.an
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !464
  %i.as = icmp slt i32 %i.r, %i.ar
  br i1 %i.as, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %.not50 = icmp eq i32 %1, 3
  br i1 %.not50, label %.lr.ph.i.i.i.i72, label %vector.ph140

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread: ; preds = %bb.b
  %.not50116 = icmp eq i32 %1, 3
  br i1 %.not50116, label %.thread, label %vector.ph140

.thread:                                          ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.at = zext i1 %4 to i8
  %i.au = load i64, ptr %3, align 8, !tbaa !513
  store i64 %i.au, ptr %7, align 8, !tbaa !3000
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %i.at, ptr %i.av, align 8, !tbaa !3001
  br label %.critedge.i87

vector.ph140:                                     ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %2, align 4, !tbaa !464
  %i.az = and i32 %i.ay, -4096                    ; 2 uses
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !464
  %i.bb = and i32 %i.ba, -4096                    ; 2 uses
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !464
  %i.bd = and i32 %i.bc, -4096                    ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !464
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 270340
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !464
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 270344
  store i32 %i.bd, ptr %i.bf, align 8, !tbaa !464
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 270348
  store i32 0, ptr %i.bg, align 4, !tbaa !3003
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %10 = load <2 x i64>, ptr %i.bh, align 8
  %broadcast.splat142 = shufflevector <2 x i64> %10, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next145.3, %vector.body143 ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index144 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <2 x i64> %broadcast.splat142, ptr %i.bi, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat142, ptr %i.bj, align 8, !tbaa !485
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index144 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store <2 x i64> %broadcast.splat142, ptr %i.bl, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat142, ptr %i.bm, align 8, !tbaa !485
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index144 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store <2 x i64> %broadcast.splat142, ptr %i.bo, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat142, ptr %i.bp, align 8, !tbaa !485
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index144 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  store <2 x i64> %broadcast.splat142, ptr %i.br, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat142, ptr %i.bs, align 8, !tbaa !485
  %index.next145.3 = add nuw nsw i64 %index144, 16 ; 2 uses
  %i.bt = icmp eq i64 %index.next145.3, 32768
  br i1 %i.bt, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, label %vector.body143, !llvm.loop !7832

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body143
  %.sroa.2.0.insert.ext.i = zext i32 %i.bb to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.az to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bu, align 8
  %.sroa.4.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.bd, ptr %.sroa.4.0..sroa_idx.i57, align 8, !tbaa !485
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.aw, ptr %i.bv, align 8, !tbaa !2982
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !644 ; 2 uses
  %.not12.i.i.i.i58 = icmp eq ptr %i.bw, null
  br i1 %.not12.i.i.i.i58, label %.critedge.i, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63
  %.014.i.i.i.i60 = phi ptr [ %.1.i.i.i.i66, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63 ], [ %i.bw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ] ; 7 uses
  %.0813.i.i.i.i61 = phi ptr [ %.19.i.i.i.i65, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 32
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !464 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.p
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i59
  %i.ca = icmp sgt i32 %i.by, %i.p
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !464 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.q
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = icmp sgt i32 %i.cc, %i.q
  br i1 %i.ce, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62: ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 40
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !464
  %i.ch = icmp slt i32 %i.cg, %i.r
  br i1 %i.ch, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62, %bb.k, %.lr.ph.i.i.i.i59
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62, %bb.l, %bb.j
  %.sink.i.i.i.i64 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62 ]
  %.19.i.i.i.i65 = phi ptr [ %.0813.i.i.i.i61, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70 ], [ %.014.i.i.i.i60, %bb.l ], [ %.014.i.i.i.i60, %bb.j ], [ %.014.i.i.i.i60, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62 ] ; 9 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 %.sink.i.i.i.i64
  %.1.i.i.i.i66 = load ptr, ptr %i.ci, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %.1.i.i.i.i66, null
  br i1 %.not.i.i.i.i67, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i59, !llvm.loop !271

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63
  %i.cj = icmp eq ptr %.19.i.i.i.i65, %i.u
  br i1 %i.cj, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 32
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !464 ; 2 uses
  %i.cm = icmp slt i32 %i.p, %i.cl
  br i1 %i.cm, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = icmp sgt i32 %i.p, %i.cl
  br i1 %i.cn, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !464 ; 2 uses
  %i.cq = icmp slt i32 %i.q, %i.cp
  br i1 %i.cq, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = icmp sgt i32 %i.q, %i.cp
  br i1 %i.cr, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 40
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !464
  %i.cu = icmp slt i32 %i.r, %i.ct
  br i1 %i.cu, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ], [ %.19.i.i.i.i65, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i65, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i65, %bb.m ], [ %.19.i.i.i.i65, %bb.o ]
  %i.cv = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(270352) %i.aw) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.n, %bb.p, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKlbRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5)
  br label %bb.af

.lr.ph.i.i.i.i72:                                 ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.cw = zext i1 %4 to i8
  %i.cx = load i64, ptr %3, align 8, !tbaa !513
  store i64 %i.cx, ptr %7, align 8, !tbaa !3000
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %i.cw, ptr %i.cy, align 8, !tbaa !3001
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76, %.lr.ph.i.i.i.i72
  %.014.i.i.i.i73 = phi ptr [ %i.t, %.lr.ph.i.i.i.i72 ], [ %.1.i.i.i.i79, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76 ] ; 7 uses
  %.0813.i.i.i.i74 = phi ptr [ %i.u, %.lr.ph.i.i.i.i72 ], [ %.19.i.i.i.i78, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 32
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !464 ; 2 uses
  %i.db = icmp slt i32 %i.da, %i.p
  br i1 %i.db, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = icmp sgt i32 %i.da, %i.p
  br i1 %i.dc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 36
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !464 ; 2 uses
  %i.df = icmp slt i32 %i.de, %i.q
  br i1 %i.df, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = icmp sgt i32 %i.de, %i.q
  br i1 %i.dg, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75: ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 40
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !464
  %i.dj = icmp slt i32 %i.di, %i.r
  br i1 %i.dj, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75, %bb.s, %bb.q
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75, %bb.t, %bb.r
  %.sink.i.i.i.i77 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89 ], [ 16, %bb.t ], [ 16, %bb.r ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75 ]
  %.19.i.i.i.i78 = phi ptr [ %.0813.i.i.i.i74, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89 ], [ %.014.i.i.i.i73, %bb.t ], [ %.014.i.i.i.i73, %bb.r ], [ %.014.i.i.i.i73, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75 ] ; 9 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 %.sink.i.i.i.i77
  %.1.i.i.i.i79 = load ptr, ptr %i.dk, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i80 = icmp eq ptr %.1.i.i.i.i79, null
  br i1 %.not.i.i.i.i80, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81, label %bb.q, !llvm.loop !271

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76
  %i.dl = icmp eq ptr %.19.i.i.i.i78, %i.u
  br i1 %i.dl, label %.critedge.i87, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81
  %i.dm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i78, i64 32
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !464 ; 2 uses
  %i.do = icmp slt i32 %i.p, %i.dn
  br i1 %i.do, label %.critedge.i87, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = icmp sgt i32 %i.p, %i.dn
  br i1 %i.dp, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i78, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !464 ; 2 uses
  %i.ds = icmp slt i32 %i.q, %i.dr
  br i1 %i.ds, label %.critedge.i87, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = icmp sgt i32 %i.q, %i.dr
  br i1 %i.dt, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82: ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i78, i64 40
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !464
  %i.dw = icmp slt i32 %i.r, %i.dv
  br i1 %i.dw, label %.critedge.i87, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i87:                                    ; preds = %.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82, %bb.w, %bb.u, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81
  %.08.lcssa.i.i.i20.i88 = phi ptr [ %i.u, %.thread ], [ %.19.i.i.i.i78, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82 ], [ %.19.i.i.i.i78, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81 ], [ %.19.i.i.i.i78, %bb.u ], [ %.19.i.i.i.i78, %bb.w ]
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_:bb.a
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cd ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !513 ; 2 uses
  %i.cg = and i32 %i.ca, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch                    ; 3 uses
  %i.cj = and i64 %i.ci, %i.cf
  %.not.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ck = or i64 %i.ci, %i.cf
  store i64 %i.ck, ptr %i.ce, align 8, !tbaa !513
  %i.cl = getelementptr inbounds nuw i8, ptr %.0, i64 33280
  %i.cm = xor i64 %i.ci, -1
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cd ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !513
  %i.cp = and i64 %i.co, %i.cm
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !513
  %i.cq = zext nneg i32 %i.ca to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.cq
  store ptr %1, ptr %i.cr, align 8, !tbaa !485
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_.exit

bb.g:                                             ; preds = %bb.e
  %i.cs = zext nneg i32 %i.ca to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.cs ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !485 ; 6 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cx = load atomic i32, ptr %i.cw seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIlLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %i.cu)
          to label %_ZN7openvdb5v13_04tree8LeafNodeIlLj3EED2Ev.exit.i unwind label %bb.n ; 0 uses

bb.j:                                             ; preds = %bb.h
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !485
  %.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree8LeafNodeIlLj3EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = load atomic i32, ptr %i.cw seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not3.i.i.i.i, label %bb.l, label %_ZN7openvdb5v13_04tree8LeafNodeIlLj3EED2Ev.exit.i

bb.l:                                             ; preds = %bb.k
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !485 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZN7openvdb5v13_04tree8LeafNodeIlLj3EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdaPv(ptr noundef nonnull %i.db) #30
  br label %_ZN7openvdb5v13_04tree8LeafNodeIlLj3EED2Ev.exit.i

bb.n:                                             ; preds = %bb.i
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  tail call void @__clang_call_terminate(ptr %i.de) #31
  unreachable

_ZN7openvdb5v13_04tree8LeafNodeIlLj3EED2Ev.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 96) #30
  br label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIlLj3EED2Ev.exit.i, %bb.g
  store ptr %1, ptr %i.ct, align 8, !tbaa !485
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_.exit

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_.exit: ; preds = %bb.f, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS5_RT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.b, align 4, !tbaa !464
  %i.e = load i32, ptr %i.c, align 8, !tbaa !464
  %i.f = sub nsw i32 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = load i32, ptr %i.i, align 4, !tbaa !464
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !464
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !464
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !644  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.v, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !464  ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.q
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = icmp sgt i32 %i.x, %i.q
  br i1 %i.z, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !464 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.r
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp sgt i32 %i.ab, %i.r
  br i1 %i.ad, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = icmp slt i32 %i.af, %i.s
  br i1 %i.ag, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !271

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i, %i.v
  br i1 %i.ai, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !464 ; 2 uses
  %i.al = icmp slt i32 %i.q, %i.ak
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp sgt i32 %i.q, %i.ak
  br i1 %i.am, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !464 ; 2 uses
  %i.ap = icmp slt i32 %i.r, %i.ao
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp sgt i32 %i.r, %i.ao
  br i1 %i.aq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !464
  %i.at = icmp slt i32 %i.s, %i.as
  br i1 %i.at, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.b
  %i.au = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 11 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.au, i8 0, i64 270336, i1 false)
  %i.aw = load i32, ptr %i.l, align 4, !tbaa !464
  %i.ax = load <2 x i32>, ptr %i.b, align 4, !tbaa !464
  %i.ay = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.aw, i64 2
  %i.az = shufflevector <2 x i32> %i.ax, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x i32> %i.az, <4 x i32> %i.ay, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bb = and <4 x i32> %i.ba, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bb, ptr %i.av, align 8, !tbaa !464
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load <2 x i64>, ptr %i.bc, align 8
  %broadcast.splat64 = shufflevector <2 x i64> %4, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index66 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next67.3, %vector.body65 ] ; 5 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index66 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x i64> %broadcast.splat64, ptr %i.bd, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat64, ptr %i.be, align 8, !tbaa !485
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index66 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store <2 x i64> %broadcast.splat64, ptr %i.bg, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat64, ptr %i.bh, align 8, !tbaa !485
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index66 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  store <2 x i64> %broadcast.splat64, ptr %i.bj, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat64, ptr %i.bk, align 8, !tbaa !485
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index66 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store <2 x i64> %broadcast.splat64, ptr %i.bm, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat64, ptr %i.bn, align 8, !tbaa !485
  %index.next67.3 = add nuw nsw i64 %index66, 16  ; 2 uses
  %i.bo = icmp eq i64 %index.next67.3, 32768
  br i1 %i.bo, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, label %vector.body65, !llvm.loop !7849

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body65
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !644 ; 2 uses
  %.not12.i.i.i.i20 = icmp eq ptr %i.bp, null
  br i1 %.not12.i.i.i.i20, label %.critedge.i, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %.014.i.i.i.i22 = phi ptr [ %.1.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.bp, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ] ; 7 uses
  %.0813.i.i.i.i23 = phi ptr [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.v, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 32
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !464 ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.q
  br i1 %i.bs, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i21
  %i.bt = icmp sgt i32 %i.br, %i.q
  br i1 %i.bt, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !464 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %i.r
  br i1 %i.bw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = icmp sgt i32 %i.bv, %i.r
  br i1 %i.bx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24: ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 40
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !464
  %i.ca = icmp slt i32 %i.bz, %i.s
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.k, %.lr.ph.i.i.i.i21
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.l, %bb.j
  %.sink.i.i.i.i26 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ]
  %.19.i.i.i.i27 = phi ptr [ %.0813.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ %.014.i.i.i.i22, %bb.l ], [ %.014.i.i.i.i22, %bb.j ], [ %.014.i.i.i.i22, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ] ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 %.sink.i.i.i.i26
  %.1.i.i.i.i28 = load ptr, ptr %i.cb, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %.1.i.i.i.i28, null
  br i1 %.not.i.i.i.i29, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i21, !llvm.loop !271

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %i.cc = icmp eq ptr %.19.i.i.i.i27, %i.v
  br i1 %i.cc, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 32
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !464 ; 2 uses
  %i.cf = icmp slt i32 %i.q, %i.ce
  br i1 %i.cf, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = icmp sgt i32 %i.q, %i.ce
  br i1 %i.cg, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 36
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !464 ; 2 uses
  %i.cj = icmp slt i32 %i.r, %i.ci
  br i1 %i.cj, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp sgt i32 %i.r, %i.ci
  br i1 %i.ck, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 40
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !464
  %i.cn = icmp slt i32 %i.s, %i.cm
  br i1 %i.cn, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.v, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ], [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i27, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i27, %bb.m ], [ %.19.i.i.i.i27, %bb.o ]
  %i.co = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.au) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !818 ; 2 uses
  %.not = icmp eq ptr %i.cq, null
  br i1 %.not, label %bb.q, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.q:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cr = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !818
  %i.cu = icmp eq ptr %i.ct, null
  %i.cv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.cw = load i8, ptr %i.cv, align 8, !range !512
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = select i1 %i.cu, i1 %i.cx, i1 false
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cr, i8 0, i64 270336, i1 false)
  %i.da = load i32, ptr %i.l, align 4, !tbaa !464
  %i.db = load <2 x i32>, ptr %i.b, align 4, !tbaa !464
  %i.dc = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.da, i64 2
  %i.dd = shufflevector <2 x i32> %i.db, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.de = shufflevector <4 x i32> %i.dd, <4 x i32> %i.dc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.df = and <4 x i32> %i.de, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.df, ptr %i.cz, align 8, !tbaa !464
  br i1 %i.cy, label %bb.r, label %vector.ph

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dg, i8 -1, i64 4096, i1 false), !tbaa !513
  br label %vector.ph

vector.ph:                                        ; preds = %bb.q, %bb.r
  %.pre.i31 = load i64, ptr %i.cs, align 8, !tbaa !513
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i31, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.dh, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat, ptr %i.di, align 8, !tbaa !485
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.dk, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat, ptr %i.dl, align 8, !tbaa !485
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.dn, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat, ptr %i.do, align 8, !tbaa !485
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 96
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.dq, align 8, !tbaa !485
  store <2 x i64> %broadcast.splat, ptr %i.dr, align 8, !tbaa !485
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ds = icmp eq i64 %index.next.3, 32768
  br i1 %i.ds, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit35, label %vector.body, !llvm.loop !7850

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit35: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(270352) %i.cr)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.p, %bb.n, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit35
  %.0 = phi ptr [ %i.cq, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cr, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit35 ], [ %i.au, %bb.n ], [ %i.au, %bb.p ], [ %i.au, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.au, %.critedge.i ] ; 2 uses
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !464
  %i.du = and i32 %i.dt, -4096
  %i.dv = load i32, ptr %i.g, align 4, !tbaa !464
  %i.dw = and i32 %i.dv, -4096
  %i.dx = load i32, ptr %i.l, align 4, !tbaa !464
  %i.dy = and i32 %i.dx, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.dw to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.du to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.dz, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.dy, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !485
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %.0, ptr %i.ea, align 8, !tbaa !2982
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_(ptr noundef nonnull align 8 dereferenceable(270352) %.0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIPPN7openvdb5v13_04tree8LeafNodeINS5_9ValueMaskELj3EEEEEZNS5_5tools10morphology10MorphologyINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSI_INS7_IlLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNSD_16NearestNeighborsEbbEUlRKSC_E_KNS1_16auto_partitionerEE3runESR_RKSS_RSU_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE17touchLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPS4_RKNS0_4math5CoordERT_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.w, i8 0, i64 33792, i1 false)
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !464
  %i.af = load <2 x i32>, ptr %1, align 4, !tbaa !464
  %i.ag = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ae, i64 2
  %i.ah = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> %i.ag, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aj = and <4 x i32> %i.ai, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.aj, ptr %i.ad, align 8, !tbaa !464
  br i1 %.not, label %vector.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 33280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.ak, i8 -1, i64 512, i1 false), !tbaa !513
  br label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.c
  %.pre.i = load double, ptr %i.y, align 8, !tbaa !908
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x double> %broadcast.splat, ptr %i.al, align 8, !tbaa !485
  store <2 x double> %broadcast.splat, ptr %i.am, align 8, !tbaa !485
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store <2 x double> %broadcast.splat, ptr %i.ao, align 8, !tbaa !485
  store <2 x double> %broadcast.splat, ptr %i.ap, align 8, !tbaa !485
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  store <2 x double> %broadcast.splat, ptr %i.ar, align 8, !tbaa !485
  store <2 x double> %broadcast.splat, ptr %i.as, align 8, !tbaa !485
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  store <2 x double> %broadcast.splat, ptr %i.au, align 8, !tbaa !485
  store <2 x double> %broadcast.splat, ptr %i.av, align 8, !tbaa !485
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.aw = icmp eq i64 %index.next.3, 4096
  br i1 %i.aw, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !8665

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !513
  %i.ay = or i64 %i.ax, %i.u
  store i64 %i.ay, ptr %i.q, align 8, !tbaa !513
  %i.az = xor i64 %i.u, -1
  %i.ba = and i64 %i.ab, %i.az
  store i64 %i.ba, ptr %i.aa, align 8, !tbaa !513
  store ptr %i.w, ptr %i.y, align 8, !tbaa !485
  %.pre15 = load i32, ptr %1, align 4, !tbaa !464
  %.pre16 = load i32, ptr %i.d, align 4, !tbaa !464
  %.pre17 = load i32, ptr %i.i, align 4, !tbaa !464
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
  store i32 %i.bi, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !485
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.be, ptr %i.bk, align 8, !tbaa !3195
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !485
  %i.bm = tail call noundef ptr @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE17touchLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPS4_RKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  ret ptr %i.bm
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE17touchLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPS5_RKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !464
  %i.c = load i32, ptr %i.a, align 8, !tbaa !464
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !464
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !464
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !464
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !644  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !464  ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !464  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !464
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !310

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !464 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !464 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !464
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !464
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !464
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !464
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load <2 x double>, ptr %i.ba, align 8
  %broadcast.splat60 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index62 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next63.3, %vector.body61 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index62 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x double> %broadcast.splat60, ptr %i.bb, align 8, !tbaa !485
  store <2 x double> %broadcast.splat60, ptr %i.bc, align 8, !tbaa !485
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index62 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x double> %broadcast.splat60, ptr %i.be, align 8, !tbaa !485
  store <2 x double> %broadcast.splat60, ptr %i.bf, align 8, !tbaa !485
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index62 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x double> %broadcast.splat60, ptr %i.bh, align 8, !tbaa !485
  store <2 x double> %broadcast.splat60, ptr %i.bi, align 8, !tbaa !485
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index62 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x double> %broadcast.splat60, ptr %i.bk, align 8, !tbaa !485
  store <2 x double> %broadcast.splat60, ptr %i.bl, align 8, !tbaa !485
  %index.next63.3 = add nuw nsw i64 %index62, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next63.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body61, !llvm.loop !8666

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body61
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !644 ; 2 uses
  %.not12.i.i.i.i17 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i17, label %.critedge.i, label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22
  %.014.i.i.i.i19 = phi ptr [ %.1.i.i.i.i25, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i20 = phi ptr [ %.19.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i19, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !464 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i18
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i19, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !464 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i19, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !464
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21, %bb.j, %.lr.ph.i.i.i.i18
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21, %bb.k, %bb.i
  %.sink.i.i.i.i23 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21 ]
  %.19.i.i.i.i24 = phi ptr [ %.0813.i.i.i.i20, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i27 ], [ %.014.i.i.i.i19, %bb.k ], [ %.014.i.i.i.i19, %bb.i ], [ %.014.i.i.i.i19, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i21 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i19, i64 %.sink.i.i.i.i23
  %.1.i.i.i.i25 = load ptr, ptr %i.bz, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i26 = icmp eq ptr %.1.i.i.i.i25, null
  br i1 %.not.i.i.i.i26, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i18, !llvm.loop !310

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i22
  %i.ca = icmp eq ptr %.19.i.i.i.i24, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !464 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !464 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !464
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i24, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i24, %bb.l ], [ %.19.i.i.i.i24, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !907 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 9 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !907
  %i.cs = icmp eq ptr %i.cr, null
  %i.ct = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.cu = load i8, ptr %i.ct, align 8, !range !512
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = select i1 %i.cs, i1 %i.cv, i1 false
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cp, i8 0, i64 270336, i1 false)
  %i.cy = load i32, ptr %i.j, align 4, !tbaa !464
  %i.cz = load <2 x i32>, ptr %1, align 4, !tbaa !464
  %i.da = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.cy, i64 2
  %i.db = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x i32> %i.db, <4 x i32> %i.da, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dd = and <4 x i32> %i.dc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dd, ptr %i.cx, align 8, !tbaa !464
  br i1 %i.cw, label %bb.q, label %vector.ph

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.de, i8 -1, i64 4096, i1 false), !tbaa !513
  br label %vector.ph

vector.ph:                                        ; preds = %bb.p, %bb.q
  %.pre.i28 = load double, ptr %i.cq, align 8, !tbaa !908
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i28, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <2 x double> %broadcast.splat, ptr %i.df, align 8, !tbaa !485
  store <2 x double> %broadcast.splat, ptr %i.dg, align 8, !tbaa !485
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  store <2 x double> %broadcast.splat, ptr %i.di, align 8, !tbaa !485
  store <2 x double> %broadcast.splat, ptr %i.dj, align 8, !tbaa !485
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dl, align 8, !tbaa !485
  store <2 x double> %broadcast.splat, ptr %i.dm, align 8, !tbaa !485
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 112
  store <2 x double> %broadcast.splat, ptr %i.do, align 8, !tbaa !485
  store <2 x double> %broadcast.splat, ptr %i.dp, align 8, !tbaa !485
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dq = icmp eq i64 %index.next.3, 32768
  br i1 %i.dq, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit32, label %vector.body, !llvm.loop !8667

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit32: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cp)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit32
  %.0 = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cp, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit32 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 2 uses
  %i.dr = load i32, ptr %1, align 4, !tbaa !464
  %i.ds = and i32 %i.dr, -4096
  %i.dt = load i32, ptr %i.e, align 4, !tbaa !464
  %i.du = and i32 %i.dt, -4096
  %i.dv = load i32, ptr %i.j, align 4, !tbaa !464
  %i.dw = and i32 %i.dv, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.du to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ds to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.dx, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.dw, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !485
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %.0, ptr %i.dy, align 8, !tbaa !3235
  %i.dz = call noundef ptr @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE17touchLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPS4_RKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(270352) %.0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %i.dz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(270352) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_:bb.a
bb.i:                                             ; preds = %bb.b
  %i.bv = zext nneg i32 %i.n to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !485 ; 5 uses
  %.not = icmp eq i32 %1, 2
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = and i32 %i.b, -128
  %i.bz = and i32 %i.f, -128
  %i.ca = and i32 %i.k, -128
  %.sroa.2.0.insert.ext.i46 = zext i32 %i.bz to i64
  %.sroa.2.0.insert.shift.i47 = shl nuw i64 %.sroa.2.0.insert.ext.i46, 32
  %.sroa.0.0.insert.ext.i48 = zext i32 %i.by to i64
  %.sroa.0.0.insert.insert.i49 = or disjoint i64 %.sroa.2.0.insert.shift.i47, %.sroa.0.0.insert.ext.i48
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i64 %.sroa.0.0.insert.insert.i49, ptr %i.cb, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 %i.ca, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !485
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %i.bx, ptr %i.cc, align 8, !tbaa !3195
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.bx, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cd = icmp eq ptr %i.bx, null
  br i1 %i.cd, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit52, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EED2Ev(ptr noundef nonnull align 8 dead_on_return(33808) dereferenceable(33808) %i.bx) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 33808) #30
  %.pre = load i64, ptr %i.r, align 8, !tbaa !513
  br label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit52

_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit52: ; preds = %bb.l, %bb.k
  %i.ce = phi i64 [ %.pre, %bb.l ], [ %i.s, %bb.k ]
  %i.cf = xor i64 %i.v, -1                        ; 2 uses
  %i.cg = and i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.r, align 8, !tbaa !513
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 266240
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.q ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !513 ; 2 uses
  %i.ck = or i64 %i.cj, %i.v
  %i.cl = and i64 %i.cj, %i.cf
  %.sink = select i1 %4, i64 %i.ck, i64 %i.cl
  store i64 %.sink, ptr %i.ci, align 8, !tbaa !513
  %i.cm = load double, ptr %3, align 8, !tbaa !908
  store double %i.cm, ptr %i.bw, align 8, !tbaa !485
  br label %bb.m

bb.m:                                             ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit, %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit52, %bb.j, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 8 uses
  %8 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %2, align 4, !tbaa !464    ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !464
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !464  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !464
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !464  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !464
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = and i32 %i.e, -4096                      ; 13 uses
  %i.q = and i32 %i.j, -4096                      ; 13 uses
  %i.r = and i32 %i.o, -4096                      ; 7 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.q to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !644  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !464  ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %i.w, %i.p
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !464 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.aa, %i.q
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !464
  %i.af = icmp slt i32 %i.ae, %i.r
  br i1 %i.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !310

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ah, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !464 ; 2 uses
  %i.ak = icmp slt i32 %i.p, %i.aj
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.p, %i.aj
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !464 ; 2 uses
  %i.ao = icmp slt i32 %i.q, %i.an
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.q, %i.an
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !464
  %i.as = icmp slt i32 %i.r, %i.ar
  br i1 %i.as, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %.not50 = icmp eq i32 %1, 3
  br i1 %.not50, label %.lr.ph.i.i.i.i72, label %vector.ph140

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread: ; preds = %bb.b
  %.not50116 = icmp eq i32 %1, 3
  br i1 %.not50116, label %.thread, label %vector.ph140

.thread:                                          ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.at = zext i1 %4 to i8
  %i.au = load double, ptr %3, align 8, !tbaa !908
  store double %i.au, ptr %7, align 8, !tbaa !3253
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %i.at, ptr %i.av, align 8, !tbaa !3254
  br label %.critedge.i87

vector.ph140:                                     ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %2, align 4, !tbaa !464
  %i.az = and i32 %i.ay, -4096                    ; 2 uses
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !464
  %i.bb = and i32 %i.ba, -4096                    ; 2 uses
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !464
  %i.bd = and i32 %i.bc, -4096                    ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !464
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 270340
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !464
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 270344
  store i32 %i.bd, ptr %i.bf, align 8, !tbaa !464
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 270348
  store i32 0, ptr %i.bg, align 4, !tbaa !3256
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %10 = load <2 x double>, ptr %i.bh, align 8
  %broadcast.splat142 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next145.3, %vector.body143 ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index144 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <2 x double> %broadcast.splat142, ptr %i.bi, align 8, !tbaa !485
  store <2 x double> %broadcast.splat142, ptr %i.bj, align 8, !tbaa !485
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index144 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store <2 x double> %broadcast.splat142, ptr %i.bl, align 8, !tbaa !485
  store <2 x double> %broadcast.splat142, ptr %i.bm, align 8, !tbaa !485
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index144 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store <2 x double> %broadcast.splat142, ptr %i.bo, align 8, !tbaa !485
  store <2 x double> %broadcast.splat142, ptr %i.bp, align 8, !tbaa !485
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index144 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  store <2 x double> %broadcast.splat142, ptr %i.br, align 8, !tbaa !485
  store <2 x double> %broadcast.splat142, ptr %i.bs, align 8, !tbaa !485
  %index.next145.3 = add nuw nsw i64 %index144, 16 ; 2 uses
  %i.bt = icmp eq i64 %index.next145.3, 32768
  br i1 %i.bt, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body143, !llvm.loop !8679

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body143
  %.sroa.2.0.insert.ext.i = zext i32 %i.bb to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.az to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bu, align 8
  %.sroa.4.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.bd, ptr %.sroa.4.0..sroa_idx.i57, align 8, !tbaa !485
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.aw, ptr %i.bv, align 8, !tbaa !3235
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !644 ; 2 uses
  %.not12.i.i.i.i58 = icmp eq ptr %i.bw, null
  br i1 %.not12.i.i.i.i58, label %.critedge.i, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63
  %.014.i.i.i.i60 = phi ptr [ %.1.i.i.i.i66, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63 ], [ %i.bw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i61 = phi ptr [ %.19.i.i.i.i65, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 32
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !464 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.p
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i59
  %i.ca = icmp sgt i32 %i.by, %i.p
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !464 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.q
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = icmp sgt i32 %i.cc, %i.q
  br i1 %i.ce, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62: ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 40
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !464
  %i.ch = icmp slt i32 %i.cg, %i.r
  br i1 %i.ch, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62, %bb.k, %.lr.ph.i.i.i.i59
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62, %bb.l, %bb.j
  %.sink.i.i.i.i64 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62 ]
  %.19.i.i.i.i65 = phi ptr [ %.0813.i.i.i.i61, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70 ], [ %.014.i.i.i.i60, %bb.l ], [ %.014.i.i.i.i60, %bb.j ], [ %.014.i.i.i.i60, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62 ] ; 9 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 %.sink.i.i.i.i64
  %.1.i.i.i.i66 = load ptr, ptr %i.ci, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %.1.i.i.i.i66, null
  br i1 %.not.i.i.i.i67, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i59, !llvm.loop !310

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63
  %i.cj = icmp eq ptr %.19.i.i.i.i65, %i.u
  br i1 %i.cj, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 32
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !464 ; 2 uses
  %i.cm = icmp slt i32 %i.p, %i.cl
  br i1 %i.cm, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = icmp sgt i32 %i.p, %i.cl
  br i1 %i.cn, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !464 ; 2 uses
  %i.cq = icmp slt i32 %i.q, %i.cp
  br i1 %i.cq, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = icmp sgt i32 %i.q, %i.cp
  br i1 %i.cr, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 40
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !464
  %i.cu = icmp slt i32 %i.r, %i.ct
  br i1 %i.cu, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i65, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i65, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i65, %bb.m ], [ %.19.i.i.i.i65, %bb.o ]
  %i.cv = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(270352) %i.aw) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.n, %bb.p, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5)
  br label %bb.af

.lr.ph.i.i.i.i72:                                 ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.cw = zext i1 %4 to i8
  %i.cx = load double, ptr %3, align 8, !tbaa !908
  store double %i.cx, ptr %7, align 8, !tbaa !3253
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %i.cw, ptr %i.cy, align 8, !tbaa !3254
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76, %.lr.ph.i.i.i.i72
  %.014.i.i.i.i73 = phi ptr [ %i.t, %.lr.ph.i.i.i.i72 ], [ %.1.i.i.i.i79, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76 ] ; 7 uses
  %.0813.i.i.i.i74 = phi ptr [ %i.u, %.lr.ph.i.i.i.i72 ], [ %.19.i.i.i.i78, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 32
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !464 ; 2 uses
  %i.db = icmp slt i32 %i.da, %i.p
  br i1 %i.db, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = icmp sgt i32 %i.da, %i.p
  br i1 %i.dc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 36
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !464 ; 2 uses
  %i.df = icmp slt i32 %i.de, %i.q
  br i1 %i.df, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = icmp sgt i32 %i.de, %i.q
  br i1 %i.dg, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75: ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 40
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !464
  %i.dj = icmp slt i32 %i.di, %i.r
  br i1 %i.dj, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75, %bb.s, %bb.q
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75, %bb.t, %bb.r
  %.sink.i.i.i.i77 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89 ], [ 16, %bb.t ], [ 16, %bb.r ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75 ]
  %.19.i.i.i.i78 = phi ptr [ %.0813.i.i.i.i74, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89 ], [ %.014.i.i.i.i73, %bb.t ], [ %.014.i.i.i.i73, %bb.r ], [ %.014.i.i.i.i73, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75 ] ; 9 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 %.sink.i.i.i.i77
  %.1.i.i.i.i79 = load ptr, ptr %i.dk, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i80 = icmp eq ptr %.1.i.i.i.i79, null
  br i1 %.not.i.i.i.i80, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81, label %bb.q, !llvm.loop !310

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76
  %i.dl = icmp eq ptr %.19.i.i.i.i78, %i.u
  br i1 %i.dl, label %.critedge.i87, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81
  %i.dm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i78, i64 32
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !464 ; 2 uses
  %i.do = icmp slt i32 %i.p, %i.dn
  br i1 %i.do, label %.critedge.i87, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = icmp sgt i32 %i.p, %i.dn
  br i1 %i.dp, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i78, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !464 ; 2 uses
  %i.ds = icmp slt i32 %i.q, %i.dr
  br i1 %i.ds, label %.critedge.i87, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = icmp sgt i32 %i.q, %i.dr
  br i1 %i.dt, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82: ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i78, i64 40
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !464
  %i.dw = icmp slt i32 %i.r, %i.dv
  br i1 %i.dw, label %.critedge.i87, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i87:                                    ; preds = %.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82, %bb.w, %bb.u, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81
  %.08.lcssa.i.i.i20.i88 = phi ptr [ %i.u, %.thread ], [ %.19.i.i.i.i78, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82 ], [ %.19.i.i.i.i78, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81 ], [ %.19.i.i.i.i78, %bb.u ], [ %.19.i.i.i.i78, %bb.w ]
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_:bb.a
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cd ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !513 ; 2 uses
  %i.cg = and i32 %i.ca, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch                    ; 3 uses
  %i.cj = and i64 %i.ci, %i.cf
  %.not.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ck = or i64 %i.ci, %i.cf
  store i64 %i.ck, ptr %i.ce, align 8, !tbaa !513
  %i.cl = getelementptr inbounds nuw i8, ptr %.0, i64 33280
  %i.cm = xor i64 %i.ci, -1
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cd ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !513
  %i.cp = and i64 %i.co, %i.cm
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !513
  %i.cq = zext nneg i32 %i.ca to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.cq
  store ptr %1, ptr %i.cr, align 8, !tbaa !485
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_.exit

bb.g:                                             ; preds = %bb.e
  %i.cs = zext nneg i32 %i.ca to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.cs ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !485 ; 6 uses
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
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !485
  %.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = load atomic i32, ptr %i.cw seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not3.i.i.i.i, label %bb.l, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i

bb.l:                                             ; preds = %bb.k
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !485 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdaPv(ptr noundef nonnull %i.db) #30
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i

bb.n:                                             ; preds = %bb.i
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  tail call void @__clang_call_terminate(ptr %i.de) #31
  unreachable

_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 96) #30
  br label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i, %bb.g
  store ptr %1, ptr %i.ct, align 8, !tbaa !485
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.b, align 4, !tbaa !464
  %i.e = load i32, ptr %i.c, align 8, !tbaa !464
  %i.f = sub nsw i32 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !464
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = load i32, ptr %i.i, align 4, !tbaa !464
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !464
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !464
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !644  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.v, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !464  ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.q
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = icmp sgt i32 %i.x, %i.q
  br i1 %i.z, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !464 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.r
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp sgt i32 %i.ab, %i.r
  br i1 %i.ad, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !464
  %i.ag = icmp slt i32 %i.af, %i.s
  br i1 %i.ag, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !310

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i, %i.v
  br i1 %i.ai, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !464 ; 2 uses
  %i.al = icmp slt i32 %i.q, %i.ak
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp sgt i32 %i.q, %i.ak
  br i1 %i.am, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !464 ; 2 uses
  %i.ap = icmp slt i32 %i.r, %i.ao
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp sgt i32 %i.r, %i.ao
  br i1 %i.aq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !464
  %i.at = icmp slt i32 %i.s, %i.as
  br i1 %i.at, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.b
  %i.au = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 11 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.au, i8 0, i64 270336, i1 false)
  %i.aw = load i32, ptr %i.l, align 4, !tbaa !464
  %i.ax = load <2 x i32>, ptr %i.b, align 4, !tbaa !464
  %i.ay = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.aw, i64 2
  %i.az = shufflevector <2 x i32> %i.ax, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x i32> %i.az, <4 x i32> %i.ay, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bb = and <4 x i32> %i.ba, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bb, ptr %i.av, align 8, !tbaa !464
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load <2 x double>, ptr %i.bc, align 8
  %broadcast.splat64 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index66 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next67.3, %vector.body65 ] ; 5 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index66 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x double> %broadcast.splat64, ptr %i.bd, align 8, !tbaa !485
  store <2 x double> %broadcast.splat64, ptr %i.be, align 8, !tbaa !485
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index66 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store <2 x double> %broadcast.splat64, ptr %i.bg, align 8, !tbaa !485
  store <2 x double> %broadcast.splat64, ptr %i.bh, align 8, !tbaa !485
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index66 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  store <2 x double> %broadcast.splat64, ptr %i.bj, align 8, !tbaa !485
  store <2 x double> %broadcast.splat64, ptr %i.bk, align 8, !tbaa !485
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index66 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store <2 x double> %broadcast.splat64, ptr %i.bm, align 8, !tbaa !485
  store <2 x double> %broadcast.splat64, ptr %i.bn, align 8, !tbaa !485
  %index.next67.3 = add nuw nsw i64 %index66, 16  ; 2 uses
  %i.bo = icmp eq i64 %index.next67.3, 32768
  br i1 %i.bo, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body65, !llvm.loop !8696

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body65
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !644 ; 2 uses
  %.not12.i.i.i.i20 = icmp eq ptr %i.bp, null
  br i1 %.not12.i.i.i.i20, label %.critedge.i, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %.014.i.i.i.i22 = phi ptr [ %.1.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.bp, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i23 = phi ptr [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.v, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 32
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !464 ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.q
  br i1 %i.bs, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i21
  %i.bt = icmp sgt i32 %i.br, %i.q
  br i1 %i.bt, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !464 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %i.r
  br i1 %i.bw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = icmp sgt i32 %i.bv, %i.r
  br i1 %i.bx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24: ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 40
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !464
  %i.ca = icmp slt i32 %i.bz, %i.s
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.k, %.lr.ph.i.i.i.i21
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.l, %bb.j
  %.sink.i.i.i.i26 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ]
  %.19.i.i.i.i27 = phi ptr [ %.0813.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ %.014.i.i.i.i22, %bb.l ], [ %.014.i.i.i.i22, %bb.j ], [ %.014.i.i.i.i22, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ] ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 %.sink.i.i.i.i26
  %.1.i.i.i.i28 = load ptr, ptr %i.cb, align 8, !tbaa !1610 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %.1.i.i.i.i28, null
  br i1 %.not.i.i.i.i29, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i21, !llvm.loop !310

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %i.cc = icmp eq ptr %.19.i.i.i.i27, %i.v
  br i1 %i.cc, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 32
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !464 ; 2 uses
  %i.cf = icmp slt i32 %i.q, %i.ce
  br i1 %i.cf, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = icmp sgt i32 %i.q, %i.ce
  br i1 %i.cg, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 36
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !464 ; 2 uses
  %i.cj = icmp slt i32 %i.r, %i.ci
  br i1 %i.cj, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp sgt i32 %i.r, %i.ci
  br i1 %i.ck, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 40
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !464
  %i.cn = icmp slt i32 %i.s, %i.cm
  br i1 %i.cn, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.v, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i27, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i27, %bb.m ], [ %.19.i.i.i.i27, %bb.o ]
  %i.co = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.au) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !907 ; 2 uses
  %.not = icmp eq ptr %i.cq, null
  br i1 %.not, label %bb.q, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.q:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cr = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !907
  %i.cu = icmp eq ptr %i.ct, null
  %i.cv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.cw = load i8, ptr %i.cv, align 8, !range !512
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = select i1 %i.cu, i1 %i.cx, i1 false
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cr, i8 0, i64 270336, i1 false)
  %i.da = load i32, ptr %i.l, align 4, !tbaa !464
  %i.db = load <2 x i32>, ptr %i.b, align 4, !tbaa !464
  %i.dc = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.da, i64 2
  %i.dd = shufflevector <2 x i32> %i.db, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.de = shufflevector <4 x i32> %i.dd, <4 x i32> %i.dc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.df = and <4 x i32> %i.de, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.df, ptr %i.cz, align 8, !tbaa !464
  br i1 %i.cy, label %bb.r, label %vector.ph

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dg, i8 -1, i64 4096, i1 false), !tbaa !513
  br label %vector.ph

vector.ph:                                        ; preds = %bb.q, %bb.r
  %.pre.i31 = load double, ptr %i.cs, align 8, !tbaa !908
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i31, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <2 x double> %broadcast.splat, ptr %i.dh, align 8, !tbaa !485
  store <2 x double> %broadcast.splat, ptr %i.di, align 8, !tbaa !485
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store <2 x double> %broadcast.splat, ptr %i.dk, align 8, !tbaa !485
  store <2 x double> %broadcast.splat, ptr %i.dl, align 8, !tbaa !485
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dn, align 8, !tbaa !485
  store <2 x double> %broadcast.splat, ptr %i.do, align 8, !tbaa !485
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 96
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dq, align 8, !tbaa !485
  store <2 x double> %broadcast.splat, ptr %i.dr, align 8, !tbaa !485
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ds = icmp eq i64 %index.next.3, 32768
  br i1 %i.ds, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35, label %vector.body, !llvm.loop !8697

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(270352) %i.cr)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.p, %bb.n, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35
  %.0 = phi ptr [ %i.cq, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cr, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35 ], [ %i.au, %bb.n ], [ %i.au, %bb.p ], [ %i.au, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.au, %.critedge.i ] ; 2 uses
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !464
  %i.du = and i32 %i.dt, -4096
  %i.dv = load i32, ptr %i.g, align 4, !tbaa !464
  %i.dw = and i32 %i.dv, -4096
  %i.dx = load i32, ptr %i.l, align 4, !tbaa !464
  %i.dy = and i32 %i.dx, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.dw to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.du to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.dz, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.dy, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !485
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %.0, ptr %i.ea, align 8, !tbaa !3235
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15addLeafAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvPS4_RT_(ptr noundef nonnull align 8 dereferenceable(270352) %.0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIPPN7openvdb5v13_04tree8LeafNodeINS5_9ValueMaskELj3EEEEEZNS5_5tools10morphology10MorphologyINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSI_INS7_IdLj3EEELj4EEELj5EEEEEEEE12dilateVoxelsEmNSD_16NearestNeighborsEbbEUlRKSC_E_KNS1_16auto_partitionerEE3runESR_RKSS_RSU_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_5

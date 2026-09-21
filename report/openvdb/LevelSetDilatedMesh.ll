Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79535
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 278
loop-unroll.NumUnrolled: 951
begin_hunk_0_@_ZSt13__invoke_implIvRKZN7openvdb5v13_04tree8NodeListINS2_8LeafNodeIfLj3EEEE16initNodeChildrenINS3_INS2_12InternalNodeIS5_Lj4EEEEENS2_10NodeFilterEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_JSM_EESC_St14__invoke_otherOSE_DpOT1_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools17SignedFloodFillOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEclERSB_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::map.3626", align 8     ; 11 uses
  %3 = alloca %"struct.std::pair.3635", align 8   ; 7 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1357
  %i.c = icmp ugt i32 %i.b, 3
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i32 0, ptr %i.d, align 8, !tbaa !812
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !813
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !814
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.d, ptr %i.g, align 8, !tbaa !815
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !816
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !814  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.not2.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not2.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.2.0.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !942
  %.not1.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not1.i.i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.n = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !188

.loopexit:                                        ; preds = %bb.c, %.lr.ph.i.i.i, %bb.b
  %.sroa.2.1.i = phi ptr [ %i.j, %bb.b ], [ %i.n, %bb.c ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not7982 = icmp eq ptr %.sroa.2.1.i, %i.k
  br i1 %.not7982, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.sroa.673.083 = phi ptr [ %.sroa.2.1.i, %.lr.ph ], [ %.sroa.673.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.673.083, i64 32
  %.sroa.01.0.copyload.i = load i64, ptr %i.p, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.673.083, i64 40
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !768 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.673.083, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !944
  store i64 %.sroa.01.0.copyload.i, ptr %3, align 8
  store i32 %.sroa.22.0.copyload.i, ptr %.sroa.570.0..sroa_idx, align 8, !tbaa !768
  store ptr %i.r, ptr %i.o, align 8, !tbaa !4948
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !813  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  %i.t = trunc i64 %.sroa.01.0.copyload.i to i32  ; 4 uses
  %i.u = lshr i64 %.sroa.01.0.copyload.i, 32
  %i.v = trunc nuw i64 %i.u to i32                ; 4 uses
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.d ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.d, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !741  ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.t
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = icmp sgt i32 %i.x, %i.t
  br i1 %i.z, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !741 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.v
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i32 %i.ab, %i.v
  br i1 %i.ad, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !741
  %i.ag = icmp slt i32 %i.af, %.sroa.22.0.copyload.i
  br i1 %i.ag, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.g, %bb.e
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.g ], [ 16, %bb.e ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !565

_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.ai, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !741 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, %i.t
  br i1 %i.al, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp slt i32 %i.ak, %i.t
  br i1 %i.am, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !741 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, %i.v
  br i1 %i.ap, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = icmp slt i32 %i.ao, %i.v
  br i1 %i.aq, label %bb.l, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !741
  %i.at = icmp slt i32 %.sroa.22.0.copyload.i, %i.as
  br i1 %i.at, label %.critedge.i, label %bb.l

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.j, %bb.h, %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i, %bb.d
  %.08.lcssa.i.i.i14.i = phi ptr [ %i.d, %bb.d ], [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i ], [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %bb.j ]
  %i.au = invoke ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_PNS1_4tree12InternalNodeINS7_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEESt10_Select1stISD_ESt4lessIS3_ESaISD_EE22_M_emplace_hint_uniqueIJS4_IS3_SC_EEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.k, %bb.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.av = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.673.083) #32 ; 3 uses
  %.not2.i.i.i34 = icmp eq ptr %i.av, %i.k
  br i1 %.not2.i.i.i34, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %bb.l, %bb.m
  %.sroa.673.2 = phi ptr [ %i.ay, %bb.m ], [ %i.av, %bb.l ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.673.2, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !942
  %.not1.i.i.i36 = icmp eq ptr %i.ax, null
  br i1 %.not1.i.i.i36, label %bb.m, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit

bb.m:                                             ; preds = %.lr.ph.i.i.i35
  %i.ay = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.673.2) #32 ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.ay, %i.k
  br i1 %.not.i.i.i37, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i35, !llvm.loop !188

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit: ; preds = %.lr.ph.i.i.i35, %bb.m, %bb.l
  %.sroa.673.3 = phi ptr [ %i.av, %bb.l ], [ %.sroa.673.2, %.lr.ph.i.i.i35 ], [ %i.ay, %bb.m ] ; 2 uses
  %.not79 = icmp eq ptr %.sroa.673.3, %i.k
  br i1 %.not79, label %._crit_edge, label %bb.d

bb.n:                                             ; preds = %.critedge.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.af

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !814 ; 3 uses
  %i.ba = icmp eq ptr %.pre, %i.d
  br i1 %i.ba, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.pre) #32 ; 2 uses
  %.not8089 = icmp eq ptr %i.bb, %i.d
  br i1 %.not8089, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.o
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.q

._crit_edge94:                                    ; preds = %bb.ac, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.be = load float, ptr %0, align 4, !tbaa !1161 ; 2 uses
  %i.bf = load float, ptr %i.bd, align 8, !tbaa !1161
  %i.bg = fcmp oeq float %i.be, %i.bf
  br i1 %i.bg, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge94
  store float %i.be, ptr %i.bd, align 8, !tbaa !1170
  br label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit

bb.q:                                             ; preds = %.lr.ph93, %bb.ac
  %.sroa.055.091 = phi ptr [ %.pre, %.lr.ph93 ], [ %i.dd, %bb.ac ] ; 4 uses
  %.sroa.063.090 = phi ptr [ %i.bb, %.lr.ph93 ], [ %i.de, %bb.ac ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 40 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !741
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 40 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !741
  %i.bn = sub nsw i32 %i.bk, %i.bm
  %5 = load i64, ptr %i.bh, align 4, !tbaa !741
  %6 = load i64, ptr %i.bi, align 4, !tbaa !741
  %7 = icmp ne i64 %5, %6
  %i.bo = icmp eq i32 %i.bn, 4096
  %or.cond78 = select i1 %7, i1 true, i1 %i.bo
  br i1 %or.cond78, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !4950 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 266232
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !1112
  %.not.i = icmp sgt i64 %i.bs, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 262136 ; 2 uses
  br i1 %.not.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !768 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 33272
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1112
  %.not.i.i40 = icmp sgt i64 %i.bw, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32760 ; 2 uses
  br i1 %.not.i.i40, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !768 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load atomic i32, ptr %i.bz seq_cst, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE12getLastValueEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.by)
          to label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE12getLastValueEv.exit.i.i unwind label %bb.y

_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE12getLastValueEv.exit.i.i: ; preds = %bb.u, %bb.t
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !768 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2044
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cc
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE12getLastValueEv.exit.i.i, %bb.s, %bb.r
  %i.cd = phi ptr [ %i.bx, %bb.s ], [ %.0.i.i.i.i.i, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE12getLastValueEv.exit.i.i ], [ %i.bt, %bb.r ]
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !1161
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !4950 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 262144
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !1112
  %i.cj = and i64 %i.ci, 1
  %.not.i42 = icmp eq i64 %i.cj, 0
  br i1 %.not.i42, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13getFirstValueEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !768 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32768
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1112
  %i.cn = and i64 %i.cm, 1
  %.not.i.i43 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i43, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13getFirstValueEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !768 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load atomic i32, ptr %i.cp seq_cst, align 4
  %.not.i.i.i.i.i.i44 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i44, label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13getFirstValueEv.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.co)
          to label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13getFirstValueEv.exit.i.i unwind label %bb.y

_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13getFirstValueEv.exit.i.i: ; preds = %bb.x, %bb.w
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !768 ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq ptr %i.cr, null
  %.0.i.i.i.i.i46 = select i1 %.not.i.i.i.i.i45, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cr
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13getFirstValueEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13getFirstValueEv.exit: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13getFirstValueEv.exit.i.i, %bb.v, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit
  %i.cs = phi ptr [ %i.ck, %bb.v ], [ %.0.i.i.i.i.i46, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13getFirstValueEv.exit.i.i ], [ %i.cg, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit ]
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !1161
  %i.cu = fcmp olt float %i.ce, 0.000000e+00
  %i.cv = fcmp olt float %i.ct, 0.000000e+00
  %or.cond = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ac

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.z:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13getFirstValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cx = load i64, ptr %i.bi, align 8
  %i.cy = load i32, ptr %i.bl, align 8, !tbaa !741
  store i64 %i.cx, ptr %4, align 8
  %storemerge84 = add i32 %i.cy, 4096             ; 2 uses
  store i32 %storemerge84, ptr %.sroa.2.0..sroa_idx, align 8
  %i.cz = load i32, ptr %i.bj, align 8, !tbaa !741
  %.not2385 = icmp eq i32 %storemerge84, %i.cz
  br i1 %.not2385, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.z, %bb.aa
  invoke void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE7addTileERKNS0_4math5CoordERKfb(ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.bc, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.lr.ph87
  %i.da = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !741
  %storemerge = add i32 %i.da, 4096               ; 2 uses
  store i32 %storemerge, ptr %.sroa.2.0..sroa_idx, align 8
  %i.db = load i32, ptr %i.bj, align 8, !tbaa !741
  %.not23 = icmp eq i32 %storemerge, %i.db
  br i1 %.not23, label %._crit_edge88, label %.lr.ph87, !llvm.loop !12586

bb.ab:                                            ; preds = %.lr.ph87
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.af

._crit_edge88:                                    ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge88, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13getFirstValueEv.exit, %bb.q
  %i.dd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.055.091) #32
  %i.de = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.063.090) #32 ; 2 uses
  %.not80 = icmp eq ptr %i.de, %i.d
  br i1 %.not80, label %._crit_edge94, label %bb.q, !llvm.loop !12587

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit: ; preds = %.loopexit, %bb.p, %._crit_edge94, %._crit_edge
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !813
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_PNS1_4tree12InternalNodeINS7_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEESt10_Select1stISD_ESt4lessIS3_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.df)
          to label %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #33
  unreachable

_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev.exit
  ret void

bb.af:                                            ; preds = %bb.y, %bb.ab, %bb.n
  %.pn28 = phi { ptr, i32 } [ %i.cw, %bb.y ], [ %i.az, %bb.n ], [ %i.dc, %bb.ab ]
  call void @_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn28
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSN_RSP_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1997
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1998
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !768
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !3064
  %i.g = load i64, ptr %0, align 8, !tbaa !3063
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSN_RSP_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !2001
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !743
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !3100
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !4926
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  store ptr null, ptr %i.l, align 16, !tbaa !4953
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i32 0, ptr %i.p, align 64, !tbaa !2014
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i8 5, ptr %i.q, align 4, !tbaa !2015
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !2016
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.u = load i64, ptr %3, align 8, !tbaa !2017
  store i64 %i.u, ptr %i.t, align 8, !tbaa !2017
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !2021
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !2022
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !2025
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !827
  store ptr %4, ptr %i.l, align 16, !tbaa !4953
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSN_RSP_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSN_RSP_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSN_RSP_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #33
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSN_RSP_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(144) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !2029 ; 2 uses
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2016
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_8LeafNodeIfLj3EEEE9NodeRangeENSF_19NodeTransformerCopyINSA_5tools17SignedFloodFillOpINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSM_ISE_Lj4EEELj5EEEEEEEEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !2016
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !2030
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_8LeafNodeIfLj3EEEE9NodeRangeENSF_19NodeTransformerCopyINSA_5tools17SignedFloodFillOpINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSM_ISE_Lj4EEELj5EEEEEEEEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

end_hunk_0
begin_hunk_1_@_ZSt13__invoke_implIvRKZN7openvdb5v13_04tree8NodeListINS2_8LeafNodeIdLj3EEEE16initNodeChildrenINS3_INS2_12InternalNodeIS5_Lj4EEEEENS2_10NodeFilterEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_JSM_EESC_St14__invoke_otherOSE_DpOT1_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools17SignedFloodFillOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEclERSB_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::map.3664", align 8     ; 11 uses
  %3 = alloca %"struct.std::pair.3673", align 8   ; 7 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1367
  %i.c = icmp ugt i32 %i.b, 3
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i32 0, ptr %i.d, align 8, !tbaa !812
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !813
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !814
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.d, ptr %i.g, align 8, !tbaa !815
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !816
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !814  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.not2.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not2.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.2.0.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !964
  %.not1.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not1.i.i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.n = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !309

.loopexit:                                        ; preds = %bb.c, %.lr.ph.i.i.i, %bb.b
  %.sroa.2.1.i = phi ptr [ %i.j, %bb.b ], [ %i.n, %bb.c ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not7982 = icmp eq ptr %.sroa.2.1.i, %i.k
  br i1 %.not7982, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.sroa.673.083 = phi ptr [ %.sroa.2.1.i, %.lr.ph ], [ %.sroa.673.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.673.083, i64 32
  %.sroa.01.0.copyload.i = load i64, ptr %i.p, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.673.083, i64 40
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !768 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.673.083, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !966
  store i64 %.sroa.01.0.copyload.i, ptr %3, align 8
  store i32 %.sroa.22.0.copyload.i, ptr %.sroa.570.0..sroa_idx, align 8, !tbaa !768
  store ptr %i.r, ptr %i.o, align 8, !tbaa !4980
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !813  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  %i.t = trunc i64 %.sroa.01.0.copyload.i to i32  ; 4 uses
  %i.u = lshr i64 %.sroa.01.0.copyload.i, 32
  %i.v = trunc nuw i64 %i.u to i32                ; 4 uses
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.d ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.d, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !741  ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.t
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = icmp sgt i32 %i.x, %i.t
  br i1 %i.z, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !741 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.v
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i32 %i.ab, %i.v
  br i1 %i.ad, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !741
  %i.ag = icmp slt i32 %i.af, %.sroa.22.0.copyload.i
  br i1 %i.ag, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.g, %bb.e
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.g ], [ 16, %bb.e ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !576

_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.ai, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !741 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, %i.t
  br i1 %i.al, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp slt i32 %i.ak, %i.t
  br i1 %i.am, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !741 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, %i.v
  br i1 %i.ap, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = icmp slt i32 %i.ao, %i.v
  br i1 %i.aq, label %bb.l, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !741
  %i.at = icmp slt i32 %.sroa.22.0.copyload.i, %i.as
  br i1 %i.at, label %.critedge.i, label %bb.l

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.j, %bb.h, %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i, %bb.d
  %.08.lcssa.i.i.i14.i = phi ptr [ %i.d, %bb.d ], [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i ], [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %bb.j ]
  %i.au = invoke ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_PNS1_4tree12InternalNodeINS7_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEESt10_Select1stISD_ESt4lessIS3_ESaISD_EE22_M_emplace_hint_uniqueIJS4_IS3_SC_EEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.k, %bb.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.av = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.673.083) #32 ; 3 uses
  %.not2.i.i.i34 = icmp eq ptr %i.av, %i.k
  br i1 %.not2.i.i.i34, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %bb.l, %bb.m
  %.sroa.673.2 = phi ptr [ %i.ay, %bb.m ], [ %i.av, %bb.l ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.673.2, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !964
  %.not1.i.i.i36 = icmp eq ptr %i.ax, null
  br i1 %.not1.i.i.i36, label %bb.m, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit

bb.m:                                             ; preds = %.lr.ph.i.i.i35
  %i.ay = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.673.2) #32 ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.ay, %i.k
  br i1 %.not.i.i.i37, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i35, !llvm.loop !309

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit: ; preds = %.lr.ph.i.i.i35, %bb.m, %bb.l
  %.sroa.673.3 = phi ptr [ %i.av, %bb.l ], [ %.sroa.673.2, %.lr.ph.i.i.i35 ], [ %i.ay, %bb.m ] ; 2 uses
  %.not79 = icmp eq ptr %.sroa.673.3, %i.k
  br i1 %.not79, label %._crit_edge, label %bb.d

bb.n:                                             ; preds = %.critedge.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.af

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !814 ; 3 uses
  %i.ba = icmp eq ptr %.pre, %i.d
  br i1 %i.ba, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.pre) #32 ; 2 uses
  %.not8089 = icmp eq ptr %i.bb, %i.d
  br i1 %.not8089, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.o
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.q

._crit_edge94:                                    ; preds = %bb.ac, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.be = load double, ptr %0, align 8, !tbaa !1192 ; 2 uses
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !1192
  %i.bg = fcmp oeq double %i.be, %i.bf
  br i1 %i.bg, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge94
  store double %i.be, ptr %i.bd, align 8, !tbaa !1201
  br label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit

bb.q:                                             ; preds = %.lr.ph93, %bb.ac
  %.sroa.055.091 = phi ptr [ %.pre, %.lr.ph93 ], [ %i.dd, %bb.ac ] ; 4 uses
  %.sroa.063.090 = phi ptr [ %i.bb, %.lr.ph93 ], [ %i.de, %bb.ac ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 40 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !741
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 40 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !741
  %i.bn = sub nsw i32 %i.bk, %i.bm
  %5 = load i64, ptr %i.bh, align 4, !tbaa !741
  %6 = load i64, ptr %i.bi, align 4, !tbaa !741
  %7 = icmp ne i64 %5, %6
  %i.bo = icmp eq i32 %i.bn, 4096
  %or.cond78 = select i1 %7, i1 true, i1 %i.bo
  br i1 %or.cond78, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !4982 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 266232
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !1112
  %.not.i = icmp sgt i64 %i.bs, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 262136 ; 2 uses
  br i1 %.not.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !768 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 33272
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1112
  %.not.i.i40 = icmp sgt i64 %i.bw, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32760 ; 2 uses
  br i1 %.not.i.i40, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !768 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load atomic i32, ptr %i.bz seq_cst, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE12getLastValueEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.by)
          to label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE12getLastValueEv.exit.i.i unwind label %bb.y

_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE12getLastValueEv.exit.i.i: ; preds = %bb.u, %bb.t
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !768 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4088
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.cc
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE12getLastValueEv.exit.i.i, %bb.s, %bb.r
  %i.cd = phi ptr [ %i.bx, %bb.s ], [ %.0.i.i.i.i.i, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE12getLastValueEv.exit.i.i ], [ %i.bt, %bb.r ]
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !1192
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !4982 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 262144
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !1112
  %i.cj = and i64 %i.ci, 1
  %.not.i42 = icmp eq i64 %i.cj, 0
  br i1 %.not.i42, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13getFirstValueEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !768 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32768
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1112
  %i.cn = and i64 %i.cm, 1
  %.not.i.i43 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i43, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13getFirstValueEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !768 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load atomic i32, ptr %i.cp seq_cst, align 4
  %.not.i.i.i.i.i.i44 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i44, label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13getFirstValueEv.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.co)
          to label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13getFirstValueEv.exit.i.i unwind label %bb.y

_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13getFirstValueEv.exit.i.i: ; preds = %bb.x, %bb.w
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !768 ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq ptr %i.cr, null
  %.0.i.i.i.i.i46 = select i1 %.not.i.i.i.i.i45, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.cr
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13getFirstValueEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13getFirstValueEv.exit: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13getFirstValueEv.exit.i.i, %bb.v, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit
  %i.cs = phi ptr [ %i.ck, %bb.v ], [ %.0.i.i.i.i.i46, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13getFirstValueEv.exit.i.i ], [ %i.cg, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit ]
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !1192
  %i.cu = fcmp olt double %i.ce, 0.000000e+00
  %i.cv = fcmp olt double %i.ct, 0.000000e+00
  %or.cond = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ac

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.z:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13getFirstValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cx = load i64, ptr %i.bi, align 8
  %i.cy = load i32, ptr %i.bl, align 8, !tbaa !741
  store i64 %i.cx, ptr %4, align 8
  %storemerge84 = add i32 %i.cy, 4096             ; 2 uses
  store i32 %storemerge84, ptr %.sroa.2.0..sroa_idx, align 8
  %i.cz = load i32, ptr %i.bj, align 8, !tbaa !741
  %.not2385 = icmp eq i32 %storemerge84, %i.cz
  br i1 %.not2385, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.z, %bb.aa
  invoke void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7addTileERKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.lr.ph87
  %i.da = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !741
  %storemerge = add i32 %i.da, 4096               ; 2 uses
  store i32 %storemerge, ptr %.sroa.2.0..sroa_idx, align 8
  %i.db = load i32, ptr %i.bj, align 8, !tbaa !741
  %.not23 = icmp eq i32 %storemerge, %i.db
  br i1 %.not23, label %._crit_edge88, label %.lr.ph87, !llvm.loop !12687

bb.ab:                                            ; preds = %.lr.ph87
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.af

._crit_edge88:                                    ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge88, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13getFirstValueEv.exit, %bb.q
  %i.dd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.055.091) #32
  %i.de = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.063.090) #32 ; 2 uses
  %.not80 = icmp eq ptr %i.de, %i.d
  br i1 %.not80, label %._crit_edge94, label %bb.q, !llvm.loop !12688

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit: ; preds = %.loopexit, %bb.p, %._crit_edge94, %._crit_edge
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !813
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_PNS1_4tree12InternalNodeINS7_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEESt10_Select1stISD_ESt4lessIS3_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.df)
          to label %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #33
  unreachable

_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev.exit
  ret void

bb.af:                                            ; preds = %bb.y, %bb.ab, %bb.n
  %.pn28 = phi { ptr, i32 } [ %i.cw, %bb.y ], [ %i.az, %bb.n ], [ %i.dc, %bb.ab ]
  call void @_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn28
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSN_RSP_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1997
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1998
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !768
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !3905
  %i.g = load i64, ptr %0, align 8, !tbaa !3904
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSN_RSP_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !2001
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !743
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !3941
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !4960
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !4985
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store i32 0, ptr %i.p, align 8, !tbaa !2014
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 140
  store i8 5, ptr %i.q, align 4, !tbaa !2015
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 64, !tbaa !2016
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.u = load i64, ptr %3, align 8, !tbaa !2017
  store i64 %i.u, ptr %i.t, align 16, !tbaa !2017
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !2021
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !2022
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !2025
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !827
  store ptr %4, ptr %i.l, align 8, !tbaa !4985
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSN_RSP_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSN_RSP_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSN_RSP_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #33
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSN_RSP_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(152) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSG_IS8_Lj4EEELj5EEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !2029 ; 2 uses
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.h = load i64, ptr %i.g, align 64, !tbaa !2016
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_8LeafNodeIdLj3EEEE9NodeRangeENSF_19NodeTransformerCopyINSA_5tools17SignedFloodFillOpINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSM_ISE_Lj4EEELj5EEEEEEEEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 64, !tbaa !2016
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !2030
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_8LeafNodeIdLj3EEEE9NodeRangeENSF_19NodeTransformerCopyINSA_5tools17SignedFloodFillOpINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSM_ISE_Lj4EEELj5EEEEEEEEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04tree11NodeManagerINS1_11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELj3EED2Ev:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools17SignedFloodFillOpINS0_4tree11LeafManagerINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclERSC_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::map.3626", align 8     ; 11 uses
  %3 = alloca %"struct.std::pair.3635", align 8   ; 7 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1394
  %i.c = icmp ugt i32 %i.b, 3
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i32 0, ptr %i.d, align 8, !tbaa !812
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !813
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !814
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.d, ptr %i.g, align 8, !tbaa !815
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !816
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !814  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.not2.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not2.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.2.0.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !942
  %.not1.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not1.i.i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.n = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !188

.loopexit:                                        ; preds = %bb.c, %.lr.ph.i.i.i, %bb.b
  %.sroa.2.1.i = phi ptr [ %i.j, %bb.b ], [ %i.n, %bb.c ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not7982 = icmp eq ptr %.sroa.2.1.i, %i.k
  br i1 %.not7982, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.sroa.673.083 = phi ptr [ %.sroa.2.1.i, %.lr.ph ], [ %.sroa.673.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.673.083, i64 32
  %.sroa.01.0.copyload.i = load i64, ptr %i.p, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.673.083, i64 40
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !768 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.673.083, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !944
  store i64 %.sroa.01.0.copyload.i, ptr %3, align 8
  store i32 %.sroa.22.0.copyload.i, ptr %.sroa.570.0..sroa_idx, align 8, !tbaa !768
  store ptr %i.r, ptr %i.o, align 8, !tbaa !4948
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !813  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  %i.t = trunc i64 %.sroa.01.0.copyload.i to i32  ; 4 uses
  %i.u = lshr i64 %.sroa.01.0.copyload.i, 32
  %i.v = trunc nuw i64 %i.u to i32                ; 4 uses
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.d ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.d, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !741  ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.t
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = icmp sgt i32 %i.x, %i.t
  br i1 %i.z, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !741 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.v
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i32 %i.ab, %i.v
  br i1 %i.ad, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !741
  %i.ag = icmp slt i32 %i.af, %.sroa.22.0.copyload.i
  br i1 %i.ag, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.g, %bb.e
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.g ], [ 16, %bb.e ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !565

_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.ai, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !741 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, %i.t
  br i1 %i.al, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp slt i32 %i.ak, %i.t
  br i1 %i.am, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !741 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, %i.v
  br i1 %i.ap, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = icmp slt i32 %i.ao, %i.v
  br i1 %i.aq, label %bb.l, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !741
  %i.at = icmp slt i32 %.sroa.22.0.copyload.i, %i.as
  br i1 %i.at, label %.critedge.i, label %bb.l

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.j, %bb.h, %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i, %bb.d
  %.08.lcssa.i.i.i14.i = phi ptr [ %i.d, %bb.d ], [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i ], [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %bb.j ]
  %i.au = invoke ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_PNS1_4tree12InternalNodeINS7_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEESt10_Select1stISD_ESt4lessIS3_ESaISD_EE22_M_emplace_hint_uniqueIJS4_IS3_SC_EEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.k, %bb.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.av = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.673.083) #32 ; 3 uses
  %.not2.i.i.i34 = icmp eq ptr %i.av, %i.k
  br i1 %.not2.i.i.i34, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %bb.l, %bb.m
  %.sroa.673.2 = phi ptr [ %i.ay, %bb.m ], [ %i.av, %bb.l ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.673.2, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !942
  %.not1.i.i.i36 = icmp eq ptr %i.ax, null
  br i1 %.not1.i.i.i36, label %bb.m, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit

bb.m:                                             ; preds = %.lr.ph.i.i.i35
  %i.ay = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.673.2) #32 ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.ay, %i.k
  br i1 %.not.i.i.i37, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i35, !llvm.loop !188

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit: ; preds = %.lr.ph.i.i.i35, %bb.m, %bb.l
  %.sroa.673.3 = phi ptr [ %i.av, %bb.l ], [ %.sroa.673.2, %.lr.ph.i.i.i35 ], [ %i.ay, %bb.m ] ; 2 uses
  %.not79 = icmp eq ptr %.sroa.673.3, %i.k
  br i1 %.not79, label %._crit_edge, label %bb.d

bb.n:                                             ; preds = %.critedge.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.af

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !814 ; 3 uses
  %i.ba = icmp eq ptr %.pre, %i.d
  br i1 %i.ba, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.pre) #32 ; 2 uses
  %.not8089 = icmp eq ptr %i.bb, %i.d
  br i1 %.not8089, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.o
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.q

._crit_edge94:                                    ; preds = %bb.ac, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.be = load float, ptr %0, align 4, !tbaa !1161 ; 2 uses
  %i.bf = load float, ptr %i.bd, align 8, !tbaa !1161
  %i.bg = fcmp oeq float %i.be, %i.bf
  br i1 %i.bg, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge94
  store float %i.be, ptr %i.bd, align 8, !tbaa !1170
  br label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit

bb.q:                                             ; preds = %.lr.ph93, %bb.ac
  %.sroa.055.091 = phi ptr [ %.pre, %.lr.ph93 ], [ %i.dd, %bb.ac ] ; 4 uses
  %.sroa.063.090 = phi ptr [ %i.bb, %.lr.ph93 ], [ %i.de, %bb.ac ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 40 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !741
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 40 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !741
  %i.bn = sub nsw i32 %i.bk, %i.bm
  %5 = load i64, ptr %i.bh, align 4, !tbaa !741
  %6 = load i64, ptr %i.bi, align 4, !tbaa !741
  %7 = icmp ne i64 %5, %6
  %i.bo = icmp eq i32 %i.bn, 4096
  %or.cond78 = select i1 %7, i1 true, i1 %i.bo
  br i1 %or.cond78, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !4950 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 266232
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !1112
  %.not.i = icmp sgt i64 %i.bs, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 262136 ; 2 uses
  br i1 %.not.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !768 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 33272
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1112
  %.not.i.i40 = icmp sgt i64 %i.bw, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32760 ; 2 uses
  br i1 %.not.i.i40, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !768 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load atomic i32, ptr %i.bz seq_cst, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE12getLastValueEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.by)
          to label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE12getLastValueEv.exit.i.i unwind label %bb.y

_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE12getLastValueEv.exit.i.i: ; preds = %bb.u, %bb.t
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !768 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2044
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cc
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE12getLastValueEv.exit.i.i, %bb.s, %bb.r
  %i.cd = phi ptr [ %i.bx, %bb.s ], [ %.0.i.i.i.i.i, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE12getLastValueEv.exit.i.i ], [ %i.bt, %bb.r ]
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !1161
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !4950 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 262144
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !1112
  %i.cj = and i64 %i.ci, 1
  %.not.i42 = icmp eq i64 %i.cj, 0
  br i1 %.not.i42, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13getFirstValueEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !768 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32768
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1112
  %i.cn = and i64 %i.cm, 1
  %.not.i.i43 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i43, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13getFirstValueEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !768 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load atomic i32, ptr %i.cp seq_cst, align 4
  %.not.i.i.i.i.i.i44 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i44, label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13getFirstValueEv.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.co)
          to label %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13getFirstValueEv.exit.i.i unwind label %bb.y

_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13getFirstValueEv.exit.i.i: ; preds = %bb.x, %bb.w
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !768 ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq ptr %i.cr, null
  %.0.i.i.i.i.i46 = select i1 %.not.i.i.i.i.i45, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cr
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13getFirstValueEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13getFirstValueEv.exit: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13getFirstValueEv.exit.i.i, %bb.v, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit
  %i.cs = phi ptr [ %i.ck, %bb.v ], [ %.0.i.i.i.i.i46, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13getFirstValueEv.exit.i.i ], [ %i.cg, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12getLastValueEv.exit ]
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !1161
  %i.cu = fcmp olt float %i.ce, 0.000000e+00
  %i.cv = fcmp olt float %i.ct, 0.000000e+00
  %or.cond = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ac

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.z:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13getFirstValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cx = load i64, ptr %i.bi, align 8
  %i.cy = load i32, ptr %i.bl, align 8, !tbaa !741
  store i64 %i.cx, ptr %4, align 8
  %storemerge84 = add i32 %i.cy, 4096             ; 2 uses
  store i32 %storemerge84, ptr %.sroa.2.0..sroa_idx, align 8
  %i.cz = load i32, ptr %i.bj, align 8, !tbaa !741
  %.not2385 = icmp eq i32 %storemerge84, %i.cz
  br i1 %.not2385, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.z, %bb.aa
  invoke void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE7addTileERKNS0_4math5CoordERKfb(ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.bc, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.lr.ph87
  %i.da = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !741
  %storemerge = add i32 %i.da, 4096               ; 2 uses
  store i32 %storemerge, ptr %.sroa.2.0..sroa_idx, align 8
  %i.db = load i32, ptr %i.bj, align 8, !tbaa !741
  %.not23 = icmp eq i32 %storemerge, %i.db
  br i1 %.not23, label %._crit_edge88, label %.lr.ph87, !llvm.loop !12728

bb.ab:                                            ; preds = %.lr.ph87
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.af

._crit_edge88:                                    ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge88, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13getFirstValueEv.exit, %bb.q
  %i.dd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.055.091) #32
  %i.de = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.063.090) #32 ; 2 uses
  %.not80 = icmp eq ptr %i.de, %i.d
  br i1 %.not80, label %._crit_edge94, label %bb.q, !llvm.loop !12729

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit: ; preds = %.loopexit, %bb.p, %._crit_edge94, %._crit_edge
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !813
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_PNS1_4tree12InternalNodeINS7_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEESt10_Select1stISD_ESt4lessIS3_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.df)
          to label %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #33
  unreachable

_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE13setBackgroundERKfb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev.exit
  ret void

bb.af:                                            ; preds = %bb.y, %bb.ab, %bb.n
  %.pn28 = phi { ptr, i32 } [ %i.cw, %bb.y ], [ %i.az, %bb.n ], [ %i.dc, %bb.ab ]
  call void @_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIfLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn28
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSP_RSR_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1997
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1998
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !768
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !3064
  %i.g = load i64, ptr %0, align 8, !tbaa !3063
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSP_RSR_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !2001
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !743
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !3100
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !4926
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  store ptr null, ptr %i.l, align 16, !tbaa !4994
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i32 0, ptr %i.p, align 64, !tbaa !2014
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i8 5, ptr %i.q, align 4, !tbaa !2015
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !2016
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.u = load i64, ptr %3, align 8, !tbaa !2017
  store i64 %i.u, ptr %i.t, align 8, !tbaa !2017
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !2021
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !2022
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !2025
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !827
  store ptr %4, ptr %i.l, align 16, !tbaa !4994
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSP_RSR_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSP_RSR_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSP_RSR_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #33
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSP_RSR_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(144) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIfLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !2029 ; 2 uses
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2016
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_8LeafNodeIfLj3EEEE9NodeRangeENSF_19NodeTransformerCopyINSA_5tools17SignedFloodFillOpINSB_11LeafManagerINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSN_ISE_Lj4EEELj5EEEEEEEEEEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !2016
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !2030
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_8LeafNodeIfLj3EEEE9NodeRangeENSF_19NodeTransformerCopyINSA_5tools17SignedFloodFillOpINSB_11LeafManagerINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSN_ISE_Lj4EEELj5EEEEEEEEEEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_04tree11NodeManagerINS1_11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELj3EED2Ev:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools17SignedFloodFillOpINS0_4tree11LeafManagerINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclERSC_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::map.3664", align 8     ; 11 uses
  %3 = alloca %"struct.std::pair.3673", align 8   ; 7 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1414
  %i.c = icmp ugt i32 %i.b, 3
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i32 0, ptr %i.d, align 8, !tbaa !812
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !813
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !814
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.d, ptr %i.g, align 8, !tbaa !815
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !816
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !814  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.not2.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not2.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.2.0.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !964
  %.not1.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not1.i.i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.n = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !309

.loopexit:                                        ; preds = %bb.c, %.lr.ph.i.i.i, %bb.b
  %.sroa.2.1.i = phi ptr [ %i.j, %bb.b ], [ %i.n, %bb.c ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not7982 = icmp eq ptr %.sroa.2.1.i, %i.k
  br i1 %.not7982, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.sroa.673.083 = phi ptr [ %.sroa.2.1.i, %.lr.ph ], [ %.sroa.673.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.673.083, i64 32
  %.sroa.01.0.copyload.i = load i64, ptr %i.p, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.673.083, i64 40
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !768 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.673.083, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !966
  store i64 %.sroa.01.0.copyload.i, ptr %3, align 8
  store i32 %.sroa.22.0.copyload.i, ptr %.sroa.570.0..sroa_idx, align 8, !tbaa !768
  store ptr %i.r, ptr %i.o, align 8, !tbaa !4980
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !813  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  %i.t = trunc i64 %.sroa.01.0.copyload.i to i32  ; 4 uses
  %i.u = lshr i64 %.sroa.01.0.copyload.i, 32
  %i.v = trunc nuw i64 %i.u to i32                ; 4 uses
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.d ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.d, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !741  ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.t
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = icmp sgt i32 %i.x, %i.t
  br i1 %i.z, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !741 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.v
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i32 %i.ab, %i.v
  br i1 %i.ad, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !741
  %i.ag = icmp slt i32 %i.af, %.sroa.22.0.copyload.i
  br i1 %i.ag, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.g, %bb.e
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.g ], [ 16, %bb.e ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !576

_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.ai, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !741 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, %i.t
  br i1 %i.al, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp slt i32 %i.ak, %i.t
  br i1 %i.am, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !741 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, %i.v
  br i1 %i.ap, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = icmp slt i32 %i.ao, %i.v
  br i1 %i.aq, label %bb.l, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !741
  %i.at = icmp slt i32 %.sroa.22.0.copyload.i, %i.as
  br i1 %i.at, label %.critedge.i, label %bb.l

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.j, %bb.h, %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i, %bb.d
  %.08.lcssa.i.i.i14.i = phi ptr [ %i.d, %bb.d ], [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i ], [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %bb.j ]
  %i.au = invoke ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_PNS1_4tree12InternalNodeINS7_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEESt10_Select1stISD_ESt4lessIS3_ESaISD_EE22_M_emplace_hint_uniqueIJS4_IS3_SC_EEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.k, %bb.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.av = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.673.083) #32 ; 3 uses
  %.not2.i.i.i34 = icmp eq ptr %i.av, %i.k
  br i1 %.not2.i.i.i34, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %bb.l, %bb.m
  %.sroa.673.2 = phi ptr [ %i.ay, %bb.m ], [ %i.av, %bb.l ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.673.2, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !964
  %.not1.i.i.i36 = icmp eq ptr %i.ax, null
  br i1 %.not1.i.i.i36, label %bb.m, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit

bb.m:                                             ; preds = %.lr.ph.i.i.i35
  %i.ay = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.673.2) #32 ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.ay, %i.k
  br i1 %.not.i.i.i37, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i35, !llvm.loop !309

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit: ; preds = %.lr.ph.i.i.i35, %bb.m, %bb.l
  %.sroa.673.3 = phi ptr [ %i.av, %bb.l ], [ %.sroa.673.2, %.lr.ph.i.i.i35 ], [ %i.ay, %bb.m ] ; 2 uses
  %.not79 = icmp eq ptr %.sroa.673.3, %i.k
  br i1 %.not79, label %._crit_edge, label %bb.d

bb.n:                                             ; preds = %.critedge.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.af

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !814 ; 3 uses
  %i.ba = icmp eq ptr %.pre, %i.d
  br i1 %i.ba, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.pre) #32 ; 2 uses
  %.not8089 = icmp eq ptr %i.bb, %i.d
  br i1 %.not8089, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.o
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.q

._crit_edge94:                                    ; preds = %bb.ac, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.be = load double, ptr %0, align 8, !tbaa !1192 ; 2 uses
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !1192
  %i.bg = fcmp oeq double %i.be, %i.bf
  br i1 %i.bg, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge94
  store double %i.be, ptr %i.bd, align 8, !tbaa !1201
  br label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit

bb.q:                                             ; preds = %.lr.ph93, %bb.ac
  %.sroa.055.091 = phi ptr [ %.pre, %.lr.ph93 ], [ %i.dd, %bb.ac ] ; 4 uses
  %.sroa.063.090 = phi ptr [ %i.bb, %.lr.ph93 ], [ %i.de, %bb.ac ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 40 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !741
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 40 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !741
  %i.bn = sub nsw i32 %i.bk, %i.bm
  %5 = load i64, ptr %i.bh, align 4, !tbaa !741
  %6 = load i64, ptr %i.bi, align 4, !tbaa !741
  %7 = icmp ne i64 %5, %6
  %i.bo = icmp eq i32 %i.bn, 4096
  %or.cond78 = select i1 %7, i1 true, i1 %i.bo
  br i1 %or.cond78, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !4982 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 266232
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !1112
  %.not.i = icmp sgt i64 %i.bs, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 262136 ; 2 uses
  br i1 %.not.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !768 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 33272
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1112
  %.not.i.i40 = icmp sgt i64 %i.bw, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32760 ; 2 uses
  br i1 %.not.i.i40, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !768 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load atomic i32, ptr %i.bz seq_cst, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE12getLastValueEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.by)
          to label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE12getLastValueEv.exit.i.i unwind label %bb.y

_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE12getLastValueEv.exit.i.i: ; preds = %bb.u, %bb.t
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !768 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4088
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.cc
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE12getLastValueEv.exit.i.i, %bb.s, %bb.r
  %i.cd = phi ptr [ %i.bx, %bb.s ], [ %.0.i.i.i.i.i, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE12getLastValueEv.exit.i.i ], [ %i.bt, %bb.r ]
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !1192
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.063.090, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !4982 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 262144
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !1112
  %i.cj = and i64 %i.ci, 1
  %.not.i42 = icmp eq i64 %i.cj, 0
  br i1 %.not.i42, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13getFirstValueEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !768 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32768
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1112
  %i.cn = and i64 %i.cm, 1
  %.not.i.i43 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i43, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13getFirstValueEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !768 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load atomic i32, ptr %i.cp seq_cst, align 4
  %.not.i.i.i.i.i.i44 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i44, label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13getFirstValueEv.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.co)
          to label %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13getFirstValueEv.exit.i.i unwind label %bb.y

_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13getFirstValueEv.exit.i.i: ; preds = %bb.x, %bb.w
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !768 ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq ptr %i.cr, null
  %.0.i.i.i.i.i46 = select i1 %.not.i.i.i.i.i45, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIdLj3EE2atEjE5sZero, ptr %i.cr
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13getFirstValueEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13getFirstValueEv.exit: ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13getFirstValueEv.exit.i.i, %bb.v, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit
  %i.cs = phi ptr [ %i.ck, %bb.v ], [ %.0.i.i.i.i.i46, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13getFirstValueEv.exit.i.i ], [ %i.cg, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12getLastValueEv.exit ]
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !1192
  %i.cu = fcmp olt double %i.ce, 0.000000e+00
  %i.cv = fcmp olt double %i.ct, 0.000000e+00
  %or.cond = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ac

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.z:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13getFirstValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cx = load i64, ptr %i.bi, align 8
  %i.cy = load i32, ptr %i.bl, align 8, !tbaa !741
  store i64 %i.cx, ptr %4, align 8
  %storemerge84 = add i32 %i.cy, 4096             ; 2 uses
  store i32 %storemerge84, ptr %.sroa.2.0..sroa_idx, align 8
  %i.cz = load i32, ptr %i.bj, align 8, !tbaa !741
  %.not2385 = icmp eq i32 %storemerge84, %i.cz
  br i1 %.not2385, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.z, %bb.aa
  invoke void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7addTileERKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.lr.ph87
  %i.da = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !741
  %storemerge = add i32 %i.da, 4096               ; 2 uses
  store i32 %storemerge, ptr %.sroa.2.0..sroa_idx, align 8
  %i.db = load i32, ptr %i.bj, align 8, !tbaa !741
  %.not23 = icmp eq i32 %storemerge, %i.db
  br i1 %.not23, label %._crit_edge88, label %.lr.ph87, !llvm.loop !12767

bb.ab:                                            ; preds = %.lr.ph87
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.af

._crit_edge88:                                    ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge88, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13getFirstValueEv.exit, %bb.q
  %i.dd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.055.091) #32
  %i.de = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.063.090) #32 ; 2 uses
  %.not80 = icmp eq ptr %i.de, %i.d
  br i1 %.not80, label %._crit_edge94, label %bb.q, !llvm.loop !12768

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit: ; preds = %.loopexit, %bb.p, %._crit_edge94, %._crit_edge
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !813
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_PNS1_4tree12InternalNodeINS7_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEESt10_Select1stISD_ESt4lessIS3_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.df)
          to label %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #33
  unreachable

_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE13setBackgroundERKdb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev.exit
  ret void

bb.af:                                            ; preds = %bb.y, %bb.ab, %bb.n
  %.pn28 = phi { ptr, i32 } [ %i.cw, %bb.y ], [ %i.az, %bb.n ], [ %i.dc, %bb.ab ]
  call void @_ZNSt3mapIN7openvdb5v13_04math5CoordEPNS1_4tree12InternalNodeINS5_INS4_8LeafNodeIdLj3EEELj4EEELj5EEESt4lessIS3_ESaISt4pairIKS3_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn28
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSP_RSR_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1997
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1998
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !768
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !3905
  %i.g = load i64, ptr %0, align 8, !tbaa !3904
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSP_RSR_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !2001
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !743
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !3941
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !4960
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !5003
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store i32 0, ptr %i.p, align 8, !tbaa !2014
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 140
  store i8 5, ptr %i.q, align 4, !tbaa !2015
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 64, !tbaa !2016
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.u = load i64, ptr %3, align 8, !tbaa !2017
  store i64 %i.u, ptr %i.t, align 16, !tbaa !2017
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !2021
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !2022
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !2025
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !827
  store ptr %4, ptr %i.l, align 8, !tbaa !5003
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSP_RSR_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSP_RSR_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSP_RSR_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #33
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSA_RKSP_RSR_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(152) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_8LeafNodeIdLj3EEEE9NodeRangeENS9_19NodeTransformerCopyINS4_5tools17SignedFloodFillOpINS5_11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEEEENS9_14OpWithoutIndexEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !2029 ; 2 uses
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.h = load i64, ptr %i.g, align 64, !tbaa !2016
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_8LeafNodeIdLj3EEEE9NodeRangeENSF_19NodeTransformerCopyINSA_5tools17SignedFloodFillOpINSB_11LeafManagerINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSN_ISE_Lj4EEELj5EEEEEEEEEEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 64, !tbaa !2016
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !2030
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_8LeafNodeIdLj3EEEE9NodeRangeENSF_19NodeTransformerCopyINSA_5tools17SignedFloodFillOpINSB_11LeafManagerINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSN_ISE_Lj4EEELj5EEEEEEEEEEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

end_hunk_3

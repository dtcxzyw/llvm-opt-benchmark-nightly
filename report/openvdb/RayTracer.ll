Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/RayTracer?download=true
inline.NumInlined: 4637
inline.NumDeleted: 1864
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE22probeConstNodeAndCacheIS5_KNS1_17ValueAccessorImplIKNS1_4TreeIS8_EELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEPKT_RKNS0_4math5CoordERT0_:bb.a
  %i.aw = and i32 %i.b, -4096
  %i.ax = and i32 %i.g, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.aw to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.av to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.az, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !207
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.at, ptr %i.ba, align 8, !tbaa !499
  %i.bb = load i32, ptr %1, align 4, !tbaa !298   ; 2 uses
  %i.bc = shl i32 %i.bb, 3
  %i.bd = and i32 %i.bc, 31744
  %i.be = load i32, ptr %i.a, align 4, !tbaa !298 ; 2 uses
  %i.bf = lshr i32 %i.be, 2
  %i.bg = and i32 %i.bf, 992
  %i.bh = or disjoint i32 %i.bg, %i.bd            ; 2 uses
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !298 ; 2 uses
  %i.bj = lshr i32 %i.bi, 7
  %i.bk = and i32 %i.bj, 31
  %i.bl = or disjoint i32 %i.bh, %i.bk            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 262144
  %i.bn = lshr i32 %i.bh, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !249
  %i.br = and i32 %i.bl, 63
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = and i64 %i.bt, %i.bq
  %.not.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = zext nneg i32 %i.bl to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !207 ; 3 uses
  %i.by = and i32 %i.bb, -128
  %i.bz = and i32 %i.be, -128
  %i.ca = and i32 %i.bi, -128
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bz to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.by to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.cb, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.ca, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !207
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.bx, ptr %i.cc, align 8, !tbaa !504
  %i.cd = load i32, ptr %1, align 4, !tbaa !298   ; 2 uses
  %i.ce = shl i32 %i.cd, 5
  %i.cf = and i32 %i.ce, 3840
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !298 ; 2 uses
  %i.ch = shl i32 %i.cg, 1
  %i.ci = and i32 %i.ch, 240
  %i.cj = or disjoint i32 %i.ci, %i.cf            ; 2 uses
  %i.ck = load i32, ptr %i.f, align 4, !tbaa !298 ; 2 uses
  %i.cl = lshr i32 %i.ck, 3
  %i.cm = and i32 %i.cl, 15
  %i.cn = or disjoint i32 %i.cj, %i.cm            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 32768
  %i.cp = lshr i32 %i.cj, 6
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !249
  %i.ct = and i32 %i.cn, 63
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.cs
  %.not.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = zext nneg i32 %i.cn to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !207 ; 2 uses
  %i.da = and i32 %i.cd, -8
  %i.db = and i32 %i.cg, -8
  %i.dc = and i32 %i.ck, -8
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.db to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.da to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.dc, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !207
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.cz, ptr %i.dd, align 8, !tbaa !503
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a, %bb.l, %bb.k, %bb.j, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit ], [ null, %bb.k ], [ null, %bb.j ], [ %i.cz, %bb.l ], [ null, %bb.a ], [ null, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ null, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeIS8_EELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !298  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !298
  %i.e = sub nsw i32 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !298  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !298
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = and i32 %i.e, -4096                      ; 4 uses
  %i.l = and i32 %i.j, -4096                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !438  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not12.i.i.i.i, label %.critedge, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.p = load i32, ptr %1, align 4, !tbaa !298    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !298
  %i.s = sub nsw i32 %i.p, %i.r
  %i.t = and i32 %i.s, -4096                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !298  ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.t
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp sgt i32 %i.v, %i.t
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !298  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.k
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp sgt i32 %i.z, %i.k
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !298
  %i.ae = icmp slt i32 %i.ad, %i.l
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !439 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %bb.b, !llvm.loop !34

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.o
  br i1 %i.ag, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !298 ; 2 uses
  %i.aj = icmp slt i32 %i.t, %i.ai
  br i1 %i.aj, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp sgt i32 %i.t, %i.ai
  br i1 %i.ak, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !298 ; 2 uses
  %i.an = icmp slt i32 %i.k, %i.am
  br i1 %i.an, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp sgt i32 %i.k, %i.am
  br i1 %i.ao, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !298
  %i.ar = icmp slt i32 %i.l, %i.aq
  br i1 %i.ar, label %.critedge, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !502 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %3 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 57
  %4 = load i8, ptr %3, align 1, !tbaa !1181, !range !125, !noundef !126
  %5 = trunc nuw i8 %4 to i1
  br label %.critedge

bb.k:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit
  %i.av = and i32 %i.p, -4096
  %i.aw = and i32 %i.b, -4096
  %i.ax = and i32 %i.g, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.aw to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.av to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.az, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !207
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.at, ptr %i.ba, align 8, !tbaa !499
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !1183 ; 3 uses
  %i.bc = load i32, ptr %1, align 4, !tbaa !298   ; 2 uses
  %i.bd = shl i32 %i.bc, 3
  %i.be = and i32 %i.bd, 31744
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !298 ; 2 uses
  %i.bg = lshr i32 %i.bf, 2
  %i.bh = and i32 %i.bg, 992
  %i.bi = or disjoint i32 %i.bh, %i.be            ; 2 uses
  %i.bj = load i32, ptr %i.f, align 4, !tbaa !298 ; 2 uses
  %i.bk = lshr i32 %i.bj, 7
  %i.bl = and i32 %i.bk, 31
  %i.bm = or disjoint i32 %i.bi, %i.bl            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 262144
  %i.bo = lshr i32 %i.bi, 6
  %i.bp = zext nneg i32 %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !249
  %i.bs = and i32 %i.bm, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt                    ; 2 uses
  %i.bv = and i64 %i.bu, %i.br
  %.not.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 266240
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bp
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !249
  %i.bz = and i64 %i.by, %i.bu
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeIS6_EEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ca = zext nneg i32 %i.bm to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ca ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !207
  %i.cd = and i32 %i.bc, -128
  %i.ce = and i32 %i.bf, -128
  %i.cf = and i32 %i.bj, -128
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.ce to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cd to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.cg, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.cf, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !207
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.cc, ptr %i.ch, align 8, !tbaa !504
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !207 ; 3 uses
  %i.cj = load i32, ptr %1, align 4, !tbaa !298   ; 2 uses
  %i.ck = shl i32 %i.cj, 5
  %i.cl = and i32 %i.ck, 3840
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !298 ; 2 uses
  %i.cn = shl i32 %i.cm, 1
  %i.co = and i32 %i.cn, 240
  %i.cp = or disjoint i32 %i.co, %i.cl            ; 2 uses
  %i.cq = load i32, ptr %i.f, align 4, !tbaa !298 ; 2 uses
  %i.cr = lshr i32 %i.cq, 3
  %i.cs = and i32 %i.cr, 15
  %i.ct = or disjoint i32 %i.cp, %i.cs            ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 32768
  %i.cv = lshr i32 %i.cp, 6
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !249
  %i.cz = and i32 %i.ct, 63
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = shl nuw i64 1, %i.da                    ; 2 uses
  %i.dc = and i64 %i.db, %i.cy
  %.not.i.i.i.i7 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i7, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 33280
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.cw
  %i.df = load i64, ptr %i.de, align 8, !tbaa !249
  %i.dg = and i64 %i.df, %i.db
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeIS6_EEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_.exit

bb.o:                                             ; preds = %bb.m
  %i.dh = zext nneg i32 %i.ct to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dh ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !207
  %i.dk = and i32 %i.cj, -8
  %i.dl = and i32 %i.cm, -8
  %i.dm = and i32 %i.cq, -8
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.dl to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.dk to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.dm, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !207
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.dj, ptr %i.dn, align 8, !tbaa !503
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !207
  %i.dp = load i32, ptr %1, align 4, !tbaa !298
  %i.dq = and i32 %i.dp, 7
  %i.dr = load i32, ptr %i.a, align 4, !tbaa !298
  %i.ds = shl i32 %i.dr, 3
  %i.dt = and i32 %i.ds, 56
  %i.du = load i32, ptr %i.f, align 4, !tbaa !298
  %i.dv = and i32 %i.du, 7
  %i.dw = or disjoint i32 %i.dt, %i.dv
  %i.dx = zext nneg i32 %i.dq to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !249
  %i.ea = zext nneg i32 %i.dw to i64
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.eb, %i.dz
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeIS6_EEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeIS6_EEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.in.i = phi i64 [ %i.bz, %bb.l ], [ %i.dg, %bb.n ], [ %i.ec, %bb.o ]
  %.0.i = icmp ne i64 %.0.in.i, 0
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeIS6_EEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_.exit
  %.0 = phi i1 [ %.0.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeIS6_EEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_.exit ], [ %5, %bb.j ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.a ], [ false, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ false, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools10BoxSampler6sampleINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKT_RKNS0_4math4Vec3IdEERNSJ_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 15 uses
  %i.a = alloca [2 x [2 x [2 x float]]], align 16 ; 11 uses
  %i.b = load double, ptr %1, align 8, !tbaa !163 ; 2 uses
  %i.c = tail call double @llvm.floor.f64(double %i.b)
  %i.d = fptosi double %i.c to i32                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = sitofp i32 %i.d to double
  %i.g = fsub double %i.b, %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.sroa.0.0.insert.ext = zext i32 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.p = load <2 x double>, ptr %i.e, align 8, !tbaa !163 ; 2 uses
  %i.q = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.p)
  %i.r = fptosi <2 x double> %i.q to <2 x i32>    ; 3 uses
  %i.s = extractelement <2 x i32> %i.r, i64 0
  %.sroa.2.0.insert.ext.i = zext i32 %i.s to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %i.t = sitofp <2 x i32> %i.r to <2 x double>
  %i.u = fsub <2 x double> %i.p, %i.t             ; 2 uses
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %3, align 8
  %i.v = extractelement <2 x i32> %i.r, i64 1
  store i32 %i.v, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.w = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(32) %i.a)
  %i.x = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.z = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %i.aa = or i1 %i.w, %i.z
  %i.ab = load i32, ptr %i.i, align 4, !tbaa !298
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.i, align 4, !tbaa !298
  %i.ad = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  %i.ae = or i1 %i.aa, %i.ad
  %i.af = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ah = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  %i.ai = or i1 %i.ae, %i.ah
  %i.aj = load <2 x i32>, ptr %3, align 8, !tbaa !298
  %i.ak = add nsw <2 x i32> %i.aj, <i32 1, i32 -1>
  store <2 x i32> %i.ak, ptr %3, align 8, !tbaa !298
  %i.al = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.am = or i1 %i.ai, %i.al
  %i.an = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ap = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  %i.aq = or i1 %i.am, %i.ap
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !298
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.i, align 4, !tbaa !298
  %i.at = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  %i.au = or i1 %i.aq, %i.at
  %i.av = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.aw = add nsw i32 %i.av, -1
  store i32 %i.aw, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ax = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %i.ay = or i1 %i.au, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.az = load <8 x float>, ptr %i.a, align 16, !tbaa !98 ; 4 uses
  %i.ba = shufflevector <8 x float> %i.az, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bb = shufflevector <8 x float> %i.az, <8 x float> poison, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.bc = fsub <2 x float> %i.ba, %i.bb
  %i.bd = fpext <2 x float> %i.bc to <2 x double>
  %i.be = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bf = fmul <2 x double> %i.be, %i.bd
  %i.bg = fptrunc <2 x double> %i.bf to <2 x float>
  %i.bh = fadd <2 x float> %i.bb, %i.bg           ; 2 uses
  %i.bi = shufflevector <8 x float> %i.az, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.bj = shufflevector <8 x float> %i.az, <8 x float> poison, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.bk = fsub <2 x float> %i.bi, %i.bj
  %i.bl = fpext <2 x float> %i.bk to <2 x double>
  %i.bm = fmul <2 x double> %i.be, %i.bl
  %i.bn = fptrunc <2 x double> %i.bm to <2 x float>
  %i.bo = fadd <2 x float> %i.bj, %i.bn
  %i.bp = fsub <2 x float> %i.bo, %i.bh
  %i.bq = fpext <2 x float> %i.bp to <2 x double>
  %i.br = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.br, %i.bq
  %i.bt = fptrunc <2 x double> %i.bs to <2 x float>
  %i.bu = fadd <2 x float> %i.bh, %i.bt           ; 3 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0
  %shift = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.bu
  %i.bw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bx = fpext float %i.bw to double
  %i.by = fmul double %i.g, %i.bx
  %i.bz = fptrunc double %i.by to float
  %i.ca = fadd float %i.bv, %i.bz
  store float %i.ca, ptr %2, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i1 %i.ay
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !351  ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 8, !tbaa !348, !range !125, !noundef !126
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !349  ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(1232) %i.g) #17, !inline_history !1184
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 496) #25
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !351  ; 4 uses
  %.not.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit
  %i.n = load i8, ptr %i.m, align 8, !tbaa !348, !range !125, !noundef !126
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !349  ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(1232) %i.q) #17, !inline_history !1184
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2: ; preds = %bb.g, %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 496) #25
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3

_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit, %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %0, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !167  ; 2 uses
  %.not.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i4, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %0, ptr %i.a, align 8, !tbaa !169
  %i.y = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.i, !inline_history !170 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #26, !inline_history !170
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev(ptr noundef nonnull align 64 dead_on_return(368) dereferenceable(368) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %0, align 64, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !351  ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 8, !tbaa !348, !range !125, !noundef !126
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !349  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(1232) %i.h) #17, !inline_history !1185
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 496) #25
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = load ptr, ptr %i.m, align 64, !tbaa !351 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i
  %i.o = load i8, ptr %i.n, align 8, !tbaa !348, !range !125, !noundef !126
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !349  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(1232) %i.r) #17, !inline_history !1185
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i: ; preds = %bb.g, %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 496) #25
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i, %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 32, !tbaa !167 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.i, label %_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.b, ptr %i.a, align 8, !tbaa !169
  %i.z = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i unwind label %bb.i, !inline_history !170 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #26, !inline_history !170
  unreachable

_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(368) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %0, align 64, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !351  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 8, !tbaa !348, !range !125, !noundef !126
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !349  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(1232) %i.h) #17, !inline_history !1186
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 496) #25, !inline_history !1187
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = load ptr, ptr %i.m, align 64, !tbaa !351 ; 4 uses
  %.not.i1.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i
  %i.o = load i8, ptr %i.n, align 8, !tbaa !348, !range !125, !noundef !126
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !349  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(1232) %i.r) #17, !inline_history !1186
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i: ; preds = %bb.g, %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 496) #25, !inline_history !1187
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEEEclEPSJ_.exit.i2.i.i, %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 32, !tbaa !167 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.b, ptr %i.a, align 8, !tbaa !169
  %i.z = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i unwind label %bb.i, !inline_history !1188 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #26, !inline_history !1188
  unreachable

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev.exit3.i.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i
  call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !454  ; 2 uses
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !262
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !262
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !455
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !354
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !354
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !261
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !261
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSB_20VolumeRayIntersectorINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSA_4math3RayIdEEEENSB_10BoxSamplerEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !354 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.z = load i64, ptr %i.y, align 8, !tbaa !263
  %i.aa = load ptr, ptr %0, align 64, !tbaa !100
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(368) dereferenceable(368) %0) #17, !inline_history !35
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ae = add i32 %i.ad, -1
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.ag = load ptr, ptr %.019.i.i, align 8, !tbaa !267 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !263
  %i.aj = inttoptr i64 %i.ai to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = atomicrmw add ptr %i.ak, i32 -1 seq_cst, align 4
  %i.am = add i32 %i.al, -1
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.ap, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ar = ptrtoint ptr %i.aq to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ar)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.as = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.as, ptr noundef nonnull align 64 dereferenceable(368) %0, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !354 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = load i64, ptr %i.c, align 8, !tbaa !263
  %i.e = load ptr, ptr %0, align 64, !tbaa !100
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(368) dereferenceable(368) %0) #17, !inline_history !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !267 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !263
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw add ptr %i.o, i32 -1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw add ptr %i.s, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(368) %0, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSB_20VolumeRayIntersectorINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSA_4math3RayIdEEEENSB_10BoxSamplerEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !261   ; 2 uses
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.u = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1189 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.u, align 64, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = load i64, ptr %i.n, align 64, !tbaa !122 ; 2 uses
  store i64 %i.x, ptr %i.w, align 64, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.z = load i64, ptr %i.o, align 8, !tbaa !123  ; 2 uses
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  store i64 %i.ac, ptr %i.n, align 64, !tbaa !122
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.ae = load i64, ptr %i.p, align 16, !tbaa !124
  store i64 %i.ae, ptr %i.ad, align 16, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  call void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC1ERKSL_(ptr noundef nonnull align 8 dereferenceable(248) %i.af, ptr noundef nonnull align 8 dereferenceable(248) %i.q), !inline_history !1190
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 336 ; 2 uses
  store ptr null, ptr %i.ag, align 16, !tbaa !354
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 344
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !262
  %i.aj = lshr i64 %i.ai, 1                       ; 2 uses
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !262
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !262
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  store i32 2, ptr %i.ak, align 32, !tbaa !260
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 356
  %i.am = load i8, ptr %i.s, align 4, !tbaa !261
  store i8 %i.am, ptr %i.al, align 4, !tbaa !261
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 360
  %i.ao = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !263
  %i.ap = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1191 ; 6 uses
  %i.aq = load ptr, ptr %i.t, align 16, !tbaa !456
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !267
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 2, ptr %i.ar, align 8, !tbaa !268
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.at, ptr %i.as, align 8, !tbaa !263
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 0, ptr %i.au, align 8, !tbaa !458
  store ptr %i.ap, ptr %i.t, align 16, !tbaa !354
  store ptr %i.ap, ptr %i.ag, align 16, !tbaa !354
  %i.av = load ptr, ptr %3, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(368) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.av), !inline_history !1191
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !124
  %i.ax = load i64, ptr %2, align 8, !tbaa !122
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !123
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bb = load i64, ptr %0, align 8, !tbaa !262   ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !1192

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bb, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load i8, ptr %i.m, align 4, !tbaa !261  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bd, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = add i8 %i.bd, -1
  store i8 %i.be, ptr %i.m, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !261   ; 2 uses
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !207
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !250
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 356
  br label %bb.e

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  %.promoted.i18.pre = load i8, ptr %i.l, align 2, !tbaa !462
  %.pre = load i8, ptr %i.h, align 4, !tbaa !261
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %i.s = phi i8 [ %.pre, %thread-pre-split ], [ %i.i, %bb.d ] ; 3 uses
  %.promoted.i = phi i8 [ %.promoted.i18.pre, %thread-pre-split ], [ 1, %bb.d ] ; 3 uses
  %i.t = icmp ult i8 %.promoted.i, 8
  br i1 %i.t, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.promoted4.i = load i8, ptr %5, align 8        ; 2 uses
  %.phi.trans.insert.i = zext i8 %.promoted4.i to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !207
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %i.u = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.av, %bb.g ]
  %i.v = phi i8 [ %.promoted.i, %.lr.ph.i ], [ %i.ax, %bb.g ] ; 3 uses
  %i.w = phi i8 [ %.promoted4.i, %.lr.ph.i ], [ %i.aj, %bb.g ] ; 2 uses
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.x ; 2 uses
  %i.z = icmp ult i8 %i.u, %i.s
  br i1 %i.z, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.x ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !124
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !122
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !123
  %i.ag = sub i64 %i.ad, %i.af
  %i.ah = icmp ult i64 %i.ac, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i
  %i.ai = add nuw i8 %i.w, 1
  %i.aj = and i8 %i.ai, 7                         ; 3 uses
  store i8 %i.aj, ptr %5, align 8, !tbaa !463
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.ak ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !250
  %i.am = load i64, ptr %i.al, align 8, !tbaa !122 ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !122
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !123 ; 2 uses
  %i.ap = sub i64 %i.am, %i.ao
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = add i64 %i.aq, %i.ao                    ; 2 uses
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !122
  store i64 %i.ar, ptr %i.ae, align 8, !tbaa !123
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !124
  store i64 %i.at, ptr %i.ab, align 8, !tbaa !124
  %i.au = load i8, ptr %i.y, align 1, !tbaa !207
  %i.av = add i8 %i.au, 1                         ; 3 uses
  store i8 %i.av, ptr %i.y, align 1, !tbaa !207
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ak
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !207
  %i.ax = add nuw nsw i8 %i.v, 1                  ; 3 uses
  store i8 %i.ax, ptr %i.l, align 2, !tbaa !462
  %exitcond.not.i = icmp eq i8 %i.ax, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !30

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, %bb.f, %bb.e
  %.pr = phi i8 [ %.promoted.i, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ] ; 2 uses
  %i.ay = load ptr, ptr %i.o, align 16, !tbaa !354
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load atomic i8, ptr %i.az monotonic, align 1, !range !125, !noundef !126
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.bc = load ptr, ptr %i.o, align 16, !tbaa !354
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !range !125, !noundef !126
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %i.bg = add i8 %i.s, 1
  store i8 %i.bg, ptr %i.h, align 4, !tbaa !261
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %.pre24 = load i8, ptr %5, align 8, !tbaa !463
  %.pre26 = zext i8 %.pre24 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.bh = add i8 %i.s, 1                          ; 2 uses
  store i8 %i.bh, ptr %i.h, align 4, !tbaa !261
  %i.bi = icmp ugt i8 %.pr, 1
  br i1 %i.bi, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bj = load i8, ptr %i.k, align 1, !tbaa !464
  %i.bk = zext i8 %i.bj to i64                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.bn = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1193 ; 10 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bn, align 64, !tbaa !100
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !250
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  call void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC1ERKSL_(ptr noundef nonnull align 8 dereferenceable(248) %i.br, ptr noundef nonnull align 8 dereferenceable(248) %i.p), !inline_history !1193
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 336 ; 2 uses
  store ptr null, ptr %i.bs, align 16, !tbaa !354
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 344
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !262
  %i.bv = lshr i64 %i.bu, 1                       ; 2 uses
  store i64 %i.bv, ptr %i.q, align 8, !tbaa !262
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !262
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 352
  store i32 2, ptr %i.bw, align 32, !tbaa !260
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 356
  %i.by = load i8, ptr %i.r, align 4, !tbaa !261
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 360
  %i.ca = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !263
  %i.cb = sub i8 %i.by, %i.bm
  store i8 %i.cb, ptr %i.bx, align 4, !tbaa !261
  %i.cc = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1193 ; 6 uses
  %i.cd = load ptr, ptr %i.o, align 16, !tbaa !456
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !267
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 2, ptr %i.ce, align 8, !tbaa !268
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !263
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i8 0, ptr %i.ch, align 8, !tbaa !458
  store ptr %i.cc, ptr %i.o, align 16, !tbaa !354
  store ptr %i.cc, ptr %i.bs, align 16, !tbaa !354
  %i.ci = load ptr, ptr %3, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(368) %i.bn, ptr noundef nonnull align 8 dereferenceable(128) %i.ci), !inline_history !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.cj = load i8, ptr %i.l, align 2, !tbaa !462
  %i.ck = add i8 %i.cj, -1                        ; 2 uses
  store i8 %i.ck, ptr %i.l, align 2, !tbaa !462
  %i.cl = load i8, ptr %i.k, align 1, !tbaa !464
  %i.cm = add i8 %i.cl, 1
  %i.cn = and i8 %i.cm, 7
  store i8 %i.cn, ptr %i.k, align 1, !tbaa !464
  br label %thread-pre-split23

bb.i:                                             ; preds = %bb.h
  %i.co = load i8, ptr %5, align 8, !tbaa !463
  %i.cp = zext i8 %i.co to i64                    ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !207
  %i.cs = icmp ult i8 %i.cr, %i.bh
  br i1 %i.cs, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.cp ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !124
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !122
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !123
  %i.cz = sub i64 %i.cw, %i.cy
  %i.da = icmp ult i64 %i.cv, %i.cz
  br i1 %i.da, label %thread-pre-split23, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre26, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cp, %bb.i ], [ %i.cp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(248) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  %i.dc = load i8, ptr %i.l, align 2, !tbaa !462
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  store i8 %i.dd, ptr %i.l, align 2, !tbaa !462
  %i.de = load i8, ptr %5, align 8, !tbaa !463
  %i.df = add i8 %i.de, 7
  %i.dg = and i8 %i.df, 7
  store i8 %i.dg, ptr %5, align 8, !tbaa !463
  br label %thread-pre-split23

thread-pre-split23:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dh = phi i8 [ %i.ck, %.noexc ], [ %i.dd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !459   ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 15
  %i.dl = load atomic i8, ptr %i.dk monotonic, align 1
  %i.dm = icmp eq i8 %i.dl, -1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %.0.i.i = select i1 %i.dm, ptr %i.do, ptr %i.dj
  %i.dp = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.dp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22, label %thread-pre-split, !llvm.loop !1194

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22: ; preds = %thread-pre-split23, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools10BoxSampler6sampleINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKT_RKNS0_4math4Vec3IdEERNSJ_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 15 uses
  %i.a = alloca [2 x [2 x [2 x double]]], align 16 ; 11 uses
  %i.b = load double, ptr %1, align 8, !tbaa !163 ; 2 uses
  %i.c = tail call double @llvm.floor.f64(double %i.b)
  %i.d = fptosi double %i.c to i32                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !163 ; 2 uses
  %i.g = tail call double @llvm.floor.f64(double %i.f)
  %i.h = fptosi double %i.g to i32                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !163 ; 2 uses
  %i.k = tail call double @llvm.floor.f64(double %i.j)
  %i.l = fptosi double %i.k to i32                ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.h to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %i.m = sitofp i32 %i.d to double
  %i.n = fsub double %i.b, %i.m
  %i.o = sitofp i32 %i.h to double
  %i.p = fsub double %i.f, %i.o                   ; 2 uses
  %i.q = sitofp i32 %i.l to double
  %i.r = fsub double %i.j, %i.q                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.sroa.0.0.insert.ext = zext i32 %i.d to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.insert.insert, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store i32 %i.l, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.s = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  %i.t = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.w = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.x = or i1 %i.s, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !298
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !298
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ad = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %i.ae = or i1 %i.x, %i.ad
  %i.af = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ah = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ai = or i1 %i.ae, %i.ah
  %i.aj = load <2 x i32>, ptr %3, align 8, !tbaa !298
  %i.ak = add nsw <2 x i32> %i.aj, <i32 1, i32 -1>
  store <2 x i32> %i.ak, ptr %3, align 8, !tbaa !298
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.am = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  %i.an = or i1 %i.ai, %i.am
  %i.ao = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.ar = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  %i.as = or i1 %i.an, %i.ar
  %i.at = load i32, ptr %i.y, align 4, !tbaa !298
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.y, align 4, !tbaa !298
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.ax = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
  %i.ay = or i1 %i.as, %i.ax
  %i.az = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ba = add nsw i32 %i.az, -1
  store i32 %i.ba, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.bb = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  %i.bc = or i1 %i.ay, %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bd = load double, ptr %i.v, align 8, !tbaa !163
  %i.be = load double, ptr %i.a, align 16, !tbaa !163 ; 2 uses
  %i.bf = fsub double %i.bd, %i.be
  %i.bg = fmul double %i.r, %i.bf
  %i.bh = fadd double %i.be, %i.bg                ; 2 uses
  %i.bi = load double, ptr %i.ac, align 8, !tbaa !163
  %i.bj = load double, ptr %i.ab, align 16, !tbaa !163 ; 2 uses
  %i.bk = fsub double %i.bi, %i.bj
  %i.bl = fmul double %i.r, %i.bk
  %i.bm = fadd double %i.bj, %i.bl
  %i.bn = fsub double %i.bm, %i.bh
  %i.bo = fmul double %i.p, %i.bn
  %i.bp = fadd double %i.bh, %i.bo                ; 2 uses
  %i.bq = load double, ptr %i.aq, align 8, !tbaa !163
  %i.br = load double, ptr %i.al, align 16, !tbaa !163 ; 2 uses
  %i.bs = fsub double %i.bq, %i.br
  %i.bt = fmul double %i.r, %i.bs
  %i.bu = fadd double %i.br, %i.bt                ; 2 uses
  %i.bv = load double, ptr %i.aw, align 8, !tbaa !163
  %i.bw = load double, ptr %i.av, align 16, !tbaa !163 ; 2 uses
  %i.bx = fsub double %i.bv, %i.bw
  %i.by = fmul double %i.r, %i.bx
  %i.bz = fadd double %i.bw, %i.by
  %i.ca = fsub double %i.bz, %i.bu
  %i.cb = fmul double %i.p, %i.ca
  %i.cc = fadd double %i.bu, %i.cb
  %i.cd = fsub double %i.cc, %i.bp
  %i.ce = fmul double %i.n, %i.cd
  %i.cf = fadd double %i.bp, %i.ce
  store double %i.cf, ptr %2, align 8, !tbaa !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i1 %i.bc
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noreturn }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v2f64
!981 = distinct !{!981, i1 true, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi"}
!982 = distinct !{!982, !981, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi: argument 0"}
!983 = distinct !{!983, i1 true, !"_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE13cbeginValueOnEv"}
!984 = distinct !{!984, !983, !"_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE13cbeginValueOnEv: argument 0"}
!985 = distinct !{!985, i1 true, !"_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE13cbeginChildOnEv"}
!986 = distinct !{!986, !985, !"_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE13cbeginChildOnEv: argument 0"}
!987 = distinct !{!987, !286}
!988 = distinct !{!988, !286}
!989 = !{!982, !980}
!990 = !{!984}
!991 = !{!986}
!992 = distinct !{!992, i1 true, !"_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE18getNodeBoundingBoxEv"}
!993 = distinct !{!993, !992, !"_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE18getNodeBoundingBoxEv: argument 0"}
!994 = distinct !{!994, i1 true, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi"}
!995 = distinct !{!995, !994, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi: argument 0"}
!996 = distinct !{!996, !286}
!997 = !{!995, !993}
!998 = distinct !{!998, !370}
!999 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEE", !146, i64 0, !418, i64 8}
!1000 = !{!999, !146, i64 0}
!1001 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeIdLj3EE9ValueIterIS7_KS9_KdNS9_7ValueOnEEESB_SC_EE", !999, i64 0}
!1002 = !{!"_ZTSN7openvdb5v13_04tree8LeafNodeIdLj3EE9ValueIterINS0_4util14OnMaskIteratorINS5_8NodeMaskILj3EEEEEKS3_KdNS3_7ValueOnEEE", !1001, i64 0, !47, i64 24}
!1003 = !{!1002, !47, i64 24}
!1004 = distinct !{!1004, !370}
!1005 = !{!"p1 _ZTSN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoE", !46, i64 0}
!1006 = !{!1005, !1005, i64 0}
!1007 = !{!"_ZTSN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoE", !94, i64 0, !94, i64 8, !429, i64 16, !432, i64 32}
!1008 = !{!1007, !94, i64 8}
!1009 = !{!1007, !94, i64 0}
!1010 = distinct !{!1010, !286}
!1011 = distinct !{!1011, !286}
!1012 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1013 = distinct !{null, null, null, null}
!1014 = distinct !{!1014, !286, !287}
!1015 = distinct !{!1015, i1 true, !"_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_"}
!1016 = distinct !{!1016, !1015, !"_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_: argument 0"}
!1017 = distinct !{!1017, i1 true, !"_ZNK7openvdb5v13_04math9Transform7baseMapEv"}
!1018 = distinct !{!1018, !1017, !"_ZNK7openvdb5v13_04math9Transform7baseMapEv: argument 0"}
!1019 = distinct !{!1019, i1 true, !"_ZNK7openvdb5v13_04math3RayIdE15applyInverseMapINS1_7MapBaseEEES3_RKT_"}
!1020 = distinct !{!1020, !1019, !"_ZNK7openvdb5v13_04math3RayIdE15applyInverseMapINS1_7MapBaseEEES3_RKT_: argument 0"}
!1021 = distinct !{!1021, i1 true, !"_ZNK7openvdb5v13_04math3RayIdEclEd"}
!1022 = distinct !{!1022, !1021, !"_ZNK7openvdb5v13_04math3RayIdEclEd: argument 0"}
!1023 = distinct !{!1023, i1 true, !"_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE"}
!1024 = distinct !{!1024, !1023, !"_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE: argument 0"}
!1025 = distinct !{!1025, i1 true, !"_ZNK7openvdb5v13_04math9Transform7baseMapEv"}
!1026 = distinct !{!1026, !1025, !"_ZNK7openvdb5v13_04math9Transform7baseMapEv: argument 0"}
!1027 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1028 = distinct !{!1028, i1 true, !"_ZNK7openvdb5v13_08GridBase12indexToWorldERKNS0_4math4Vec3IdEE"}
!1029 = distinct !{!1029, !1028, !"_ZNK7openvdb5v13_08GridBase12indexToWorldERKNS0_4math4Vec3IdEE: argument 0"}
!1030 = distinct !{!1030, i1 true, !"_ZNK7openvdb5v13_04math9Transform12indexToWorldERKNS1_4Vec3IdEE"}
!1031 = distinct !{!1031, !1030, !"_ZNK7openvdb5v13_04math9Transform12indexToWorldERKNS1_4Vec3IdEE: argument 0"}
!1032 = distinct !{null, null, null}
!1033 = distinct !{!1033, !286}
!1034 = distinct !{!1034, i1 true, !"_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_"}
!1035 = distinct !{!1035, !1034, !"_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_: argument 0"}
!1036 = distinct !{!1036, i1 true, !"_ZNK7openvdb5v13_04math9Transform7baseMapEv"}
!1037 = distinct !{!1037, !1036, !"_ZNK7openvdb5v13_04math9Transform7baseMapEv: argument 0"}
!1038 = distinct !{!1038, i1 true, !"_ZNK7openvdb5v13_04math3RayIdE15applyInverseMapINS1_7MapBaseEEES3_RKT_"}
!1039 = distinct !{!1039, !1038, !"_ZNK7openvdb5v13_04math3RayIdE15applyInverseMapINS1_7MapBaseEEES3_RKT_: argument 0"}
!1040 = distinct !{!1040, i1 true, !"_ZNK7openvdb5v13_04math3RayIdEclEd"}
!1041 = distinct !{!1041, !1040, !"_ZNK7openvdb5v13_04math3RayIdEclEd: argument 0"}
!1042 = distinct !{!1042, !370}
!1043 = distinct !{!1043, !370}
!1044 = distinct !{!1044, !370}
!1045 = distinct !{!1045, !370}
!1046 = distinct !{!1046, !370}
!1047 = distinct !{!1047, !370}
!1048 = distinct !{!1048, !370}
!1049 = distinct !{!1049, !370}
!1050 = distinct !{!1050, !370}
!1051 = distinct !{!1051, !370}
!1052 = distinct !{!1052, !370}
!1053 = distinct !{!1053, !370}
!1054 = distinct !{!1054, !370}
!1055 = distinct !{!1055, !370}
!1056 = distinct !{!1056, !370}
!1057 = distinct !{!1057, !370}
!1058 = distinct !{!1058, !370}
!1059 = distinct !{!1059, !370}
!1060 = distinct !{!1060, !370}
!1061 = distinct !{!1061, !370}
!1062 = distinct !{!1062, !370}
!1063 = distinct !{!1063, !370}
!1064 = distinct !{!1064, !370}
!1065 = distinct !{!1065, !370}
!1066 = distinct !{!1066, i1 true, !"_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE"}
!1067 = distinct !{!1067, !1066, !"_ZNK7openvdb5v13_04math10BoxStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE8gradientERKNS1_4Vec3IdEE: argument 0"}
!1068 = distinct !{!1068, i1 true, !"_ZNK7openvdb5v13_04math9Transform7baseMapEv"}
!1069 = distinct !{!1069, !1068, !"_ZNK7openvdb5v13_04math9Transform7baseMapEv: argument 0"}
!1070 = distinct !{!1070, i1 true, !"_ZNK7openvdb5v13_08GridBase12indexToWorldERKNS0_4math4Vec3IdEE"}
!1071 = distinct !{!1071, !1070, !"_ZNK7openvdb5v13_08GridBase12indexToWorldERKNS0_4math4Vec3IdEE: argument 0"}
!1072 = distinct !{!1072, i1 true, !"_ZNK7openvdb5v13_04math9Transform12indexToWorldERKNS1_4Vec3IdEE"}
!1073 = distinct !{!1073, !1072, !"_ZNK7openvdb5v13_04math9Transform12indexToWorldERKNS1_4Vec3IdEE: argument 0"}
!1074 = distinct !{!1074, !286}
!1075 = !{!1016}
!1076 = !{!1018}
!1077 = !{!1018, !1016}
!1078 = !{!1020, !1016}
!1079 = !{!1022}
!1080 = !{!1024}
!1081 = !{!1026}
!1082 = !{!1026, !1024}
!1083 = !{!1029}
!1084 = !{!1031, !1029}
!1085 = !{!1035}
!1086 = !{!1037, !1035}
!1087 = !{!1039, !1035}
!1088 = !{!1041}
!1089 = !{!1067}
!1090 = !{!1069}
!1091 = !{!1069, !1067}
!1092 = !{!1071}
!1093 = !{!1073, !1071}
!1094 = distinct !{ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED2Ev, ptr @_ZN7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEED2Ev, null, null}
!1095 = !{ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED2Ev}
!1096 = !{ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEED2Ev, ptr @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev}
!1097 = distinct !{null, null}
!1098 = distinct !{!1098, !286}
!1099 = distinct !{null}
!1100 = distinct !{!1100, !286}
!1101 = distinct !{null}
!1102 = distinct !{null}
!1103 = distinct !{null, null}
!1104 = distinct !{!1104, i1 true, !"_ZNK7openvdb5v13_04math3RayIdEclEd"}
!1105 = distinct !{!1105, !1104, !"_ZNK7openvdb5v13_04math3RayIdEclEd: argument 0"}
!1106 = distinct !{!1106, !286}
!1107 = !{!1105}
!1108 = distinct !{!1108, i1 true, !"_ZNK7openvdb5v13_04math9Transform7baseMapEv"}
!1109 = distinct !{!1109, !1108, !"_ZNK7openvdb5v13_04math9Transform7baseMapEv: argument 0"}
!1110 = distinct !{!1110, i1 true, !"_ZNK7openvdb5v13_04math3RayIdE15applyInverseMapINS1_7MapBaseEEES3_RKT_"}
!1111 = distinct !{!1111, !1110, !"_ZNK7openvdb5v13_04math3RayIdE15applyInverseMapINS1_7MapBaseEEES3_RKT_: argument 0"}
!1112 = distinct !{!1112, i1 true, !"_ZN7openvdb5v13_04mathdvIidEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEES5_RKNS3_IS6_EE"}
!1113 = distinct !{!1113, !1112, !"_ZN7openvdb5v13_04mathdvIidEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEES5_RKNS3_IS6_EE: argument 0"}
!1114 = !{!1109}
!1115 = !{!1111}
!1116 = !{!1113, !1111}
!1117 = distinct !{!1117, i1 true, !"_ZNK7openvdb5v13_04math3RayIdEclEd"}
!1118 = distinct !{!1118, !1117, !"_ZNK7openvdb5v13_04math3RayIdEclEd: argument 0"}
!1119 = distinct !{!1119, !286}
!1120 = !{!1118}
!1121 = distinct !{!1121, i1 true, !"_ZNK7openvdb5v13_04math3RayIdEclEd"}
!1122 = distinct !{!1122, !1121, !"_ZNK7openvdb5v13_04math3RayIdEclEd: argument 0"}
!1123 = distinct !{!1123, !286}
!1124 = !{!1122}
!1125 = distinct !{!1125, i1 true, !"_ZNK7openvdb5v13_04math3RayIdEclEd"}
!1126 = distinct !{!1126, !1125, !"_ZNK7openvdb5v13_04math3RayIdEclEd: argument 0"}
!1127 = distinct !{!1127, !286}
!1128 = !{!1126}
!1129 = distinct !{!1129, !370}
!1130 = distinct !{!1130, i1 true, !"_ZNK7openvdb5v13_04math3RayIdEclEd"}
!1131 = distinct !{!1131, !1130, !"_ZNK7openvdb5v13_04math3RayIdEclEd: argument 0"}
!1132 = !{!1131}
!1133 = distinct !{!1133, !370}
!1134 = distinct !{!1134, !370}
!1135 = !{!"_ZTSNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE13_Rb_tree_implISJ_Lb1EEE", !475, i64 0, !392, i64 8}
!1136 = !{!"_ZTSSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE", !1135, i64 0}
!1137 = !{!"_ZTSSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE", !1136, i64 0}
!1138 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEE", !1137, i64 0, !50, i64 48, !79, i64 56, !42, i64 68}
!1139 = !{!1138, !50, i64 48}
!1140 = !{!480, !50, i64 0}
!1141 = distinct !{!1141, i1 true, !"_ZN7openvdb5v13_04mathdvIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS6_EES5_"}
!1142 = distinct !{!1142, !1141, !"_ZN7openvdb5v13_04mathdvIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS6_EES5_: argument 0"}
!1143 = !{!1142}
!1144 = distinct !{ptr @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev, null, null}
!1145 = distinct !{ptr @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev, ptr @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev, null, null}
!1146 = distinct !{ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev, ptr @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev, ptr @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev, null, null}
!1147 = !{ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev}
!1148 = !{ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev, ptr @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev}
!1149 = distinct !{null, null, null}
!1150 = distinct !{null, null, null, null}
!1151 = distinct !{null, null}
!1152 = distinct !{!1152, !286}
!1153 = distinct !{null}
!1154 = distinct !{!1154, !286}
!1155 = distinct !{!1155, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1156 = distinct !{!1156, !1155, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1157 = distinct !{!1157, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1158 = distinct !{!1158, !1157, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1159 = !{!1156}
!1160 = !{!1158}
!1161 = !{!1158, !1156}
!1162 = distinct !{!1162, i1 true, !"_ZSt19__relocate_object_aIN7openvdb5v13_04math3RayIdE8TimeSpanES5_SaIS5_EEvPT_PT0_RT1_"}
!1163 = distinct !{!1163, !1162, !"_ZSt19__relocate_object_aIN7openvdb5v13_04math3RayIdE8TimeSpanES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1164 = distinct !{!1164, !1162, !"_ZSt19__relocate_object_aIN7openvdb5v13_04math3RayIdE8TimeSpanES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1165 = !{!1164, !1163}
!1166 = distinct !{!1166, i1 true, !"_ZSt19__relocate_object_aIN7openvdb5v13_04math3RayIdE8TimeSpanES5_SaIS5_EEvPT_PT0_RT1_"}
!1167 = distinct !{!1167, !1166, !"_ZSt19__relocate_object_aIN7openvdb5v13_04math3RayIdE8TimeSpanES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1168 = distinct !{!1168, !1166, !"_ZSt19__relocate_object_aIN7openvdb5v13_04math3RayIdE8TimeSpanES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1169 = distinct !{!1169, !286}
!1170 = !{!1168, !1167}
!1171 = distinct !{!1171, i1 true, !"_ZSt19__relocate_object_aIN7openvdb5v13_04math3RayIdE8TimeSpanES5_SaIS5_EEvPT_PT0_RT1_"}
!1172 = distinct !{!1172, !1171, !"_ZSt19__relocate_object_aIN7openvdb5v13_04math3RayIdE8TimeSpanES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1173 = distinct !{!1173, !1171, !"_ZSt19__relocate_object_aIN7openvdb5v13_04math3RayIdE8TimeSpanES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1174 = distinct !{!1174, !286}
!1175 = !{!1173, !1172}
!1176 = distinct !{!1176, i1 true, !"_ZSt19__relocate_object_aIN7openvdb5v13_04math3RayIdE8TimeSpanES5_SaIS5_EEvPT_PT0_RT1_"}
!1177 = distinct !{!1177, !1176, !"_ZSt19__relocate_object_aIN7openvdb5v13_04math3RayIdE8TimeSpanES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1178 = distinct !{!1178, !1176, !"_ZSt19__relocate_object_aIN7openvdb5v13_04math3RayIdE8TimeSpanES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1179 = distinct !{!1179, !286}
!1180 = !{!1178, !1177}
!1181 = !{!501, !45, i64 9}
!1182 = !{!"_ZTSSt4pairIKN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS5_12InternalNodeINS7_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEE", !79, i64 0, !501, i64 16}
!1183 = !{!1182, !176, i64 16}
!1184 = distinct !{ptr @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev, null, null}
!1185 = distinct !{ptr @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev, ptr @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev, null, null}
!1186 = distinct !{ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev, ptr @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev, ptr @_ZNSt10unique_ptrIN7openvdb5v13_05tools20VolumeRayIntersectorINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS1_4math3RayIdEEEESt14default_deleteISJ_EED2Ev, null, null}
!1187 = !{ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev}
!1188 = !{ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEED2Ev, ptr @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev}
!1189 = distinct !{null, null, null}
!1190 = distinct !{null, null, null, null}
!1191 = distinct !{null, null}
!1192 = distinct !{!1192, !286}
!1193 = distinct !{null}
!1194 = distinct !{!1194, !286}
end_hunk_1

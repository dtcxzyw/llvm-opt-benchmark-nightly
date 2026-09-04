Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VolumeToMesh?download=true
inline.NumInlined: 48469
inline.NumDeleted: 15370
loop-unroll.NumCompletelyUnrolled: 216
loop-unroll.NumRuntimeUnrolled: 267
loop-unroll.NumUnrolled: 735
begin_hunk_0_@_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordE:bb.a
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !381  ; 2 uses
  %i.o = and i32 %i.n, -8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !381
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2223
  %i.u = and i32 %i.b, 7
  %i.v = shl i32 %i.h, 3
  %i.w = and i32 %i.v, 56
  %i.x = and i32 %i.n, 7
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = zext nneg i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !463
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %i.ag = icmp ne i64 %i.af, 0
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit
  %i.ah = and i32 %i.b, -128                      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !381
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !381
  %i.an = and i32 %i.am, -128
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !381
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit: ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !381
  %i.at = and i32 %i.as, -128
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !381
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.e, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2123
  %i.az = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIjLj3EEELj4EE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit
  %i.ba = and i32 %i.b, -4096
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !381
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit

bb.f:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !381 ; 3 uses
  %i.bg = and i32 %i.bf, -4096
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !381
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm2EEEEbSL_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm2EEEEbSL_.exit: ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !381 ; 3 uses
  %i.bm = and i32 %i.bl, -4096
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !381
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.g, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit

bb.g:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm2EEEEbSL_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2112 ; 3 uses
  %i.bs = shl i32 %i.b, 3
  %i.bt = and i32 %i.bs, 31744
  %i.bu = lshr i32 %i.bf, 2
  %i.bv = and i32 %i.bu, 992
  %i.bw = or disjoint i32 %i.bv, %i.bt            ; 2 uses
  %i.bx = lshr i32 %i.bl, 7
  %i.by = and i32 %i.bx, 31
  %i.bz = or disjoint i32 %i.bw, %i.by            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 262144
  %i.cb = lshr i32 %i.bw, 6
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !463
  %i.cf = and i32 %i.bz, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl nuw i64 1, %i.cg                    ; 2 uses
  %i.ci = and i64 %i.ch, %i.ce
  %.not.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 266240
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cc
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !463
  %i.cm = and i64 %i.cl, %i.ch
  %i.cn = icmp ne i64 %i.cm, 0
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

bb.i:                                             ; preds = %bb.g
  %i.co = zext nneg i32 %i.bz to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !403
  %i.cr = and i32 %i.bf, -128
  %i.cs = and i32 %i.bl, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.cr to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ah to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ai, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.cs, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !403
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !2123
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !403
  %i.cv = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIjLj3EEELj4EE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.cu, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread, %bb.f, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm2EEEEbSL_.exit
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !2096
  %i.cx = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(68) %i.cw, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit: ; preds = %bb.e, %bb.i, %bb.h, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit, %bb.c
  %.0.i = phi i1 [ %i.ag, %bb.c ], [ %i.az, %bb.e ], [ %i.cx, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit ], [ %i.cn, %bb.h ], [ %i.cv, %bb.i ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools23volume_to_mesh_internal13isNonManifoldINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKT_RKNS0_4math5CoordENSJ_9ValueTypeEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !821
  %i.a = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !381
  %i.c = load i32, ptr %4, align 4, !tbaa !381
  %i.d = add nsw i32 %i.c, %3
  store i32 %i.d, ptr %4, align 4, !tbaa !381
  %i.e = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.f = load i32, ptr %i.e, align 4, !tbaa !381
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 24 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !381
  %i.i = add nsw i32 %i.h, %3
  store i32 %i.i, ptr %i.g, align 4, !tbaa !381
  %i.j = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.k = load i32, ptr %i.j, align 4, !tbaa !381
  %i.l = load i32, ptr %1, align 4, !tbaa !381
  store i32 %i.l, ptr %4, align 4, !tbaa !381
  %i.m = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.n = load i32, ptr %i.m, align 4, !tbaa !381
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 21 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !381
  %i.q = add nsw i32 %i.p, %3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !381
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !381
  store i32 %i.s, ptr %i.g, align 4, !tbaa !381
  %i.t = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.u = load i32, ptr %i.t, align 4, !tbaa !381
  %i.v = load i32, ptr %4, align 4, !tbaa !381
  %i.w = add nsw i32 %i.v, %3
  store i32 %i.w, ptr %4, align 4, !tbaa !381
  %i.x = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.y = load i32, ptr %i.x, align 4, !tbaa !381
  %i.z = load i32, ptr %i.g, align 4, !tbaa !381
  %i.aa = add nsw i32 %i.z, %3
  store i32 %i.aa, ptr %i.g, align 4, !tbaa !381
  %i.ab = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !381
  %i.ad = load i32, ptr %1, align 4, !tbaa !381
  store i32 %i.ad, ptr %4, align 4, !tbaa !381
  %i.ae = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !381
  %i.ag = icmp slt i32 %i.af, %2                  ; 8 uses
  %i.ah = icmp slt i32 %i.ac, %2                  ; 8 uses
  %i.ai = icmp slt i32 %i.y, %2                   ; 8 uses
  %i.aj = icmp slt i32 %i.u, %2                   ; 8 uses
  %i.ak = icmp slt i32 %i.n, %2                   ; 8 uses
  %i.al = icmp slt i32 %i.k, %2                   ; 8 uses
  %i.am = icmp slt i32 %i.f, %2                   ; 8 uses
  %i.an = icmp slt i32 %i.b, %2                   ; 8 uses
  %spec.select = zext i1 %i.an to i64             ; 2 uses
  %5 = or disjoint i64 %spec.select, 2
  %.1 = select i1 %i.am, i64 %5, i64 %spec.select ; 2 uses
  %6 = or disjoint i64 %.1, 4
  %.2 = select i1 %i.al, i64 %6, i64 %.1          ; 2 uses
  %7 = or disjoint i64 %.2, 8
  %.3 = select i1 %i.ak, i64 %7, i64 %.2          ; 2 uses
  %8 = or i64 %.3, 16
  %.4 = select i1 %i.aj, i64 %8, i64 %.3          ; 2 uses
  %9 = or i64 %.4, 32
  %.5 = select i1 %i.ai, i64 %9, i64 %.4          ; 2 uses
  %10 = or i64 %.5, 64
  %.6 = select i1 %i.ah, i64 %10, i64 %.5         ; 2 uses
  %11 = or i64 %.6, 128
  %.7 = select i1 %i.ag, i64 %11, i64 %.6
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN7openvdb5v13_05tools23volume_to_mesh_internalL10sAdaptableE, i64 %.7
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !488, !range !494, !noundef !495
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.ar = ashr i32 %3, 1                          ; 3 uses
  %i.as = load i32, ptr %1, align 4, !tbaa !381   ; 7 uses
  %i.at = add nsw i32 %i.as, %i.ar                ; 9 uses
  %i.au = add nsw i32 %i.as, %3                   ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !381 ; 7 uses
  %i.ax = add nsw i32 %i.aw, %i.ar                ; 9 uses
  %i.ay = add nsw i32 %i.aw, %3                   ; 5 uses
  %i.az = load i32, ptr %i.r, align 4, !tbaa !381 ; 7 uses
  %i.ba = add nsw i32 %i.az, %i.ar                ; 9 uses
  %i.bb = add nsw i32 %i.az, %3                   ; 5 uses
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.o, align 4, !tbaa !381
  store i32 %i.az, ptr %i.g, align 4, !tbaa !381
  %i.bc = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !381
  %i.be = icmp slt i32 %i.bd, %2                  ; 2 uses
  %i.bf = xor i1 %i.an, %i.be
  %i.bg = xor i1 %i.am, %i.be
  %or.cond = and i1 %i.bf, %i.bg
  br i1 %or.cond, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.o, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !381
  %i.bh = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !381
  %i.bj = icmp slt i32 %i.bi, %2                  ; 2 uses
  %i.bk = xor i1 %i.am, %i.bj
  %i.bl = xor i1 %i.al, %i.bj
  %or.cond278 = and i1 %i.bk, %i.bl
  br i1 %or.cond278, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.o, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !381
  %i.bm = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !381
  %i.bo = icmp slt i32 %i.bn, %2                  ; 2 uses
  %i.bp = xor i1 %i.al, %i.bo
  %i.bq = xor i1 %i.ak, %i.bo
  %or.cond279 = and i1 %i.bp, %i.bq
  br i1 %or.cond279, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.o, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !381
  %i.br = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !381
  %i.bt = icmp slt i32 %i.bs, %2                  ; 2 uses
  %i.bu = xor i1 %i.an, %i.bt
  %i.bv = xor i1 %i.ak, %i.bt
  %or.cond280 = and i1 %i.bu, %i.bv
  br i1 %or.cond280, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.o, align 4, !tbaa !381
  store i32 %i.az, ptr %i.g, align 4, !tbaa !381
  %i.bw = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !381
  %i.by = icmp slt i32 %i.bx, %2                  ; 2 uses
  %i.bz = xor i1 %i.aj, %i.by
  %i.ca = xor i1 %i.ai, %i.by
  %or.cond281 = and i1 %i.bz, %i.ca
  br i1 %or.cond281, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.o, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !381
  %i.cb = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !381
  %i.cd = icmp slt i32 %i.cc, %2                  ; 2 uses
  %i.ce = xor i1 %i.ai, %i.cd
  %i.cf = xor i1 %i.ah, %i.cd
  %or.cond282 = and i1 %i.ce, %i.cf
  br i1 %or.cond282, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.o, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !381
  %i.cg = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !381
  %i.ci = icmp slt i32 %i.ch, %2                  ; 2 uses
  %i.cj = xor i1 %i.ah, %i.ci
  %i.ck = xor i1 %i.ag, %i.ci
  %or.cond283 = and i1 %i.cj, %i.ck
  br i1 %or.cond283, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.o, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !381
  %i.cl = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !381
  %i.cn = icmp slt i32 %i.cm, %2                  ; 2 uses
  %i.co = xor i1 %i.ag, %i.cn
  %i.cp = xor i1 %i.aj, %i.cn
  %or.cond284 = and i1 %i.co, %i.cp
  br i1 %or.cond284, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.az, ptr %i.g, align 4, !tbaa !381
  %i.cq = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !381
  %i.cs = icmp slt i32 %i.cr, %2                  ; 2 uses
  %i.ct = xor i1 %i.an, %i.cs
  %i.cu = xor i1 %i.aj, %i.cs
  %or.cond285 = and i1 %i.ct, %i.cu
  br i1 %or.cond285, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.az, ptr %i.g, align 4, !tbaa !381
  %i.cv = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !381
  %i.cx = icmp slt i32 %i.cw, %2                  ; 2 uses
  %i.cy = xor i1 %i.am, %i.cx
  %i.cz = xor i1 %i.ai, %i.cx
  %or.cond286 = and i1 %i.cy, %i.cz
  br i1 %or.cond286, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !381
  %i.da = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.db = load i32, ptr %i.da, align 4, !tbaa !381
  %i.dc = icmp slt i32 %i.db, %2                  ; 2 uses
  %i.dd = xor i1 %i.al, %i.dc
  %i.de = xor i1 %i.ah, %i.dc
  %or.cond287 = and i1 %i.dd, %i.de
  br i1 %or.cond287, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !381
  %i.df = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !381
  %i.dh = icmp slt i32 %i.dg, %2                  ; 2 uses
  %i.di = xor i1 %i.ak, %i.dh
  %i.dj = xor i1 %i.ag, %i.dh
  %or.cond288 = and i1 %i.di, %i.dj
  br i1 %or.cond288, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.az, ptr %i.g, align 4, !tbaa !381
  %i.dk = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !381
  %i.dm = icmp slt i32 %i.dl, %2                  ; 4 uses
  %i.dn = xor i1 %i.an, %i.dm
  %i.do = xor i1 %i.am, %i.dm
  %or.cond289 = and i1 %i.dn, %i.do
  %i.dp = xor i1 %i.aj, %i.dm
  %or.cond290 = and i1 %i.dp, %or.cond289
  %i.dq = xor i1 %i.ai, %i.dm
  %or.cond291 = and i1 %i.dq, %or.cond290
  br i1 %or.cond291, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !381
  %i.dr = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !381
  %i.dt = icmp slt i32 %i.ds, %2                  ; 4 uses
  %i.du = xor i1 %i.am, %i.dt
  %i.dv = xor i1 %i.al, %i.dt
  %or.cond292 = and i1 %i.du, %i.dv
  %i.dw = xor i1 %i.ai, %i.dt
  %or.cond293 = and i1 %i.dw, %or.cond292
  %i.dx = xor i1 %i.ah, %i.dt
  %or.cond294 = and i1 %i.dx, %or.cond293
  br i1 %or.cond294, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !381
  %i.dy = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !381
  %i.ea = icmp slt i32 %i.dz, %2                  ; 4 uses
  %i.eb = xor i1 %i.al, %i.ea
  %i.ec = xor i1 %i.ak, %i.ea
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal17MergeVoxelRegionsINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %.body273

bb.hb:                                            ; preds = %bb.ha
  %i.aev = landingpad { ptr, i32 }
          catch ptr null
  %i.aew = extractvalue { ptr, i32 } %i.aev, 0
  call void @__clang_call_terminate(ptr %i.aew) #29, !inline_history !2993
  unreachable

.body273:                                         ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i419, %_ZNSt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEESt14default_deleteIS7_EED2Ev.exit417, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %.pn208.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn208.pn.pn, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i419 ], [ %.pn208.pn.pn, %_ZNSt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEESt14default_deleteIS7_EED2Ev.exit417 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %15, align 8, !tbaa !383
  %i.aex = load ptr, ptr %i.cq, align 8, !tbaa !3156 ; 2 uses
  %.not.i421 = icmp eq ptr %i.aex, null
  br i1 %.not.i421, label %bb.he, label %bb.hc

bb.hc:                                            ; preds = %.body273
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store ptr %15, ptr %i.d, align 8, !tbaa !3158
  %i.aez = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.aey, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i422 unwind label %bb.hd, !inline_history !3159 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i422: ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.afa = landingpad { ptr, i32 }
          catch ptr null
  %i.afb = extractvalue { ptr, i32 } %i.afa, 0
  call void @__clang_call_terminate(ptr %i.afb) #29, !inline_history !3159
  unreachable

bb.he:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %.body273, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i422
  %.pn208.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.da, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn208.pn.pn.pn.pn, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i422 ], [ %.pn208.pn.pn.pn.pn, %.body273 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %.not.i424 = icmp eq ptr %.sroa.0483.0, null
  br i1 %.not.i424, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit428, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %.sroa.0483.0, align 8, !tbaa !383
  %i.afc = getelementptr inbounds nuw i8, ptr %.sroa.0483.0, i64 8
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !2951 ; 2 uses
  %.not.i.i.i425 = icmp eq ptr %i.afd, null
  br i1 %.not.i.i.i425, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i427, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %.sroa.0483.0, ptr %i.c, align 8, !tbaa !2952
  %i.aff = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.afe, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i426 unwind label %bb.hh, !inline_history !2958 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i426: ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i427

bb.hh:                                            ; preds = %bb.hg
  %i.afg = landingpad { ptr, i32 }
          catch ptr null
  %i.afh = extractvalue { ptr, i32 } %i.afg, 0
  call void @__clang_call_terminate(ptr %i.afh) #29, !inline_history !2958
  unreachable

_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i427: ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i426, %bb.hf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0483.0, i64 noundef 96) #28
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit428

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit428: ; preds = %bb.aj, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i427, %bb.he
  %.pn208.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn, %bb.he ], [ %.pn208.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i427 ], [ %i.co, %bb.aj ], [ %i.cd, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ] ; 2 uses
  %.not.i429 = icmp eq ptr %.sroa.0488.0, null
  br i1 %.not.i429, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit433, label %bb.hi

bb.hi:                                            ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit428
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %.sroa.0488.0, align 8, !tbaa !383
  %i.afi = getelementptr inbounds nuw i8, ptr %.sroa.0488.0, i64 8
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !2825 ; 2 uses
  %.not.i.i.i430 = icmp eq ptr %i.afj, null
  br i1 %.not.i.i.i430, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i432, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %.sroa.0488.0, ptr %i.b, align 8, !tbaa !2826
  %i.afl = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.afk, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i431 unwind label %bb.hk, !inline_history !2830 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i431: ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i432

bb.hk:                                            ; preds = %bb.hj
  %i.afm = landingpad { ptr, i32 }
          catch ptr null
  %i.afn = extractvalue { ptr, i32 } %i.afm, 0
  call void @__clang_call_terminate(ptr %i.afn) #29, !inline_history !2830
  unreachable

_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i432: ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i431, %bb.hi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0488.0, i64 noundef 88) #28
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit433

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit433: ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %bb.x, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i432, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit428
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit428 ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i432 ], [ %i.be, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %i.bo, %bb.x ] ; 3 uses
  %.not.i434 = icmp eq ptr %.sroa.0493.0, null
  br i1 %.not.i434, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit438, label %bb.hl

bb.hl:                                            ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit433
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %.sroa.0493.0, align 8, !tbaa !383
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.0493.0, i64 8
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !3002 ; 2 uses
  %.not.i.i.i435 = icmp eq ptr %i.afp, null
  br i1 %.not.i.i.i435, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit438.sink.split, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %.sroa.0493.0, ptr %i.a, align 8, !tbaa !3004
  %i.afr = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.afq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i436 unwind label %bb.hn, !inline_history !3013 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i436: ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit438.sink.split

bb.hn:                                            ; preds = %bb.hm
  %i.afs = landingpad { ptr, i32 }
          catch ptr null
  %i.aft = extractvalue { ptr, i32 } %i.afs, 0
  call void @__clang_call_terminate(ptr %i.aft) #29, !inline_history !3013
  unreachable

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit438.sink.split: ; preds = %bb.hl, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i436, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %.sink = phi ptr [ %i.t, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.sroa.0493.0, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i436 ], [ %.sroa.0493.0, %bb.hl ]
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn522.ph = phi { ptr, i32 } [ %i.af, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i436 ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hl ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 96) #28
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit438

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit438: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit438.sink.split, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit433
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn522 = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit433 ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn522.ph, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit438.sink.split ]
  resume { ptr, i32 } %.pn208.pn.pn.pn.pn.pn.pn.pn.pn522
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools23volume_to_mesh_internal13isNonManifoldINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKT_RKNS0_4math5CoordENSJ_9ValueTypeEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !821
  %i.a = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !463
  %i.c = load i32, ptr %4, align 4, !tbaa !381
  %i.d = add nsw i32 %i.c, %3
  store i32 %i.d, ptr %4, align 4, !tbaa !381
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.f = load i64, ptr %i.e, align 8, !tbaa !463
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 24 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !381
  %i.i = add nsw i32 %i.h, %3
  store i32 %i.i, ptr %i.g, align 4, !tbaa !381
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.k = load i64, ptr %i.j, align 8, !tbaa !463
  %i.l = load i32, ptr %1, align 4, !tbaa !381
  store i32 %i.l, ptr %4, align 4, !tbaa !381
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.n = load i64, ptr %i.m, align 8, !tbaa !463
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 21 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !381
  %i.q = add nsw i32 %i.p, %3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !381
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !381
  store i32 %i.s, ptr %i.g, align 4, !tbaa !381
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.u = load i64, ptr %i.t, align 8, !tbaa !463
  %i.v = load i32, ptr %4, align 4, !tbaa !381
  %i.w = add nsw i32 %i.v, %3
  store i32 %i.w, ptr %4, align 4, !tbaa !381
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.y = load i64, ptr %i.x, align 8, !tbaa !463
  %i.z = load i32, ptr %i.g, align 4, !tbaa !381
  %i.aa = add nsw i32 %i.z, %3
  store i32 %i.aa, ptr %i.g, align 4, !tbaa !381
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !463
  %i.ad = load i32, ptr %1, align 4, !tbaa !381
  store i32 %i.ad, ptr %4, align 4, !tbaa !381
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !463
  %i.ag = icmp slt i64 %i.af, %2                  ; 8 uses
  %i.ah = icmp slt i64 %i.ac, %2                  ; 8 uses
  %i.ai = icmp slt i64 %i.y, %2                   ; 8 uses
  %i.aj = icmp slt i64 %i.u, %2                   ; 8 uses
  %i.ak = icmp slt i64 %i.n, %2                   ; 8 uses
  %i.al = icmp slt i64 %i.k, %2                   ; 8 uses
  %i.am = icmp slt i64 %i.f, %2                   ; 8 uses
  %i.an = icmp slt i64 %i.b, %2                   ; 8 uses
  %spec.select = zext i1 %i.an to i64             ; 2 uses
  %5 = or disjoint i64 %spec.select, 2
  %.1 = select i1 %i.am, i64 %5, i64 %spec.select ; 2 uses
  %6 = or disjoint i64 %.1, 4
  %.2 = select i1 %i.al, i64 %6, i64 %.1          ; 2 uses
  %7 = or disjoint i64 %.2, 8
  %.3 = select i1 %i.ak, i64 %7, i64 %.2          ; 2 uses
  %8 = or i64 %.3, 16
  %.4 = select i1 %i.aj, i64 %8, i64 %.3          ; 2 uses
  %9 = or i64 %.4, 32
  %.5 = select i1 %i.ai, i64 %9, i64 %.4          ; 2 uses
  %10 = or i64 %.5, 64
  %.6 = select i1 %i.ah, i64 %10, i64 %.5         ; 2 uses
  %11 = or i64 %.6, 128
  %.7 = select i1 %i.ag, i64 %11, i64 %.6
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN7openvdb5v13_05tools23volume_to_mesh_internalL10sAdaptableE, i64 %.7
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !488, !range !494, !noundef !495
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.ar = ashr i32 %3, 1                          ; 3 uses
  %i.as = load i32, ptr %1, align 4, !tbaa !381   ; 7 uses
  %i.at = add nsw i32 %i.as, %i.ar                ; 9 uses
  %i.au = add nsw i32 %i.as, %3                   ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !381 ; 7 uses
  %i.ax = add nsw i32 %i.aw, %i.ar                ; 9 uses
  %i.ay = add nsw i32 %i.aw, %3                   ; 5 uses
  %i.az = load i32, ptr %i.r, align 4, !tbaa !381 ; 7 uses
  %i.ba = add nsw i32 %i.az, %i.ar                ; 9 uses
  %i.bb = add nsw i32 %i.az, %3                   ; 5 uses
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.o, align 4, !tbaa !381
  store i32 %i.az, ptr %i.g, align 4, !tbaa !381
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !463
  %i.be = icmp slt i64 %i.bd, %2                  ; 2 uses
  %i.bf = xor i1 %i.an, %i.be
  %i.bg = xor i1 %i.am, %i.be
  %or.cond = and i1 %i.bf, %i.bg
  br i1 %or.cond, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.o, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !381
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !463
  %i.bj = icmp slt i64 %i.bi, %2                  ; 2 uses
  %i.bk = xor i1 %i.am, %i.bj
  %i.bl = xor i1 %i.al, %i.bj
  %or.cond278 = and i1 %i.bk, %i.bl
  br i1 %or.cond278, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.o, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !381
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !463
  %i.bo = icmp slt i64 %i.bn, %2                  ; 2 uses
  %i.bp = xor i1 %i.al, %i.bo
  %i.bq = xor i1 %i.ak, %i.bo
  %or.cond279 = and i1 %i.bp, %i.bq
  br i1 %or.cond279, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.o, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !381
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !463
  %i.bt = icmp slt i64 %i.bs, %2                  ; 2 uses
  %i.bu = xor i1 %i.an, %i.bt
  %i.bv = xor i1 %i.ak, %i.bt
  %or.cond280 = and i1 %i.bu, %i.bv
  br i1 %or.cond280, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.o, align 4, !tbaa !381
  store i32 %i.az, ptr %i.g, align 4, !tbaa !381
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !463
  %i.by = icmp slt i64 %i.bx, %2                  ; 2 uses
  %i.bz = xor i1 %i.aj, %i.by
  %i.ca = xor i1 %i.ai, %i.by
  %or.cond281 = and i1 %i.bz, %i.ca
  br i1 %or.cond281, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.o, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !381
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !463
  %i.cd = icmp slt i64 %i.cc, %2                  ; 2 uses
  %i.ce = xor i1 %i.ai, %i.cd
  %i.cf = xor i1 %i.ah, %i.cd
  %or.cond282 = and i1 %i.ce, %i.cf
  br i1 %or.cond282, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.o, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !381
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !463
  %i.ci = icmp slt i64 %i.ch, %2                  ; 2 uses
  %i.cj = xor i1 %i.ah, %i.ci
  %i.ck = xor i1 %i.ag, %i.ci
  %or.cond283 = and i1 %i.cj, %i.ck
  br i1 %or.cond283, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.o, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !381
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !463
  %i.cn = icmp slt i64 %i.cm, %2                  ; 2 uses
  %i.co = xor i1 %i.ag, %i.cn
  %i.cp = xor i1 %i.aj, %i.cn
  %or.cond284 = and i1 %i.co, %i.cp
  br i1 %or.cond284, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.az, ptr %i.g, align 4, !tbaa !381
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !463
  %i.cs = icmp slt i64 %i.cr, %2                  ; 2 uses
  %i.ct = xor i1 %i.an, %i.cs
  %i.cu = xor i1 %i.aj, %i.cs
  %or.cond285 = and i1 %i.ct, %i.cu
  br i1 %or.cond285, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.az, ptr %i.g, align 4, !tbaa !381
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !463
  %i.cx = icmp slt i64 %i.cw, %2                  ; 2 uses
  %i.cy = xor i1 %i.am, %i.cx
  %i.cz = xor i1 %i.ai, %i.cx
  %or.cond286 = and i1 %i.cy, %i.cz
  br i1 %or.cond286, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !381
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.db = load i64, ptr %i.da, align 8, !tbaa !463
  %i.dc = icmp slt i64 %i.db, %2                  ; 2 uses
  %i.dd = xor i1 %i.al, %i.dc
  %i.de = xor i1 %i.ah, %i.dc
  %or.cond287 = and i1 %i.dd, %i.de
  br i1 %or.cond287, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !381
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !463
  %i.dh = icmp slt i64 %i.dg, %2                  ; 2 uses
  %i.di = xor i1 %i.ak, %i.dh
  %i.dj = xor i1 %i.ag, %i.dh
  %or.cond288 = and i1 %i.di, %i.dj
  br i1 %or.cond288, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.az, ptr %i.g, align 4, !tbaa !381
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !463
  %i.dm = icmp slt i64 %i.dl, %2                  ; 4 uses
  %i.dn = xor i1 %i.an, %i.dm
  %i.do = xor i1 %i.am, %i.dm
  %or.cond289 = and i1 %i.dn, %i.do
  %i.dp = xor i1 %i.aj, %i.dm
  %or.cond290 = and i1 %i.dp, %or.cond289
  %i.dq = xor i1 %i.ai, %i.dm
  %or.cond291 = and i1 %i.dq, %or.cond290
  br i1 %or.cond291, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !381
  %i.dr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !463
  %i.dt = icmp slt i64 %i.ds, %2                  ; 4 uses
  %i.du = xor i1 %i.am, %i.dt
  %i.dv = xor i1 %i.al, %i.dt
  %or.cond292 = and i1 %i.du, %i.dv
  %i.dw = xor i1 %i.ai, %i.dt
  %or.cond293 = and i1 %i.dw, %or.cond292
  %i.dx = xor i1 %i.ah, %i.dt
  %or.cond294 = and i1 %i.dx, %or.cond293
  br i1 %or.cond294, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !381
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !463
  %i.ea = icmp slt i64 %i.dz, %2                  ; 4 uses
  %i.eb = xor i1 %i.al, %i.ea
  %i.ec = xor i1 %i.ak, %i.ea
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal17MergeVoxelRegionsINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %.body280

bb.gz:                                            ; preds = %bb.gy
  %i.aei = landingpad { ptr, i32 }
          catch ptr null
  %i.aej = extractvalue { ptr, i32 } %i.aei, 0
  call void @__clang_call_terminate(ptr %i.aej) #29, !inline_history !2993
  unreachable

.body280:                                         ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i418, %_ZNSt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEESt14default_deleteIS7_EED2Ev.exit416, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %.pn212.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn212.pn.pn, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i418 ], [ %.pn212.pn.pn, %_ZNSt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEESt14default_deleteIS7_EED2Ev.exit416 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %9, align 8, !tbaa !383
  %i.aek = load ptr, ptr %i.cq, align 8, !tbaa !3002 ; 2 uses
  %.not.i420 = icmp eq ptr %i.aek, null
  br i1 %.not.i420, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %.body280
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store ptr %9, ptr %i.d, align 8, !tbaa !3004
  %i.aem = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.ael, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i421 unwind label %bb.hb, !inline_history !3013 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i421: ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.aen = landingpad { ptr, i32 }
          catch ptr null
  %i.aeo = extractvalue { ptr, i32 } %i.aen, 0
  call void @__clang_call_terminate(ptr %i.aeo) #29, !inline_history !3013
  unreachable

bb.hc:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i260, %.body280, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i421
  %.pn212.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.da, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i260 ], [ %.pn212.pn.pn.pn.pn, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i421 ], [ %.pn212.pn.pn.pn.pn, %.body280 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.not.i423 = icmp eq ptr %.sroa.0476.0, null
  br i1 %.not.i423, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit427, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %.sroa.0476.0, align 8, !tbaa !383
  %i.aep = getelementptr inbounds nuw i8, ptr %.sroa.0476.0, i64 8
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !2951 ; 2 uses
  %.not.i.i.i424 = icmp eq ptr %i.aeq, null
  br i1 %.not.i.i.i424, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i426, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %.sroa.0476.0, ptr %i.c, align 8, !tbaa !2952
  %i.aes = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.aer, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i425 unwind label %bb.hf, !inline_history !2958 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i425: ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i426

bb.hf:                                            ; preds = %bb.he
  %i.aet = landingpad { ptr, i32 }
          catch ptr null
  %i.aeu = extractvalue { ptr, i32 } %i.aet, 0
  call void @__clang_call_terminate(ptr %i.aeu) #29, !inline_history !2958
  unreachable

_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i426: ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i425, %bb.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0476.0, i64 noundef 96) #28
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit427

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit427: ; preds = %bb.aj, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i426, %bb.hc
  %.pn212.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn212.pn.pn.pn.pn.pn, %bb.hc ], [ %.pn212.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i426 ], [ %i.co, %bb.aj ], [ %i.cd, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ] ; 2 uses
  %.not.i428 = icmp eq ptr %.sroa.0481.0, null
  br i1 %.not.i428, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit432, label %bb.hg

bb.hg:                                            ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit427
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %.sroa.0481.0, align 8, !tbaa !383
  %i.aev = getelementptr inbounds nuw i8, ptr %.sroa.0481.0, i64 8
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !2825 ; 2 uses
  %.not.i.i.i429 = icmp eq ptr %i.aew, null
  br i1 %.not.i.i.i429, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i431, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %.sroa.0481.0, ptr %i.b, align 8, !tbaa !2826
  %i.aey = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.aex, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i430 unwind label %bb.hi, !inline_history !2830 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i430: ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i431

bb.hi:                                            ; preds = %bb.hh
  %i.aez = landingpad { ptr, i32 }
          catch ptr null
  %i.afa = extractvalue { ptr, i32 } %i.aez, 0
  call void @__clang_call_terminate(ptr %i.afa) #29, !inline_history !2830
  unreachable

_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i431: ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i430, %bb.hg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0481.0, i64 noundef 88) #28
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit432

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit432: ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %bb.x, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i431, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit427
  %.pn212.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn212.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit427 ], [ %.pn212.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i431 ], [ %i.be, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %i.bo, %bb.x ] ; 3 uses
  %.not.i433 = icmp eq ptr %.sroa.0486.0, null
  br i1 %.not.i433, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit437, label %bb.hj

bb.hj:                                            ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit432
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %.sroa.0486.0, align 8, !tbaa !383
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.0486.0, i64 8
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !3002 ; 2 uses
  %.not.i.i.i434 = icmp eq ptr %i.afc, null
  br i1 %.not.i.i.i434, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit437.sink.split, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %.sroa.0486.0, ptr %i.a, align 8, !tbaa !3004
  %i.afe = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.afd, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i435 unwind label %bb.hl, !inline_history !3013 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i435: ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit437.sink.split

bb.hl:                                            ; preds = %bb.hk
  %i.aff = landingpad { ptr, i32 }
          catch ptr null
  %i.afg = extractvalue { ptr, i32 } %i.aff, 0
  call void @__clang_call_terminate(ptr %i.afg) #29, !inline_history !3013
  unreachable

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit437.sink.split: ; preds = %bb.hj, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i435, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %.sink = phi ptr [ %i.t, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.sroa.0486.0, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i435 ], [ %.sroa.0486.0, %bb.hj ]
  %.pn212.pn.pn.pn.pn.pn.pn.pn.pn515.ph = phi { ptr, i32 } [ %i.af, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn212.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i435 ], [ %.pn212.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hj ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 96) #28
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit437

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit437: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit437.sink.split, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit432
  %.pn212.pn.pn.pn.pn.pn.pn.pn.pn515 = phi { ptr, i32 } [ %.pn212.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit432 ], [ %.pn212.pn.pn.pn.pn.pn.pn.pn.pn515.ph, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit437.sink.split ]
  resume { ptr, i32 } %.pn212.pn.pn.pn.pn.pn.pn.pn.pn515
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools23volume_to_mesh_internal13isNonManifoldINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKT_RKNS0_4math5CoordENSJ_9ValueTypeEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, float noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !821
  %i.a = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.b = load float, ptr %i.a, align 4, !tbaa !761
  %i.c = fcmp olt float %i.b, %2                  ; 8 uses
  %i.d = load i32, ptr %4, align 4, !tbaa !381
  %i.e = add nsw i32 %i.d, %3
  store i32 %i.e, ptr %4, align 4, !tbaa !381
  %i.f = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.g = load float, ptr %i.f, align 4, !tbaa !761
  %i.h = fcmp olt float %i.g, %2                  ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 24 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !381
  %i.k = add nsw i32 %i.j, %3
  store i32 %i.k, ptr %i.i, align 4, !tbaa !381
  %i.l = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.m = load float, ptr %i.l, align 4, !tbaa !761
  %i.n = fcmp olt float %i.m, %2                  ; 8 uses
  %i.o = load i32, ptr %1, align 4, !tbaa !381
  store i32 %i.o, ptr %4, align 4, !tbaa !381
  %i.p = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.q = load float, ptr %i.p, align 4, !tbaa !761
  %i.r = fcmp olt float %i.q, %2                  ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 21 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !381
  %i.u = add nsw i32 %i.t, %3
  store i32 %i.u, ptr %i.s, align 4, !tbaa !381
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !381
  store i32 %i.w, ptr %i.i, align 4, !tbaa !381
  %i.x = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.y = load float, ptr %i.x, align 4, !tbaa !761
  %i.z = fcmp olt float %i.y, %2                  ; 8 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !381
  %i.ab = add nsw i32 %i.aa, %3
  store i32 %i.ab, ptr %4, align 4, !tbaa !381
  %i.ac = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !761
  %i.ae = fcmp olt float %i.ad, %2                ; 8 uses
  %i.af = load i32, ptr %i.i, align 4, !tbaa !381
  %i.ag = add nsw i32 %i.af, %3
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !381
  %i.ah = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !761
  %i.aj = fcmp olt float %i.ai, %2                ; 8 uses
  %i.ak = load i32, ptr %1, align 4, !tbaa !381
  store i32 %i.ak, ptr %4, align 4, !tbaa !381
  %i.al = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.am = load float, ptr %i.al, align 4, !tbaa !761
  %i.an = fcmp olt float %i.am, %2                ; 8 uses
  %spec.select = zext i1 %i.c to i64              ; 2 uses
  %5 = or disjoint i64 %spec.select, 2
  %.1 = select i1 %i.h, i64 %5, i64 %spec.select  ; 2 uses
  %6 = or disjoint i64 %.1, 4
  %.2 = select i1 %i.n, i64 %6, i64 %.1           ; 2 uses
  %7 = or disjoint i64 %.2, 8
  %.3 = select i1 %i.r, i64 %7, i64 %.2           ; 2 uses
  %8 = or i64 %.3, 16
  %.4 = select i1 %i.z, i64 %8, i64 %.3           ; 2 uses
  %9 = or i64 %.4, 32
  %.5 = select i1 %i.ae, i64 %9, i64 %.4          ; 2 uses
  %10 = or i64 %.5, 64
  %.6 = select i1 %i.aj, i64 %10, i64 %.5         ; 2 uses
  %11 = or i64 %.6, 128
  %.7 = select i1 %i.an, i64 %11, i64 %.6
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN7openvdb5v13_05tools23volume_to_mesh_internalL10sAdaptableE, i64 %.7
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !488, !range !494, !noundef !495
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.ar = ashr i32 %3, 1                          ; 3 uses
  %i.as = load i32, ptr %1, align 4, !tbaa !381   ; 7 uses
  %i.at = add nsw i32 %i.as, %i.ar                ; 9 uses
  %i.au = add nsw i32 %i.as, %3                   ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !381 ; 7 uses
  %i.ax = add nsw i32 %i.aw, %i.ar                ; 9 uses
  %i.ay = add nsw i32 %i.aw, %3                   ; 5 uses
  %i.az = load i32, ptr %i.v, align 4, !tbaa !381 ; 7 uses
  %i.ba = add nsw i32 %i.az, %i.ar                ; 9 uses
  %i.bb = add nsw i32 %i.az, %3                   ; 5 uses
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !381
  store i32 %i.az, ptr %i.i, align 4, !tbaa !381
  %i.bc = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !761
  %i.be = fcmp olt float %i.bd, %2                ; 2 uses
  %i.bf = xor i1 %i.c, %i.be
  %i.bg = xor i1 %i.h, %i.be
  %or.cond = and i1 %i.bf, %i.bg
  br i1 %or.cond, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !381
  %i.bh = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !761
  %i.bj = fcmp olt float %i.bi, %2                ; 2 uses
  %i.bk = xor i1 %i.h, %i.bj
  %i.bl = xor i1 %i.n, %i.bj
  %or.cond278 = and i1 %i.bk, %i.bl
  br i1 %or.cond278, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !381
  %i.bm = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !761
  %i.bo = fcmp olt float %i.bn, %2                ; 2 uses
  %i.bp = xor i1 %i.n, %i.bo
  %i.bq = xor i1 %i.r, %i.bo
  %or.cond279 = and i1 %i.bp, %i.bq
  br i1 %or.cond279, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !381
  %i.br = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bs = load float, ptr %i.br, align 4, !tbaa !761
  %i.bt = fcmp olt float %i.bs, %2                ; 2 uses
  %i.bu = xor i1 %i.c, %i.bt
  %i.bv = xor i1 %i.r, %i.bt
  %or.cond280 = and i1 %i.bu, %i.bv
  br i1 %or.cond280, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !381
  store i32 %i.az, ptr %i.i, align 4, !tbaa !381
  %i.bw = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !761
  %i.by = fcmp olt float %i.bx, %2                ; 2 uses
  %i.bz = xor i1 %i.z, %i.by
  %i.ca = xor i1 %i.ae, %i.by
  %or.cond281 = and i1 %i.bz, %i.ca
  br i1 %or.cond281, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !381
  %i.cb = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !761
  %i.cd = fcmp olt float %i.cc, %2                ; 2 uses
  %i.ce = xor i1 %i.ae, %i.cd
  %i.cf = xor i1 %i.aj, %i.cd
  %or.cond282 = and i1 %i.ce, %i.cf
  br i1 %or.cond282, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !381
  %i.cg = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !761
  %i.ci = fcmp olt float %i.ch, %2                ; 2 uses
  %i.cj = xor i1 %i.aj, %i.ci
  %i.ck = xor i1 %i.an, %i.ci
  %or.cond283 = and i1 %i.cj, %i.ck
  br i1 %or.cond283, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !381
  %i.cl = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !761
  %i.cn = fcmp olt float %i.cm, %2                ; 2 uses
  %i.co = xor i1 %i.an, %i.cn
  %i.cp = xor i1 %i.z, %i.cn
  %or.cond284 = and i1 %i.co, %i.cp
  br i1 %or.cond284, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.az, ptr %i.i, align 4, !tbaa !381
  %i.cq = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !761
  %i.cs = fcmp olt float %i.cr, %2                ; 2 uses
  %i.ct = xor i1 %i.c, %i.cs
  %i.cu = xor i1 %i.z, %i.cs
  %or.cond285 = and i1 %i.ct, %i.cu
  br i1 %or.cond285, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.az, ptr %i.i, align 4, !tbaa !381
  %i.cv = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !761
  %i.cx = fcmp olt float %i.cw, %2                ; 2 uses
  %i.cy = xor i1 %i.h, %i.cx
  %i.cz = xor i1 %i.ae, %i.cx
  %or.cond286 = and i1 %i.cy, %i.cz
  br i1 %or.cond286, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !381
  %i.da = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.db = load float, ptr %i.da, align 4, !tbaa !761
  %i.dc = fcmp olt float %i.db, %2                ; 2 uses
  %i.dd = xor i1 %i.n, %i.dc
  %i.de = xor i1 %i.aj, %i.dc
  %or.cond287 = and i1 %i.dd, %i.de
  br i1 %or.cond287, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !381
  %i.df = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dg = load float, ptr %i.df, align 4, !tbaa !761
  %i.dh = fcmp olt float %i.dg, %2                ; 2 uses
  %i.di = xor i1 %i.r, %i.dh
  %i.dj = xor i1 %i.an, %i.dh
  %or.cond288 = and i1 %i.di, %i.dj
  br i1 %or.cond288, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.az, ptr %i.i, align 4, !tbaa !381
  %i.dk = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !761
  %i.dm = fcmp olt float %i.dl, %2                ; 4 uses
  %i.dn = xor i1 %i.c, %i.dm
  %i.do = xor i1 %i.h, %i.dm
  %or.cond289 = and i1 %i.dn, %i.do
  %i.dp = xor i1 %i.z, %i.dm
  %or.cond290 = and i1 %i.dp, %or.cond289
  %i.dq = xor i1 %i.ae, %i.dm
  %or.cond291 = and i1 %i.dq, %or.cond290
  br i1 %or.cond291, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !381
  %i.dr = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !761
  %i.dt = fcmp olt float %i.ds, %2                ; 4 uses
  %i.du = xor i1 %i.h, %i.dt
  %i.dv = xor i1 %i.n, %i.dt
  %or.cond292 = and i1 %i.du, %i.dv
  %i.dw = xor i1 %i.ae, %i.dt
  %or.cond293 = and i1 %i.dw, %or.cond292
  %i.dx = xor i1 %i.aj, %i.dt
  %or.cond294 = and i1 %i.dx, %or.cond293
  br i1 %or.cond294, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !381
  %i.dy = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !761
  %i.ea = fcmp olt float %i.dz, %2                ; 4 uses
  %i.eb = xor i1 %i.n, %i.ea
  %i.ec = xor i1 %i.r, %i.ea
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal17MergeVoxelRegionsINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %.body273

bb.ha:                                            ; preds = %bb.gz
  %i.aeo = landingpad { ptr, i32 }
          catch ptr null
  %i.aep = extractvalue { ptr, i32 } %i.aeo, 0
  call void @__clang_call_terminate(ptr %i.aep) #29, !inline_history !2993
  unreachable

.body273:                                         ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i411, %_ZNSt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEESt14default_deleteIS7_EED2Ev.exit409, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %.pn208.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn208.pn.pn, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i411 ], [ %.pn208.pn.pn, %_ZNSt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEESt14default_deleteIS7_EED2Ev.exit409 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %9, align 8, !tbaa !383
  %i.aeq = load ptr, ptr %i.cq, align 8, !tbaa !3523 ; 2 uses
  %.not.i413 = icmp eq ptr %i.aeq, null
  br i1 %.not.i413, label %bb.hd, label %bb.hb

bb.hb:                                            ; preds = %.body273
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store ptr %9, ptr %i.d, align 8, !tbaa !3525
  %i.aes = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.aer, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i414 unwind label %bb.hc, !inline_history !3526 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i414: ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.aet = landingpad { ptr, i32 }
          catch ptr null
  %i.aeu = extractvalue { ptr, i32 } %i.aet, 0
  call void @__clang_call_terminate(ptr %i.aeu) #29, !inline_history !3526
  unreachable

bb.hd:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %.body273, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i414
  %.pn208.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.da, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn208.pn.pn.pn.pn, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i414 ], [ %.pn208.pn.pn.pn.pn, %.body273 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.not.i416 = icmp eq ptr %.sroa.0473.0, null
  br i1 %.not.i416, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit420, label %bb.he

bb.he:                                            ; preds = %bb.hd
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %.sroa.0473.0, align 8, !tbaa !383
  %i.aev = getelementptr inbounds nuw i8, ptr %.sroa.0473.0, i64 8
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !2951 ; 2 uses
  %.not.i.i.i417 = icmp eq ptr %i.aew, null
  br i1 %.not.i.i.i417, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i419, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %.sroa.0473.0, ptr %i.c, align 8, !tbaa !2952
  %i.aey = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.aex, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i418 unwind label %bb.hg, !inline_history !2958 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i418: ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i419

bb.hg:                                            ; preds = %bb.hf
  %i.aez = landingpad { ptr, i32 }
          catch ptr null
  %i.afa = extractvalue { ptr, i32 } %i.aez, 0
  call void @__clang_call_terminate(ptr %i.afa) #29, !inline_history !2958
  unreachable

_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i419: ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i418, %bb.he
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0473.0, i64 noundef 96) #28
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit420

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit420: ; preds = %bb.aj, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i419, %bb.hd
  %.pn208.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn, %bb.hd ], [ %.pn208.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i419 ], [ %i.co, %bb.aj ], [ %i.cd, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ] ; 2 uses
  %.not.i421 = icmp eq ptr %.sroa.0478.0, null
  br i1 %.not.i421, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit425, label %bb.hh

bb.hh:                                            ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit420
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %.sroa.0478.0, align 8, !tbaa !383
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.0478.0, i64 8
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !2825 ; 2 uses
  %.not.i.i.i422 = icmp eq ptr %i.afc, null
  br i1 %.not.i.i.i422, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i424, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %.sroa.0478.0, ptr %i.b, align 8, !tbaa !2826
  %i.afe = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.afd, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i423 unwind label %bb.hj, !inline_history !2830 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i423: ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i424

bb.hj:                                            ; preds = %bb.hi
  %i.aff = landingpad { ptr, i32 }
          catch ptr null
  %i.afg = extractvalue { ptr, i32 } %i.aff, 0
  call void @__clang_call_terminate(ptr %i.afg) #29, !inline_history !2830
  unreachable

_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i424: ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i423, %bb.hh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0478.0, i64 noundef 88) #28
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit425

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit425: ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %bb.x, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i424, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit420
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit420 ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i424 ], [ %i.be, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %i.bo, %bb.x ] ; 3 uses
  %.not.i426 = icmp eq ptr %.sroa.0483.0, null
  br i1 %.not.i426, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit430, label %bb.hk

bb.hk:                                            ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit425
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %.sroa.0483.0, align 8, !tbaa !383
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.0483.0, i64 8
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !3002 ; 2 uses
  %.not.i.i.i427 = icmp eq ptr %i.afi, null
  br i1 %.not.i.i.i427, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit430.sink.split, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %.sroa.0483.0, ptr %i.a, align 8, !tbaa !3004
  %i.afk = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.afj, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i428 unwind label %bb.hm, !inline_history !3013 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i428: ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit430.sink.split

bb.hm:                                            ; preds = %bb.hl
  %i.afl = landingpad { ptr, i32 }
          catch ptr null
  %i.afm = extractvalue { ptr, i32 } %i.afl, 0
  call void @__clang_call_terminate(ptr %i.afm) #29, !inline_history !3013
  unreachable

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit430.sink.split: ; preds = %bb.hk, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i428, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %.sink = phi ptr [ %i.t, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.sroa.0483.0, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i428 ], [ %.sroa.0483.0, %bb.hk ]
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn512.ph = phi { ptr, i32 } [ %i.af, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i428 ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hk ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 96) #28
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit430

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit430: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit430.sink.split, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit425
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn512 = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit425 ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn512.ph, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit430.sink.split ]
  resume { ptr, i32 } %.pn208.pn.pn.pn.pn.pn.pn.pn.pn512
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools23volume_to_mesh_internal13isNonManifoldINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKT_RKNS0_4math5CoordENSJ_9ValueTypeEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, double noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !821
  %i.a = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.b = load double, ptr %i.a, align 8, !tbaa !2832
  %i.c = fcmp olt double %i.b, %2                 ; 8 uses
  %i.d = load i32, ptr %4, align 4, !tbaa !381
  %i.e = add nsw i32 %i.d, %3
  store i32 %i.e, ptr %4, align 4, !tbaa !381
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.g = load double, ptr %i.f, align 8, !tbaa !2832
  %i.h = fcmp olt double %i.g, %2                 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 24 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !381
  %i.k = add nsw i32 %i.j, %3
  store i32 %i.k, ptr %i.i, align 4, !tbaa !381
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.m = load double, ptr %i.l, align 8, !tbaa !2832
  %i.n = fcmp olt double %i.m, %2                 ; 8 uses
  %i.o = load i32, ptr %1, align 4, !tbaa !381
  store i32 %i.o, ptr %4, align 4, !tbaa !381
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.q = load double, ptr %i.p, align 8, !tbaa !2832
  %i.r = fcmp olt double %i.q, %2                 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 21 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !381
  %i.u = add nsw i32 %i.t, %3
  store i32 %i.u, ptr %i.s, align 4, !tbaa !381
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !381
  store i32 %i.w, ptr %i.i, align 4, !tbaa !381
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.y = load double, ptr %i.x, align 8, !tbaa !2832
  %i.z = fcmp olt double %i.y, %2                 ; 8 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !381
  %i.ab = add nsw i32 %i.aa, %3
  store i32 %i.ab, ptr %4, align 4, !tbaa !381
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !2832
  %i.ae = fcmp olt double %i.ad, %2               ; 8 uses
  %i.af = load i32, ptr %i.i, align 4, !tbaa !381
  %i.ag = add nsw i32 %i.af, %3
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !381
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !2832
  %i.aj = fcmp olt double %i.ai, %2               ; 8 uses
  %i.ak = load i32, ptr %1, align 4, !tbaa !381
  store i32 %i.ak, ptr %4, align 4, !tbaa !381
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.am = load double, ptr %i.al, align 8, !tbaa !2832
  %i.an = fcmp olt double %i.am, %2               ; 8 uses
  %spec.select = zext i1 %i.c to i64              ; 2 uses
  %5 = or disjoint i64 %spec.select, 2
  %.1 = select i1 %i.h, i64 %5, i64 %spec.select  ; 2 uses
  %6 = or disjoint i64 %.1, 4
  %.2 = select i1 %i.n, i64 %6, i64 %.1           ; 2 uses
  %7 = or disjoint i64 %.2, 8
  %.3 = select i1 %i.r, i64 %7, i64 %.2           ; 2 uses
  %8 = or i64 %.3, 16
  %.4 = select i1 %i.z, i64 %8, i64 %.3           ; 2 uses
  %9 = or i64 %.4, 32
  %.5 = select i1 %i.ae, i64 %9, i64 %.4          ; 2 uses
  %10 = or i64 %.5, 64
  %.6 = select i1 %i.aj, i64 %10, i64 %.5         ; 2 uses
  %11 = or i64 %.6, 128
  %.7 = select i1 %i.an, i64 %11, i64 %.6
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN7openvdb5v13_05tools23volume_to_mesh_internalL10sAdaptableE, i64 %.7
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !488, !range !494, !noundef !495
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.ar = ashr i32 %3, 1                          ; 3 uses
  %i.as = load i32, ptr %1, align 4, !tbaa !381   ; 7 uses
  %i.at = add nsw i32 %i.as, %i.ar                ; 9 uses
  %i.au = add nsw i32 %i.as, %3                   ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !381 ; 7 uses
  %i.ax = add nsw i32 %i.aw, %i.ar                ; 9 uses
  %i.ay = add nsw i32 %i.aw, %3                   ; 5 uses
  %i.az = load i32, ptr %i.v, align 4, !tbaa !381 ; 7 uses
  %i.ba = add nsw i32 %i.az, %i.ar                ; 9 uses
  %i.bb = add nsw i32 %i.az, %3                   ; 5 uses
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !381
  store i32 %i.az, ptr %i.i, align 4, !tbaa !381
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !2832
  %i.be = fcmp olt double %i.bd, %2               ; 2 uses
  %i.bf = xor i1 %i.c, %i.be
  %i.bg = xor i1 %i.h, %i.be
  %or.cond = and i1 %i.bf, %i.bg
  br i1 %or.cond, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !381
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !2832
  %i.bj = fcmp olt double %i.bi, %2               ; 2 uses
  %i.bk = xor i1 %i.h, %i.bj
  %i.bl = xor i1 %i.n, %i.bj
  %or.cond278 = and i1 %i.bk, %i.bl
  br i1 %or.cond278, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !381
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !2832
  %i.bo = fcmp olt double %i.bn, %2               ; 2 uses
  %i.bp = xor i1 %i.n, %i.bo
  %i.bq = xor i1 %i.r, %i.bo
  %or.cond279 = and i1 %i.bp, %i.bq
  br i1 %or.cond279, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !381
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bs = load double, ptr %i.br, align 8, !tbaa !2832
  %i.bt = fcmp olt double %i.bs, %2               ; 2 uses
  %i.bu = xor i1 %i.c, %i.bt
  %i.bv = xor i1 %i.r, %i.bt
  %or.cond280 = and i1 %i.bu, %i.bv
  br i1 %or.cond280, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !381
  store i32 %i.az, ptr %i.i, align 4, !tbaa !381
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !2832
  %i.by = fcmp olt double %i.bx, %2               ; 2 uses
  %i.bz = xor i1 %i.z, %i.by
  %i.ca = xor i1 %i.ae, %i.by
  %or.cond281 = and i1 %i.bz, %i.ca
  br i1 %or.cond281, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !381
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !2832
  %i.cd = fcmp olt double %i.cc, %2               ; 2 uses
  %i.ce = xor i1 %i.ae, %i.cd
  %i.cf = xor i1 %i.aj, %i.cd
  %or.cond282 = and i1 %i.ce, %i.cf
  br i1 %or.cond282, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !381
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !2832
  %i.ci = fcmp olt double %i.ch, %2               ; 2 uses
  %i.cj = xor i1 %i.aj, %i.ci
  %i.ck = xor i1 %i.an, %i.ci
  %or.cond283 = and i1 %i.cj, %i.ck
  br i1 %or.cond283, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !381
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !2832
  %i.cn = fcmp olt double %i.cm, %2               ; 2 uses
  %i.co = xor i1 %i.an, %i.cn
  %i.cp = xor i1 %i.z, %i.cn
  %or.cond284 = and i1 %i.co, %i.cp
  br i1 %or.cond284, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.az, ptr %i.i, align 4, !tbaa !381
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !2832
  %i.cs = fcmp olt double %i.cr, %2               ; 2 uses
  %i.ct = xor i1 %i.c, %i.cs
  %i.cu = xor i1 %i.z, %i.cs
  %or.cond285 = and i1 %i.ct, %i.cu
  br i1 %or.cond285, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.az, ptr %i.i, align 4, !tbaa !381
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !2832
  %i.cx = fcmp olt double %i.cw, %2               ; 2 uses
  %i.cy = xor i1 %i.h, %i.cx
  %i.cz = xor i1 %i.ae, %i.cx
  %or.cond286 = and i1 %i.cy, %i.cz
  br i1 %or.cond286, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !381
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.db = load double, ptr %i.da, align 8, !tbaa !2832
  %i.dc = fcmp olt double %i.db, %2               ; 2 uses
  %i.dd = xor i1 %i.n, %i.dc
  %i.de = xor i1 %i.aj, %i.dc
  %or.cond287 = and i1 %i.dd, %i.de
  br i1 %or.cond287, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.as, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !381
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dg = load double, ptr %i.df, align 8, !tbaa !2832
  %i.dh = fcmp olt double %i.dg, %2               ; 2 uses
  %i.di = xor i1 %i.r, %i.dh
  %i.dj = xor i1 %i.an, %i.dh
  %or.cond288 = and i1 %i.di, %i.dj
  br i1 %or.cond288, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.az, ptr %i.i, align 4, !tbaa !381
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !2832
  %i.dm = fcmp olt double %i.dl, %2               ; 4 uses
  %i.dn = xor i1 %i.c, %i.dm
  %i.do = xor i1 %i.h, %i.dm
  %or.cond289 = and i1 %i.dn, %i.do
  %i.dp = xor i1 %i.z, %i.dm
  %or.cond290 = and i1 %i.dp, %or.cond289
  %i.dq = xor i1 %i.ae, %i.dm
  %or.cond291 = and i1 %i.dq, %or.cond290
  br i1 %or.cond291, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.au, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !381
  %i.dr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !2832
  %i.dt = fcmp olt double %i.ds, %2               ; 4 uses
  %i.du = xor i1 %i.h, %i.dt
  %i.dv = xor i1 %i.n, %i.dt
  %or.cond292 = and i1 %i.du, %i.dv
  %i.dw = xor i1 %i.ae, %i.dt
  %or.cond293 = and i1 %i.dw, %or.cond292
  %i.dx = xor i1 %i.aj, %i.dt
  %or.cond294 = and i1 %i.dx, %or.cond293
  br i1 %or.cond294, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.at, ptr %4, align 4, !tbaa !381
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !381
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !381
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !2832
  %i.ea = fcmp olt double %i.dz, %2               ; 4 uses
  %i.eb = xor i1 %i.n, %i.ea
  %i.ec = xor i1 %i.r, %i.ea
end_hunk_3

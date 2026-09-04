Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetRebuild?download=true
inline.NumInlined: 42024
inline.NumDeleted: 13681
loop-unroll.NumCompletelyUnrolled: 178
loop-unroll.NumRuntimeUnrolled: 176
loop-unroll.NumUnrolled: 596
begin_hunk_0_@_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE9isValueOnERKNS0_4math5CoordE:bb.a
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !359  ; 2 uses
  %i.o = and i32 %i.n, -8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !359
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2207
  %i.u = and i32 %i.b, 7
  %i.v = shl i32 %i.h, 3
  %i.w = and i32 %i.v, 56
  %i.x = and i32 %i.n, 7
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = zext nneg i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !446
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, %i.ac
  %i.ag = icmp ne i64 %i.af, 0
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit
  %i.ah = and i32 %i.b, -128                      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !359
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !359
  %i.an = and i32 %i.am, -128
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !359
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit: ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !359
  %i.at = and i32 %i.as, -128
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !359
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.e, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2107
  %i.az = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIjLj3EEELj4EE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm0EEEEbSL_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit
  %i.ba = and i32 %i.b, -4096
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !359
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit

bb.f:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !359 ; 3 uses
  %i.bg = and i32 %i.bf, -4096
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !359
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm2EEEEbSL_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm2EEEEbSL_.exit: ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !359 ; 3 uses
  %i.bm = and i32 %i.bl, -4096
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !359
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.g, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit

bb.g:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm2EEEEbSL_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2096 ; 3 uses
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
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !446
  %i.cf = and i32 %i.bz, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl nuw i64 1, %i.cg                    ; 2 uses
  %i.ci = and i64 %i.ch, %i.ce
  %.not.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 266240
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cc
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !446
  %i.cm = and i64 %i.cl, %i.ch
  %i.cn = icmp ne i64 %i.cm, 0
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

bb.i:                                             ; preds = %bb.g
  %i.co = zext nneg i32 %i.bz to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !381
  %i.cr = and i32 %i.bf, -128
  %i.cs = and i32 %i.bl, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.cr to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ah to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ai, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.cs, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !381
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !2107
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !381
  %i.cv = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIjLj3EEELj4EE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.cu, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm1EEEEbSL_.exit.thread, %bb.f, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSF_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSK_OT0_ENKUlSL_E_clISt17integral_constantImLm2EEEEbSL_.exit
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !2080
  %i.cx = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEE17isValueOnAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(68) %i.cw, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm0ELm4EEET2_SN_SP_RT1_SY_.exit: ; preds = %bb.e, %bb.i, %bb.h, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit, %bb.c
  %.0.i = phi i1 [ %i.ag, %bb.c ], [ %i.az, %bb.e ], [ %i.cx, %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm0EZNKSH_9isValueOnERKNS0_4math5CoordEEUlT_E_EEDaSM_OT0_EUlSN_E_SO_St5tupleIJPS9_PSA_PSB_PSC_EEbLm3ELm4EEET2_SN_SP_RT1_SY_.exit ], [ %i.cn, %bb.h ], [ %i.cv, %bb.i ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools23volume_to_mesh_internal13isNonManifoldINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKT_RKNS0_4math5CoordENSJ_9ValueTypeEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, float noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !807
  %i.a = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.b = load float, ptr %i.a, align 4, !tbaa !552
  %i.c = fcmp olt float %i.b, %2                  ; 8 uses
  %i.d = load i32, ptr %4, align 4, !tbaa !359
  %i.e = add nsw i32 %i.d, %3
  store i32 %i.e, ptr %4, align 4, !tbaa !359
  %i.f = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.g = load float, ptr %i.f, align 4, !tbaa !552
  %i.h = fcmp olt float %i.g, %2                  ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 24 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !359
  %i.k = add nsw i32 %i.j, %3
  store i32 %i.k, ptr %i.i, align 4, !tbaa !359
  %i.l = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.m = load float, ptr %i.l, align 4, !tbaa !552
  %i.n = fcmp olt float %i.m, %2                  ; 8 uses
  %i.o = load i32, ptr %1, align 4, !tbaa !359
  store i32 %i.o, ptr %4, align 4, !tbaa !359
  %i.p = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.q = load float, ptr %i.p, align 4, !tbaa !552
  %i.r = fcmp olt float %i.q, %2                  ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 21 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !359
  %i.u = add nsw i32 %i.t, %3
  store i32 %i.u, ptr %i.s, align 4, !tbaa !359
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !359
  store i32 %i.w, ptr %i.i, align 4, !tbaa !359
  %i.x = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.y = load float, ptr %i.x, align 4, !tbaa !552
  %i.z = fcmp olt float %i.y, %2                  ; 8 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !359
  %i.ab = add nsw i32 %i.aa, %3
  store i32 %i.ab, ptr %4, align 4, !tbaa !359
  %i.ac = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !552
  %i.ae = fcmp olt float %i.ad, %2                ; 8 uses
  %i.af = load i32, ptr %i.i, align 4, !tbaa !359
  %i.ag = add nsw i32 %i.af, %3
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !359
  %i.ah = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !552
  %i.aj = fcmp olt float %i.ai, %2                ; 8 uses
  %i.ak = load i32, ptr %1, align 4, !tbaa !359
  store i32 %i.ak, ptr %4, align 4, !tbaa !359
  %i.al = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.am = load float, ptr %i.al, align 4, !tbaa !552
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
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !486, !range !492, !noundef !493
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.ar = ashr i32 %3, 1                          ; 3 uses
  %i.as = load i32, ptr %1, align 4, !tbaa !359   ; 7 uses
  %i.at = add nsw i32 %i.as, %i.ar                ; 9 uses
  %i.au = add nsw i32 %i.as, %3                   ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !359 ; 7 uses
  %i.ax = add nsw i32 %i.aw, %i.ar                ; 9 uses
  %i.ay = add nsw i32 %i.aw, %3                   ; 5 uses
  %i.az = load i32, ptr %i.v, align 4, !tbaa !359 ; 7 uses
  %i.ba = add nsw i32 %i.az, %i.ar                ; 9 uses
  %i.bb = add nsw i32 %i.az, %3                   ; 5 uses
  store i32 %i.at, ptr %4, align 4, !tbaa !359
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !359
  store i32 %i.az, ptr %i.i, align 4, !tbaa !359
  %i.bc = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !552
  %i.be = fcmp olt float %i.bd, %2                ; 2 uses
  %i.bf = xor i1 %i.c, %i.be
  %i.bg = xor i1 %i.h, %i.be
  %or.cond = and i1 %i.bf, %i.bg
  br i1 %or.cond, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.au, ptr %4, align 4, !tbaa !359
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !359
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !359
  %i.bh = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !552
  %i.bj = fcmp olt float %i.bi, %2                ; 2 uses
  %i.bk = xor i1 %i.h, %i.bj
  %i.bl = xor i1 %i.n, %i.bj
  %or.cond278 = and i1 %i.bk, %i.bl
  br i1 %or.cond278, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.at, ptr %4, align 4, !tbaa !359
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !359
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !359
  %i.bm = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !552
  %i.bo = fcmp olt float %i.bn, %2                ; 2 uses
  %i.bp = xor i1 %i.n, %i.bo
  %i.bq = xor i1 %i.r, %i.bo
  %or.cond279 = and i1 %i.bp, %i.bq
  br i1 %or.cond279, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.as, ptr %4, align 4, !tbaa !359
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !359
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !359
  %i.br = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bs = load float, ptr %i.br, align 4, !tbaa !552
  %i.bt = fcmp olt float %i.bs, %2                ; 2 uses
  %i.bu = xor i1 %i.c, %i.bt
  %i.bv = xor i1 %i.r, %i.bt
  %or.cond280 = and i1 %i.bu, %i.bv
  br i1 %or.cond280, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.at, ptr %4, align 4, !tbaa !359
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !359
  store i32 %i.az, ptr %i.i, align 4, !tbaa !359
  %i.bw = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !552
  %i.by = fcmp olt float %i.bx, %2                ; 2 uses
  %i.bz = xor i1 %i.z, %i.by
  %i.ca = xor i1 %i.ae, %i.by
  %or.cond281 = and i1 %i.bz, %i.ca
  br i1 %or.cond281, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.au, ptr %4, align 4, !tbaa !359
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !359
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !359
  %i.cb = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !552
  %i.cd = fcmp olt float %i.cc, %2                ; 2 uses
  %i.ce = xor i1 %i.ae, %i.cd
  %i.cf = xor i1 %i.aj, %i.cd
  %or.cond282 = and i1 %i.ce, %i.cf
  br i1 %or.cond282, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.at, ptr %4, align 4, !tbaa !359
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !359
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !359
  %i.cg = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !552
  %i.ci = fcmp olt float %i.ch, %2                ; 2 uses
  %i.cj = xor i1 %i.aj, %i.ci
  %i.ck = xor i1 %i.an, %i.ci
  %or.cond283 = and i1 %i.cj, %i.ck
  br i1 %or.cond283, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.as, ptr %4, align 4, !tbaa !359
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !359
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !359
  %i.cl = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !552
  %i.cn = fcmp olt float %i.cm, %2                ; 2 uses
  %i.co = xor i1 %i.an, %i.cn
  %i.cp = xor i1 %i.z, %i.cn
  %or.cond284 = and i1 %i.co, %i.cp
  br i1 %or.cond284, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.as, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.az, ptr %i.i, align 4, !tbaa !359
  %i.cq = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !552
  %i.cs = fcmp olt float %i.cr, %2                ; 2 uses
  %i.ct = xor i1 %i.c, %i.cs
  %i.cu = xor i1 %i.z, %i.cs
  %or.cond285 = and i1 %i.ct, %i.cu
  br i1 %or.cond285, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.au, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.az, ptr %i.i, align 4, !tbaa !359
  %i.cv = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !552
  %i.cx = fcmp olt float %i.cw, %2                ; 2 uses
  %i.cy = xor i1 %i.h, %i.cx
  %i.cz = xor i1 %i.ae, %i.cx
  %or.cond286 = and i1 %i.cy, %i.cz
  br i1 %or.cond286, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.au, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !359
  %i.da = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.db = load float, ptr %i.da, align 4, !tbaa !552
  %i.dc = fcmp olt float %i.db, %2                ; 2 uses
  %i.dd = xor i1 %i.n, %i.dc
  %i.de = xor i1 %i.aj, %i.dc
  %or.cond287 = and i1 %i.dd, %i.de
  br i1 %or.cond287, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.as, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !359
  %i.df = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dg = load float, ptr %i.df, align 4, !tbaa !552
  %i.dh = fcmp olt float %i.dg, %2                ; 2 uses
  %i.di = xor i1 %i.r, %i.dh
  %i.dj = xor i1 %i.an, %i.dh
  %or.cond288 = and i1 %i.di, %i.dj
  br i1 %or.cond288, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.at, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.az, ptr %i.i, align 4, !tbaa !359
  %i.dk = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !552
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
  store i32 %i.au, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !359
  %i.dr = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !552
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
  store i32 %i.at, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !359
  %i.dy = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !552
  %i.ea = fcmp olt float %i.dz, %2                ; 4 uses
  %i.eb = xor i1 %i.n, %i.ea
  %i.ec = xor i1 %i.r, %i.ea
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal17MergeVoxelRegionsINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %.body273

bb.gy:                                            ; preds = %bb.gx
  %i.aek = landingpad { ptr, i32 }
          catch ptr null
  %i.ael = extractvalue { ptr, i32 } %i.aek, 0
  call void @__clang_call_terminate(ptr %i.ael) #30, !inline_history !2978
  unreachable

.body273:                                         ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i410, %_ZNSt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEESt14default_deleteIS7_EED2Ev.exit408, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %.pn208.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn208.pn.pn, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i410 ], [ %.pn208.pn.pn, %_ZNSt10unique_ptrIN7openvdb5v13_04tree8LeafNodeINS1_4math4Vec3IfEELj3EEESt14default_deleteIS7_EED2Ev.exit408 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %9, align 8, !tbaa !361
  %i.aem = load ptr, ptr %i.cq, align 8, !tbaa !3116 ; 2 uses
  %.not.i412 = icmp eq ptr %i.aem, null
  br i1 %.not.i412, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %.body273
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store ptr %9, ptr %i.d, align 8, !tbaa !3118
  %i.aeo = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.aen, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i413 unwind label %bb.ha, !inline_history !3119 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i413: ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.aep = landingpad { ptr, i32 }
          catch ptr null
  %i.aeq = extractvalue { ptr, i32 } %i.aep, 0
  call void @__clang_call_terminate(ptr %i.aeq) #30, !inline_history !3119
  unreachable

bb.hb:                                            ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %.body273, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i413
  %.pn208.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.da, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn208.pn.pn.pn.pn, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i413 ], [ %.pn208.pn.pn.pn.pn, %.body273 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.not.i415 = icmp eq ptr %.sroa.0472.0, null
  br i1 %.not.i415, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit419, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %.sroa.0472.0, align 8, !tbaa !361
  %i.aer = getelementptr inbounds nuw i8, ptr %.sroa.0472.0, i64 8
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !2936 ; 2 uses
  %.not.i.i.i416 = icmp eq ptr %i.aes, null
  br i1 %.not.i.i.i416, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i418, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %.sroa.0472.0, ptr %i.c, align 8, !tbaa !2937
  %i.aeu = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.aet, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i417 unwind label %bb.he, !inline_history !2943 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i417: ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i418

bb.he:                                            ; preds = %bb.hd
  %i.aev = landingpad { ptr, i32 }
          catch ptr null
  %i.aew = extractvalue { ptr, i32 } %i.aev, 0
  call void @__clang_call_terminate(ptr %i.aew) #30, !inline_history !2943
  unreachable

_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i418: ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIsLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i417, %bb.hc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0472.0, i64 noundef 96) #29
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit419

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit419: ; preds = %bb.aj, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i418, %bb.hb
  %.pn208.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn, %bb.hb ], [ %.pn208.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i418 ], [ %i.co, %bb.aj ], [ %i.cd, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ] ; 2 uses
  %.not.i420 = icmp eq ptr %.sroa.0477.0, null
  br i1 %.not.i420, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit424, label %bb.hf

bb.hf:                                            ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit419
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %.sroa.0477.0, align 8, !tbaa !361
  %i.aex = getelementptr inbounds nuw i8, ptr %.sroa.0477.0, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !2812 ; 2 uses
  %.not.i.i.i421 = icmp eq ptr %i.aey, null
  br i1 %.not.i.i.i421, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i423, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %.sroa.0477.0, ptr %i.b, align 8, !tbaa !2813
  %i.afa = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.aez, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i422 unwind label %bb.hh, !inline_history !2817 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i422: ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i423

bb.hh:                                            ; preds = %bb.hg
  %i.afb = landingpad { ptr, i32 }
          catch ptr null
  %i.afc = extractvalue { ptr, i32 } %i.afb, 0
  call void @__clang_call_terminate(ptr %i.afc) #30, !inline_history !2817
  unreachable

_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i423: ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i422, %bb.hf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0477.0, i64 noundef 88) #29
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit424

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit424: ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, %bb.x, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i423, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit419
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit419 ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEEEclEPSG_.exit.i423 ], [ %i.be, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %i.bo, %bb.x ] ; 3 uses
  %.not.i425 = icmp eq ptr %.sroa.0482.0, null
  br i1 %.not.i425, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit429, label %bb.hi

bb.hi:                                            ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit424
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %.sroa.0482.0, align 8, !tbaa !361
  %i.afd = getelementptr inbounds nuw i8, ptr %.sroa.0482.0, i64 8
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !652 ; 2 uses
  %.not.i.i.i426 = icmp eq ptr %i.afe, null
  br i1 %.not.i.i.i426, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit429.sink.split, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %.sroa.0482.0, ptr %i.a, align 8, !tbaa !654
  %i.afg = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.aff, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i427 unwind label %bb.hk, !inline_history !655 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i427: ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit429.sink.split

bb.hk:                                            ; preds = %bb.hj
  %i.afh = landingpad { ptr, i32 }
          catch ptr null
  %i.afi = extractvalue { ptr, i32 } %i.afh, 0
  call void @__clang_call_terminate(ptr %i.afi) #30, !inline_history !655
  unreachable

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit429.sink.split: ; preds = %bb.hi, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i427, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %.sink = phi ptr [ %i.t, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.sroa.0482.0, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i427 ], [ %.sroa.0482.0, %bb.hi ]
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn511.ph = phi { ptr, i32 } [ %i.af, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i.i427 ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hi ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 96) #29
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit429

_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit429: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit429.sink.split, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit424
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn511 = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit424 ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn511.ph, %_ZNSt10unique_ptrIN7openvdb5v13_04tree17ValueAccessorImplIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS1_14index_sequenceIJLm0ELm1ELm2EEEEEESt14default_deleteISG_EED2Ev.exit429.sink.split ]
  resume { ptr, i32 } %.pn208.pn.pn.pn.pn.pn.pn.pn.pn511
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools23volume_to_mesh_internal13isNonManifoldINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKT_RKNS0_4math5CoordENSJ_9ValueTypeEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, double noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !807
  %i.a = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.b = load double, ptr %i.a, align 8, !tbaa !481
  %i.c = fcmp olt double %i.b, %2                 ; 8 uses
  %i.d = load i32, ptr %4, align 4, !tbaa !359
  %i.e = add nsw i32 %i.d, %3
  store i32 %i.e, ptr %4, align 4, !tbaa !359
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.g = load double, ptr %i.f, align 8, !tbaa !481
  %i.h = fcmp olt double %i.g, %2                 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 24 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !359
  %i.k = add nsw i32 %i.j, %3
  store i32 %i.k, ptr %i.i, align 4, !tbaa !359
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.m = load double, ptr %i.l, align 8, !tbaa !481
  %i.n = fcmp olt double %i.m, %2                 ; 8 uses
  %i.o = load i32, ptr %1, align 4, !tbaa !359
  store i32 %i.o, ptr %4, align 4, !tbaa !359
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.q = load double, ptr %i.p, align 8, !tbaa !481
  %i.r = fcmp olt double %i.q, %2                 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 21 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !359
  %i.u = add nsw i32 %i.t, %3
  store i32 %i.u, ptr %i.s, align 4, !tbaa !359
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !359
  store i32 %i.w, ptr %i.i, align 4, !tbaa !359
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.y = load double, ptr %i.x, align 8, !tbaa !481
  %i.z = fcmp olt double %i.y, %2                 ; 8 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !359
  %i.ab = add nsw i32 %i.aa, %3
  store i32 %i.ab, ptr %4, align 4, !tbaa !359
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !481
  %i.ae = fcmp olt double %i.ad, %2               ; 8 uses
  %i.af = load i32, ptr %i.i, align 4, !tbaa !359
  %i.ag = add nsw i32 %i.af, %3
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !359
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !481
  %i.aj = fcmp olt double %i.ai, %2               ; 8 uses
  %i.ak = load i32, ptr %1, align 4, !tbaa !359
  store i32 %i.ak, ptr %4, align 4, !tbaa !359
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.am = load double, ptr %i.al, align 8, !tbaa !481
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
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !486, !range !492, !noundef !493
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.ar = ashr i32 %3, 1                          ; 3 uses
  %i.as = load i32, ptr %1, align 4, !tbaa !359   ; 7 uses
  %i.at = add nsw i32 %i.as, %i.ar                ; 9 uses
  %i.au = add nsw i32 %i.as, %3                   ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !359 ; 7 uses
  %i.ax = add nsw i32 %i.aw, %i.ar                ; 9 uses
  %i.ay = add nsw i32 %i.aw, %3                   ; 5 uses
  %i.az = load i32, ptr %i.v, align 4, !tbaa !359 ; 7 uses
  %i.ba = add nsw i32 %i.az, %i.ar                ; 9 uses
  %i.bb = add nsw i32 %i.az, %3                   ; 5 uses
  store i32 %i.at, ptr %4, align 4, !tbaa !359
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !359
  store i32 %i.az, ptr %i.i, align 4, !tbaa !359
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !481
  %i.be = fcmp olt double %i.bd, %2               ; 2 uses
  %i.bf = xor i1 %i.c, %i.be
  %i.bg = xor i1 %i.h, %i.be
  %or.cond = and i1 %i.bf, %i.bg
  br i1 %or.cond, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.au, ptr %4, align 4, !tbaa !359
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !359
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !359
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !481
  %i.bj = fcmp olt double %i.bi, %2               ; 2 uses
  %i.bk = xor i1 %i.h, %i.bj
  %i.bl = xor i1 %i.n, %i.bj
  %or.cond278 = and i1 %i.bk, %i.bl
  br i1 %or.cond278, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.at, ptr %4, align 4, !tbaa !359
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !359
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !359
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !481
  %i.bo = fcmp olt double %i.bn, %2               ; 2 uses
  %i.bp = xor i1 %i.n, %i.bo
  %i.bq = xor i1 %i.r, %i.bo
  %or.cond279 = and i1 %i.bp, %i.bq
  br i1 %or.cond279, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.as, ptr %4, align 4, !tbaa !359
  store i32 %i.aw, ptr %i.s, align 4, !tbaa !359
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !359
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bs = load double, ptr %i.br, align 8, !tbaa !481
  %i.bt = fcmp olt double %i.bs, %2               ; 2 uses
  %i.bu = xor i1 %i.c, %i.bt
  %i.bv = xor i1 %i.r, %i.bt
  %or.cond280 = and i1 %i.bu, %i.bv
  br i1 %or.cond280, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.at, ptr %4, align 4, !tbaa !359
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !359
  store i32 %i.az, ptr %i.i, align 4, !tbaa !359
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !481
  %i.by = fcmp olt double %i.bx, %2               ; 2 uses
  %i.bz = xor i1 %i.z, %i.by
  %i.ca = xor i1 %i.ae, %i.by
  %or.cond281 = and i1 %i.bz, %i.ca
  br i1 %or.cond281, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.au, ptr %4, align 4, !tbaa !359
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !359
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !359
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !481
  %i.cd = fcmp olt double %i.cc, %2               ; 2 uses
  %i.ce = xor i1 %i.ae, %i.cd
  %i.cf = xor i1 %i.aj, %i.cd
  %or.cond282 = and i1 %i.ce, %i.cf
  br i1 %or.cond282, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.at, ptr %4, align 4, !tbaa !359
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !359
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !359
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !481
  %i.ci = fcmp olt double %i.ch, %2               ; 2 uses
  %i.cj = xor i1 %i.aj, %i.ci
  %i.ck = xor i1 %i.an, %i.ci
  %or.cond283 = and i1 %i.cj, %i.ck
  br i1 %or.cond283, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.as, ptr %4, align 4, !tbaa !359
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !359
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !359
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !481
  %i.cn = fcmp olt double %i.cm, %2               ; 2 uses
  %i.co = xor i1 %i.an, %i.cn
  %i.cp = xor i1 %i.z, %i.cn
  %or.cond284 = and i1 %i.co, %i.cp
  br i1 %or.cond284, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.as, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.az, ptr %i.i, align 4, !tbaa !359
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !481
  %i.cs = fcmp olt double %i.cr, %2               ; 2 uses
  %i.ct = xor i1 %i.c, %i.cs
  %i.cu = xor i1 %i.z, %i.cs
  %or.cond285 = and i1 %i.ct, %i.cu
  br i1 %or.cond285, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.au, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.az, ptr %i.i, align 4, !tbaa !359
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !481
  %i.cx = fcmp olt double %i.cw, %2               ; 2 uses
  %i.cy = xor i1 %i.h, %i.cx
  %i.cz = xor i1 %i.ae, %i.cx
  %or.cond286 = and i1 %i.cy, %i.cz
  br i1 %or.cond286, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.au, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !359
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.db = load double, ptr %i.da, align 8, !tbaa !481
  %i.dc = fcmp olt double %i.db, %2               ; 2 uses
  %i.dd = xor i1 %i.n, %i.dc
  %i.de = xor i1 %i.aj, %i.dc
  %or.cond287 = and i1 %i.dd, %i.de
  br i1 %or.cond287, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.as, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !359
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dg = load double, ptr %i.df, align 8, !tbaa !481
  %i.dh = fcmp olt double %i.dg, %2               ; 2 uses
  %i.di = xor i1 %i.r, %i.dh
  %i.dj = xor i1 %i.an, %i.dh
  %or.cond288 = and i1 %i.di, %i.dj
  br i1 %or.cond288, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.at, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.az, ptr %i.i, align 4, !tbaa !359
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !481
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
  store i32 %i.au, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.ba, ptr %i.i, align 4, !tbaa !359
  %i.dr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !481
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
  store i32 %i.at, ptr %4, align 4, !tbaa !359
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !359
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !359
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !481
  %i.ea = fcmp olt double %i.dz, %2               ; 4 uses
  %i.eb = xor i1 %i.n, %i.ea
  %i.ec = xor i1 %i.r, %i.ea
end_hunk_1

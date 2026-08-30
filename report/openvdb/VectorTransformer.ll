Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VectorTransformer?download=true
inline.NumInlined: 3364
inline.NumDeleted: 1699
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb:bb.a
  br i1 %.not344, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.bo

bb.bn:                                            ; preds = %.split289
  %i.kr = load i32, ptr %i.j, align 8, !tbaa !299
  %i.ks = add i32 %i.kr, 1
  store i32 %i.ks, ptr %i.j, align 8, !tbaa !299
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.bo:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit144
  %i.kt = load ptr, ptr %i.o, align 8, !tbaa !317 ; 2 uses
  %i.ku = load i32, ptr %i.n, align 8, !tbaa !297
  %i.kv = add i32 %i.ku, 1                        ; 4 uses
  %i.kw = lshr i32 %i.kv, 6                       ; 3 uses
  %i.kx = icmp ugt i32 %i.kv, 4095
  br i1 %i.kx, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i150, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ky = and i32 %i.kv, 63
  %i.kz = zext nneg i32 %i.kw to i64              ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.kz
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !318 ; 2 uses
  %i.lc = zext nneg i32 %i.ky to i64              ; 2 uses
  %i.ld = shl nuw i64 1, %i.lc
  %i.le = and i64 %i.lb, %i.ld
  %.not.not.i.i.i.i.i.i145 = icmp eq i64 %i.le, 0
  br i1 %.not.not.i.i.i.i.i.i145, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i150, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lf = xor i64 %i.lb, -1
  %i.lg = shl nsw i64 -1, %i.lc
  %i.lh = and i64 %i.lg, %i.lf                    ; 2 uses
  %.not25.i.i.i.i.i.i146 = icmp eq i64 %i.lh, 0
  br i1 %.not25.i.i.i.i.i.i146, label %.lr.ph.i.i.i.i.i.i152.preheader, label %.critedge.i.i.i.i.i.i147

.lr.ph.i.i.i.i.i.i152.preheader:                  ; preds = %bb.bq
  %exitcond.not.i.i.i.i.i.i154591 = icmp eq i32 %i.kw, 63
  br i1 %exitcond.not.i.i.i.i.i.i154591, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i150, label %.lr.ph593

.lr.ph.i.i.i.i.i.i152:                            ; preds = %.lr.ph593
  %exitcond.not.i.i.i.i.i.i154 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i155, 63
  br i1 %exitcond.not.i.i.i.i.i.i154, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i150, label %.lr.ph593, !llvm.loop !319

.lr.ph593:                                        ; preds = %.lr.ph.i.i.i.i.i.i152.preheader, %.lr.ph.i.i.i.i.i.i152
  %indvars.iv.i.i.i.i.i.i153592 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i155, %.lr.ph.i.i.i.i.i.i152 ], [ %i.kz, %.lr.ph.i.i.i.i.i.i152.preheader ]
  %indvars.iv.next.i.i.i.i.i.i155 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i153592, 1 ; 4 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.next.i.i.i.i.i.i155
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i.i.i.i156 = icmp eq i64 %i.lj, -1
  br i1 %.not.i.i.i.i.i.i156, label %.lr.ph.i.i.i.i.i.i152, label %.critedge.loopexit.i.i.i.i.i.i157, !llvm.loop !319

.critedge.loopexit.i.i.i.i.i.i157:                ; preds = %.lr.ph593
  %i.lk = xor i64 %i.lj, -1
  %i.ll = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i155 to i32
  br label %.critedge.i.i.i.i.i.i147

.critedge.i.i.i.i.i.i147:                         ; preds = %.critedge.loopexit.i.i.i.i.i.i157, %bb.bq
  %.017.lcssa.i.i.i.i.i.i148 = phi i32 [ %i.kw, %bb.bq ], [ %i.ll, %.critedge.loopexit.i.i.i.i.i.i157 ]
  %.0.lcssa.i.i.i.i.i.i149 = phi i64 [ %i.lh, %bb.bq ], [ %i.lk, %.critedge.loopexit.i.i.i.i.i.i157 ]
  %i.lm = shl nuw nsw i32 %.017.lcssa.i.i.i.i.i.i148, 6
  %i.ln = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i149, i1 true)
  %i.lo = trunc nuw nsw i64 %i.ln to i32
  %i.lp = or disjoint i32 %i.lm, %i.lo
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i150

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i150: ; preds = %.lr.ph.i.i.i.i.i.i152, %.lr.ph.i.i.i.i.i.i152.preheader, %.critedge.i.i.i.i.i.i147, %bb.bp, %bb.bo
  %.1.i.i.i.i.i.i151 = phi i32 [ 4096, %bb.bo ], [ %i.kv, %bb.bp ], [ %i.lp, %.critedge.i.i.i.i.i.i147 ], [ 4096, %.lr.ph.i.i.i.i.i.i152.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i152 ]
  store i32 %.1.i.i.i.i.i.i151, ptr %i.n, align 8, !tbaa !297
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.br:                                            ; preds = %.split291, %.split290
  %i.lq = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.fz) ; 0 uses
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.bs:                                            ; preds = %bb.ar
  br i1 %i.ga, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  switch i32 %i.fz, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread [
    i32 1, label %bb.bu
    i32 2, label %bb.by
    i32 3, label %bb.cc
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.lr = load ptr, ptr %i.u, align 8, !tbaa !85
  %.not.i = icmp eq ptr %i.lr, null
  br i1 %.not.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ls = load i32, ptr %i.m, align 8, !tbaa !297 ; 2 uses
  %.not14.i = icmp eq i32 %i.ls, 4096
  br i1 %.not14.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lt = tail call noundef nonnull align 8 dereferenceable(66576) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
  %i.lu = zext i32 %i.ls to i64
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %i.lu
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !260 ; 3 uses
  %.not10.not.i = icmp eq ptr %i.lw, null
  br i1 %.not10.not.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lx = load ptr, ptr %i.u, align 8, !tbaa !85  ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !332
  br label %bb.cl

bb.by:                                            ; preds = %bb.bt
  %i.lz = load ptr, ptr %i.t, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ma = load i32, ptr %i.l, align 8, !tbaa !298 ; 2 uses
  %.not13.i.i = icmp eq i32 %i.ma, 32768
  br i1 %.not13.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mb = tail call noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.r)
  %i.mc = zext i32 %i.ma to i64
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !260 ; 3 uses
  %.not10.not.i.i = icmp eq ptr %i.me, null
  br i1 %.not10.not.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mf = load ptr, ptr %i.t, align 8, !tbaa !86  ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 65536 ; 2 uses
  %i.mh = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.mg), !noalias !333
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !338
  br label %bb.cl

bb.cc:                                            ; preds = %bb.bt
  %i.mi = load ptr, ptr %i.s, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mj = load ptr, ptr %i.g, align 8, !tbaa !315
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.h, align 8, !tbaa !325 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ml, %i.mk
  br i1 %.not9.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 48
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !339 ; 3 uses
  %.not7.not.i.i.i = icmp eq ptr %i.mn, null
  br i1 %.not7.not.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 524288 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %bb.cf
  %.013.i.i.i.i.i.i.i234 = phi ptr [ %i.mo, %bb.cf ], [ %i.mw, %bb.ck ] ; 5 uses
  %.0712.i.i.i.i.i.i.i235 = phi i32 [ 0, %bb.cf ], [ %i.mx, %bb.ck ] ; 5 uses
  %i.mp = load i64, ptr %.013.i.i.i.i.i.i.i234, align 8, !tbaa !318, !noalias !343 ; 2 uses
  %.not.i.i.i.i.i.i.i236 = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i.i.i.i.i.i236, label %bb.ch, label %.critedge.thread.i.i.i.i.i.i.i237

bb.ch:                                            ; preds = %bb.cg
  %i.mq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !318, !noalias !343 ; 2 uses
  %.not.i.i.i.i.i.i.i236.1 = icmp eq i64 %i.mr, 0
  br i1 %.not.i.i.i.i.i.i.i236.1, label %bb.ci, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710

bb.ci:                                            ; preds = %bb.ch
  %i.ms = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !318, !noalias !343 ; 2 uses
  %.not.i.i.i.i.i.i.i236.2 = icmp eq i64 %i.mt, 0
  br i1 %.not.i.i.i.i.i.i.i236.2, label %bb.cj, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707

bb.cj:                                            ; preds = %bb.ci
  %i.mu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 24
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !318, !noalias !343 ; 2 uses
  %.not.i.i.i.i.i.i.i236.3 = icmp eq i64 %i.mv, 0
  br i1 %.not.i.i.i.i.i.i.i236.3, label %bb.ck, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit

bb.ck:                                            ; preds = %bb.cj
  %i.mw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 32
  %i.mx = add nuw nsw i32 %.0712.i.i.i.i.i.i.i235, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i238.3 = icmp eq i32 %i.mx, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i238.3, label %.loopexit.i.i.i, label %bb.cg, !llvm.loop !348

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit: ; preds = %bb.cj
  %i.my = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 3
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707: ; preds = %bb.ci
  %i.mz = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 2
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710: ; preds = %bb.ch
  %i.na = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 1
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237:                ; preds = %bb.cg, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit
  %.0712.i.i.i.i.i.i.i235.lcssa = phi i32 [ %i.na, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710 ], [ %i.mz, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707 ], [ %i.my, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i235, %bb.cg ]
  %.lcssa619 = phi i64 [ %i.mr, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710 ], [ %i.mt, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707 ], [ %i.mv, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit ], [ %i.mp, %bb.cg ]
  %i.nb = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i235.lcssa, 6
  %i.nc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa619, i1 true)
  %i.nd = trunc nuw nsw i64 %i.nc to i32
  %i.ne = or disjoint i32 %i.nb, %i.nd
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.ck, %.critedge.thread.i.i.i.i.i.i.i237
  %i.nf = phi i32 [ %i.ne, %.critedge.thread.i.i.i.i.i.i.i237 ], [ 32768, %bb.ck ]
  store ptr %i.mn, ptr %i.mi, align 8, !tbaa !349
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i.i, %bb.cb, %bb.bx
  %.sink31.i.sink30.i = phi ptr [ %i.lx, %bb.bx ], [ %i.mi, %.loopexit.i.i.i ], [ %i.mf, %bb.cb ] ; 2 uses
  %.sink29.i.sink.i = phi i32 [ 512, %bb.bx ], [ %i.nf, %.loopexit.i.i.i ], [ %i.mh, %bb.cb ]
  %.sink.i.sink.i = phi ptr [ %i.ly, %bb.bx ], [ %i.mo, %.loopexit.i.i.i ], [ %i.mg, %bb.cb ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.sink31.i.sink30.i, i64 8
  store i32 %.sink29.i.sink.i, ptr %i.ng, align 8, !tbaa !22
  %i.nh = getelementptr inbounds nuw i8, ptr %.sink31.i.sink30.i, i64 16
  store ptr %.sink.i.sink.i, ptr %i.nh, align 8, !tbaa !350
  %i.ni = load i32, ptr %i.c, align 8, !tbaa !296
  %i.nj = add i32 %i.ni, -1                       ; 3 uses
  store i32 %i.nj, ptr %i.c, align 8, !tbaa !296
  switch i32 %i.nj, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit [
    i32 0, label %bb.cm
    i32 1, label %bb.cu
    i32 2, label %bb.cx
    i32 3, label %bb.de
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.nk = load ptr, ptr %0, align 8               ; 9 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 16 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.no = load atomic i32, ptr %i.nn seq_cst, align 4, !noalias !351
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.no, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.nk), !noalias !351
  br label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  %i.np = load ptr, ptr %i.nk, align 8, !tbaa !260, !noalias !351 ; 2 uses
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %bb.cp, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i

bb.cp:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nk, i64 12 ; 4 uses
  %i.ns = atomicrmw xchg ptr %i.nr, i8 1 seq_cst, align 1, !noalias !351
  %i.nt = trunc i8 %i.ns to i1
  br i1 %i.nt, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cp, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i ], [ 1, %bb.cp ] ; 8 uses
  %i.nu = icmp slt i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 17
  br i1 %i.nu, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.nv = icmp sgt i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.cq
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.i.i.i.i.i.prol = phi i32 [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.nw = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !351
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !356

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.nx = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.nx, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.01.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ny, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !351
  tail call void @llvm.x86.sse2.pause(), !noalias !351
  tail call void @llvm.x86.sse2.pause(), !noalias !351
  tail call void @llvm.x86.sse2.pause(), !noalias !351
  tail call void @llvm.x86.sse2.pause(), !noalias !351
  tail call void @llvm.x86.sse2.pause(), !noalias !351
  tail call void @llvm.x86.sse2.pause(), !noalias !351
  %i.ny = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause(), !noalias !351
  %i.nz = icmp sgt i32 %.01.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.nz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !358

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.cq
  %i.oa = shl i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ob = tail call noundef i32 @sched_yield() #20, !noalias !351 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cr, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i32 [ %i.oa, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %bb.cr ]
  %i.oc = atomicrmw xchg ptr %i.nr, i8 1 seq_cst, align 1, !noalias !351
  %i.od = trunc i8 %i.oc to i1
  br i1 %i.od, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i, !llvm.loop !359

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i, %bb.cp
  %i.oe = load ptr, ptr %i.nk, align 8, !tbaa !260, !noalias !351 ; 2 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %bb.cs, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i

bb.cs:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i
  %i.og = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znam(i64 noundef 6144) #27
          to label %bb.ct unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i.i.i, !noalias !351 ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.og, ptr %i.nk, align 8, !tbaa !260, !noalias !351
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.cs
  %i.oh = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.nr release, align 1, !noalias !351
  resume { ptr, i32 } %i.oh

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i: ; preds = %bb.ct, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i
  %i.oi = phi ptr [ %i.og, %bb.ct ], [ %i.oe, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i ]
  store atomic i8 0, ptr %i.nr release, align 4, !noalias !351
  br label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i

_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i, %bb.cm
  %.sroa.87.0.i.a = phi ptr [ undef, %bb.cm ], [ %i.oi, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ %i.np, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  %.sroa.11.0.i = phi ptr [ null, %bb.cm ], [ %i.nm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ %i.nm, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  %.sroa.5.0.i = phi i32 [ 512, %bb.cm ], [ 0, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ 0, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  store ptr %i.nk, ptr %i.b, align 8, !tbaa !360
  store i32 %.sroa.5.0.i, ptr %i.j, align 8, !tbaa !299
  store ptr %.sroa.11.0.i, ptr %i.w, align 8, !tbaa !320
  store ptr %.sroa.87.0.i.a, ptr %i.x, align 8, !tbaa !361
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

bb.cu:                                            ; preds = %bb.cl
  %i.oj = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 65536 ; 2 uses
  %i.om = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE12findFirstOffEv(ptr noundef nonnull align 8 dereferenceable(512) %i.ol), !noalias !362
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.86.0.i.i = phi ptr [ %i.ol, %bb.cv ], [ null, %bb.cu ]
  %.sroa.5.0.i.i = phi i32 [ %i.om, %bb.cv ], [ 4096, %bb.cu ]
  store ptr %i.oj, ptr %i.d, align 8, !tbaa !367
  store i32 %.sroa.5.0.i.i, ptr %i.n, align 8, !tbaa !297
  store ptr %.sroa.86.0.i.i, ptr %i.o, align 8, !tbaa !317
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

bb.cx:                                            ; preds = %bb.cl
  %i.on = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 524288 ; 3 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.dd, %bb.cy
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.op, %bb.cy ], [ %i.ox, %bb.dd ] ; 5 uses
  %.0712.i.i.i.i.i.i.i = phi i32 [ 0, %bb.cy ], [ %i.oy, %bb.dd ] ; 5 uses
  %i.oq = load i64, ptr %.013.i.i.i.i.i.i.i, align 8, !tbaa !318, !noalias !368 ; 2 uses
  %.not.i.i.i.i.i.i6.i = icmp eq i64 %i.oq, -1
  br i1 %.not.i.i.i.i.i.i6.i, label %bb.da, label %.critedge.thread.i.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.or = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 8
  %i.os = load i64, ptr %i.or, align 8, !tbaa !318, !noalias !368 ; 2 uses
  %.not.i.i.i.i.i.i6.i.1 = icmp eq i64 %i.os, -1
  br i1 %.not.i.i.i.i.i.i6.i.1, label %bb.db, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722

bb.db:                                            ; preds = %bb.da
  %i.ot = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 16
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !318, !noalias !368 ; 2 uses
  %.not.i.i.i.i.i.i6.i.2 = icmp eq i64 %i.ou, -1
  br i1 %.not.i.i.i.i.i.i6.i.2, label %bb.dc, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719

bb.dc:                                            ; preds = %bb.db
  %i.ov = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 24
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !318, !noalias !368 ; 2 uses
  %.not.i.i.i.i.i.i6.i.3 = icmp eq i64 %i.ow, -1
  br i1 %.not.i.i.i.i.i.i6.i.3, label %bb.dd, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit

bb.dd:                                            ; preds = %bb.dc
  %i.ox = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 32
  %i.oy = add nuw nsw i32 %.0712.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i32 %i.oy, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i, label %bb.cz, !llvm.loop !373

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit:   ; preds = %bb.dc
  %i.oz = or disjoint i32 %.0712.i.i.i.i.i.i.i, 3
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719: ; preds = %bb.db
  %i.pa = or disjoint i32 %.0712.i.i.i.i.i.i.i, 2
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722: ; preds = %bb.da
  %i.pb = or disjoint i32 %.0712.i.i.i.i.i.i.i, 1
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i:                   ; preds = %bb.cz, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit
  %.0712.i.i.i.i.i.i.i.lcssa = phi i32 [ %i.pb, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722 ], [ %i.pa, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719 ], [ %i.oz, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i, %bb.cz ]
  %.lcssa622 = phi i64 [ %i.os, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722 ], [ %i.ou, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719 ], [ %i.ow, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit ], [ %i.oq, %bb.cz ]
  %i.pc = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i.lcssa, 6
  %i.pd = xor i64 %.lcssa622, -1
  %i.pe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pd, i1 true)
  %i.pf = trunc nuw nsw i64 %i.pe to i32
  %i.pg = or disjoint i32 %i.pc, %i.pf
  br label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i

_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i: ; preds = %bb.dd, %.critedge.thread.i.i.i.i.i.i.i, %bb.cx
  %.sroa.86.0.i.i.i = phi ptr [ null, %bb.cx ], [ %i.op, %.critedge.thread.i.i.i.i.i.i.i ], [ %i.op, %bb.dd ]
  %.sroa.5.0.i.i.i = phi i32 [ 32768, %bb.cx ], [ %i.pg, %.critedge.thread.i.i.i.i.i.i.i ], [ 32768, %bb.dd ]
  store ptr %i.on, ptr %i.p, align 8, !tbaa !374
  store i32 %.sroa.5.0.i.i.i, ptr %i.v, align 8, !tbaa !298
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i

bb.de:                                            ; preds = %bb.cl
  %i.ph = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !309 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 2 uses
  %.not1.i.i.i.i.i.i.i.i = icmp eq ptr %i.pl, %i.pk
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.df, %bb.dg
  %.sroa.2.0.i.i.i.i.i.i = phi ptr [ %i.pp, %bb.dg ], [ %i.pk, %bb.df ] ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i.i.i.i.i, i64 48
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !326
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.pp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i.i.i.i.i.i) #26 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.pp, %i.pl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !375

_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i: ; preds = %bb.dg, %.lr.ph.i.i.i.i.i.i.i.i, %bb.df, %bb.de
  %.sroa.5.0.i.i.i.i = phi ptr [ null, %bb.de ], [ %i.pk, %bb.df ], [ %i.pp, %bb.dg ], [ %.sroa.2.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %i.ph, ptr %i.e, align 8
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i

_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i: ; preds = %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i
  %.sink.i.i.i = phi i64 [ 32, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i ], [ 16, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i ]
  %.sroa.5.0.i.sink.i.i.i = phi ptr [ %.sroa.5.0.i.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i ], [ %.sroa.86.0.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i ]
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink.i.i.i
  store ptr %.sroa.5.0.i.sink.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i, %bb.cw, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i
  %.pr = load i32, ptr %i.c, align 8, !tbaa !296
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split, %bb.cl
  %i.pq = phi i32 [ %.pr, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split ], [ %i.nj, %bb.cl ] ; 5 uses
  switch i32 %i.pq, label %bb.dl [
    i32 0, label %bb.dk
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166
    i32 2, label %bb.dh
    i32 3, label %bb.di
  ]

bb.dh:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166

bb.di:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  %i.pr = load ptr, ptr %i.e, align 8, !tbaa !308 ; 2 uses
  %.not.i.i.i.i.i159 = icmp eq ptr %i.pr, null
  br i1 %.not.i.i.i.i.i159, label %.thread297, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !309 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i160 = load ptr, ptr %i.f, align 8, !tbaa !313 ; 2 uses
  %.not4.i.i.i.i.i.i161 = icmp eq ptr %i.pt, %.sroa.0.0.copyload.i.i.i.i.i160
  br i1 %.not4.i.i.i.i.i.i161, label %.thread297, label %.lr.ph.i.i.i.i.i.i162

.lr.ph.i.i.i.i.i.i162:                            ; preds = %bb.dj, %.lr.ph.i.i.i.i.i.i162
  %.06.i.i.i.i.i.i163 = phi i32 [ %i.pv, %.lr.ph.i.i.i.i.i.i162 ], [ 0, %bb.dj ]
  %.sroa.02.05.i.i.i.i.i.i164 = phi ptr [ %i.pu, %.lr.ph.i.i.i.i.i.i162 ], [ %i.pt, %bb.dj ]
  %i.pu = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i164) #26 ; 2 uses
  %i.pv = add i32 %.06.i.i.i.i.i.i163, 1          ; 2 uses
  %.not.i.i.i.i.i.i165 = icmp eq ptr %i.pu, %.sroa.0.0.copyload.i.i.i.i.i160
  br i1 %.not.i.i.i.i.i.i165, label %.thread297, label %.lr.ph.i.i.i.i.i.i162, !llvm.loop !314

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit, %bb.dh
  %.sink3.i.i167 = phi i64 [ 32, %bb.dh ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit ]
  %i.pw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i167
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !22
  br label %bb.dl

bb.dk:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  %i.py = load i32, ptr %i.j, align 8, !tbaa !299
  %i.pz = load i32, ptr %i.k, align 8, !tbaa !299
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178

bb.dl:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166
  %.ph295 = phi i32 [ -1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit ], [ %i.px, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166 ] ; 2 uses
  switch i32 %i.pq, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178 [
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176
    i32 2, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176

.thread297:                                       ; preds = %.lr.ph.i.i.i.i.i.i162, %bb.dj, %bb.di
  %.ph295299 = phi i32 [ 0, %bb.di ], [ 0, %bb.dj ], [ %i.pv, %.lr.ph.i.i.i.i.i.i162 ] ; 3 uses
  %i.qa = load ptr, ptr %i.g, align 8, !tbaa !315 ; 2 uses
  %.not.i.i.i.i.i169 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i.i.i.i169, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %bb.dn

bb.dn:                                            ; preds = %.thread297
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !309 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i170 = load ptr, ptr %i.h, align 8, !tbaa !313 ; 2 uses
  %.not4.i.i.i.i.i.i171 = icmp eq ptr %i.qc, %.sroa.0.0.copyload.i.i.i.i.i170
  br i1 %.not4.i.i.i.i.i.i171, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %.lr.ph.i.i.i.i.i.i172

.lr.ph.i.i.i.i.i.i172:                            ; preds = %bb.dn, %.lr.ph.i.i.i.i.i.i172
  %.06.i.i.i.i.i.i173 = phi i32 [ %i.qe, %.lr.ph.i.i.i.i.i.i172 ], [ 0, %bb.dn ]
  %.sroa.02.05.i.i.i.i.i.i174 = phi ptr [ %i.qd, %.lr.ph.i.i.i.i.i.i172 ], [ %i.qc, %bb.dn ]
  %i.qd = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i174) #26 ; 2 uses
  %i.qe = add i32 %.06.i.i.i.i.i.i173, 1          ; 2 uses
  %.not.i.i.i.i.i.i175 = icmp eq ptr %i.qd, %.sroa.0.0.copyload.i.i.i.i.i170
  br i1 %.not.i.i.i.i.i.i175, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %.lr.ph.i.i.i.i.i.i172, !llvm.loop !316

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176: ; preds = %bb.dm, %bb.dl
  %.sink3.i.i177 = phi i64 [ 32, %bb.dm ], [ 8, %bb.dl ]
  %i.qf = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink3.i.i177
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !22
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178: ; preds = %.lr.ph.i.i.i.i.i.i172, %bb.dk, %bb.dl, %.thread297, %bb.dn, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176
  %i.qh = phi i32 [ %i.py, %bb.dk ], [ %.ph295299, %bb.dn ], [ %.ph295, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176 ], [ %.ph295, %bb.dl ], [ %.ph295299, %.thread297 ], [ %.ph295299, %.lr.ph.i.i.i.i.i.i172 ]
  %i.qi = phi i32 [ %i.pz, %bb.dk ], [ 0, %bb.dn ], [ %i.qg, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176 ], [ -1, %bb.dl ], [ 0, %.thread297 ], [ %i.qe, %.lr.ph.i.i.i.i.i.i172 ]
  %i.qj = icmp eq i32 %i.qh, %i.qi
  br i1 %i.qj, label %bb.do, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.do:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178
  switch i32 %i.pq, label %.split301 [
    i32 0, label %.split300
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179
    i32 2, label %.split302
  ]

.split300:                                        ; preds = %bb.do
  %i.qk = load i32, ptr %i.k, align 8, !tbaa !299
  %.not336 = icmp eq i32 %i.qk, 512
  br i1 %.not336, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dp

.split302:                                        ; preds = %bb.do
  %i.ql = load i32, ptr %i.l, align 8, !tbaa !298
  %.not334 = icmp eq i32 %i.ql, 32768
  br i1 %.not334, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dt

.split301:                                        ; preds = %bb.do
  %i.qm = icmp eq i32 %i.pq, 3
  %i.qn = load ptr, ptr %i.g, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load ptr, ptr %i.h, align 8
  %i.qq = icmp ne ptr %i.qp, %i.qo
  %i.qr = select i1 %i.qm, i1 %i.qq, i1 false
  br i1 %i.qr, label %bb.dt, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179: ; preds = %bb.do
  %i.qs = load i32, ptr %i.m, align 8, !tbaa !297
  %.not335 = icmp eq i32 %i.qs, 4096
  br i1 %.not335, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dq

bb.dp:                                            ; preds = %.split300
  %i.qt = load i32, ptr %i.j, align 8, !tbaa !299
  %i.qu = add i32 %i.qt, 1
  store i32 %i.qu, ptr %i.j, align 8, !tbaa !299
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.dq:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179
  %i.qv = load ptr, ptr %i.o, align 8, !tbaa !317 ; 2 uses
  %i.qw = load i32, ptr %i.n, align 8, !tbaa !297
  %i.qx = add i32 %i.qw, 1                        ; 4 uses
  %i.qy = lshr i32 %i.qx, 6                       ; 3 uses
  %i.qz = icmp ugt i32 %i.qx, 4095
  br i1 %i.qz, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i185, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ra = and i32 %i.qx, 63
  %i.rb = zext nneg i32 %i.qy to i64              ; 2 uses
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.rb
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !318 ; 2 uses
  %i.re = zext nneg i32 %i.ra to i64              ; 2 uses
  %i.rf = shl nuw i64 1, %i.re
  %i.rg = and i64 %i.rd, %i.rf
  %.not.not.i.i.i.i.i.i180 = icmp eq i64 %i.rg, 0
  br i1 %.not.not.i.i.i.i.i.i180, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE4nextEv.exit.i.i185, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.rh = xor i64 %i.rd, -1
  %i.ri = shl nsw i64 -1, %i.re
  %i.rj = and i64 %i.ri, %i.rh                    ; 2 uses
  %.not25.i.i.i.i.i.i181 = icmp eq i64 %i.rj, 0
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv:bb.a
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !318
  %.not.34 = icmp eq i64 %i.bq, 0
  br i1 %.not.34, label %bb.aj, label %.critedge.thread

bb.aj:                                            ; preds = %bb.ai
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !318
  %.not.35 = icmp eq i64 %i.bs, 0
  br i1 %.not.35, label %bb.ak, label %.critedge.thread

bb.ak:                                            ; preds = %bb.aj
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !318
  %.not.36 = icmp eq i64 %i.bu, 0
  br i1 %.not.36, label %bb.al, label %.critedge.thread

bb.al:                                            ; preds = %bb.ak
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !318
  %.not.37 = icmp eq i64 %i.bw, 0
  br i1 %.not.37, label %bb.am, label %.critedge.thread

bb.am:                                            ; preds = %bb.al
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !318
  %.not.38 = icmp eq i64 %i.by, 0
  br i1 %.not.38, label %bb.an, label %.critedge.thread

bb.an:                                            ; preds = %bb.am
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !318
  %.not.39 = icmp eq i64 %i.ca, 0
  br i1 %.not.39, label %bb.ao, label %.critedge.thread

bb.ao:                                            ; preds = %bb.an
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !318
  %.not.40 = icmp eq i64 %i.cc, 0
  br i1 %.not.40, label %bb.ap, label %.critedge.thread

bb.ap:                                            ; preds = %bb.ao
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !318
  %.not.41 = icmp eq i64 %i.ce, 0
  br i1 %.not.41, label %bb.aq, label %.critedge.thread

bb.aq:                                            ; preds = %bb.ap
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !318
  %.not.42 = icmp eq i64 %i.cg, 0
  br i1 %.not.42, label %bb.ar, label %.critedge.thread

bb.ar:                                            ; preds = %bb.aq
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !318
  %.not.43 = icmp eq i64 %i.ci, 0
  br i1 %.not.43, label %bb.as, label %.critedge.thread

bb.as:                                            ; preds = %bb.ar
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !318
  %.not.44 = icmp eq i64 %i.ck, 0
  br i1 %.not.44, label %bb.at, label %.critedge.thread

bb.at:                                            ; preds = %bb.as
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !318
  %.not.45 = icmp eq i64 %i.cm, 0
  br i1 %.not.45, label %bb.au, label %.critedge.thread

bb.au:                                            ; preds = %bb.at
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !318
  %.not.46 = icmp eq i64 %i.co, 0
  br i1 %.not.46, label %bb.av, label %.critedge.thread

bb.av:                                            ; preds = %bb.au
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !318
  %.not.47 = icmp eq i64 %i.cq, 0
  br i1 %.not.47, label %bb.aw, label %.critedge.thread

bb.aw:                                            ; preds = %bb.av
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !318
  %.not.48 = icmp eq i64 %i.cs, 0
  br i1 %.not.48, label %bb.ax, label %.critedge.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !318
  %.not.49 = icmp eq i64 %i.cu, 0
  br i1 %.not.49, label %bb.ay, label %.critedge.thread

bb.ay:                                            ; preds = %bb.ax
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !318
  %.not.50 = icmp eq i64 %i.cw, 0
  br i1 %.not.50, label %bb.az, label %.critedge.thread

bb.az:                                            ; preds = %bb.ay
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !318
  %.not.51 = icmp eq i64 %i.cy, 0
  br i1 %.not.51, label %bb.ba, label %.critedge.thread

bb.ba:                                            ; preds = %bb.az
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !318
  %.not.52 = icmp eq i64 %i.da, 0
  br i1 %.not.52, label %bb.bb, label %.critedge.thread

bb.bb:                                            ; preds = %bb.ba
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !318
  %.not.53 = icmp eq i64 %i.dc, 0
  br i1 %.not.53, label %bb.bc, label %.critedge.thread

bb.bc:                                            ; preds = %bb.bb
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !318
  %.not.54 = icmp eq i64 %i.de, 0
  br i1 %.not.54, label %bb.bd, label %.critedge.thread

bb.bd:                                            ; preds = %bb.bc
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !318
  %.not.55 = icmp eq i64 %i.dg, 0
  br i1 %.not.55, label %bb.be, label %.critedge.thread

bb.be:                                            ; preds = %bb.bd
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !318
  %.not.56 = icmp eq i64 %i.di, 0
  br i1 %.not.56, label %bb.bf, label %.critedge.thread

bb.bf:                                            ; preds = %bb.be
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !318
  %.not.57 = icmp eq i64 %i.dk, 0
  br i1 %.not.57, label %bb.bg, label %.critedge.thread

bb.bg:                                            ; preds = %bb.bf
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !318
  %.not.58 = icmp eq i64 %i.dm, 0
  br i1 %.not.58, label %bb.bh, label %.critedge.thread

bb.bh:                                            ; preds = %bb.bg
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !318
  %.not.59 = icmp eq i64 %i.do, 0
  br i1 %.not.59, label %bb.bi, label %.critedge.thread

bb.bi:                                            ; preds = %bb.bh
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !318
  %.not.60 = icmp eq i64 %i.dq, 0
  br i1 %.not.60, label %bb.bj, label %.critedge.thread

bb.bj:                                            ; preds = %bb.bi
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !318
  %.not.61 = icmp eq i64 %i.ds, 0
  br i1 %.not.61, label %bb.bk, label %.critedge.thread

bb.bk:                                            ; preds = %bb.bj
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !318
  %.not.62 = icmp eq i64 %i.du, 0
  br i1 %.not.62, label %bb.bl, label %.critedge.thread

bb.bl:                                            ; preds = %bb.bk
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !318
  %.not.63 = icmp eq i64 %i.dw, 0
  br i1 %.not.63, label %.critedge, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl
  %.013.lcssa = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ %i.f, %bb.d ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.l, %bb.g ], [ %i.n, %bb.h ], [ %i.p, %bb.i ], [ %i.r, %bb.j ], [ %i.t, %bb.k ], [ %i.v, %bb.l ], [ %i.x, %bb.m ], [ %i.z, %bb.n ], [ %i.ab, %bb.o ], [ %i.ad, %bb.p ], [ %i.af, %bb.q ], [ %i.ah, %bb.r ], [ %i.aj, %bb.s ], [ %i.al, %bb.t ], [ %i.an, %bb.u ], [ %i.ap, %bb.v ], [ %i.ar, %bb.w ], [ %i.at, %bb.x ], [ %i.av, %bb.y ], [ %i.ax, %bb.z ], [ %i.az, %bb.aa ], [ %i.bb, %bb.ab ], [ %i.bd, %bb.ac ], [ %i.bf, %bb.ad ], [ %i.bh, %bb.ae ], [ %i.bj, %bb.af ], [ %i.bl, %bb.ag ], [ %i.bn, %bb.ah ], [ %i.bp, %bb.ai ], [ %i.br, %bb.aj ], [ %i.bt, %bb.ak ], [ %i.bv, %bb.al ], [ %i.bx, %bb.am ], [ %i.bz, %bb.an ], [ %i.cb, %bb.ao ], [ %i.cd, %bb.ap ], [ %i.cf, %bb.aq ], [ %i.ch, %bb.ar ], [ %i.cj, %bb.as ], [ %i.cl, %bb.at ], [ %i.cn, %bb.au ], [ %i.cp, %bb.av ], [ %i.cr, %bb.aw ], [ %i.ct, %bb.ax ], [ %i.cv, %bb.ay ], [ %i.cx, %bb.az ], [ %i.cz, %bb.ba ], [ %i.db, %bb.bb ], [ %i.dd, %bb.bc ], [ %i.df, %bb.bd ], [ %i.dh, %bb.be ], [ %i.dj, %bb.bf ], [ %i.dl, %bb.bg ], [ %i.dn, %bb.bh ], [ %i.dp, %bb.bi ], [ %i.dr, %bb.bj ], [ %i.dt, %bb.bk ], [ %i.dv, %bb.bl ]
  %.0712.lcssa = phi i32 [ 0, %bb.a ], [ 64, %bb.b ], [ 128, %bb.c ], [ 192, %bb.d ], [ 256, %bb.e ], [ 320, %bb.f ], [ 384, %bb.g ], [ 448, %bb.h ], [ 512, %bb.i ], [ 576, %bb.j ], [ 640, %bb.k ], [ 704, %bb.l ], [ 768, %bb.m ], [ 832, %bb.n ], [ 896, %bb.o ], [ 960, %bb.p ], [ 1024, %bb.q ], [ 1088, %bb.r ], [ 1152, %bb.s ], [ 1216, %bb.t ], [ 1280, %bb.u ], [ 1344, %bb.v ], [ 1408, %bb.w ], [ 1472, %bb.x ], [ 1536, %bb.y ], [ 1600, %bb.z ], [ 1664, %bb.aa ], [ 1728, %bb.ab ], [ 1792, %bb.ac ], [ 1856, %bb.ad ], [ 1920, %bb.ae ], [ 1984, %bb.af ], [ 2048, %bb.ag ], [ 2112, %bb.ah ], [ 2176, %bb.ai ], [ 2240, %bb.aj ], [ 2304, %bb.ak ], [ 2368, %bb.al ], [ 2432, %bb.am ], [ 2496, %bb.an ], [ 2560, %bb.ao ], [ 2624, %bb.ap ], [ 2688, %bb.aq ], [ 2752, %bb.ar ], [ 2816, %bb.as ], [ 2880, %bb.at ], [ 2944, %bb.au ], [ 3008, %bb.av ], [ 3072, %bb.aw ], [ 3136, %bb.ax ], [ 3200, %bb.ay ], [ 3264, %bb.az ], [ 3328, %bb.ba ], [ 3392, %bb.bb ], [ 3456, %bb.bc ], [ 3520, %bb.bd ], [ 3584, %bb.be ], [ 3648, %bb.bf ], [ 3712, %bb.bg ], [ 3776, %bb.bh ], [ 3840, %bb.bi ], [ 3904, %bb.bj ], [ 3968, %bb.bk ], [ 4032, %bb.bl ]
  %i.dx = load i64, ptr %.013.lcssa, align 8, !tbaa !318 ; 2 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dx, i1 true)
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = icmp eq i64 %i.dx, 0
  %i.eb = select i1 %i.ea, i32 0, i32 %i.dz, !prof !380
  %i.ec = or disjoint i32 %i.eb, %.0712.lcssa
  br label %.critedge

.critedge:                                        ; preds = %bb.bl, %.critedge.thread
  %i.ed = phi i32 [ %i.ec, %.critedge.thread ], [ 4096, %bb.bl ]
  ret i32 %i.ed
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IfEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 12 uses
  %2 = alloca %"class.std::shared_ptr.75", align 8 ; 7 uses
  %3 = alloca %"class.std::basic_istream", align 8 ; 23 uses
  %4 = alloca %"class.openvdb::v13_0::util::NodeMask.64", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.d = atomicrmw xchg ptr %i.c, i8 1 seq_cst, align 1
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i
  %.sroa.0.02.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i ], [ 1, %bb.b ] ; 8 uses
  %i.f = icmp slt i32 %.sroa.0.02.i.i.i, 17
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = icmp sgt i32 %.sroa.0.02.i.i.i, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %xtraiter = and i32 %.sroa.0.02.i.i.i, 7        ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.01.i.i.i.i.i.prol = phi i32 [ %i.h, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.h = add nsw i32 %.01.i.i.i.i.i.prol, -1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !381

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.i.prol ]
  %i.i = icmp ult i32 %.sroa.0.02.i.i.i, 8
  br i1 %i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01.i.i.i.i.i = phi i32 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %.01.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.j = add nsw i32 %.01.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.k = icmp sgt i32 %.01.i.i.i.i.i, 8
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, !llvm.loop !358

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  %i.l = shl i32 %.sroa.0.02.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.m = tail call noundef i32 @sched_yield() #20 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i: ; preds = %bb.d, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %i.l, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i ], [ %.sroa.0.02.i.i.i, %bb.d ]
  %i.n = atomicrmw xchg ptr %i.c, i8 1 seq_cst, align 1
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit, !llvm.loop !359

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i, %bb.b
  %i.p = load atomic i32, ptr %i.a seq_cst, align 8
  %.not28 = icmp eq i32 %i.p, 0
  br i1 %.not28, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.q = load ptr, ptr %0, align 8, !tbaa !260
  store ptr %i.q, ptr %1, align 8, !tbaa !382
  store ptr null, ptr %0, align 8, !tbaa !260
  %i.r = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znam(i64 noundef 6144) #27
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %5 = load ptr, ptr %1, align 8, !tbaa !382
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !384
  invoke void @_ZNK7openvdb5v13_02io10MappedFile12createBufferEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.75") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.u = load ptr, ptr %2, align 8, !tbaa !387
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.v) #20
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 232
  store ptr null, ptr %i.w, align 8, !tbaa !390
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 240
  store i8 0, ptr %i.x, align 8, !tbaa !404
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 241
  store i8 0, ptr %i.y, align 1, !tbaa !405
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSi, i64 24), ptr %3, align 8, !tbaa !252
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSi, i64 64), ptr %i.v, align 8, !tbaa !252
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !406
  %i.ab = load i64, ptr getelementptr inbounds nuw inrange(0, 40) (i8, ptr @_ZTVSi, i64 0), align 8
  %i.ac = getelementptr inbounds i8, ptr %3, i64 %i.ab
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, ptr noundef %i.u)
          to label %_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit: ; preds = %bb.g
  %i.ae = load ptr, ptr %3, align 8, !tbaa !252
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %i.ag
  %i.ai = load ptr, ptr %1, align 8, !tbaa !382
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  invoke void @_ZN7openvdb5v13_02io20setStreamMetadataPtrERSt8ios_baseRSt10shared_ptrINS1_14StreamMetadataEEb(ptr noundef nonnull align 8 dereferenceable(216) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.x

bb.i:                                             ; preds = %_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false), !tbaa !318
  %i.ak = load ptr, ptr %1, align 8, !tbaa !382
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !408
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.am, i64 0)
          to label %bb.j unwind label %bb.y       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ao = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef 64)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.y ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit: ; preds = %bb.j
  %i.ap = load ptr, ptr %1, align 8, !tbaa !382
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !414
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.aq, i64 0)
          to label %bb.k unwind label %bb.y       ; 0 uses

bb.k:                                             ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !260
  %i.at = load ptr, ptr %3, align 8, !tbaa !252
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %3, i64 %i.av
  %i.ax = invoke noundef zeroext i1 @_ZN7openvdb5v13_02io12getHalfFloatERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.aw)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math4Vec3IfEENS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.as, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(64) %4, i1 noundef zeroext %i.ax)
          to label %bb.m unwind label %bb.y

bb.m:                                             ; preds = %bb.l
  store atomic i32 0, ptr %i.a seq_cst, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ay = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.ay, ptr %3, align 8, !tbaa !252
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %3, i64 %i.bb
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !252
  store i64 0, ptr %i.aa, align 8, !tbaa !406
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.v) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !415 ; 8 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bf, align 8, !tbaa !416
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !418
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !252
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #20, !inline_history !419
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !252
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #20, !inline_history !419
  br label %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !260
  %.not.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.bi, %bb.q ], [ %i.bs, %bb.r ]
  %i.bt = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bt, label %bb.s, label %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !420

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #20
  br label %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.bu = load ptr, ptr %1, align 8, !tbaa !382   ; 2 uses
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EE8FileInfoESt14default_deleteIS8_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EE8FileInfoEEclEPS8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bu)
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EE8FileInfoESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EE8FileInfoESt14default_deleteIS8_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit, %_ZNSt10unique_ptrIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EE8FileInfoESt14default_deleteIS8_EED2Ev.exit
  store atomic i8 0, ptr %i.c release, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit
  ret void

bb.v:                                             ; preds = %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %bb.f
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.j, %bb.l, %bb.k, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit, %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.by, %bb.y ], [ %i.bx, %bb.x ]
  %i.bz = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.bz, ptr %3, align 8, !tbaa !252
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.cb = getelementptr i8, ptr %i.bz, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %3, i64 %i.cc
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !252
  store i64 0, ptr %i.aa, align 8, !tbaa !406
  br label %.body

.body:                                            ; preds = %bb.h, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.z ], [ %i.ad, %bb.h ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.v) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  br label %bb.aa

bb.aa:                                            ; preds = %.body, %bb.w
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.bw, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.aa ], [ %i.bv, %bb.v ]
  %6 = load ptr, ptr %1, align 8, !tbaa !382      ; 2 uses
  %.not.i20 = icmp eq ptr %6, null
  br i1 %.not.i20, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit23, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IfEELj3EE8FileInfoEEclEPS8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %6)
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit23

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit23: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  store atomic i8 0, ptr %i.c release, align 4
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZNK7openvdb5v13_02io10MappedFile12createBufferEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.75") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN7openvdb5v13_02io20setStreamMetadataPtrERSt8ios_baseRSt10shared_ptrINS1_14StreamMetadataEEb(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16), i64, i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math4Vec3IfEENS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i1 noundef zeroext %4) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.81", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.93", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.93", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3.61", align 8 ; 7 uses
  %10 = alloca %"class.openvdb::v13_0::math::Vec3.61", align 8 ; 9 uses
  %11 = alloca %"class.openvdb::v13_0::util::NodeMask.64", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !252
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.g = load ptr, ptr %0, align 8, !tbaa !252
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  call void @_ZN7openvdb5v13_02io20getStreamMetadataPtrERSt8ios_base(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.81") align 8 %5, ptr noundef nonnull align 8 dereferenceable(216) %i.j)
  %i.k = load ptr, ptr %0, align 8, !tbaa !252
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = invoke noundef i32 @_ZN7openvdb5v13_02io18getDataCompressionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.n)
          to label %bb.b unwind label %bb.g       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.p = and i32 %i.o, 2
  %i.q = icmp ne i32 %i.p, 0                      ; 3 uses
  %i.r = icmp ne ptr %1, null                     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %5, align 8, !tbaa !421    ; 2 uses
  %.not163 = icmp eq ptr %i.s, null
  br i1 %.not163, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = invoke noundef zeroext i1 @_ZNK7openvdb5v13_02io14StreamMetadata15delayedLoadMetaEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.u = load ptr, ptr %5, align 8, !tbaa !421
  %i.v = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN7openvdb5v13_02io14StreamMetadata12gridMetadataEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.w, ptr %8, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 17, ptr %i.a, align 8, !tbaa !318
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %8, align 8, !tbaa !264
  %i.y = load i64, ptr %i.a, align 8, !tbaa !318  ; 3 uses
  store i64 %i.y, ptr %i.w, align 8, !tbaa !260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.x, ptr noundef nonnull align 1 dereferenceable(17) @.str.36, i64 17, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !257
  %i.aa = load ptr, ptr %8, align 8, !tbaa !264
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN7openvdb5v13_07MetaMap11getMetadataINS0_2io19DelayedLoadMetadataEEENT_3PtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.93") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.k

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  %i.ac = load ptr, ptr %7, align 8, !tbaa !422   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !415 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %i.ac, ptr %6, align 8, !tbaa !425
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !415
  %.pre = load ptr, ptr %8, align 8, !tbaa !264   ; 2 uses
  %i.ag = icmp eq ptr %.pre, %i.w
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !260
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aj = load ptr, ptr %5, align 8, !tbaa !421
  %i.ak = invoke noundef i64 @_ZNK7openvdb5v13_02io14StreamMetadata4leafEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.m unwind label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.i:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.k:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %8, align 8, !tbaa !264   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.w
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.k
  %i.as = load i64, ptr %i.w, align 8, !tbaa !260
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.ap, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %i.an, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.bo

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.c, %bb.b
  %i.au = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.c ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %i.av = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.c ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.0101 = phi i64 [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 6, ptr %i.b, align 1, !tbaa !260
  %i.aw = load ptr, ptr %0, align 8, !tbaa !252
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %0, i64 %i.ay
  %i.ba = invoke noundef i32 @_ZN7openvdb5v13_02io16getFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.az)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bb = icmp ugt i32 %i.ba, 221
  br i1 %i.bb, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %or.cond = or i1 %i.r, %i.q
  br i1 %or.cond, label %bb.q, label %.invoke

bb.p:                                             ; preds = %.invoke, %bb.t, %bb.r, %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.q:                                             ; preds = %bb.o
  %.not164 = icmp eq ptr %i.av, null
  %or.cond192 = select i1 %i.r, i1 true, i1 %.not164
  br i1 %or.cond192, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = invoke noundef signext i8 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata7getMaskEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.0101)
          to label %bb.s unwind label %bb.p

bb.s:                                             ; preds = %bb.r
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !260
  br label %.invoke

end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb:bb.a
  br i1 %.not344, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.bo

bb.bn:                                            ; preds = %.split289
  %i.kr = load i32, ptr %i.j, align 8, !tbaa !299
  %i.ks = add i32 %i.kr, 1
  store i32 %i.ks, ptr %i.j, align 8, !tbaa !299
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.bo:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit144
  %i.kt = load ptr, ptr %i.o, align 8, !tbaa !317 ; 2 uses
  %i.ku = load i32, ptr %i.n, align 8, !tbaa !297
  %i.kv = add i32 %i.ku, 1                        ; 4 uses
  %i.kw = lshr i32 %i.kv, 6                       ; 3 uses
  %i.kx = icmp ugt i32 %i.kv, 4095
  br i1 %i.kx, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i150, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ky = and i32 %i.kv, 63
  %i.kz = zext nneg i32 %i.kw to i64              ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.kz
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !318 ; 2 uses
  %i.lc = zext nneg i32 %i.ky to i64              ; 2 uses
  %i.ld = shl nuw i64 1, %i.lc
  %i.le = and i64 %i.lb, %i.ld
  %.not.not.i.i.i.i.i.i145 = icmp eq i64 %i.le, 0
  br i1 %.not.not.i.i.i.i.i.i145, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i150, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lf = xor i64 %i.lb, -1
  %i.lg = shl nsw i64 -1, %i.lc
  %i.lh = and i64 %i.lg, %i.lf                    ; 2 uses
  %.not25.i.i.i.i.i.i146 = icmp eq i64 %i.lh, 0
  br i1 %.not25.i.i.i.i.i.i146, label %.lr.ph.i.i.i.i.i.i152.preheader, label %.critedge.i.i.i.i.i.i147

.lr.ph.i.i.i.i.i.i152.preheader:                  ; preds = %bb.bq
  %exitcond.not.i.i.i.i.i.i154591 = icmp eq i32 %i.kw, 63
  br i1 %exitcond.not.i.i.i.i.i.i154591, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i150, label %.lr.ph593

.lr.ph.i.i.i.i.i.i152:                            ; preds = %.lr.ph593
  %exitcond.not.i.i.i.i.i.i154 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i155, 63
  br i1 %exitcond.not.i.i.i.i.i.i154, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i150, label %.lr.ph593, !llvm.loop !319

.lr.ph593:                                        ; preds = %.lr.ph.i.i.i.i.i.i152.preheader, %.lr.ph.i.i.i.i.i.i152
  %indvars.iv.i.i.i.i.i.i153592 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i155, %.lr.ph.i.i.i.i.i.i152 ], [ %i.kz, %.lr.ph.i.i.i.i.i.i152.preheader ]
  %indvars.iv.next.i.i.i.i.i.i155 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i153592, 1 ; 4 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.next.i.i.i.i.i.i155
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i.i.i.i156 = icmp eq i64 %i.lj, -1
  br i1 %.not.i.i.i.i.i.i156, label %.lr.ph.i.i.i.i.i.i152, label %.critedge.loopexit.i.i.i.i.i.i157, !llvm.loop !319

.critedge.loopexit.i.i.i.i.i.i157:                ; preds = %.lr.ph593
  %i.lk = xor i64 %i.lj, -1
  %i.ll = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i155 to i32
  br label %.critedge.i.i.i.i.i.i147

.critedge.i.i.i.i.i.i147:                         ; preds = %.critedge.loopexit.i.i.i.i.i.i157, %bb.bq
  %.017.lcssa.i.i.i.i.i.i148 = phi i32 [ %i.kw, %bb.bq ], [ %i.ll, %.critedge.loopexit.i.i.i.i.i.i157 ]
  %.0.lcssa.i.i.i.i.i.i149 = phi i64 [ %i.lh, %bb.bq ], [ %i.lk, %.critedge.loopexit.i.i.i.i.i.i157 ]
  %i.lm = shl nuw nsw i32 %.017.lcssa.i.i.i.i.i.i148, 6
  %i.ln = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i149, i1 true)
  %i.lo = trunc nuw nsw i64 %i.ln to i32
  %i.lp = or disjoint i32 %i.lm, %i.lo
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i150

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i150: ; preds = %.lr.ph.i.i.i.i.i.i152, %.lr.ph.i.i.i.i.i.i152.preheader, %.critedge.i.i.i.i.i.i147, %bb.bp, %bb.bo
  %.1.i.i.i.i.i.i151 = phi i32 [ 4096, %bb.bo ], [ %i.kv, %bb.bp ], [ %i.lp, %.critedge.i.i.i.i.i.i147 ], [ 4096, %.lr.ph.i.i.i.i.i.i152.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i152 ]
  store i32 %.1.i.i.i.i.i.i151, ptr %i.n, align 8, !tbaa !297
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.br:                                            ; preds = %.split291, %.split290
  %i.lq = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.fz) ; 0 uses
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.bs:                                            ; preds = %bb.ar
  br i1 %i.ga, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  switch i32 %i.fz, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread [
    i32 1, label %bb.bu
    i32 2, label %bb.by
    i32 3, label %bb.cc
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.lr = load ptr, ptr %i.u, align 8, !tbaa !164
  %.not.i = icmp eq ptr %i.lr, null
  br i1 %.not.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ls = load i32, ptr %i.m, align 8, !tbaa !297 ; 2 uses
  %.not14.i = icmp eq i32 %i.ls, 4096
  br i1 %.not14.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lt = tail call noundef nonnull align 8 dereferenceable(99344) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
  %i.lu = zext i32 %i.ls to i64
  %i.lv = getelementptr inbounds nuw [24 x i8], ptr %i.lt, i64 %i.lu
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !260 ; 3 uses
  %.not10.not.i = icmp eq ptr %i.lw, null
  br i1 %.not10.not.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lx = load ptr, ptr %i.u, align 8, !tbaa !164 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !561
  br label %bb.cl

bb.by:                                            ; preds = %bb.bt
  %i.lz = load ptr, ptr %i.t, align 8, !tbaa !165
  %.not.i.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ma = load i32, ptr %i.l, align 8, !tbaa !298 ; 2 uses
  %.not13.i.i = icmp eq i32 %i.ma, 32768
  br i1 %.not13.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mb = tail call noundef nonnull align 8 dereferenceable(794640) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.r)
  %i.mc = zext i32 %i.ma to i64
  %i.md = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !260 ; 3 uses
  %.not10.not.i.i = icmp eq ptr %i.me, null
  br i1 %.not10.not.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mf = load ptr, ptr %i.t, align 8, !tbaa !165 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 98304 ; 2 uses
  %i.mh = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.mg), !noalias !562
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !567
  br label %bb.cl

bb.cc:                                            ; preds = %bb.bt
  %i.mi = load ptr, ptr %i.s, align 8, !tbaa !166 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mj = load ptr, ptr %i.g, align 8, !tbaa !552
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.h, align 8, !tbaa !554 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ml, %i.mk
  br i1 %.not9.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 48
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !568 ; 3 uses
  %.not7.not.i.i.i = icmp eq ptr %i.mn, null
  br i1 %.not7.not.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 786432 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %bb.cf
  %.013.i.i.i.i.i.i.i234 = phi ptr [ %i.mo, %bb.cf ], [ %i.mw, %bb.ck ] ; 5 uses
  %.0712.i.i.i.i.i.i.i235 = phi i32 [ 0, %bb.cf ], [ %i.mx, %bb.ck ] ; 5 uses
  %i.mp = load i64, ptr %.013.i.i.i.i.i.i.i234, align 8, !tbaa !318, !noalias !570 ; 2 uses
  %.not.i.i.i.i.i.i.i236 = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i.i.i.i.i.i236, label %bb.ch, label %.critedge.thread.i.i.i.i.i.i.i237

bb.ch:                                            ; preds = %bb.cg
  %i.mq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !318, !noalias !570 ; 2 uses
  %.not.i.i.i.i.i.i.i236.1 = icmp eq i64 %i.mr, 0
  br i1 %.not.i.i.i.i.i.i.i236.1, label %bb.ci, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710

bb.ci:                                            ; preds = %bb.ch
  %i.ms = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !318, !noalias !570 ; 2 uses
  %.not.i.i.i.i.i.i.i236.2 = icmp eq i64 %i.mt, 0
  br i1 %.not.i.i.i.i.i.i.i236.2, label %bb.cj, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707

bb.cj:                                            ; preds = %bb.ci
  %i.mu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 24
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !318, !noalias !570 ; 2 uses
  %.not.i.i.i.i.i.i.i236.3 = icmp eq i64 %i.mv, 0
  br i1 %.not.i.i.i.i.i.i.i236.3, label %bb.ck, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit

bb.ck:                                            ; preds = %bb.cj
  %i.mw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 32
  %i.mx = add nuw nsw i32 %.0712.i.i.i.i.i.i.i235, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i238.3 = icmp eq i32 %i.mx, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i238.3, label %.loopexit.i.i.i, label %bb.cg, !llvm.loop !348

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit: ; preds = %bb.cj
  %i.my = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 3
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707: ; preds = %bb.ci
  %i.mz = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 2
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710: ; preds = %bb.ch
  %i.na = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 1
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237:                ; preds = %bb.cg, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit
  %.0712.i.i.i.i.i.i.i235.lcssa = phi i32 [ %i.na, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710 ], [ %i.mz, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707 ], [ %i.my, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i235, %bb.cg ]
  %.lcssa619 = phi i64 [ %i.mr, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710 ], [ %i.mt, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707 ], [ %i.mv, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit ], [ %i.mp, %bb.cg ]
  %i.nb = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i235.lcssa, 6
  %i.nc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa619, i1 true)
  %i.nd = trunc nuw nsw i64 %i.nc to i32
  %i.ne = or disjoint i32 %i.nb, %i.nd
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.ck, %.critedge.thread.i.i.i.i.i.i.i237
  %i.nf = phi i32 [ %i.ne, %.critedge.thread.i.i.i.i.i.i.i237 ], [ 32768, %bb.ck ]
  store ptr %i.mn, ptr %i.mi, align 8, !tbaa !575
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i.i, %bb.cb, %bb.bx
  %.sink31.i.sink30.i = phi ptr [ %i.lx, %bb.bx ], [ %i.mi, %.loopexit.i.i.i ], [ %i.mf, %bb.cb ] ; 2 uses
  %.sink29.i.sink.i = phi i32 [ 512, %bb.bx ], [ %i.nf, %.loopexit.i.i.i ], [ %i.mh, %bb.cb ]
  %.sink.i.sink.i = phi ptr [ %i.ly, %bb.bx ], [ %i.mo, %.loopexit.i.i.i ], [ %i.mg, %bb.cb ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.sink31.i.sink30.i, i64 8
  store i32 %.sink29.i.sink.i, ptr %i.ng, align 8, !tbaa !22
  %i.nh = getelementptr inbounds nuw i8, ptr %.sink31.i.sink30.i, i64 16
  store ptr %.sink.i.sink.i, ptr %i.nh, align 8, !tbaa !350
  %i.ni = load i32, ptr %i.c, align 8, !tbaa !543
  %i.nj = add i32 %i.ni, -1                       ; 3 uses
  store i32 %i.nj, ptr %i.c, align 8, !tbaa !543
  switch i32 %i.nj, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit [
    i32 0, label %bb.cm
    i32 1, label %bb.cu
    i32 2, label %bb.cx
    i32 3, label %bb.de
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.nk = load ptr, ptr %0, align 8               ; 9 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 16 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.no = load atomic i32, ptr %i.nn seq_cst, align 4, !noalias !576
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.no, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.nk), !noalias !576
  br label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  %i.np = load ptr, ptr %i.nk, align 8, !tbaa !260, !noalias !576 ; 2 uses
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %bb.cp, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i

bb.cp:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nk, i64 12 ; 4 uses
  %i.ns = atomicrmw xchg ptr %i.nr, i8 1 seq_cst, align 1, !noalias !576
  %i.nt = trunc i8 %i.ns to i1
  br i1 %i.nt, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cp, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i ], [ 1, %bb.cp ] ; 8 uses
  %i.nu = icmp slt i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 17
  br i1 %i.nu, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.nv = icmp sgt i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.cq
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.i.i.i.i.i.prol = phi i32 [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.nw = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !576
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !581

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.nx = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.nx, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.01.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ny, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !576
  tail call void @llvm.x86.sse2.pause(), !noalias !576
  tail call void @llvm.x86.sse2.pause(), !noalias !576
  tail call void @llvm.x86.sse2.pause(), !noalias !576
  tail call void @llvm.x86.sse2.pause(), !noalias !576
  tail call void @llvm.x86.sse2.pause(), !noalias !576
  tail call void @llvm.x86.sse2.pause(), !noalias !576
  %i.ny = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause(), !noalias !576
  %i.nz = icmp sgt i32 %.01.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.nz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !358

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.cq
  %i.oa = shl i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ob = tail call noundef i32 @sched_yield() #20, !noalias !576 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cr, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i32 [ %i.oa, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %bb.cr ]
  %i.oc = atomicrmw xchg ptr %i.nr, i8 1 seq_cst, align 1, !noalias !576
  %i.od = trunc i8 %i.oc to i1
  br i1 %i.od, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i, !llvm.loop !359

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i, %bb.cp
  %i.oe = load ptr, ptr %i.nk, align 8, !tbaa !260, !noalias !576 ; 2 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %bb.cs, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i

bb.cs:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i
  %i.og = invoke noalias noundef nonnull dereferenceable(12288) ptr @_Znam(i64 noundef 12288) #27
          to label %bb.ct unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i.i.i, !noalias !576 ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.og, ptr %i.nk, align 8, !tbaa !260, !noalias !576
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.cs
  %i.oh = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.nr release, align 1, !noalias !576
  resume { ptr, i32 } %i.oh

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i: ; preds = %bb.ct, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i
  %i.oi = phi ptr [ %i.og, %bb.ct ], [ %i.oe, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i ]
  store atomic i8 0, ptr %i.nr release, align 4, !noalias !576
  br label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i

_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i, %bb.cm
  %.sroa.87.0.i.a = phi ptr [ undef, %bb.cm ], [ %i.oi, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ %i.np, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  %.sroa.11.0.i = phi ptr [ null, %bb.cm ], [ %i.nm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ %i.nm, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  %.sroa.5.0.i = phi i32 [ 512, %bb.cm ], [ 0, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ 0, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  store ptr %i.nk, ptr %i.b, align 8, !tbaa !582
  store i32 %.sroa.5.0.i, ptr %i.j, align 8, !tbaa !299
  store ptr %.sroa.11.0.i, ptr %i.w, align 8, !tbaa !320
  store ptr %.sroa.87.0.i.a, ptr %i.x, align 8, !tbaa !583
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

bb.cu:                                            ; preds = %bb.cl
  %i.oj = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 98304 ; 2 uses
  %i.om = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE12findFirstOffEv(ptr noundef nonnull align 8 dereferenceable(512) %i.ol), !noalias !584
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.86.0.i.i = phi ptr [ %i.ol, %bb.cv ], [ null, %bb.cu ]
  %.sroa.5.0.i.i = phi i32 [ %i.om, %bb.cv ], [ 4096, %bb.cu ]
  store ptr %i.oj, ptr %i.d, align 8, !tbaa !589
  store i32 %.sroa.5.0.i.i, ptr %i.n, align 8, !tbaa !297
  store ptr %.sroa.86.0.i.i, ptr %i.o, align 8, !tbaa !317
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

bb.cx:                                            ; preds = %bb.cl
  %i.on = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 786432 ; 3 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.dd, %bb.cy
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.op, %bb.cy ], [ %i.ox, %bb.dd ] ; 5 uses
  %.0712.i.i.i.i.i.i.i = phi i32 [ 0, %bb.cy ], [ %i.oy, %bb.dd ] ; 5 uses
  %i.oq = load i64, ptr %.013.i.i.i.i.i.i.i, align 8, !tbaa !318, !noalias !590 ; 2 uses
  %.not.i.i.i.i.i.i6.i = icmp eq i64 %i.oq, -1
  br i1 %.not.i.i.i.i.i.i6.i, label %bb.da, label %.critedge.thread.i.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.or = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 8
  %i.os = load i64, ptr %i.or, align 8, !tbaa !318, !noalias !590 ; 2 uses
  %.not.i.i.i.i.i.i6.i.1 = icmp eq i64 %i.os, -1
  br i1 %.not.i.i.i.i.i.i6.i.1, label %bb.db, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722

bb.db:                                            ; preds = %bb.da
  %i.ot = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 16
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !318, !noalias !590 ; 2 uses
  %.not.i.i.i.i.i.i6.i.2 = icmp eq i64 %i.ou, -1
  br i1 %.not.i.i.i.i.i.i6.i.2, label %bb.dc, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719

bb.dc:                                            ; preds = %bb.db
  %i.ov = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 24
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !318, !noalias !590 ; 2 uses
  %.not.i.i.i.i.i.i6.i.3 = icmp eq i64 %i.ow, -1
  br i1 %.not.i.i.i.i.i.i6.i.3, label %bb.dd, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit

bb.dd:                                            ; preds = %bb.dc
  %i.ox = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 32
  %i.oy = add nuw nsw i32 %.0712.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i32 %i.oy, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i, label %bb.cz, !llvm.loop !373

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit:   ; preds = %bb.dc
  %i.oz = or disjoint i32 %.0712.i.i.i.i.i.i.i, 3
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719: ; preds = %bb.db
  %i.pa = or disjoint i32 %.0712.i.i.i.i.i.i.i, 2
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722: ; preds = %bb.da
  %i.pb = or disjoint i32 %.0712.i.i.i.i.i.i.i, 1
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i:                   ; preds = %bb.cz, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit
  %.0712.i.i.i.i.i.i.i.lcssa = phi i32 [ %i.pb, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722 ], [ %i.pa, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719 ], [ %i.oz, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i, %bb.cz ]
  %.lcssa622 = phi i64 [ %i.os, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722 ], [ %i.ou, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719 ], [ %i.ow, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit ], [ %i.oq, %bb.cz ]
  %i.pc = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i.lcssa, 6
  %i.pd = xor i64 %.lcssa622, -1
  %i.pe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pd, i1 true)
  %i.pf = trunc nuw nsw i64 %i.pe to i32
  %i.pg = or disjoint i32 %i.pc, %i.pf
  br label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i

_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i: ; preds = %bb.dd, %.critedge.thread.i.i.i.i.i.i.i, %bb.cx
  %.sroa.86.0.i.i.i = phi ptr [ null, %bb.cx ], [ %i.op, %.critedge.thread.i.i.i.i.i.i.i ], [ %i.op, %bb.dd ]
  %.sroa.5.0.i.i.i = phi i32 [ 32768, %bb.cx ], [ %i.pg, %.critedge.thread.i.i.i.i.i.i.i ], [ 32768, %bb.dd ]
  store ptr %i.on, ptr %i.p, align 8, !tbaa !595
  store i32 %.sroa.5.0.i.i.i, ptr %i.v, align 8, !tbaa !298
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i

bb.de:                                            ; preds = %bb.cl
  %i.ph = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !309 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 2 uses
  %.not1.i.i.i.i.i.i.i.i = icmp eq ptr %i.pl, %i.pk
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.df, %bb.dg
  %.sroa.2.0.i.i.i.i.i.i = phi ptr [ %i.pp, %bb.dg ], [ %i.pk, %bb.df ] ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i.i.i.i.i, i64 48
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !555
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.pp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i.i.i.i.i.i) #26 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.pp, %i.pl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !596

_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i: ; preds = %bb.dg, %.lr.ph.i.i.i.i.i.i.i.i, %bb.df, %bb.de
  %.sroa.5.0.i.i.i.i = phi ptr [ null, %bb.de ], [ %i.pk, %bb.df ], [ %i.pp, %bb.dg ], [ %.sroa.2.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %i.ph, ptr %i.e, align 8
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i

_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i: ; preds = %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i
  %.sink.i.i.i = phi i64 [ 32, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i ], [ 16, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i ]
  %.sroa.5.0.i.sink.i.i.i = phi ptr [ %.sroa.5.0.i.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i ], [ %.sroa.86.0.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i ]
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink.i.i.i
  store ptr %.sroa.5.0.i.sink.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i, %bb.cw, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i
  %.pr = load i32, ptr %i.c, align 8, !tbaa !543
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split, %bb.cl
  %i.pq = phi i32 [ %.pr, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split ], [ %i.nj, %bb.cl ] ; 5 uses
  switch i32 %i.pq, label %bb.dl [
    i32 0, label %bb.dk
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166
    i32 2, label %bb.dh
    i32 3, label %bb.di
  ]

bb.dh:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166

bb.di:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  %i.pr = load ptr, ptr %i.e, align 8, !tbaa !550 ; 2 uses
  %.not.i.i.i.i.i159 = icmp eq ptr %i.pr, null
  br i1 %.not.i.i.i.i.i159, label %.thread297, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !309 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i160 = load ptr, ptr %i.f, align 8, !tbaa !313 ; 2 uses
  %.not4.i.i.i.i.i.i161 = icmp eq ptr %i.pt, %.sroa.0.0.copyload.i.i.i.i.i160
  br i1 %.not4.i.i.i.i.i.i161, label %.thread297, label %.lr.ph.i.i.i.i.i.i162

.lr.ph.i.i.i.i.i.i162:                            ; preds = %bb.dj, %.lr.ph.i.i.i.i.i.i162
  %.06.i.i.i.i.i.i163 = phi i32 [ %i.pv, %.lr.ph.i.i.i.i.i.i162 ], [ 0, %bb.dj ]
  %.sroa.02.05.i.i.i.i.i.i164 = phi ptr [ %i.pu, %.lr.ph.i.i.i.i.i.i162 ], [ %i.pt, %bb.dj ]
  %i.pu = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i164) #26 ; 2 uses
  %i.pv = add i32 %.06.i.i.i.i.i.i163, 1          ; 2 uses
  %.not.i.i.i.i.i.i165 = icmp eq ptr %i.pu, %.sroa.0.0.copyload.i.i.i.i.i160
  br i1 %.not.i.i.i.i.i.i165, label %.thread297, label %.lr.ph.i.i.i.i.i.i162, !llvm.loop !551

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit, %bb.dh
  %.sink3.i.i167 = phi i64 [ 32, %bb.dh ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit ]
  %i.pw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i167
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !22
  br label %bb.dl

bb.dk:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  %i.py = load i32, ptr %i.j, align 8, !tbaa !299
  %i.pz = load i32, ptr %i.k, align 8, !tbaa !299
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178

bb.dl:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166
  %.ph295 = phi i32 [ -1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit ], [ %i.px, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166 ] ; 2 uses
  switch i32 %i.pq, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178 [
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176
    i32 2, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176

.thread297:                                       ; preds = %.lr.ph.i.i.i.i.i.i162, %bb.dj, %bb.di
  %.ph295299 = phi i32 [ 0, %bb.di ], [ 0, %bb.dj ], [ %i.pv, %.lr.ph.i.i.i.i.i.i162 ] ; 3 uses
  %i.qa = load ptr, ptr %i.g, align 8, !tbaa !552 ; 2 uses
  %.not.i.i.i.i.i169 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i.i.i.i169, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %bb.dn

bb.dn:                                            ; preds = %.thread297
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !309 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i170 = load ptr, ptr %i.h, align 8, !tbaa !313 ; 2 uses
  %.not4.i.i.i.i.i.i171 = icmp eq ptr %i.qc, %.sroa.0.0.copyload.i.i.i.i.i170
  br i1 %.not4.i.i.i.i.i.i171, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %.lr.ph.i.i.i.i.i.i172

.lr.ph.i.i.i.i.i.i172:                            ; preds = %bb.dn, %.lr.ph.i.i.i.i.i.i172
  %.06.i.i.i.i.i.i173 = phi i32 [ %i.qe, %.lr.ph.i.i.i.i.i.i172 ], [ 0, %bb.dn ]
  %.sroa.02.05.i.i.i.i.i.i174 = phi ptr [ %i.qd, %.lr.ph.i.i.i.i.i.i172 ], [ %i.qc, %bb.dn ]
  %i.qd = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i174) #26 ; 2 uses
  %i.qe = add i32 %.06.i.i.i.i.i.i173, 1          ; 2 uses
  %.not.i.i.i.i.i.i175 = icmp eq ptr %i.qd, %.sroa.0.0.copyload.i.i.i.i.i170
  br i1 %.not.i.i.i.i.i.i175, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %.lr.ph.i.i.i.i.i.i172, !llvm.loop !553

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176: ; preds = %bb.dm, %bb.dl
  %.sink3.i.i177 = phi i64 [ 32, %bb.dm ], [ 8, %bb.dl ]
  %i.qf = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink3.i.i177
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !22
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178: ; preds = %.lr.ph.i.i.i.i.i.i172, %bb.dk, %bb.dl, %.thread297, %bb.dn, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176
  %i.qh = phi i32 [ %i.py, %bb.dk ], [ %.ph295299, %bb.dn ], [ %.ph295, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176 ], [ %.ph295, %bb.dl ], [ %.ph295299, %.thread297 ], [ %.ph295299, %.lr.ph.i.i.i.i.i.i172 ]
  %i.qi = phi i32 [ %i.pz, %bb.dk ], [ 0, %bb.dn ], [ %i.qg, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176 ], [ -1, %bb.dl ], [ 0, %.thread297 ], [ %i.qe, %.lr.ph.i.i.i.i.i.i172 ]
  %i.qj = icmp eq i32 %i.qh, %i.qi
  br i1 %i.qj, label %bb.do, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.do:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178
  switch i32 %i.pq, label %.split301 [
    i32 0, label %.split300
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179
    i32 2, label %.split302
  ]

.split300:                                        ; preds = %bb.do
  %i.qk = load i32, ptr %i.k, align 8, !tbaa !299
  %.not336 = icmp eq i32 %i.qk, 512
  br i1 %.not336, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dp

.split302:                                        ; preds = %bb.do
  %i.ql = load i32, ptr %i.l, align 8, !tbaa !298
  %.not334 = icmp eq i32 %i.ql, 32768
  br i1 %.not334, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dt

.split301:                                        ; preds = %bb.do
  %i.qm = icmp eq i32 %i.pq, 3
  %i.qn = load ptr, ptr %i.g, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load ptr, ptr %i.h, align 8
  %i.qq = icmp ne ptr %i.qp, %i.qo
  %i.qr = select i1 %i.qm, i1 %i.qq, i1 false
  br i1 %i.qr, label %bb.dt, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179: ; preds = %bb.do
  %i.qs = load i32, ptr %i.m, align 8, !tbaa !297
  %.not335 = icmp eq i32 %i.qs, 4096
  br i1 %.not335, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dq

bb.dp:                                            ; preds = %.split300
  %i.qt = load i32, ptr %i.j, align 8, !tbaa !299
  %i.qu = add i32 %i.qt, 1
  store i32 %i.qu, ptr %i.j, align 8, !tbaa !299
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.dq:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179
  %i.qv = load ptr, ptr %i.o, align 8, !tbaa !317 ; 2 uses
  %i.qw = load i32, ptr %i.n, align 8, !tbaa !297
  %i.qx = add i32 %i.qw, 1                        ; 4 uses
  %i.qy = lshr i32 %i.qx, 6                       ; 3 uses
  %i.qz = icmp ugt i32 %i.qx, 4095
  br i1 %i.qz, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i185, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ra = and i32 %i.qx, 63
  %i.rb = zext nneg i32 %i.qy to i64              ; 2 uses
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.rb
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !318 ; 2 uses
  %i.re = zext nneg i32 %i.ra to i64              ; 2 uses
  %i.rf = shl nuw i64 1, %i.re
  %i.rg = and i64 %i.rd, %i.rf
  %.not.not.i.i.i.i.i.i180 = icmp eq i64 %i.rg, 0
  br i1 %.not.not.i.i.i.i.i.i180, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE4nextEv.exit.i.i185, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.rh = xor i64 %i.rd, -1
  %i.ri = shl nsw i64 -1, %i.re
  %i.rj = and i64 %i.ri, %i.rh                    ; 2 uses
  %.not25.i.i.i.i.i.i181 = icmp eq i64 %i.rj, 0
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE6parentEv:bb.a
bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.34, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #20 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !264    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !260
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !252
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #24
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !264    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !260
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(794640) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !575    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !254
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !257
  store i8 0, ptr %i.b, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.34, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #20 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !264    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !260
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !252
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #24
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !264    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !260
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.210", align 8 ; 12 uses
  %2 = alloca %"class.std::shared_ptr.75", align 8 ; 7 uses
  %3 = alloca %"class.std::basic_istream", align 8 ; 23 uses
  %4 = alloca %"class.openvdb::v13_0::util::NodeMask.64", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.d = atomicrmw xchg ptr %i.c, i8 1 seq_cst, align 1
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i
  %.sroa.0.02.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i ], [ 1, %bb.b ] ; 8 uses
  %i.f = icmp slt i32 %.sroa.0.02.i.i.i, 17
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = icmp sgt i32 %.sroa.0.02.i.i.i, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %xtraiter = and i32 %.sroa.0.02.i.i.i, 7        ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.01.i.i.i.i.i.prol = phi i32 [ %i.h, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.h = add nsw i32 %.01.i.i.i.i.i.prol, -1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !600

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.i.prol ]
  %i.i = icmp ult i32 %.sroa.0.02.i.i.i, 8
  br i1 %i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01.i.i.i.i.i = phi i32 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %.01.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.j = add nsw i32 %.01.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.k = icmp sgt i32 %.01.i.i.i.i.i, 8
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, !llvm.loop !358

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  %i.l = shl i32 %.sroa.0.02.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.m = tail call noundef i32 @sched_yield() #20 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i: ; preds = %bb.d, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %i.l, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i ], [ %.sroa.0.02.i.i.i, %bb.d ]
  %i.n = atomicrmw xchg ptr %i.c, i8 1 seq_cst, align 1
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit, !llvm.loop !359

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i, %bb.b
  %i.p = load atomic i32, ptr %i.a seq_cst, align 8
  %.not28 = icmp eq i32 %i.p, 0
  br i1 %.not28, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.q = load ptr, ptr %0, align 8, !tbaa !260
  store ptr %i.q, ptr %1, align 8, !tbaa !601
  store ptr null, ptr %0, align 8, !tbaa !260
  %i.r = invoke noalias noundef nonnull dereferenceable(12288) ptr @_Znam(i64 noundef 12288) #27
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %5 = load ptr, ptr %1, align 8, !tbaa !601
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !384
  invoke void @_ZNK7openvdb5v13_02io10MappedFile12createBufferEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.75") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.u = load ptr, ptr %2, align 8, !tbaa !387
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.v) #20
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 232
  store ptr null, ptr %i.w, align 8, !tbaa !390
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 240
  store i8 0, ptr %i.x, align 8, !tbaa !404
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 241
  store i8 0, ptr %i.y, align 1, !tbaa !405
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSi, i64 24), ptr %3, align 8, !tbaa !252
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSi, i64 64), ptr %i.v, align 8, !tbaa !252
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !406
  %i.ab = load i64, ptr getelementptr inbounds nuw inrange(0, 40) (i8, ptr @_ZTVSi, i64 0), align 8
  %i.ac = getelementptr inbounds i8, ptr %3, i64 %i.ab
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, ptr noundef %i.u)
          to label %_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit: ; preds = %bb.g
  %i.ae = load ptr, ptr %3, align 8, !tbaa !252
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %i.ag
  %i.ai = load ptr, ptr %1, align 8, !tbaa !601
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  invoke void @_ZN7openvdb5v13_02io20setStreamMetadataPtrERSt8ios_baseRSt10shared_ptrINS1_14StreamMetadataEEb(ptr noundef nonnull align 8 dereferenceable(216) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.x

bb.i:                                             ; preds = %_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false), !tbaa !318
  %i.ak = load ptr, ptr %1, align 8, !tbaa !601
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !603
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.am, i64 0)
          to label %bb.j unwind label %bb.y       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ao = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef 64)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.y ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit: ; preds = %bb.j
  %i.ap = load ptr, ptr %1, align 8, !tbaa !601
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !605
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.aq, i64 0)
          to label %bb.k unwind label %bb.y       ; 0 uses

bb.k:                                             ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !260
  %i.at = load ptr, ptr %3, align 8, !tbaa !252
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %3, i64 %i.av
  %i.ax = invoke noundef zeroext i1 @_ZN7openvdb5v13_02io12getHalfFloatERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.aw)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math4Vec3IdEENS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.as, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(64) %4, i1 noundef zeroext %i.ax)
          to label %bb.m unwind label %bb.y

bb.m:                                             ; preds = %bb.l
  store atomic i32 0, ptr %i.a seq_cst, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ay = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.ay, ptr %3, align 8, !tbaa !252
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %3, i64 %i.bb
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !252
  store i64 0, ptr %i.aa, align 8, !tbaa !406
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.v) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !415 ; 8 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bf, align 8, !tbaa !416
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !418
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !252
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #20, !inline_history !419
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !252
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #20, !inline_history !419
  br label %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !260
  %.not.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.bi, %bb.q ], [ %i.bs, %bb.r ]
  %i.bt = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bt, label %bb.s, label %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !420

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #20
  br label %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.bu = load ptr, ptr %1, align 8, !tbaa !601   ; 2 uses
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EE8FileInfoESt14default_deleteIS8_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EE8FileInfoEEclEPS8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bu)
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EE8FileInfoESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EE8FileInfoESt14default_deleteIS8_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit, %_ZNSt10unique_ptrIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EE8FileInfoESt14default_deleteIS8_EED2Ev.exit
  store atomic i8 0, ptr %i.c release, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit
  ret void

bb.v:                                             ; preds = %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %bb.f
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.j, %bb.l, %bb.k, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit, %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.by, %bb.y ], [ %i.bx, %bb.x ]
  %i.bz = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.bz, ptr %3, align 8, !tbaa !252
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.cb = getelementptr i8, ptr %i.bz, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %3, i64 %i.cc
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !252
  store i64 0, ptr %i.aa, align 8, !tbaa !406
  br label %.body

.body:                                            ; preds = %bb.h, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.z ], [ %i.ad, %bb.h ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.v) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  br label %bb.aa

bb.aa:                                            ; preds = %.body, %bb.w
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.bw, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.aa ], [ %i.bv, %bb.v ]
  %6 = load ptr, ptr %1, align 8, !tbaa !601      ; 2 uses
  %.not.i20 = icmp eq ptr %6, null
  br i1 %.not.i20, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit23, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IdEELj3EE8FileInfoEEclEPS8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %6)
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit23

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit23: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  store atomic i8 0, ptr %i.c release, align 4
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math4Vec3IdEENS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.81", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.93", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.93", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
  %10 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 9 uses
  %11 = alloca %"class.openvdb::v13_0::util::NodeMask.64", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !252
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.g = load ptr, ptr %0, align 8, !tbaa !252
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  call void @_ZN7openvdb5v13_02io20getStreamMetadataPtrERSt8ios_base(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.81") align 8 %5, ptr noundef nonnull align 8 dereferenceable(216) %i.j)
  %i.k = load ptr, ptr %0, align 8, !tbaa !252
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = invoke noundef i32 @_ZN7openvdb5v13_02io18getDataCompressionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.n)
          to label %bb.b unwind label %bb.g       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.p = and i32 %i.o, 2
  %i.q = icmp ne i32 %i.p, 0                      ; 3 uses
  %i.r = icmp ne ptr %1, null                     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %5, align 8, !tbaa !421    ; 2 uses
  %.not163 = icmp eq ptr %i.s, null
  br i1 %.not163, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = invoke noundef zeroext i1 @_ZNK7openvdb5v13_02io14StreamMetadata15delayedLoadMetaEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.u = load ptr, ptr %5, align 8, !tbaa !421
  %i.v = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN7openvdb5v13_02io14StreamMetadata12gridMetadataEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.w, ptr %8, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 17, ptr %i.a, align 8, !tbaa !318
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %8, align 8, !tbaa !264
  %i.y = load i64, ptr %i.a, align 8, !tbaa !318  ; 3 uses
  store i64 %i.y, ptr %i.w, align 8, !tbaa !260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.x, ptr noundef nonnull align 1 dereferenceable(17) @.str.36, i64 17, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !257
  %i.aa = load ptr, ptr %8, align 8, !tbaa !264
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN7openvdb5v13_07MetaMap11getMetadataINS0_2io19DelayedLoadMetadataEEENT_3PtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.93") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.k

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  %i.ac = load ptr, ptr %7, align 8, !tbaa !422   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !415 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %i.ac, ptr %6, align 8, !tbaa !425
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !415
  %.pre = load ptr, ptr %8, align 8, !tbaa !264   ; 2 uses
  %i.ag = icmp eq ptr %.pre, %i.w
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !260
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aj = load ptr, ptr %5, align 8, !tbaa !421
  %i.ak = invoke noundef i64 @_ZNK7openvdb5v13_02io14StreamMetadata4leafEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.m unwind label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.i:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.k:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %8, align 8, !tbaa !264   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.w
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.k
  %i.as = load i64, ptr %i.w, align 8, !tbaa !260
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.ap, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %i.an, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.bo

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.c, %bb.b
  %i.au = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.c ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %i.av = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.c ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.088 = phi i64 [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 6, ptr %i.b, align 1, !tbaa !260
  %i.aw = load ptr, ptr %0, align 8, !tbaa !252
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %0, i64 %i.ay
  %i.ba = invoke noundef i32 @_ZN7openvdb5v13_02io16getFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.az)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bb = icmp ugt i32 %i.ba, 221
  br i1 %i.bb, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %or.cond = or i1 %i.r, %i.q
  br i1 %or.cond, label %bb.q, label %.invoke

bb.p:                                             ; preds = %.invoke, %bb.t, %bb.r, %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.q:                                             ; preds = %bb.o
  %.not164 = icmp eq ptr %i.av, null
  %or.cond192 = select i1 %i.r, i1 true, i1 %.not164
  br i1 %or.cond192, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = invoke noundef signext i8 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata7getMaskEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.088)
          to label %bb.s unwind label %bb.p

bb.s:                                             ; preds = %bb.r
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !260
  br label %.invoke

.invoke:                                          ; preds = %bb.o, %bb.s
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i32 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.t:                                             ; preds = %bb.q
  %i.bf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 1)
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE7advanceEb:bb.a
  br i1 %.not344, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.bo

bb.bn:                                            ; preds = %.split289
  %i.kr = load i32, ptr %i.j, align 8, !tbaa !299
  %i.ks = add i32 %i.kr, 1
  store i32 %i.ks, ptr %i.j, align 8, !tbaa !299
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.bo:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit144
  %i.kt = load ptr, ptr %i.o, align 8, !tbaa !317 ; 2 uses
  %i.ku = load i32, ptr %i.n, align 8, !tbaa !297
  %i.kv = add i32 %i.ku, 1                        ; 4 uses
  %i.kw = lshr i32 %i.kv, 6                       ; 3 uses
  %i.kx = icmp ugt i32 %i.kv, 4095
  br i1 %i.kx, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i150, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ky = and i32 %i.kv, 63
  %i.kz = zext nneg i32 %i.kw to i64              ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.kz
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !318 ; 2 uses
  %i.lc = zext nneg i32 %i.ky to i64              ; 2 uses
  %i.ld = shl nuw i64 1, %i.lc
  %i.le = and i64 %i.lb, %i.ld
  %.not.not.i.i.i.i.i.i145 = icmp eq i64 %i.le, 0
  br i1 %.not.not.i.i.i.i.i.i145, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i150, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lf = xor i64 %i.lb, -1
  %i.lg = shl nsw i64 -1, %i.lc
  %i.lh = and i64 %i.lg, %i.lf                    ; 2 uses
  %.not25.i.i.i.i.i.i146 = icmp eq i64 %i.lh, 0
  br i1 %.not25.i.i.i.i.i.i146, label %.lr.ph.i.i.i.i.i.i152.preheader, label %.critedge.i.i.i.i.i.i147

.lr.ph.i.i.i.i.i.i152.preheader:                  ; preds = %bb.bq
  %exitcond.not.i.i.i.i.i.i154591 = icmp eq i32 %i.kw, 63
  br i1 %exitcond.not.i.i.i.i.i.i154591, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i150, label %.lr.ph593

.lr.ph.i.i.i.i.i.i152:                            ; preds = %.lr.ph593
  %exitcond.not.i.i.i.i.i.i154 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i155, 63
  br i1 %exitcond.not.i.i.i.i.i.i154, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i150, label %.lr.ph593, !llvm.loop !319

.lr.ph593:                                        ; preds = %.lr.ph.i.i.i.i.i.i152.preheader, %.lr.ph.i.i.i.i.i.i152
  %indvars.iv.i.i.i.i.i.i153592 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i155, %.lr.ph.i.i.i.i.i.i152 ], [ %i.kz, %.lr.ph.i.i.i.i.i.i152.preheader ]
  %indvars.iv.next.i.i.i.i.i.i155 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i153592, 1 ; 4 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.next.i.i.i.i.i.i155
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i.i.i.i156 = icmp eq i64 %i.lj, -1
  br i1 %.not.i.i.i.i.i.i156, label %.lr.ph.i.i.i.i.i.i152, label %.critedge.loopexit.i.i.i.i.i.i157, !llvm.loop !319

.critedge.loopexit.i.i.i.i.i.i157:                ; preds = %.lr.ph593
  %i.lk = xor i64 %i.lj, -1
  %i.ll = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i155 to i32
  br label %.critedge.i.i.i.i.i.i147

.critedge.i.i.i.i.i.i147:                         ; preds = %.critedge.loopexit.i.i.i.i.i.i157, %bb.bq
  %.017.lcssa.i.i.i.i.i.i148 = phi i32 [ %i.kw, %bb.bq ], [ %i.ll, %.critedge.loopexit.i.i.i.i.i.i157 ]
  %.0.lcssa.i.i.i.i.i.i149 = phi i64 [ %i.lh, %bb.bq ], [ %i.lk, %.critedge.loopexit.i.i.i.i.i.i157 ]
  %i.lm = shl nuw nsw i32 %.017.lcssa.i.i.i.i.i.i148, 6
  %i.ln = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i149, i1 true)
  %i.lo = trunc nuw nsw i64 %i.ln to i32
  %i.lp = or disjoint i32 %i.lm, %i.lo
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i150

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i150: ; preds = %.lr.ph.i.i.i.i.i.i152, %.lr.ph.i.i.i.i.i.i152.preheader, %.critedge.i.i.i.i.i.i147, %bb.bp, %bb.bo
  %.1.i.i.i.i.i.i151 = phi i32 [ 4096, %bb.bo ], [ %i.kv, %bb.bp ], [ %i.lp, %.critedge.i.i.i.i.i.i147 ], [ 4096, %.lr.ph.i.i.i.i.i.i152.preheader ], [ 4096, %.lr.ph.i.i.i.i.i.i152 ]
  store i32 %.1.i.i.i.i.i.i151, ptr %i.n, align 8, !tbaa !297
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.br:                                            ; preds = %.split291, %.split290
  %i.lq = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE4nextEj(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i32 noundef %i.fz) ; 0 uses
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.bs:                                            ; preds = %bb.ar
  br i1 %i.ga, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  switch i32 %i.fz, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread [
    i32 1, label %bb.bu
    i32 2, label %bb.by
    i32 3, label %bb.cc
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.lr = load ptr, ptr %i.u, align 8, !tbaa !237
  %.not.i = icmp eq ptr %i.lr, null
  br i1 %.not.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ls = load i32, ptr %i.m, align 8, !tbaa !297 ; 2 uses
  %.not14.i = icmp eq i32 %i.ls, 4096
  br i1 %.not14.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lt = tail call noundef nonnull align 8 dereferenceable(66576) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
  %i.lu = zext i32 %i.ls to i64
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %i.lu
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !260 ; 3 uses
  %.not10.not.i = icmp eq ptr %i.lw, null
  br i1 %.not10.not.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lx = load ptr, ptr %i.u, align 8, !tbaa !237 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !689
  br label %bb.cl

bb.by:                                            ; preds = %bb.bt
  %i.lz = load ptr, ptr %i.t, align 8, !tbaa !238
  %.not.i.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ma = load i32, ptr %i.l, align 8, !tbaa !298 ; 2 uses
  %.not13.i.i = icmp eq i32 %i.ma, 32768
  br i1 %.not13.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mb = tail call noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.r)
  %i.mc = zext i32 %i.ma to i64
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !260 ; 3 uses
  %.not10.not.i.i = icmp eq ptr %i.me, null
  br i1 %.not10.not.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mf = load ptr, ptr %i.t, align 8, !tbaa !238 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 65536 ; 2 uses
  %i.mh = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.mg), !noalias !690
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !695
  br label %bb.cl

bb.cc:                                            ; preds = %bb.bt
  %i.mi = load ptr, ptr %i.s, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mj = load ptr, ptr %i.g, align 8, !tbaa !680
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.h, align 8, !tbaa !682 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ml, %i.mk
  br i1 %.not9.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 48
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !696 ; 3 uses
  %.not7.not.i.i.i = icmp eq ptr %i.mn, null
  br i1 %.not7.not.i.i.i, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit112.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 524288 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %bb.cf
  %.013.i.i.i.i.i.i.i234 = phi ptr [ %i.mo, %bb.cf ], [ %i.mw, %bb.ck ] ; 5 uses
  %.0712.i.i.i.i.i.i.i235 = phi i32 [ 0, %bb.cf ], [ %i.mx, %bb.ck ] ; 5 uses
  %i.mp = load i64, ptr %.013.i.i.i.i.i.i.i234, align 8, !tbaa !318, !noalias !698 ; 2 uses
  %.not.i.i.i.i.i.i.i236 = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i.i.i.i.i.i236, label %bb.ch, label %.critedge.thread.i.i.i.i.i.i.i237

bb.ch:                                            ; preds = %bb.cg
  %i.mq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !318, !noalias !698 ; 2 uses
  %.not.i.i.i.i.i.i.i236.1 = icmp eq i64 %i.mr, 0
  br i1 %.not.i.i.i.i.i.i.i236.1, label %bb.ci, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710

bb.ci:                                            ; preds = %bb.ch
  %i.ms = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !318, !noalias !698 ; 2 uses
  %.not.i.i.i.i.i.i.i236.2 = icmp eq i64 %i.mt, 0
  br i1 %.not.i.i.i.i.i.i.i236.2, label %bb.cj, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707

bb.cj:                                            ; preds = %bb.ci
  %i.mu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 24
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !318, !noalias !698 ; 2 uses
  %.not.i.i.i.i.i.i.i236.3 = icmp eq i64 %i.mv, 0
  br i1 %.not.i.i.i.i.i.i.i236.3, label %bb.ck, label %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit

bb.ck:                                            ; preds = %bb.cj
  %i.mw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i234, i64 32
  %i.mx = add nuw nsw i32 %.0712.i.i.i.i.i.i.i235, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i238.3 = icmp eq i32 %i.mx, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i238.3, label %.loopexit.i.i.i, label %bb.cg, !llvm.loop !348

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit: ; preds = %bb.cj
  %i.my = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 3
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707: ; preds = %bb.ci
  %i.mz = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 2
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710: ; preds = %bb.ch
  %i.na = or disjoint i32 %.0712.i.i.i.i.i.i.i235, 1
  br label %.critedge.thread.i.i.i.i.i.i.i237

.critedge.thread.i.i.i.i.i.i.i237:                ; preds = %bb.cg, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit
  %.0712.i.i.i.i.i.i.i235.lcssa = phi i32 [ %i.na, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710 ], [ %i.mz, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707 ], [ %i.my, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i235, %bb.cg ]
  %.lcssa619 = phi i64 [ %i.mr, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit710 ], [ %i.mt, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit707 ], [ %i.mv, %.critedge.thread.i.i.i.i.i.i.i237.split.loop.exit ], [ %i.mp, %bb.cg ]
  %i.nb = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i235.lcssa, 6
  %i.nc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa619, i1 true)
  %i.nd = trunc nuw nsw i64 %i.nc to i32
  %i.ne = or disjoint i32 %i.nb, %i.nd
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.ck, %.critedge.thread.i.i.i.i.i.i.i237
  %i.nf = phi i32 [ %i.ne, %.critedge.thread.i.i.i.i.i.i.i237 ], [ 32768, %bb.ck ]
  store ptr %i.mn, ptr %i.mi, align 8, !tbaa !703
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i.i, %bb.cb, %bb.bx
  %.sink31.i.sink30.i = phi ptr [ %i.lx, %bb.bx ], [ %i.mi, %.loopexit.i.i.i ], [ %i.mf, %bb.cb ] ; 2 uses
  %.sink29.i.sink.i = phi i32 [ 512, %bb.bx ], [ %i.nf, %.loopexit.i.i.i ], [ %i.mh, %bb.cb ]
  %.sink.i.sink.i = phi ptr [ %i.ly, %bb.bx ], [ %i.mo, %.loopexit.i.i.i ], [ %i.mg, %bb.cb ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.sink31.i.sink30.i, i64 8
  store i32 %.sink29.i.sink.i, ptr %i.ng, align 8, !tbaa !22
  %i.nh = getelementptr inbounds nuw i8, ptr %.sink31.i.sink30.i, i64 16
  store ptr %.sink.i.sink.i, ptr %i.nh, align 8, !tbaa !350
  %i.ni = load i32, ptr %i.c, align 8, !tbaa !671
  %i.nj = add i32 %i.ni, -1                       ; 3 uses
  store i32 %i.nj, ptr %i.c, align 8, !tbaa !671
  switch i32 %i.nj, label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit [
    i32 0, label %bb.cm
    i32 1, label %bb.cu
    i32 2, label %bb.cx
    i32 3, label %bb.de
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.nk = load ptr, ptr %0, align 8               ; 9 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 16 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.no = load atomic i32, ptr %i.nn seq_cst, align 4, !noalias !704
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.no, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.nk), !noalias !704
  br label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  %i.np = load ptr, ptr %i.nk, align 8, !tbaa !260, !noalias !704 ; 2 uses
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %bb.cp, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i

bb.cp:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nk, i64 12 ; 4 uses
  %i.ns = atomicrmw xchg ptr %i.nr, i8 1 seq_cst, align 1, !noalias !704
  %i.nt = trunc i8 %i.ns to i1
  br i1 %i.nt, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cp, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i ], [ 1, %bb.cp ] ; 8 uses
  %i.nu = icmp slt i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 17
  br i1 %i.nu, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.nv = icmp sgt i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.cq
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.i.i.i.i.i.prol = phi i32 [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.nw = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !704
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !709

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.nx = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.nx, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.01.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ny, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !704
  tail call void @llvm.x86.sse2.pause(), !noalias !704
  tail call void @llvm.x86.sse2.pause(), !noalias !704
  tail call void @llvm.x86.sse2.pause(), !noalias !704
  tail call void @llvm.x86.sse2.pause(), !noalias !704
  tail call void @llvm.x86.sse2.pause(), !noalias !704
  tail call void @llvm.x86.sse2.pause(), !noalias !704
  %i.ny = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause(), !noalias !704
  %i.nz = icmp sgt i32 %.01.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.nz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !358

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.cq
  %i.oa = shl i32 %.sroa.0.02.i.i.i.i.i.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ob = tail call noundef i32 @sched_yield() #20, !noalias !704 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cr, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i32 [ %i.oa, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i, %bb.cr ]
  %i.oc = atomicrmw xchg ptr %i.nr, i8 1 seq_cst, align 1, !noalias !704
  %i.od = trunc i8 %i.oc to i1
  br i1 %i.od, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i, !llvm.loop !359

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i, %bb.cp
  %i.oe = load ptr, ptr %i.nk, align 8, !tbaa !260, !noalias !704 ; 2 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %bb.cs, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i

bb.cs:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i
  %i.og = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znam(i64 noundef 6144) #27
          to label %bb.ct unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i.i.i, !noalias !704 ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.og, ptr %i.nk, align 8, !tbaa !260, !noalias !704
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.cs
  %i.oh = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.nr release, align 1, !noalias !704
  resume { ptr, i32 } %i.oh

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i: ; preds = %bb.ct, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i
  %i.oi = phi ptr [ %i.og, %bb.ct ], [ %i.oe, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i.i.i ]
  store atomic i8 0, ptr %i.nr release, align 4, !noalias !704
  br label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i

_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i, %bb.cm
  %.sroa.87.0.i.a = phi ptr [ undef, %bb.cm ], [ %i.oi, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ %i.np, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  %.sroa.11.0.i = phi ptr [ null, %bb.cm ], [ %i.nm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ %i.nm, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  %.sroa.5.0.i = phi i32 [ 512, %bb.cm ], [ 0, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i.i.i.i.i.i ], [ 0, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE10loadValuesEv.exit.i.i.i.i.i.i ]
  store ptr %i.nk, ptr %i.b, align 8, !tbaa !710
  store i32 %.sroa.5.0.i, ptr %i.j, align 8, !tbaa !299
  store ptr %.sroa.11.0.i, ptr %i.w, align 8, !tbaa !320
  store ptr %.sroa.87.0.i.a, ptr %i.x, align 8, !tbaa !711
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

bb.cu:                                            ; preds = %bb.cl
  %i.oj = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 65536 ; 2 uses
  %i.om = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE12findFirstOffEv(ptr noundef nonnull align 8 dereferenceable(512) %i.ol), !noalias !712
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.86.0.i.i = phi ptr [ %i.ol, %bb.cv ], [ null, %bb.cu ]
  %.sroa.5.0.i.i = phi i32 [ %i.om, %bb.cv ], [ 4096, %bb.cu ]
  store ptr %i.oj, ptr %i.d, align 8, !tbaa !717
  store i32 %.sroa.5.0.i.i, ptr %i.n, align 8, !tbaa !297
  store ptr %.sroa.86.0.i.i, ptr %i.o, align 8, !tbaa !317
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

bb.cx:                                            ; preds = %bb.cl
  %i.on = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 524288 ; 3 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.dd, %bb.cy
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.op, %bb.cy ], [ %i.ox, %bb.dd ] ; 5 uses
  %.0712.i.i.i.i.i.i.i = phi i32 [ 0, %bb.cy ], [ %i.oy, %bb.dd ] ; 5 uses
  %i.oq = load i64, ptr %.013.i.i.i.i.i.i.i, align 8, !tbaa !318, !noalias !718 ; 2 uses
  %.not.i.i.i.i.i.i6.i = icmp eq i64 %i.oq, -1
  br i1 %.not.i.i.i.i.i.i6.i, label %bb.da, label %.critedge.thread.i.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.or = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 8
  %i.os = load i64, ptr %i.or, align 8, !tbaa !318, !noalias !718 ; 2 uses
  %.not.i.i.i.i.i.i6.i.1 = icmp eq i64 %i.os, -1
  br i1 %.not.i.i.i.i.i.i6.i.1, label %bb.db, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722

bb.db:                                            ; preds = %bb.da
  %i.ot = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 16
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !318, !noalias !718 ; 2 uses
  %.not.i.i.i.i.i.i6.i.2 = icmp eq i64 %i.ou, -1
  br i1 %.not.i.i.i.i.i.i6.i.2, label %bb.dc, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719

bb.dc:                                            ; preds = %bb.db
  %i.ov = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 24
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !318, !noalias !718 ; 2 uses
  %.not.i.i.i.i.i.i6.i.3 = icmp eq i64 %i.ow, -1
  br i1 %.not.i.i.i.i.i.i6.i.3, label %bb.dd, label %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit

bb.dd:                                            ; preds = %bb.dc
  %i.ox = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 32
  %i.oy = add nuw nsw i32 %.0712.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i32 %i.oy, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i, label %bb.cz, !llvm.loop !373

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit:   ; preds = %bb.dc
  %i.oz = or disjoint i32 %.0712.i.i.i.i.i.i.i, 3
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719: ; preds = %bb.db
  %i.pa = or disjoint i32 %.0712.i.i.i.i.i.i.i, 2
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722: ; preds = %bb.da
  %i.pb = or disjoint i32 %.0712.i.i.i.i.i.i.i, 1
  br label %.critedge.thread.i.i.i.i.i.i.i

.critedge.thread.i.i.i.i.i.i.i:                   ; preds = %bb.cz, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit
  %.0712.i.i.i.i.i.i.i.lcssa = phi i32 [ %i.pb, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722 ], [ %i.pa, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719 ], [ %i.oz, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i, %bb.cz ]
  %.lcssa622 = phi i64 [ %i.os, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit722 ], [ %i.ou, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit719 ], [ %i.ow, %.critedge.thread.i.i.i.i.i.i.i.split.loop.exit ], [ %i.oq, %bb.cz ]
  %i.pc = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i.lcssa, 6
  %i.pd = xor i64 %.lcssa622, -1
  %i.pe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pd, i1 true)
  %i.pf = trunc nuw nsw i64 %i.pe to i32
  %i.pg = or disjoint i32 %i.pc, %i.pf
  br label %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i

_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i: ; preds = %bb.dd, %.critedge.thread.i.i.i.i.i.i.i, %bb.cx
  %.sroa.86.0.i.i.i = phi ptr [ null, %bb.cx ], [ %i.op, %.critedge.thread.i.i.i.i.i.i.i ], [ %i.op, %bb.dd ]
  %.sroa.5.0.i.i.i = phi i32 [ 32768, %bb.cx ], [ %i.pg, %.critedge.thread.i.i.i.i.i.i.i ], [ 32768, %bb.dd ]
  store ptr %i.on, ptr %i.p, align 8, !tbaa !723
  store i32 %.sroa.5.0.i.i.i, ptr %i.v, align 8, !tbaa !298
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i

bb.de:                                            ; preds = %bb.cl
  %i.ph = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !309 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 2 uses
  %.not1.i.i.i.i.i.i.i.i = icmp eq ptr %i.pl, %i.pk
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.df, %bb.dg
  %.sroa.2.0.i.i.i.i.i.i = phi ptr [ %i.pp, %bb.dg ], [ %i.pk, %bb.df ] ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i.i.i.i.i, i64 48
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !683
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.pp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i.i.i.i.i.i) #26 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.pp, %i.pl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !724

_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i: ; preds = %bb.dg, %.lr.ph.i.i.i.i.i.i.i.i, %bb.df, %bb.de
  %.sroa.5.0.i.i.i.i = phi ptr [ null, %bb.de ], [ %i.pk, %bb.df ], [ %i.pp, %bb.dg ], [ %.sroa.2.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %i.ph, ptr %i.e, align 8
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i

_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i: ; preds = %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i
  %.sink.i.i.i = phi i64 [ 32, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i ], [ 16, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i ]
  %.sroa.5.0.i.sink.i.i.i = phi ptr [ %.sroa.5.0.i.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEENSC_9ValueIterISC_St17_Rb_tree_iteratorISt4pairIKNS6_5CoordENSC_10NodeStructEEENSC_12ValueAllPredES8_EEE5beginERSC_.exit.i.i.i.i ], [ %.sroa.86.0.i.i.i, %_ZN7openvdb5v13_04tree10IterTraitsINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEENSA_9ValueIterISA_KS7_NS0_4util15OffMaskIteratorINSD_8NodeMaskILj5EEEEENSA_8ValueAllEEEE5beginERSA_.exit.i.i.i ]
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink.i.i.i
  store ptr %.sroa.5.0.i.sink.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit.sink.split.i.i.i, %bb.cw, %_ZN7openvdb5v13_04tree10IterTraitsINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEENS7_9ValueIterINS0_4util17DenseMaskIteratorINS9_8NodeMaskILj3EEEEES7_KS6_NS7_8ValueAllEEEE5beginERS7_.exit.i
  %.pr = load i32, ptr %i.c, align 8, !tbaa !671
  br label %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit

_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split, %bb.cl
  %i.pq = phi i32 [ %.pr, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exitthread-pre-split ], [ %i.nj, %bb.cl ] ; 5 uses
  switch i32 %i.pq, label %bb.dl [
    i32 0, label %bb.dk
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166
    i32 2, label %bb.dh
    i32 3, label %bb.di
  ]

bb.dh:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166

bb.di:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  %i.pr = load ptr, ptr %i.e, align 8, !tbaa !678 ; 2 uses
  %.not.i.i.i.i.i159 = icmp eq ptr %i.pr, null
  br i1 %.not.i.i.i.i.i159, label %.thread297, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !309 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i160 = load ptr, ptr %i.f, align 8, !tbaa !313 ; 2 uses
  %.not4.i.i.i.i.i.i161 = icmp eq ptr %i.pt, %.sroa.0.0.copyload.i.i.i.i.i160
  br i1 %.not4.i.i.i.i.i.i161, label %.thread297, label %.lr.ph.i.i.i.i.i.i162

.lr.ph.i.i.i.i.i.i162:                            ; preds = %bb.dj, %.lr.ph.i.i.i.i.i.i162
  %.06.i.i.i.i.i.i163 = phi i32 [ %i.pv, %.lr.ph.i.i.i.i.i.i162 ], [ 0, %bb.dj ]
  %.sroa.02.05.i.i.i.i.i.i164 = phi ptr [ %i.pu, %.lr.ph.i.i.i.i.i.i162 ], [ %i.pt, %bb.dj ]
  %i.pu = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i164) #26 ; 2 uses
  %i.pv = add i32 %.06.i.i.i.i.i.i163, 1          ; 2 uses
  %.not.i.i.i.i.i.i165 = icmp eq ptr %i.pu, %.sroa.0.0.copyload.i.i.i.i.i160
  br i1 %.not.i.i.i.i.i.i165, label %.thread297, label %.lr.ph.i.i.i.i.i.i162, !llvm.loop !679

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166: ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit, %bb.dh
  %.sink3.i.i167 = phi i64 [ 32, %bb.dh ], [ 8, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit ]
  %i.pw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink3.i.i167
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !22
  br label %bb.dl

bb.dk:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit
  %i.py = load i32, ptr %i.j, align 8, !tbaa !299
  %i.pz = load i32, ptr %i.k, align 8, !tbaa !299
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178

bb.dl:                                            ; preds = %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166
  %.ph295 = phi i32 [ -1, %_ZN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE9initLevelINS2_INSQ_13PrevChildItemEST_Lm4ELj0EEEEEvjRT_.exit ], [ %i.px, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i166 ] ; 2 uses
  switch i32 %i.pq, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178 [
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176
    i32 2, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176

.thread297:                                       ; preds = %.lr.ph.i.i.i.i.i.i162, %bb.dj, %bb.di
  %.ph295299 = phi i32 [ 0, %bb.di ], [ 0, %bb.dj ], [ %i.pv, %.lr.ph.i.i.i.i.i.i162 ] ; 3 uses
  %i.qa = load ptr, ptr %i.g, align 8, !tbaa !680 ; 2 uses
  %.not.i.i.i.i.i169 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i.i.i.i169, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %bb.dn

bb.dn:                                            ; preds = %.thread297
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !309 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i170 = load ptr, ptr %i.h, align 8, !tbaa !313 ; 2 uses
  %.not4.i.i.i.i.i.i171 = icmp eq ptr %i.qc, %.sroa.0.0.copyload.i.i.i.i.i170
  br i1 %.not4.i.i.i.i.i.i171, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %.lr.ph.i.i.i.i.i.i172

.lr.ph.i.i.i.i.i.i172:                            ; preds = %bb.dn, %.lr.ph.i.i.i.i.i.i172
  %.06.i.i.i.i.i.i173 = phi i32 [ %i.qe, %.lr.ph.i.i.i.i.i.i172 ], [ 0, %bb.dn ]
  %.sroa.02.05.i.i.i.i.i.i174 = phi ptr [ %i.qd, %.lr.ph.i.i.i.i.i.i172 ], [ %i.qc, %bb.dn ]
  %i.qd = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i.i.i.i174) #26 ; 2 uses
  %i.qe = add i32 %.06.i.i.i.i.i.i173, 1          ; 2 uses
  %.not.i.i.i.i.i.i175 = icmp eq ptr %i.qd, %.sroa.0.0.copyload.i.i.i.i.i170
  br i1 %.not.i.i.i.i.i.i175, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178, label %.lr.ph.i.i.i.i.i.i172, !llvm.loop !681

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176: ; preds = %bb.dm, %bb.dl
  %.sink3.i.i177 = phi i64 [ 32, %bb.dm ], [ 8, %bb.dl ]
  %i.qf = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink3.i.i177
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !22
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178: ; preds = %.lr.ph.i.i.i.i.i.i172, %bb.dk, %bb.dl, %.thread297, %bb.dn, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176
  %i.qh = phi i32 [ %i.py, %bb.dk ], [ %.ph295299, %bb.dn ], [ %.ph295, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176 ], [ %.ph295, %bb.dl ], [ %.ph295299, %.thread297 ], [ %.ph295299, %.lr.ph.i.i.i.i.i.i172 ]
  %i.qi = phi i32 [ %i.pz, %bb.dk ], [ 0, %bb.dn ], [ %i.qg, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EE3posEj.exit.sink.split.i.i176 ], [ -1, %bb.dl ], [ 0, %.thread297 ], [ %i.qe, %.lr.ph.i.i.i.i.i.i172 ]
  %i.qj = icmp eq i32 %i.qh, %i.qi
  br i1 %i.qj, label %bb.do, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.do:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit178
  switch i32 %i.pq, label %.split301 [
    i32 0, label %.split300
    i32 1, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179
    i32 2, label %.split302
  ]

.split300:                                        ; preds = %bb.do
  %i.qk = load i32, ptr %i.k, align 8, !tbaa !299
  %.not336 = icmp eq i32 %i.qk, 512
  br i1 %.not336, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dp

.split302:                                        ; preds = %bb.do
  %i.ql = load i32, ptr %i.l, align 8, !tbaa !298
  %.not334 = icmp eq i32 %i.ql, 32768
  br i1 %.not334, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dt

.split301:                                        ; preds = %bb.do
  %i.qm = icmp eq i32 %i.pq, 3
  %i.qn = load ptr, ptr %i.g, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load ptr, ptr %i.h, align 8
  %i.qq = icmp ne ptr %i.qp, %i.qo
  %i.qr = select i1 %i.qm, i1 %i.qq, i1 false
  br i1 %i.qr, label %bb.dt, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179: ; preds = %bb.do
  %i.qs = load i32, ptr %i.m, align 8, !tbaa !297
  %.not335 = icmp eq i32 %i.qs, 4096
  br i1 %.not335, label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge, label %bb.dq

bb.dp:                                            ; preds = %.split300
  %i.qt = load i32, ptr %i.j, align 8, !tbaa !299
  %i.qu = add i32 %i.qt, 1
  store i32 %i.qu, ptr %i.j, align 8, !tbaa !299
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE3posEj.exit92.thread.backedge

bb.dq:                                            ; preds = %_ZNK7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EE4testEj.exit179
  %i.qv = load ptr, ptr %i.o, align 8, !tbaa !317 ; 2 uses
  %i.qw = load i32, ptr %i.n, align 8, !tbaa !297
  %i.qx = add i32 %i.qw, 1                        ; 4 uses
  %i.qy = lshr i32 %i.qx, 6                       ; 3 uses
  %i.qz = icmp ugt i32 %i.qx, 4095
  br i1 %i.qz, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i185, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ra = and i32 %i.qx, 63
  %i.rb = zext nneg i32 %i.qy to i64              ; 2 uses
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.rb
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !318 ; 2 uses
  %i.re = zext nneg i32 %i.ra to i64              ; 2 uses
  %i.rf = shl nuw i64 1, %i.re
  %i.rg = and i64 %i.rd, %i.rf
  %.not.not.i.i.i.i.i.i180 = icmp eq i64 %i.rg, 0
  br i1 %.not.not.i.i.i.i.i.i180, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE4nextEv.exit.i.i185, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.rh = xor i64 %i.rd, -1
  %i.ri = shl nsw i64 -1, %i.re
  %i.rj = and i64 %i.ri, %i.rh                    ; 2 uses
  %.not25.i.i.i.i.i.i181 = icmp eq i64 %i.rj, 0
end_hunk_4
begin_hunk_5_@_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE6parentEv:bb.a
bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.34, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #20 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !264    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !260
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !252
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #24
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !264    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !260
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !703    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !254
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !257
  store i8 0, ptr %i.b, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.34, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #20 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !264    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !260
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !252
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #24
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !264    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !260
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IiEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.303", align 8 ; 12 uses
  %2 = alloca %"class.std::shared_ptr.75", align 8 ; 7 uses
  %3 = alloca %"class.std::basic_istream", align 8 ; 23 uses
  %4 = alloca %"class.openvdb::v13_0::util::NodeMask.64", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.d = atomicrmw xchg ptr %i.c, i8 1 seq_cst, align 1
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i
  %.sroa.0.02.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i ], [ 1, %bb.b ] ; 8 uses
  %i.f = icmp slt i32 %.sroa.0.02.i.i.i, 17
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = icmp sgt i32 %.sroa.0.02.i.i.i, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %xtraiter = and i32 %.sroa.0.02.i.i.i, 7        ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.01.i.i.i.i.i.prol = phi i32 [ %i.h, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.h = add nsw i32 %.01.i.i.i.i.i.prol, -1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !728

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.i.prol ]
  %i.i = icmp ult i32 %.sroa.0.02.i.i.i, 8
  br i1 %i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01.i.i.i.i.i = phi i32 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %.01.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.j = add nsw i32 %.01.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.k = icmp sgt i32 %.01.i.i.i.i.i, 8
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, !llvm.loop !358

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  %i.l = shl i32 %.sroa.0.02.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.m = tail call noundef i32 @sched_yield() #20 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i: ; preds = %bb.d, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %i.l, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i ], [ %.sroa.0.02.i.i.i, %bb.d ]
  %i.n = atomicrmw xchg ptr %i.c, i8 1 seq_cst, align 1
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit, !llvm.loop !359

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i, %bb.b
  %i.p = load atomic i32, ptr %i.a seq_cst, align 8
  %.not28 = icmp eq i32 %i.p, 0
  br i1 %.not28, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.q = load ptr, ptr %0, align 8, !tbaa !260
  store ptr %i.q, ptr %1, align 8, !tbaa !729
  store ptr null, ptr %0, align 8, !tbaa !260
  %i.r = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znam(i64 noundef 6144) #27
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %5 = load ptr, ptr %1, align 8, !tbaa !729
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !384
  invoke void @_ZNK7openvdb5v13_02io10MappedFile12createBufferEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.75") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.u = load ptr, ptr %2, align 8, !tbaa !387
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.v) #20
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 232
  store ptr null, ptr %i.w, align 8, !tbaa !390
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 240
  store i8 0, ptr %i.x, align 8, !tbaa !404
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 241
  store i8 0, ptr %i.y, align 1, !tbaa !405
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSi, i64 24), ptr %3, align 8, !tbaa !252
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSi, i64 64), ptr %i.v, align 8, !tbaa !252
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !406
  %i.ab = load i64, ptr getelementptr inbounds nuw inrange(0, 40) (i8, ptr @_ZTVSi, i64 0), align 8
  %i.ac = getelementptr inbounds i8, ptr %3, i64 %i.ab
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ac, ptr noundef %i.u)
          to label %_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit: ; preds = %bb.g
  %i.ae = load ptr, ptr %3, align 8, !tbaa !252
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %i.ag
  %i.ai = load ptr, ptr %1, align 8, !tbaa !729
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  invoke void @_ZN7openvdb5v13_02io20setStreamMetadataPtrERSt8ios_baseRSt10shared_ptrINS1_14StreamMetadataEEb(ptr noundef nonnull align 8 dereferenceable(216) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.x

bb.i:                                             ; preds = %_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false), !tbaa !318
  %i.ak = load ptr, ptr %1, align 8, !tbaa !729
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !731
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.am, i64 0)
          to label %bb.j unwind label %bb.y       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ao = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef 64)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.y ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit: ; preds = %bb.j
  %i.ap = load ptr, ptr %1, align 8, !tbaa !729
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !733
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.aq, i64 0)
          to label %bb.k unwind label %bb.y       ; 0 uses

bb.k:                                             ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !260
  %i.at = load ptr, ptr %3, align 8, !tbaa !252
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %3, i64 %i.av
  %i.ax = invoke noundef zeroext i1 @_ZN7openvdb5v13_02io12getHalfFloatERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.aw)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math4Vec3IiEENS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.as, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(64) %4, i1 noundef zeroext %i.ax)
          to label %bb.m unwind label %bb.y

bb.m:                                             ; preds = %bb.l
  store atomic i32 0, ptr %i.a seq_cst, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ay = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.ay, ptr %3, align 8, !tbaa !252
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %3, i64 %i.bb
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !252
  store i64 0, ptr %i.aa, align 8, !tbaa !406
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.v) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !415 ; 8 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bf, align 8, !tbaa !416
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !418
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !252
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #20, !inline_history !419
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !252
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #20, !inline_history !419
  br label %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !260
  %.not.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.bi, %bb.q ], [ %i.bs, %bb.r ]
  %i.bt = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bt, label %bb.s, label %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !420

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #20
  br label %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.bu = load ptr, ptr %1, align 8, !tbaa !729   ; 2 uses
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EE8FileInfoESt14default_deleteIS8_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EE8FileInfoEEclEPS8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bu)
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EE8FileInfoESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EE8FileInfoESt14default_deleteIS8_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit, %_ZNSt10unique_ptrIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EE8FileInfoESt14default_deleteIS8_EED2Ev.exit
  store atomic i8 0, ptr %i.c release, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit
  ret void

bb.v:                                             ; preds = %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %bb.f
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %_ZNSiC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.j, %bb.l, %bb.k, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit, %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.by, %bb.y ], [ %i.bx, %bb.x ]
  %i.bz = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.bz, ptr %3, align 8, !tbaa !252
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.cb = getelementptr i8, ptr %i.bz, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %3, i64 %i.cc
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !252
  store i64 0, ptr %i.aa, align 8, !tbaa !406
  br label %.body

.body:                                            ; preds = %bb.h, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.z ], [ %i.ad, %bb.h ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.v) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  br label %bb.aa

bb.aa:                                            ; preds = %.body, %bb.w
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.bw, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.aa ], [ %i.bv, %bb.v ]
  %6 = load ptr, ptr %1, align 8, !tbaa !729      ; 2 uses
  %.not.i20 = icmp eq ptr %6, null
  br i1 %.not.i20, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit23, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferINS1_4math4Vec3IiEELj3EE8FileInfoEEclEPS8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %6)
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit23

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit23: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  store atomic i8 0, ptr %i.c release, align 4
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math4Vec3IiEENS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.81", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.93", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.93", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3.283", align 8 ; 7 uses
  %10 = alloca %"class.openvdb::v13_0::math::Vec3.283", align 8 ; 9 uses
  %11 = alloca %"class.openvdb::v13_0::util::NodeMask.64", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !252
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.g = load ptr, ptr %0, align 8, !tbaa !252
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  call void @_ZN7openvdb5v13_02io20getStreamMetadataPtrERSt8ios_base(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.81") align 8 %5, ptr noundef nonnull align 8 dereferenceable(216) %i.j)
  %i.k = load ptr, ptr %0, align 8, !tbaa !252
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = invoke noundef i32 @_ZN7openvdb5v13_02io18getDataCompressionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.n)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.p = and i32 %i.o, 2
  %i.q = icmp ne i32 %i.p, 0                      ; 3 uses
  %i.r = icmp ne ptr %1, null                     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %5, align 8, !tbaa !421    ; 2 uses
  %.not180 = icmp eq ptr %i.s, null
  br i1 %.not180, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = invoke noundef zeroext i1 @_ZNK7openvdb5v13_02io14StreamMetadata15delayedLoadMetaEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.u = load ptr, ptr %5, align 8, !tbaa !421
  %i.v = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN7openvdb5v13_02io14StreamMetadata12gridMetadataEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.w, ptr %8, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 17, ptr %i.a, align 8, !tbaa !318
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %8, align 8, !tbaa !264
  %i.y = load i64, ptr %i.a, align 8, !tbaa !318  ; 3 uses
  store i64 %i.y, ptr %i.w, align 8, !tbaa !260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.x, ptr noundef nonnull align 1 dereferenceable(17) @.str.36, i64 17, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !257
  %i.aa = load ptr, ptr %8, align 8, !tbaa !264
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN7openvdb5v13_07MetaMap11getMetadataINS0_2io19DelayedLoadMetadataEEENT_3PtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.93") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.k

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  %i.ac = load ptr, ptr %7, align 8, !tbaa !422   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !415 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %i.ac, ptr %6, align 8, !tbaa !425
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !415
  %.pre = load ptr, ptr %8, align 8, !tbaa !264   ; 2 uses
  %i.ag = icmp eq ptr %.pre, %i.w
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !260
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aj = load ptr, ptr %5, align 8, !tbaa !421
  %i.ak = invoke noundef i64 @_ZNK7openvdb5v13_02io14StreamMetadata4leafEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.m unwind label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.i:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.k:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %8, align 8, !tbaa !264   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.w
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.k
  %i.as = load i64, ptr %i.w, align 8, !tbaa !260
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.ap, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %i.an, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.bn

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.c, %bb.b
  %i.au = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.c ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %i.av = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.c ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.0101 = phi i64 [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 6, ptr %i.b, align 1, !tbaa !260
  %i.aw = load ptr, ptr %0, align 8, !tbaa !252
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %0, i64 %i.ay
  %i.ba = invoke noundef i32 @_ZN7openvdb5v13_02io16getFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.az)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bb = icmp ugt i32 %i.ba, 221
  br i1 %i.bb, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %or.cond = or i1 %i.r, %i.q
  br i1 %or.cond, label %bb.q, label %.invoke

bb.p:                                             ; preds = %.invoke, %bb.t, %bb.r, %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.q:                                             ; preds = %bb.o
  %.not181 = icmp eq ptr %i.av, null
  %or.cond209 = select i1 %i.r, i1 true, i1 %.not181
  br i1 %or.cond209, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = invoke noundef signext i8 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata7getMaskEm(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 noundef %.0101)
          to label %bb.s unwind label %bb.p

bb.s:                                             ; preds = %bb.r
  store i8 %i.bd, ptr %i.b, align 1, !tbaa !260
  br label %.invoke

.invoke:                                          ; preds = %bb.o, %bb.s
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i32 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.t:                                             ; preds = %bb.q
  %i.bf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 1)
end_hunk_5

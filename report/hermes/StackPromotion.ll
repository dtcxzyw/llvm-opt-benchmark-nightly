Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/StackPromotion?download=true
inline.NumInlined: 1848
inline.NumDeleted: 843
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN6hermes14StackPromotion11runOnModuleEPNS_6ModuleE:bb.a
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i, i64 8 ; 3 uses
  %.not5.i3.i.i.i.i.i.i = icmp eq ptr %i.uu, %.pn12.i.i.i.i.i
  br i1 %.not5.i3.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i.i.i

.lr.ph.i4.i.i.i.i.i.i:                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i.i.i, %.critedge2.i6.i.i.i.i.i.i
  %.sroa.02.1.i.i.i.i = phi ptr [ %i.uw, %.critedge2.i6.i.i.i.i.i.i ], [ %i.uu, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i.i.i ] ; 3 uses
  %i.uv = load ptr, ptr %.sroa.02.1.i.i.i.i, align 8, !tbaa !119
  %magicptr.i5.i.i.i.i.i.i = ptrtoint ptr %i.uv to i64
  switch i64 %magicptr.i5.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i [
    i64 -8, label %.critedge2.i6.i.i.i.i.i.i
    i64 -16, label %.critedge2.i6.i.i.i.i.i.i
  ]

.critedge2.i6.i.i.i.i.i.i:                        ; preds = %.lr.ph.i4.i.i.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i.i.i.i.i = icmp eq ptr %i.uw, %.pn12.i.i.i.i.i
  br i1 %.not.i7.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i.i.i, !llvm.loop !210

_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i: ; preds = %.critedge2.i6.i.i.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i.i.i
  %.sroa.02.2.i.i.i.i = phi ptr [ %i.uu, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i.i.i ], [ %i.uw, %.critedge2.i6.i.i.i.i.i.i ], [ %.sroa.02.1.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.02.2.i.i.i.i, %i.ow
  br i1 %.not.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertINSC_8IteratorEEEvT_SF_.exit.i.i.i, label %.lr.ph.i.i.i.i25, !llvm.loop !217

_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertINSC_8IteratorEEEvT_SF_.exit.i.i.i: ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i
  %i.ux = load ptr, ptr %6, align 8, !tbaa !121, !noalias !265 ; 2 uses
  %i.uy = load i32, ptr %i.v, align 8, !tbaa !122, !noalias !265 ; 7 uses
  %i.uz = icmp eq i32 %i.uy, 0
  br i1 %i.uz, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertINSC_8IteratorEEEvT_SF_.exit.i.i.i
  %i.va = ptrtoint ptr %i.kp to i64
  %i.vb = trunc i64 %i.va to i32                  ; 2 uses
  %i.vc = lshr i32 %i.vb, 4
  %i.vd = lshr i32 %i.vb, 9
  %i.ve = xor i32 %i.vc, %i.vd
  %i.vf = add i32 %i.uy, -1                       ; 2 uses
  %.02744.i.i.i103.i.i.i = and i32 %i.vf, %i.ve   ; 2 uses
  %i.vg = zext nneg i32 %.02744.i.i.i103.i.i.i to i64
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.vg ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !91, !noalias !265 ; 2 uses
  %i.vj = icmp eq ptr %i.kp, %i.vi
  br i1 %i.vj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i.i.i, label %.lr.ph.i.i.i104.i.i.i, !prof !35

.lr.ph.i.i.i104.i.i.i:                            ; preds = %bb.bk, %bb.bm
  %i.vk = phi ptr [ %i.vu, %bb.bm ], [ %i.vi, %bb.bk ] ; 2 uses
  %i.vl = phi ptr [ %i.vt, %bb.bm ], [ %i.vh, %bb.bk ] ; 2 uses
  %.02747.i.i.i105.i.i.i = phi i32 [ %.027.i.i.i110.i.i.i, %bb.bm ], [ %.02744.i.i.i103.i.i.i, %bb.bk ]
  %.046.i.i.i106.i.i.i = phi i32 [ %i.vq, %bb.bm ], [ 1, %bb.bk ] ; 2 uses
  %.02945.i.i.i107.i.i.i = phi ptr [ %spec.select.i.i.i109.i.i.i, %bb.bm ], [ null, %bb.bk ] ; 4 uses
  %i.vm = icmp eq ptr %i.vk, inttoptr (i64 -8 to ptr)
  br i1 %i.vm, label %bb.bl, label %bb.bm, !prof !36

bb.bl:                                            ; preds = %.lr.ph.i.i.i104.i.i.i
  %.not.i.i.i116.i.i.i = icmp eq ptr %.02945.i.i.i107.i.i.i, null
  %i.vn = select i1 %.not.i.i.i116.i.i.i, ptr %i.vl, ptr %.02945.i.i.i107.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i.i

bb.bm:                                            ; preds = %.lr.ph.i.i.i104.i.i.i
  %i.vo = icmp eq ptr %i.vk, inttoptr (i64 -16 to ptr)
  %i.vp = icmp eq ptr %.02945.i.i.i107.i.i.i, null
  %or.cond.not.i.i.i108.i.i.i = select i1 %i.vo, i1 %i.vp, i1 false
  %spec.select.i.i.i109.i.i.i = select i1 %or.cond.not.i.i.i108.i.i.i, ptr %i.vl, ptr %.02945.i.i.i107.i.i.i
  %i.vq = add i32 %.046.i.i.i106.i.i.i, 1
  %i.vr = add i32 %.046.i.i.i106.i.i.i, %.02747.i.i.i105.i.i.i
  %.027.i.i.i110.i.i.i = and i32 %i.vr, %i.vf     ; 2 uses
  %i.vs = zext i32 %.027.i.i.i110.i.i.i to i64
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.vs ; 2 uses
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !91, !noalias !265 ; 2 uses
  %i.vv = icmp eq ptr %i.kp, %i.vu
  br i1 %i.vv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i.i.i, label %.lr.ph.i.i.i104.i.i.i, !prof !37, !llvm.loop !6

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i.i: ; preds = %bb.bl, %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertINSC_8IteratorEEEvT_SF_.exit.i.i.i
  %.sink.i.i.i117.i.i.i = phi ptr [ %i.vn, %bb.bl ], [ null, %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E6insertINSC_8IteratorEEEvT_SF_.exit.i.i.i ]
  %i.vw = load i32, ptr %i.w, align 8, !tbaa !98, !noalias !265 ; 3 uses
  %i.vx = shl i32 %i.vw, 2
  %i.vy = add i32 %i.vx, 4
  %i.vz = mul i32 %i.uy, 3
  %.not.i.i4.i118.i.i.i = icmp ult i32 %i.vy, %i.vz
  br i1 %.not.i.i4.i118.i.i.i, label %bb.bo, label %bb.bn, !prof !36

bb.bn:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i.i
  %i.wa = shl i32 %i.uy, 1
  br label %.sink.split.i.i.i119.i.i.i

bb.bo:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i.i
  %i.wb = load i32, ptr %i.x, align 4, !tbaa !123, !noalias !265
  %.neg.i.i.i123.i.i.i = xor i32 %i.vw, -1
  %.neg12.i.i.i124.i.i.i = add i32 %i.uy, %.neg.i.i.i123.i.i.i
  %i.wc = sub i32 %.neg12.i.i.i124.i.i.i, %i.wb
  %i.wd = lshr i32 %i.uy, 3
  %.not10.i.i.i125.i.i.i = icmp ugt i32 %i.wc, %i.wd
  br i1 %.not10.i.i.i125.i.i.i, label %bb.bs, label %.sink.split.i.i.i119.i.i.i, !prof !36

.sink.split.i.i.i119.i.i.i:                       ; preds = %bb.bo, %bb.bn
  %.sink.i.i5.i120.i.i.i = phi i32 [ %i.wa, %bb.bn ], [ %i.uy, %bb.bo ]
  call void @_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %.sink.i.i5.i120.i.i.i), !noalias !265
  %i.we = load ptr, ptr %6, align 8, !tbaa !121, !noalias !265 ; 2 uses
  %i.wf = load i32, ptr %i.v, align 8, !tbaa !122, !noalias !265 ; 2 uses
  %i.wg = icmp eq i32 %i.wf, 0
  br i1 %i.wg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.sink.split.i.i.i119.i.i.i
  %i.wh = ptrtoint ptr %i.kp to i64
  %i.wi = trunc i64 %i.wh to i32                  ; 2 uses
  %i.wj = lshr i32 %i.wi, 4
  %i.wk = lshr i32 %i.wi, 9
  %i.wl = xor i32 %i.wj, %i.wk
  %i.wm = add i32 %i.wf, -1                       ; 2 uses
  %.02744.i.i263.i.i.i = and i32 %i.wm, %i.wl     ; 2 uses
  %i.wn = zext nneg i32 %.02744.i.i263.i.i.i to i64
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.we, i64 %i.wn ; 3 uses
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !91, !noalias !265 ; 2 uses
  %i.wq = icmp eq ptr %i.kp, %i.wp
  br i1 %i.wq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i, label %.lr.ph.i.i264.i.i.i, !prof !35

.lr.ph.i.i264.i.i.i:                              ; preds = %bb.bp, %bb.br
  %i.wr = phi ptr [ %i.xb, %bb.br ], [ %i.wp, %bb.bp ] ; 2 uses
  %i.ws = phi ptr [ %i.xa, %bb.br ], [ %i.wo, %bb.bp ] ; 2 uses
  %.02747.i.i265.i.i.i = phi i32 [ %.027.i.i270.i.i.i, %bb.br ], [ %.02744.i.i263.i.i.i, %bb.bp ]
  %.046.i.i266.i.i.i = phi i32 [ %i.wx, %bb.br ], [ 1, %bb.bp ] ; 2 uses
  %.02945.i.i267.i.i.i = phi ptr [ %spec.select.i.i269.i.i.i, %bb.br ], [ null, %bb.bp ] ; 4 uses
  %i.wt = icmp eq ptr %i.wr, inttoptr (i64 -8 to ptr)
  br i1 %i.wt, label %bb.bq, label %bb.br, !prof !36

bb.bq:                                            ; preds = %.lr.ph.i.i264.i.i.i
  %.not.i.i273.i.i.i = icmp eq ptr %.02945.i.i267.i.i.i, null
  %i.wu = select i1 %.not.i.i273.i.i.i, ptr %i.ws, ptr %.02945.i.i267.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i

bb.br:                                            ; preds = %.lr.ph.i.i264.i.i.i
  %i.wv = icmp eq ptr %i.wr, inttoptr (i64 -16 to ptr)
  %i.ww = icmp eq ptr %.02945.i.i267.i.i.i, null
  %or.cond.not.i.i268.i.i.i = select i1 %i.wv, i1 %i.ww, i1 false
  %spec.select.i.i269.i.i.i = select i1 %or.cond.not.i.i268.i.i.i, ptr %i.ws, ptr %.02945.i.i267.i.i.i
  %i.wx = add i32 %.046.i.i266.i.i.i, 1
  %i.wy = add i32 %.046.i.i266.i.i.i, %.02747.i.i265.i.i.i
  %.027.i.i270.i.i.i = and i32 %i.wy, %i.wm       ; 2 uses
  %i.wz = zext i32 %.027.i.i270.i.i.i to i64
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.we, i64 %i.wz ; 3 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !91, !noalias !265 ; 2 uses
  %i.xc = icmp eq ptr %i.kp, %i.xb
  br i1 %i.xc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i, label %.lr.ph.i.i264.i.i.i, !prof !37, !llvm.loop !6

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i: ; preds = %bb.br, %bb.bq, %bb.bp, %.sink.split.i.i.i119.i.i.i
  %.sink.i.i271.i.i.i = phi ptr [ %i.wu, %bb.bq ], [ null, %.sink.split.i.i.i119.i.i.i ], [ %i.wo, %bb.bp ], [ %i.xa, %bb.br ]
  %.pre.i.i121.i.i.i = load i32, ptr %i.w, align 8, !tbaa !98, !noalias !265
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i, %bb.bo
  %i.xd = phi ptr [ %.sink.i.i271.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i ], [ %.sink.i.i.i117.i.i.i, %bb.bo ] ; 2 uses
  %i.xe = phi i32 [ %.pre.i.i121.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i.i ], [ %i.vw, %bb.bo ]
  %i.xf = add i32 %i.xe, 1
  store i32 %i.xf, ptr %i.w, align 8, !tbaa !98, !noalias !265
  %i.xg = load ptr, ptr %i.xd, align 8, !tbaa !91, !noalias !265
  %i.xh = icmp eq ptr %i.xg, inttoptr (i64 -8 to ptr)
  br i1 %i.xh, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.xi = load i32, ptr %i.x, align 4, !tbaa !123, !noalias !265
  %i.xj = add i32 %i.xi, -1
  store i32 %i.xj, ptr %i.x, align 4, !tbaa !123, !noalias !265
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit.i.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit.i.i.i.i: ; preds = %bb.bt, %bb.bs
  store ptr %i.kp, ptr %i.xd, align 8, !tbaa !91, !noalias !265
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i.i.i: ; preds = %bb.bm, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit.i.i.i.i, %bb.bk
  %i.xk = getelementptr inbounds nuw i8, ptr %.038496.i.i.i, i64 8 ; 2 uses
  %.not41.i.i.i = icmp eq ptr %i.xk, %i.kl
  br i1 %.not41.i.i.i, label %._crit_edge499.i.i.i, label %.lr.ph498.i.i.i

_ZN4llvh9SetVectorIPN6hermes8FunctionESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEE6insertERKS3_.exit.i.i.i: ; preds = %bb.t, %._crit_edge499.i.i.i, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, %bb.ac, %bb.r, %.lr.ph504.i.i.i
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.0374.0502.i.i.i, i64 8
  %.sroa.0374.0.i.i.i = load ptr, ptr %i.xl, align 8, !tbaa !26 ; 2 uses
  %.not420.i.i.i = icmp eq ptr %.sroa.0374.0.i.i.i, %i.fz
  br i1 %.not420.i.i.i, label %._crit_edge505.i.i.i, label %.lr.ph504.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZN12_GLOBAL__N_19unionSetsERN4llvh8DenseSetIPN6hermes8VariableENS0_12DenseMapInfoIS4_EEEES8_.exit.thread.i.i.i, %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i.i
  %i.xm = load i32, ptr %i.w, align 8, !tbaa !98  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.xm, 0
  br i1 %.not.i.i.i, label %._crit_edge517.i.i.i, label %.lr.ph516.i.i.i, !llvm.loop !222

.lr.ph516.i.i.i:                                  ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.xn = phi i32 [ %i.xm, %.loopexit.i.i.i ], [ %.pre587.i.i.i, %.preheader.i.i.i ]
  %i.xo = load ptr, ptr %6, align 8, !tbaa !121   ; 6 uses
  %i.xp = load i32, ptr %i.v, align 8, !tbaa !122 ; 3 uses
  %i.xq = zext i32 %i.xp to i64
  %.idx.i.i43.i.i.i = shl nuw nsw i64 %i.xq, 3
  %i.xr = getelementptr i8, ptr %i.xo, i64 %.idx.i.i43.i.i.i ; 2 uses
  %.not5.i5.i10.i2.i.i44.i.i.i = icmp eq i32 %i.xp, 0
  br i1 %.not5.i5.i10.i2.i.i44.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.thread.i.i.i, label %.lr.ph.i6.i12.i3.i.i45.i.i.i

_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.thread.i.i.i: ; preds = %.lr.ph516.i.i.i
  %i.xs = load ptr, ptr %i.xo, align 8, !tbaa !91
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i.i

.lr.ph.i6.i12.i3.i.i45.i.i.i:                     ; preds = %.lr.ph516.i.i.i, %.critedge2.i8.i14.i6.i.i48.i.i.i
  %.sroa.0.3.i4.i.i46.i.i.i = phi ptr [ %i.xu, %.critedge2.i8.i14.i6.i.i48.i.i.i ], [ %i.xo, %.lr.ph516.i.i.i ] ; 2 uses
  %i.xt = load ptr, ptr %.sroa.0.3.i4.i.i46.i.i.i, align 8, !tbaa !91 ; 2 uses
  %magicptr.i7.i13.i5.i.i47.i.i.i = ptrtoint ptr %i.xt to i64 ; 2 uses
  switch i64 %magicptr.i7.i13.i5.i.i47.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i48.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i48.i.i.i
  ]

.critedge2.i8.i14.i6.i.i48.i.i.i:                 ; preds = %.lr.ph.i6.i12.i3.i.i45.i.i.i, %.lr.ph.i6.i12.i3.i.i45.i.i.i
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i46.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i49.i.i.i = icmp eq ptr %i.xu, %i.xr
  br i1 %.not.i9.i15.i7.i.i49.i.i.i, label %.critedge2.i8.i14.i6.i.i48._ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit_crit_edge.i.i.i, label %.lr.ph.i6.i12.i3.i.i45.i.i.i, !llvm.loop !223

.critedge2.i8.i14.i6.i.i48._ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit_crit_edge.i.i.i: ; preds = %.critedge2.i8.i14.i6.i.i48.i.i.i
  %.pre588.i.i.i = load ptr, ptr %i.xr, align 8, !tbaa !91 ; 2 uses
  %.pre597.i.i.i = ptrtoint ptr %.pre588.i.i.i to i64
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i, !llvm.loop !223

_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i: ; preds = %.lr.ph.i6.i12.i3.i.i45.i.i.i, %.critedge2.i8.i14.i6.i.i48._ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre597.i.i.i, %.critedge2.i8.i14.i6.i.i48._ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit_crit_edge.i.i.i ], [ %magicptr.i7.i13.i5.i.i47.i.i.i, %.lr.ph.i6.i12.i3.i.i45.i.i.i ]
  %22 = phi ptr [ %.pre588.i.i.i, %.critedge2.i8.i14.i6.i.i48._ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit_crit_edge.i.i.i ], [ %i.xt, %.lr.ph.i6.i12.i3.i.i45.i.i.i ] ; 4 uses
  %i.xv = trunc i64 %.pre-phi.i.i.i to i32        ; 2 uses
  %i.xw = lshr i32 %i.xv, 4
  %i.xx = lshr i32 %i.xv, 9
  %i.xy = xor i32 %i.xw, %i.xx
  %i.xz = add i32 %i.xp, -1                       ; 2 uses
  %.02744.i.i.i.i.i.i.i = and i32 %i.xy, %i.xz    ; 2 uses
  %i.ya = zext nneg i32 %.02744.i.i.i.i.i.i.i to i64
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %i.ya ; 2 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !91 ; 2 uses
  %i.yd = icmp eq ptr %22, %i.yc
  br i1 %i.yd, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !prof !35

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i, %bb.bu
  %i.ye = phi ptr [ %i.yk, %bb.bu ], [ %i.yc, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i ]
  %.02747.i.i.i.i.i.i.i = phi i32 [ %.027.i.i.i.i.i.i.i, %bb.bu ], [ %.02744.i.i.i.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi i32 [ %i.yg, %bb.bu ], [ 1, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i ] ; 2 uses
  %i.yf = icmp eq ptr %i.ye, inttoptr (i64 -8 to ptr)
  br i1 %i.yf, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i.i, label %bb.bu, !prof !36

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.yg = add i32 %.046.i.i.i.i.i.i.i, 1
  %i.yh = add i32 %.046.i.i.i.i.i.i.i, %.02747.i.i.i.i.i.i.i
  %.027.i.i.i.i.i.i.i = and i32 %i.yh, %i.xz      ; 2 uses
  %i.yi = zext i32 %.027.i.i.i.i.i.i.i to i64     ; 2 uses
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %i.yi
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !91 ; 2 uses
  %i.yl = icmp eq ptr %22, %i.yk
  br i1 %i.yl, label %.loopexit.i.i.i.i.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !prof !37, !llvm.loop !6

.loopexit.i.i.i.i.i.loopexit:                     ; preds = %bb.bu
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %i.yi
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.i.i.i.i.i.loopexit, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i
  %.sink.i.i.ph.i.i.i.i.i = phi ptr [ %i.yb, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i ], [ %i.ym, %.loopexit.i.i.i.i.i.loopexit ]
  store ptr inttoptr (i64 -16 to ptr), ptr %.sink.i.i.ph.i.i.i.i.i, align 8, !tbaa !91
  %i.yn = add i32 %i.xn, -1
  store i32 %i.yn, ptr %i.w, align 8, !tbaa !98
  %i.yo = load i32, ptr %i.x, align 4, !tbaa !123
  %i.yp = add i32 %i.yo, 1
  store i32 %i.yp, ptr %i.x, align 4, !tbaa !123
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i.i

_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.thread.i.i.i
  %i.yq = phi ptr [ %i.xs, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.thread.i.i.i ], [ %22, %.loopexit.i.i.i.i.i ], [ %22, %.lr.ph.i.i.i.i.i.i.i ] ; 8 uses
  %i.yr = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.yq) #11 ; 2 uses
  %i.ys = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.yq) #11 ; 2 uses
  %.not.i.i54.i.i.i = icmp eq ptr %i.ys, null
  br i1 %.not.i.i54.i.i.i, label %.loopexit.i.i.i, label %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit.i.i.i

_ZN6hermes8succ_endEPNS_10BasicBlockE.exit.i.i.i: ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i.i
  %i.yt = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ys) #11 ; 2 uses
  %.not418512.i.i.i = icmp eq i32 %i.yt, 0
  br i1 %.not418512.i.i.i, label %.loopexit.i.i.i, label %.lr.ph514.i.i.i

.lr.ph514.i.i.i:                                  ; preds = %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit.i.i.i
  %i.yu = ptrtoint ptr %i.yq to i64
  %i.yv = trunc i64 %i.yu to i32                  ; 2 uses
  %i.yw = lshr i32 %i.yv, 4
  %i.yx = lshr i32 %i.yv, 9
  %i.yy = xor i32 %i.yw, %i.yx                    ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN12_GLOBAL__N_19unionSetsERN4llvh8DenseSetIPN6hermes8VariableENS0_12DenseMapInfoIS4_EEEES8_.exit.thread.i.i.i, %.lr.ph514.i.i.i
  %.sroa.5347.0513.i.i.i = phi i32 [ 0, %.lr.ph514.i.i.i ], [ %i.ams, %_ZN12_GLOBAL__N_19unionSetsERN4llvh8DenseSetIPN6hermes8VariableENS0_12DenseMapInfoIS4_EEEES8_.exit.thread.i.i.i ] ; 3 uses
  %i.yz = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.yr, i32 noundef %.sroa.5347.0513.i.i.i) #11 ; 7 uses
  %i.za = load ptr, ptr %9, align 8, !tbaa !94    ; 9 uses
  %i.zb = load i32, ptr %i.j, align 8, !tbaa !89  ; 10 uses
  %i.zc = icmp eq i32 %i.zb, 0
  br i1 %i.zc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i136.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.zd = ptrtoint ptr %i.yz to i64
  %i.ze = trunc i64 %i.zd to i32                  ; 2 uses
  %i.zf = lshr i32 %i.ze, 4
  %i.zg = lshr i32 %i.ze, 9
  %i.zh = xor i32 %i.zf, %i.zg
  %i.zi = add i32 %i.zb, -1                       ; 3 uses
  %.02744.i.i.i126.i.i.i = and i32 %i.zh, %i.zi   ; 2 uses
  %i.zj = zext nneg i32 %.02744.i.i.i126.i.i.i to i64
  %i.zk = getelementptr inbounds nuw [32 x i8], ptr %i.za, i64 %i.zj ; 4 uses
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !91 ; 2 uses
  %i.zm = icmp eq ptr %i.yz, %i.zl
  br i1 %i.zm, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.thread.i.i.i, label %.lr.ph.i.i.i127.i.i.i, !prof !35

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.thread.i.i.i: ; preds = %bb.bw
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  br label %bb.cg

.lr.ph.i.i.i127.i.i.i:                            ; preds = %bb.bw, %bb.by
  %i.zo = phi ptr [ %i.zy, %bb.by ], [ %i.zl, %bb.bw ] ; 2 uses
  %i.zp = phi ptr [ %i.zx, %bb.by ], [ %i.zk, %bb.bw ] ; 2 uses
  %.02747.i.i.i128.i.i.i = phi i32 [ %.027.i.i.i133.i.i.i, %bb.by ], [ %.02744.i.i.i126.i.i.i, %bb.bw ]
  %.046.i.i.i129.i.i.i = phi i32 [ %i.zu, %bb.by ], [ 1, %bb.bw ] ; 2 uses
  %.02945.i.i.i130.i.i.i = phi ptr [ %spec.select.i.i.i132.i.i.i, %bb.by ], [ null, %bb.bw ] ; 4 uses
  %i.zq = icmp eq ptr %i.zo, inttoptr (i64 -8 to ptr)
  br i1 %i.zq, label %bb.bx, label %bb.by, !prof !36

bb.bx:                                            ; preds = %.lr.ph.i.i.i127.i.i.i
  %.not.i.i.i135.i.i.i = icmp eq ptr %.02945.i.i.i130.i.i.i, null
  %i.zr = select i1 %.not.i.i.i135.i.i.i, ptr %i.zp, ptr %.02945.i.i.i130.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i136.i.i.i

bb.by:                                            ; preds = %.lr.ph.i.i.i127.i.i.i
  %i.zs = icmp eq ptr %i.zo, inttoptr (i64 -16 to ptr)
  %i.zt = icmp eq ptr %.02945.i.i.i130.i.i.i, null
  %or.cond.not.i.i.i131.i.i.i = select i1 %i.zs, i1 %i.zt, i1 false
  %spec.select.i.i.i132.i.i.i = select i1 %or.cond.not.i.i.i131.i.i.i, ptr %i.zp, ptr %.02945.i.i.i130.i.i.i
  %i.zu = add i32 %.046.i.i.i129.i.i.i, 1
  %i.zv = add i32 %.046.i.i.i129.i.i.i, %.02747.i.i.i128.i.i.i
  %.027.i.i.i133.i.i.i = and i32 %i.zv, %i.zi     ; 2 uses
  %i.zw = zext i32 %.027.i.i.i133.i.i.i to i64
  %i.zx = getelementptr inbounds nuw [32 x i8], ptr %i.za, i64 %i.zw ; 3 uses
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !91 ; 2 uses
  %i.zz = icmp eq ptr %i.yz, %i.zy
  br i1 %i.zz, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.i.i.i, label %.lr.ph.i.i.i127.i.i.i, !prof !37, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i136.i.i.i: ; preds = %bb.bx, %bb.bv
  %.sink.i.i.i137.i.i.i = phi ptr [ %i.zr, %bb.bx ], [ null, %bb.bv ]
  %i.aaa = load i32, ptr %i.k, align 8, !tbaa !92 ; 3 uses
  %i.aab = shl i32 %i.aaa, 2
  %i.aac = add i32 %i.aab, 4
  %i.aad = mul i32 %i.zb, 3
  %.not.i.i4.i138.i.i.i = icmp ult i32 %i.aac, %i.aad
  br i1 %.not.i.i4.i138.i.i.i, label %bb.ca, label %bb.bz, !prof !36

bb.bz:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i136.i.i.i
  %i.aae = shl i32 %i.zb, 1
  br label %.sink.split.i.i.i139.i.i.i

bb.ca:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i136.i.i.i
  %i.aaf = load i32, ptr %i.l, align 4, !tbaa !93
  %.neg.i.i.i143.i.i.i = xor i32 %i.aaa, -1
  %.neg12.i.i.i144.i.i.i = add i32 %i.zb, %.neg.i.i.i143.i.i.i
  %i.aag = sub i32 %.neg12.i.i.i144.i.i.i, %i.aaf
  %i.aah = lshr i32 %i.zb, 3
  %.not10.i.i.i145.i.i.i = icmp ugt i32 %i.aag, %i.aah
  br i1 %.not10.i.i.i145.i.i.i, label %bb.ce, label %.sink.split.i.i.i139.i.i.i, !prof !36

.sink.split.i.i.i139.i.i.i:                       ; preds = %bb.ca, %bb.bz
  %.sink.i.i5.i140.i.i.i = phi i32 [ %i.aae, %bb.bz ], [ %i.zb, %bb.ca ]
  %i.aai = add i32 %.sink.i.i5.i140.i.i.i, -1
  %i.aaj = zext i32 %i.aai to i64                 ; 2 uses
  %i.aak = lshr i64 %i.aaj, 1
  %i.aal = or i64 %i.aak, %i.aaj                  ; 2 uses
  %i.aam = lshr i64 %i.aal, 2
  %i.aan = or i64 %i.aam, %i.aal                  ; 2 uses
  %i.aao = lshr i64 %i.aan, 4
  %i.aap = or i64 %i.aao, %i.aan                  ; 2 uses
  %i.aaq = lshr i64 %i.aap, 8
  %i.aar = or i64 %i.aaq, %i.aap                  ; 2 uses
  %i.aas = lshr i64 %i.aar, 16
  %i.aat = or i64 %i.aas, %i.aar
  %i.aau = trunc nuw i64 %i.aat to i32
  %i.aav = add i32 %i.aau, 1
  %.sroa.speculated.i.i286.i.i.i = call i32 @llvm.umax.i32(i32 %i.aav, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i.i286.i.i.i, ptr %i.j, align 8, !tbaa !89
  %i.aaw = zext i32 %.sroa.speculated.i.i286.i.i.i to i64
  %i.aax = shl nuw nsw i64 %i.aaw, 5
  %i.aay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aax) #12 ; 7 uses
  store ptr %i.aay, ptr %9, align 8, !tbaa !94
  %.not.i.i287.i.i.i = icmp eq ptr %i.za, null
  br i1 %.not.i.i287.i.i.i, label %bb.cb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit293.i.i.i

bb.cb:                                            ; preds = %.sink.split.i.i.i139.i.i.i
  store i32 0, ptr %i.k, align 8, !tbaa !92
  store i32 0, ptr %i.l, align 4, !tbaa !93
  %i.aaz = load i32, ptr %i.j, align 8, !tbaa !89 ; 4 uses
  %i.aba = zext i32 %i.aaz to i64
  %.idx.i.i.i288.i.i.i = shl nuw nsw i64 %i.aba, 5 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aay, i64 %.idx.i.i.i288.i.i.i
  %.not6.i.i.i289.i.i.i = icmp eq i32 %i.aaz, 0
  br i1 %.not6.i.i.i289.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit285.i.i.i, label %.lr.ph.i.i.i290.i.i.i.preheader

.lr.ph.i.i.i290.i.i.i.preheader:                  ; preds = %bb.cb
  %i.abc = add nsw i64 %.idx.i.i.i288.i.i.i, -32  ; 2 uses
  %i.abd = lshr exact i64 %i.abc, 5
  %i.abe = add nuw nsw i64 %i.abd, 1
  %xtraiter1207 = and i64 %i.abe, 7               ; 2 uses
  %lcmp.mod1208.not = icmp eq i64 %xtraiter1207, 0
  br i1 %lcmp.mod1208.not, label %.lr.ph.i.i.i290.i.i.i.prol.loopexit, label %.lr.ph.i.i.i290.i.i.i.prol

.lr.ph.i.i.i290.i.i.i.prol:                       ; preds = %.lr.ph.i.i.i290.i.i.i.preheader, %.lr.ph.i.i.i290.i.i.i.prol
  %.07.i.i.i291.i.i.i.prol = phi ptr [ %i.abf, %.lr.ph.i.i.i290.i.i.i.prol ], [ %i.aay, %.lr.ph.i.i.i290.i.i.i.preheader ] ; 2 uses
  %prol.iter1209 = phi i64 [ %prol.iter1209.next, %.lr.ph.i.i.i290.i.i.i.prol ], [ 0, %.lr.ph.i.i.i290.i.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i291.i.i.i.prol, align 8, !tbaa !91
  %i.abf = getelementptr inbounds nuw i8, ptr %.07.i.i.i291.i.i.i.prol, i64 32 ; 2 uses
  %prol.iter1209.next = add i64 %prol.iter1209, 1 ; 2 uses
  %prol.iter1209.cmp.not = icmp eq i64 %prol.iter1209.next, %xtraiter1207
  br i1 %prol.iter1209.cmp.not, label %.lr.ph.i.i.i290.i.i.i.prol.loopexit, label %.lr.ph.i.i.i290.i.i.i.prol, !llvm.loop !224

.lr.ph.i.i.i290.i.i.i.prol.loopexit:              ; preds = %.lr.ph.i.i.i290.i.i.i.prol, %.lr.ph.i.i.i290.i.i.i.preheader
  %.07.i.i.i291.i.i.i.unr = phi ptr [ %i.aay, %.lr.ph.i.i.i290.i.i.i.preheader ], [ %i.abf, %.lr.ph.i.i.i290.i.i.i.prol ]
  %i.abg = icmp ult i64 %i.abc, 224
  br i1 %i.abg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit293.thread.i.i.i, label %.lr.ph.i.i.i290.i.i.i

.lr.ph.i.i.i290.i.i.i:                            ; preds = %.lr.ph.i.i.i290.i.i.i.prol.loopexit, %.lr.ph.i.i.i290.i.i.i
  %.07.i.i.i291.i.i.i = phi ptr [ %i.abo, %.lr.ph.i.i.i290.i.i.i ], [ %.07.i.i.i291.i.i.i.unr, %.lr.ph.i.i.i290.i.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i291.i.i.i, align 8, !tbaa !91
  %i.abh = getelementptr inbounds nuw i8, ptr %.07.i.i.i291.i.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.abh, align 8, !tbaa !91
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Morphology?download=true
inline.NumInlined: 68333
inline.NumDeleted: 20965
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 335
loop-unroll.NumUnrolled: 1724
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListINSD_12InternalNodeINSC_6points17PointDataLeafNodeINSC_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINSE_INSF_ISL_Lj5EEEEENSD_10NodeFilterEEEbRT_RKT0_bEUlRSA_E0_KNS1_16auto_partitionerEEESA_EEvSS_RST_RNS1_14execution_dataE:bb.a

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__invoke_implIvRKZN7openvdb5v13_04tree8NodeListINS2_12InternalNodeINS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS3_INS4_ISA_Lj5EEEEENS2_10NodeFilterEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_JSQ_EESG_St14__invoke_otherOSI_DpOT1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>, 5>::ChildIter", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2674
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !561  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2657 ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !6861, !nonnull !528, !align !535
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1484
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.c
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !513
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.l, %bb.b ], [ %i.e, %bb.a ]
  %i.m = load i64, ptr %1, align 8, !tbaa !560    ; 2 uses
  %i.n = icmp ult i64 %i.c, %i.m
  br i1 %i.n, label %.lr.ph21.i, label %_ZZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS2_INS3_IS9_Lj5EEEEENS1_10NodeFilterEEEbRT_RKT0_bENKUlRN3tbb6detail2d113blocked_rangeImEEE0_clESP_.exit

.lr.ph21.i:                                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph21.i
  %i.q = phi i64 [ %i.m, %.lr.ph21.i ], [ %i.bo, %._crit_edge.i ] ; 2 uses
  %.119.i = phi ptr [ %.0.i, %.lr.ph21.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.01018.i = phi i64 [ %i.c, %.lr.ph21.i ], [ %i.bp, %._crit_edge.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !6862, !nonnull !528, !align !535
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2672
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.01018.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2549 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6863)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 262144 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %.013.i.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.ae, %bb.i ] ; 5 uses
  %.0712.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.af, %bb.i ] ; 5 uses
  %i.x = load i64, ptr %.013.i.i.i.i, align 8, !tbaa !513, !noalias !6863 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !513, !noalias !6863 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.1, label %bb.g, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit54

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !513, !noalias !6863 ; 2 uses
  %.not.i.i.i.i.2 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.2, label %bb.h, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit51

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !513, !noalias !6863 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.af = add nuw nsw i32 %.0712.i.i.i.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i32 %i.af, 512
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.i, label %bb.e, !llvm.loop !47

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit: ; preds = %bb.h
  %i.ag = or disjoint i32 %.0712.i.i.i.i, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit51: ; preds = %bb.g
  %i.ah = or disjoint i32 %.0712.i.i.i.i, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit54: ; preds = %bb.f
  %i.ai = or disjoint i32 %.0712.i.i.i.i, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i: ; preds = %bb.e, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit54, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit51, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit
  %.0712.i.i.i.i.lcssa = phi i32 [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit54 ], [ %i.ah, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit51 ], [ %i.ag, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit ], [ %.0712.i.i.i.i, %bb.e ]
  %.lcssa = phi i64 [ %i.z, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit54 ], [ %i.ab, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit51 ], [ %i.ad, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit ], [ %i.x, %bb.e ]
  %i.aj = shl nuw nsw i32 %.0712.i.i.i.i.lcssa, 6
  %i.ak = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa, i1 true)
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 3 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !2588, !alias.scope !6863
  store i32 %i.am, ptr %i.p, align 8, !alias.scope !6863
  store ptr %i.w, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !6863
  %.not1216.i = icmp eq i32 %i.am, 32768
  br i1 %.not1216.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i
  %.217.i = phi ptr [ %i.as, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i ], [ %.119.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i ] ; 2 uses
  %i.an = phi i32 [ %.118.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i ], [ %i.am, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i ]
  %i.ao = call noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !485
  %i.as = getelementptr inbounds nuw i8, ptr %.217.i, i64 8 ; 2 uses
  store ptr %i.ar, ptr %.217.i, align 8, !tbaa !2506
  %i.at = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !tbaa !1629 ; 2 uses
  %i.au = load i32, ptr %i.p, align 8, !tbaa !1630
  %i.av = add i32 %i.au, 1                        ; 4 uses
  %i.aw = lshr i32 %i.av, 6                       ; 3 uses
  %i.ax = icmp ugt i32 %i.av, 32767
  br i1 %i.ax, label %._crit_edge.loopexit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.ay = and i32 %i.av, 63
  %i.az = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !513 ; 2 uses
  %i.bc = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bb, %i.bd
  %.not.i.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bf = shl nsw i64 -1, %i.bc
  %i.bg = and i64 %i.bb, %i.bf                    ; 2 uses
  %.not2226.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not2226.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.k
  %exitcond.not.i.i.i.i.i35 = icmp eq i32 %i.aw, 511
  br i1 %exitcond.not.i.i.i.i.i35, label %._crit_edge.loopexit.i, label %.lr.ph

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.loopexit.i, label %.lr.ph, !llvm.loop !48

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i36 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i36, 1 ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !513 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !48

.critedge.loopexit.i.i.i.i.i:                     ; preds = %.lr.ph
  %i.bj = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.k
  %.016.lcssa.i.i.i.i.i = phi i32 [ %i.aw, %bb.k ], [ %i.bj, %.critedge.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.bg, %bb.k ], [ %i.bi, %.critedge.loopexit.i.i.i.i.i ]
  %i.bk = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i, 6
  %i.bl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = or disjoint i32 %i.bk, %i.bm
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.j
  %.118.i.i.i.i.i = phi i32 [ %i.bn, %.critedge.i.i.i.i.i ], [ %i.av, %bb.j ] ; 3 uses
  store i32 %.118.i.i.i.i.i, ptr %i.p, align 8, !tbaa !1630
  %.not12.i = icmp eq i32 %.118.i.i.i.i.i, 32768
  br i1 %.not12.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !6859

._crit_edge.loopexit.i:                           ; preds = %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i, %.lr.ph.i, %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.pre.i = load i64, ptr %1, align 8, !tbaa !560
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i, %._crit_edge.loopexit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i
  %i.bo = phi i64 [ %i.q, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i ], [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.q, %bb.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.119.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i ], [ %i.as, %._crit_edge.loopexit.i ], [ %.119.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bp = add nuw i64 %.01018.i, 1                ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  br i1 %i.bq, label %bb.d, label %_ZZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS2_INS3_IS9_Lj5EEEEENS1_10NodeFilterEEEbRT_RKT0_bENKUlRN3tbb6detail2d113blocked_rangeImEEE0_clESP_.exit, !llvm.loop !6860

_ZZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEEE16initNodeChildrenINS2_INS3_IS9_Lj5EEEEENS1_10NodeFilterEEEbRT_RKT0_bENKUlRN3tbb6detail2d113blocked_rangeImEEE0_clESP_.exit: ; preds = %._crit_edge.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EEclERSE_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca i32, align 4                ; 6 uses
  %2 = alloca %"struct.openvdb::v13_0::PointIndex", align 4 ; 8 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !tbaa !2526
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !507  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.not2.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not2.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %.sroa.2.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !690
  %.not1.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not1.i.i.i, label %bb.b, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i, !llvm.loop !213

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.a
  %.sroa.2.1.i = phi ptr [ %i.b, %bb.a ], [ %i.f, %bb.b ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not20 = icmp eq ptr %.sroa.2.1.i, %i.c
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit
  %i.g = call noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(68) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit
  %.sroa.5.021 = phi ptr [ %.sroa.2.1.i, %.lr.ph ], [ %.sroa.5.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.5.021, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !692  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 262144 ; 2 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !513
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread, !llvm.loop !136

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !513
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread, !llvm.loop !136

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !513
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.g, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread, !llvm.loop !136

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 32
  %i.u = add nsw i32 %.03.i.i.i40, -4             ; 2 uses
  %.not.i.i.i4.3 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4.3, label %bb.i, label %bb.h, !llvm.loop !136

bb.h:                                             ; preds = %bb.g, %bb.c
  %.0.i.i.i41 = phi ptr [ %i.j, %bb.c ], [ %i.t, %bb.g ] ; 5 uses
  %.03.i.i.i40 = phi i32 [ 512, %bb.c ], [ %i.u, %bb.g ]
  %i.v = load i64, ptr %.0.i.i.i41, align 8, !tbaa !513
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread, !llvm.loop !136

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 266240 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !513  ; 6 uses
  %i.z = icmp eq i64 %i.y, -1
  %.off = add i64 %i.y, -1
  %switch = icmp ult i64 %.off, -2
  br i1 %switch, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i, %bb.k
  %.0.idx12.i.i.i = phi i64 [ %.0.add.i.i.i.3, %bb.k ], [ 8, %bb.i ] ; 6 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.idx12.i.i.i
  %i.aa = load i64, ptr %.0.ptr.i.i.i, align 8, !tbaa !513
  %i.ab = icmp eq i64 %i.aa, %i.y
  br i1 %i.ab, label %.preheader.i.i.i.1, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.idx12.i.i.i
  %.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ad = load i64, ptr %.0.ptr.i.i.i.1, align 8, !tbaa !513
  %i.ae = icmp eq i64 %i.ad, %i.y
  br i1 %i.ae, label %.preheader.i.i.i.2, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread

.preheader.i.i.i.2:                               ; preds = %.preheader.i.i.i.1
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.idx12.i.i.i
  %.0.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ag = load i64, ptr %.0.ptr.i.i.i.2, align 8, !tbaa !513
  %i.ah = icmp eq i64 %i.ag, %i.y
  br i1 %i.ah, label %bb.j, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread

bb.j:                                             ; preds = %.preheader.i.i.i.2
  %i.ai = icmp samesign ult i64 %.0.idx12.i.i.i, 4072
  br i1 %i.ai, label %.preheader.i.i.i.3, label %bb.l

.preheader.i.i.i.3:                               ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.idx12.i.i.i
  %.0.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ak = load i64, ptr %.0.ptr.i.i.i.3, align 8, !tbaa !513
  %i.al = icmp eq i64 %i.ak, %i.y
  br i1 %i.al, label %bb.k, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread

bb.k:                                             ; preds = %.preheader.i.i.i.3
  %.0.add.i.i.i.3 = add nuw nsw i64 %.0.idx12.i.i.i, 32
  br label %.preheader.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = load i32, ptr %i.i, align 8, !tbaa !464 ; 4 uses
  store i32 %i.am, ptr %.sroa.0.i, align 4, !tbaa !464
  store i32 %i.am, ptr %2, align 4, !tbaa !464
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %bb.l
  %i.an = phi i32 [ %i.am, %bb.l ], [ %4, %bb.q ] ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..i = phi i32 [ %i.am, %bb.l ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.14.i, %bb.q ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.l ], [ %indvars.iv.next.i.i, %bb.q ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !2526 ; 5 uses
  %i.aq = icmp ult i32 %i.ap, %i.an
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = sub i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i, %i.ap
  %i.as = load i32, ptr %0, align 4, !tbaa !2526
  %i.at = icmp ugt i32 %i.ar, %i.as
  br i1 %i.at, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread, label %.sink.split.i.i.a

bb.o:                                             ; preds = %bb.m
  %i.au = icmp ugt i32 %i.ap, %.sroa.0.0..sroa.0.0..sroa.0.0..i
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = sub nuw i32 %i.ap, %i.an
  %i.aw = load i32, ptr %0, align 4, !tbaa !2526
  %i.ax = icmp ugt i32 %i.av, %i.aw
  br i1 %i.ax, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread, label %.sink.split.i.i.a

.sink.split.i.i.a:                                ; preds = %bb.p, %bb.n
  %.sink.i.i = phi ptr [ %2, %bb.n ], [ %.sroa.0.i, %bb.p ]
  store i32 %i.ap, ptr %.sink.i.i, align 4, !tbaa !464
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pre.i = load i32, ptr %.sroa.0.i, align 4, !tbaa !2526
  %.pre = load i32, ptr %2, align 4, !tbaa !2526
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i.i.a, %bb.o
  %4 = phi i32 [ %.pre, %.sink.split.i.i.a ], [ %i.an, %bb.o ]
  %.sroa.0.0..sroa.0.0..sroa.0.0.14.i = phi i32 [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pre.i, %.sink.split.i.i.a ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..i, %bb.o ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 32768
  br i1 %exitcond.i.i, label %bb.r, label %bb.m, !llvm.loop !6864

_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread: ; preds = %bb.h, %bb.d, %bb.e, %bb.f, %.preheader.i.i.i, %.preheader.i.i.i.1, %.preheader.i.i.i.2, %.preheader.i.i.i.3, %bb.p, %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 131064 ; 2 uses
  call void @_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_T0_T1_(ptr noundef nonnull align 8 dereferenceable(270352) %i.i, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.j, i64 noundef 30)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ay, align 8, !tbaa !464
  store i32 %.sroa.0.0.copyload.i.i, ptr %2, align 4, !tbaa !464
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.5.021, i64 32
  %.sroa.01.0.copyload.i = load i64, ptr %i.az, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.021, i64 40
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !485
  store i64 %.sroa.01.0.copyload.i, ptr %3, align 8
  store i32 %.sroa.22.0.copyload.i, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE7addTileERKNS0_4math5CoordERKS7_b(ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISD_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread
  %i.ba = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.5.021) #32 ; 3 uses
  %.not2.i.i.i7 = icmp eq ptr %i.ba, %i.c
  br i1 %.not2.i.i.i7, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %bb.s, %bb.t
  %.sroa.5.2 = phi ptr [ %i.bd, %bb.t ], [ %i.ba, %bb.s ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.5.2, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !690
  %.not1.i.i.i9 = icmp eq ptr %i.bc, null
  br i1 %.not1.i.i.i9, label %bb.t, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit

bb.t:                                             ; preds = %.lr.ph.i.i.i8
  %i.bd = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2) #32 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i10, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit, label %.lr.ph.i.i.i8, !llvm.loop !213

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit: ; preds = %.lr.ph.i.i.i8, %bb.t, %bb.s
  %.sroa.5.3 = phi ptr [ %i.ba, %bb.s ], [ %.sroa.5.2, %.lr.ph.i.i.i8 ], [ %i.bd, %bb.t ] ; 2 uses
  %.not = icmp eq ptr %.sroa.5.3, %i.c
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !6865
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSE_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeINS7_ISD_Lj5EEEEEEELj0EEENSE_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSF_RKSQ_RSS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !2654
  %i.g = load i64, ptr %0, align 8, !tbaa !2653
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSE_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeINS7_ISD_Lj5EEEEEEELj0EEENSE_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSF_RKSQ_RSS_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1527
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSE_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeINS7_ISD_Lj5EEEEEEELj0EEENSE_14OpWithoutIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !466
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !2682
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.l = load i32, ptr %1, align 4, !tbaa !464
  store i32 %i.l, ptr %i.k, align 32, !tbaa !464
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !2686
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.q, align 8, !tbaa !1540
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i8 5, ptr %i.r, align 4, !tbaa !1541
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 16, !tbaa !1542
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.v = load i64, ptr %3, align 8, !tbaa !1543
  store i64 %i.v, ptr %i.u, align 64, !tbaa !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1547
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !1548
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !1550
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !654
  store ptr %4, ptr %i.m, align 8, !tbaa !2686
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSE_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeINS7_ISD_Lj5EEEEEEELj0EEENSE_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSF_RKSQ_RSS_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSE_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeINS7_ISD_Lj5EEEEEEELj0EEENSE_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSF_RKSQ_RSS_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSE_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeINS7_ISD_Lj5EEEEEEELj0EEENSE_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSF_RKSQ_RSS_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSE_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeINS7_ISD_Lj5EEEEEEELj0EEENSE_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSF_RKSQ_RSS_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSE_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeINS7_ISD_Lj5EEEEEEELj0EEENSE_14OpWithoutIndexEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(136) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSE_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeINS7_ISD_Lj5EEEEEEELj0EEENSE_14OpWithoutIndexEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1553 ; 2 uses
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !1542
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_12InternalNodeINSA_6points17PointDataLeafNodeINSA_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSK_19NodeTransformerCopyINSA_5tools16TolerancePruneOpINSB_4TreeINSB_8RootNodeINSD_ISJ_Lj5EEEEEEELj0EEENSK_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 16, !tbaa !1542
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1554
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_12InternalNodeINSA_6points17PointDataLeafNodeINSA_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSK_19NodeTransformerCopyINSA_5tools16TolerancePruneOpINSB_4TreeINSB_8RootNodeINSD_ISJ_Lj5EEEEEEELj0EEENSK_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2686
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_12InternalNodeINSA_6points17PointDataLeafNodeINSA_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSK_19NodeTransformerCopyINSA_5tools16TolerancePruneOpINSB_4TreeINSB_8RootNodeINSD_ISJ_Lj5EEEEEEELj0EEENSK_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !2686
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !1541
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !1541
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_12InternalNodeINSA_6points17PointDataLeafNodeINSA_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSK_19NodeTransformerCopyINSA_5tools16TolerancePruneOpINSB_4TreeINSB_8RootNodeINSD_ISJ_Lj5EEEEEEELj0EEENSK_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_12InternalNodeINSA_6points17PointDataLeafNodeINSA_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSK_19NodeTransformerCopyINSA_5tools16TolerancePruneOpINSB_4TreeINSB_8RootNodeINSD_ISJ_Lj5EEEEEEELj0EEENSK_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forIN7openvdb5v13_04tree8NodeListINS9_12InternalNodeINS8_6points17PointDataLeafNodeINS8_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSI_19NodeTransformerCopyINS8_5tools16TolerancePruneOpINS9_4TreeINS9_8RootNodeINSB_ISH_Lj5EEEEEEELj0EEENSI_14OpWithoutIndexEEEKNS1_16auto_partitionerEEESJ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2686 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i64, ptr %i.y, align 64, !tbaa !1543
  %i.aa = load ptr, ptr %0, align 64, !tbaa !466
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(136) dereferenceable(136) %0) #21, !inline_history !216
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = atomicrmw sub ptr %i.ac, i32 1 seq_cst, align 4
  %i.ae = add i32 %i.ad, -1
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSE_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeINS7_ISD_Lj5EEEEEEELj0EEENSE_14OpWithoutIndexEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_12InternalNodeINSA_6points17PointDataLeafNodeINSA_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSK_19NodeTransformerCopyINSA_5tools16TolerancePruneOpINSB_4TreeINSB_8RootNodeINSD_ISJ_Lj5EEEEEEELj0EEENSK_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_12InternalNodeINSA_6points17PointDataLeafNodeINSA_10PointIndexIjLj1EEELj3EEELj4EEEE9NodeRangeENSK_19NodeTransformerCopyINSA_5tools16TolerancePruneOpINSB_4TreeINSB_8RootNodeINSD_ISJ_Lj5EEEEEEELj0EEENSK_14OpWithoutIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.ag = load ptr, ptr %.019.i.i, align 8, !tbaa !1547 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forIN7openvdb5v13_04tree8NodeListINSB_12InternalNodeINSD_INSA_6points17PointDataLeafNodeINSA_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeENSL_19NodeTransformerCopyINSA_5tools16TolerancePruneOpINSB_4TreeINSB_8RootNodeISK_EEEELj0EEENSL_14OpWithoutIndexEEEKNS1_16auto_partitionerEEESM_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !2668 ; 2 uses
  store i64 %i.ax, ptr %i.ak, align 8, !tbaa !2668
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !2669 ; 2 uses
  %i.ba = sub i64 %i.ax, %i.az
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = add i64 %i.bb, %i.az                    ; 2 uses
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !2668
  store i64 %i.bc, ptr %i.ao, align 8, !tbaa !2669
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !2670
  store i64 %i.be, ptr %i.al, align 8, !tbaa !2670
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2692, !nonnull !528, !align !535
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !2671
  %i.bi = load i8, ptr %i.as, align 1, !tbaa !485
  %i.bj = add i8 %i.bi, 1                         ; 3 uses
  store i8 %i.bj, ptr %i.as, align 1, !tbaa !485
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.av
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !485
  %i.bl = add nuw nsw i8 %i.ai, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.bl, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit.thread, label %bb.g, !llvm.loop !6893

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit: ; preds = %bb.g, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.i, %.lr.ph.i, %bb.f
  %i.bm = phi i8 [ %i.ab, %bb.f ], [ %i.ab, %.lr.ph.i ], [ %i.ai, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.i ], [ %i.bl, %bb.g ] ; 6 uses
  %i.bn = phi i8 [ %i.ac, %bb.f ], [ %i.ac, %.lr.ph.i ], [ %i.ah, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.i ], [ %i.au, %bb.g ] ; 6 uses
  %i.bo = load ptr, ptr %i.w, align 8, !tbaa !2691
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load atomic i8, ptr %i.bp monotonic, align 1, !range !512, !noundef !528
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.i, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.h
  %i.bs = load ptr, ptr %i.w, align 8, !tbaa !2691
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load atomic i8, ptr %i.bt monotonic, align 1, !range !512, !noundef !528
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %.thread78, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread78:                                        ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit.thread
  %i.bw = add i8 %i.ad, 1
  store i8 %i.bw, ptr %i.h, align 4, !tbaa !1541
  br label %.noexc

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit
  %i.bx = phi i8 [ %i.au, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit.thread ], [ %i.bn, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.by = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit.thread ], [ %i.bm, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.bx to i64
  br label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread

bb.i:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit
  %i.bz = add i8 %i.ad, 1                         ; 2 uses
  store i8 %i.bz, ptr %i.h, align 4, !tbaa !1541
  %i.ca = icmp ugt i8 %i.bm, 1
  br i1 %i.ca, label %.noexc, label %bb.j

.noexc:                                           ; preds = %.thread78, %bb.i
  %i.cb = phi i8 [ 8, %.thread78 ], [ %i.bm, %bb.i ]
  %i.cc = phi i8 [ %i.au, %.thread78 ], [ %i.bn, %bb.i ]
  %i.cd = zext nneg i8 %i.aa to i64               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !485
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1527
  %i.cg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6894 ; 10 uses
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeENSF_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISE_EEEELj0EEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.cg, align 64, !tbaa !466
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 32, i1 false), !tbaa.struct !2688
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.cl = load i32, ptr %i.x, align 32, !tbaa !464
  store i32 %i.cl, ptr %i.ck, align 32, !tbaa !464
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 104 ; 2 uses
  store ptr null, ptr %i.cm, align 8, !tbaa !2691
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  %i.co = load i64, ptr %i.y, align 16, !tbaa !1542
  %i.cp = lshr i64 %i.co, 1                       ; 2 uses
  store i64 %i.cp, ptr %i.y, align 16, !tbaa !1542
  store i64 %i.cp, ptr %i.cn, align 16, !tbaa !1542
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 120
  store i32 2, ptr %i.cq, align 8, !tbaa !1540
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 124
  %i.cs = load i8, ptr %i.z, align 4, !tbaa !1541
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 128
  %i.cu = load i64, ptr %4, align 8, !tbaa !1543
  store i64 %i.cu, ptr %i.ct, align 64, !tbaa !1543
  %i.cv = sub i8 %i.cs, %i.cf
  store i8 %i.cv, ptr %i.cr, align 4, !tbaa !1541
  %i.cw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6894 ; 6 uses
  %i.cx = load ptr, ptr %i.w, align 8, !tbaa !1555
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !1547
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 2, ptr %i.cy, align 8, !tbaa !1548
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load i64, ptr %4, align 8, !tbaa !1543
  store i64 %i.da, ptr %i.cz, align 8, !tbaa !1543
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i8 0, ptr %i.db, align 8, !tbaa !1556
  store ptr %i.cw, ptr %i.w, align 8, !tbaa !2691
  store ptr %i.cw, ptr %i.cm, align 8, !tbaa !2691
  %i.dc = load ptr, ptr %3, align 8, !tbaa !1557
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.cg, ptr noundef nonnull align 8 dereferenceable(128) %i.dc), !inline_history !6894
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.dd = add i8 %i.cb, -1
  %i.de = add nuw nsw i8 %i.aa, 1
  %i.df = and i8 %i.de, 7
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dg = zext i8 %i.bn to i64                    ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !485
  %i.dj = icmp ult i8 %i.di, %i.bz
  br i1 %i.dj, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.dg ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !2670
  %i.dn = load i64, ptr %i.dk, align 8, !tbaa !2668
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !2669
  %i.dq = sub i64 %i.dn, %i.dp
  %i.dr = icmp ult i64 %i.dm, %i.dq
  br i1 %i.dr, label %thread-pre-split25, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit
  %i.ds = phi i8 [ %i.bx, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bn, %bb.j ], [ %i.bn, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.dt = phi i8 [ %i.by, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bm, %bb.j ], [ %i.bm, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.dg, %bb.j ], [ %i.dg, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.pre-phi ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !2669 ; 2 uses
  %i.dx = load i64, ptr %i.du, align 8, !tbaa !2668 ; 2 uses
  %i.dy = icmp ult i64 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeENSF_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISE_EEEELj0EEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEE8run_bodyERSG_.exit18

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !2692, !nonnull !528, !align !535
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  br label %.noexc17

.noexc17:                                         ; preds = %.noexc17, %.lr.ph.i.i.i.i.i.i15
  %.sroa.5.05.i.i.i.i.i.i16 = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i.i15 ], [ %i.ef, %.noexc17 ] ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !2672
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.sroa.5.05.i.i.i.i.i.i16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !2549
  call void @_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EEclISD_EEvRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 8 dereferenceable(270352) %i.ee)
  %i.ef = add i64 %.sroa.5.05.i.i.i.i.i.i16, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ef, %i.dx
  br i1 %exitcond.not, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeENSF_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISE_EEEELj0EEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEE8run_bodyERSG_.exit18, label %.noexc17, !llvm.loop !212

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeENSF_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISE_EEEELj0EEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEE8run_bodyERSG_.exit18: ; preds = %.noexc17, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread
  %i.eg = add i8 %i.dt, -1
  %i.eh = add nuw i8 %i.ds, 7
  %i.ei = and i8 %i.eh, 7
  br label %thread-pre-split25

thread-pre-split25:                               ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeENSF_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISE_EEEELj0EEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEE8run_bodyERSG_.exit18
  %i.ej = phi i8 [ %i.eg, %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeENSF_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISE_EEEELj0EEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEE8run_bodyERSG_.exit18 ], [ %i.bm, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ek = phi i8 [ %i.ei, %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeENSF_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISE_EEEELj0EEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEE8run_bodyERSG_.exit18 ], [ %i.bn, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.el = icmp eq i8 %i.ej, 0
  br i1 %i.el, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EED2Ev.exit24, label %bb.k

bb.k:                                             ; preds = %.noexc, %thread-pre-split25
  %i.em = phi i8 [ %i.df, %.noexc ], [ %i.aa, %thread-pre-split25 ]
  %i.en = phi i8 [ %i.dd, %.noexc ], [ %i.ej, %thread-pre-split25 ]
  %i.eo = phi i8 [ %i.cc, %.noexc ], [ %i.ek, %thread-pre-split25 ]
  %i.ep = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 15
  %i.er = load atomic i8, ptr %i.eq monotonic, align 1
  %i.es = icmp eq i8 %i.er, -1
  br i1 %i.es, label %bb.l, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !485
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %i.eu, %bb.l ], [ %i.ep, %bb.k ]
  %i.ev = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ev, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EED2Ev.exit24, label %bb.f, !llvm.loop !6895

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EED2Ev.exit24: ; preds = %thread-pre-split25, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeENSF_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISE_EEEELj0EEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEE8run_bodyERSG_.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeENSF_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISE_EEEELj0EEENSF_14OpWithoutIndexEEEKNS1_16auto_partitionerEE8run_bodyERSG_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE9NodeRangeELh8EED2Ev.exit24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EEclISD_EEvRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(270352) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.0.i = alloca i32, align 4                ; 6 uses
  %.sroa.0 = alloca i32, align 4                  ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>, 5>::ChildIter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6900)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 262144 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.013.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.f ] ; 5 uses
  %.0712.i.i.i = phi i32 [ 0, %bb.a ], [ %i.k, %bb.f ] ; 5 uses
  %i.c = load i64, ptr %.013.i.i.i, align 8, !tbaa !513, !noalias !6900 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513, !noalias !6900 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.1, label %bb.d, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit51

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !513, !noalias !6900 ; 2 uses
  %.not.i.i.i.2 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.2, label %bb.e, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit48

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !513, !noalias !6900 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.3, label %bb.f, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.k = add nuw nsw i32 %.0712.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i32 %i.k, 512
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge, label %bb.b, !llvm.loop !47

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.e
  %i.l = or disjoint i32 %.0712.i.i.i, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit48: ; preds = %bb.d
  %i.m = or disjoint i32 %.0712.i.i.i, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit51: ; preds = %bb.c
  %i.n = or disjoint i32 %.0712.i.i.i, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.b, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit51, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit48, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i.lcssa = phi i32 [ %i.n, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit51 ], [ %i.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit48 ], [ %i.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i, %bb.b ]
  %.lcssa43 = phi i64 [ %i.e, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit51 ], [ %i.g, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit48 ], [ %i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.c, %bb.b ]
  %i.o = shl nuw nsw i32 %.0712.i.i.i.lcssa, 6
  %i.p = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa43, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %i.o, %i.q               ; 3 uses
  store ptr %1, ptr %2, align 8, !tbaa !2588, !alias.scope !6900
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 %i.r, ptr %i.s, align 8, !alias.scope !6900
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.b, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !6900
  %.not9 = icmp eq i32 %i.r, 32768
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 266240 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %bb.f, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE7addTileEjRKS6_b.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit
  %i.u = phi i32 [ %i.r, %.lr.ph ], [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit ]
  %i.v = call noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !485  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32768 ; 2 uses
  %i.aa = call noundef zeroext i1 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE5isOffEv(ptr noundef nonnull align 8 dereferenceable(512) %i.z)
  br i1 %i.aa, label %bb.h, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISC_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 33280
  %i.ac = call noundef zeroext i1 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE10isConstantERb(ptr noundef nonnull align 8 dereferenceable(512) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br i1 %i.ac, label %bb.i, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISC_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.y, align 4, !tbaa !464 ; 4 uses
  store i32 %i.ad, ptr %.sroa.0.i, align 4, !tbaa !464
  store i32 %i.ad, ptr %.sroa.0, align 4, !tbaa !464
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.i
  %.sroa.0.0..sroa.0.0..sroa.0.0. = phi i32 [ %i.ad, %bb.i ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.14, %bb.n ] ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..i = phi i32 [ %i.ad, %bb.i ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.10.i, %bb.n ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !2526 ; 5 uses
  %i.ag = icmp ult i32 %i.af, %.sroa.0.0..sroa.0.0..sroa.0.0.
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = sub i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i, %i.af
  %i.ai = load i32, ptr %0, align 4, !tbaa !2526
  %i.aj = icmp ugt i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISC_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread, label %.sink.split.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = icmp ugt i32 %i.af, %.sroa.0.0..sroa.0.0..sroa.0.0..i
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = sub nuw i32 %i.af, %.sroa.0.0..sroa.0.0..sroa.0.0.
  %i.am = load i32, ptr %0, align 4, !tbaa !2526
  %i.an = icmp ugt i32 %i.al, %i.am
  br i1 %i.an, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISC_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.m, %bb.k
  %.sink.i.i = phi ptr [ %.sroa.0, %bb.k ], [ %.sroa.0.i, %bb.m ]
  store i32 %i.af, ptr %.sink.i.i, align 4, !tbaa !464
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pre.i = load i32, ptr %.sroa.0.i, align 4, !tbaa !2526
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre = load i32, ptr %.sroa.0, align 4, !tbaa !2526
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i.i, %bb.l
  %.sroa.0.0..sroa.0.0..sroa.0.0.14 = phi i32 [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre, %.sink.split.i.i ], [ %.sroa.0.0..sroa.0.0..sroa.0.0., %bb.l ]
  %.sroa.0.0..sroa.0.0..sroa.0.0.10.i = phi i32 [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pre.i, %.sink.split.i.i ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..i, %bb.l ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 4096
  br i1 %exitcond.i.i, label %bb.o, label %bb.j, !llvm.loop !6898

_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISC_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread: ; preds = %bb.m, %bb.k, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE7addTileEjRKS6_b.exit

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 16376 ; 2 uses
  call void @_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_T0_T1_(ptr noundef nonnull align 8 dereferenceable(33808) %i.y, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.z, i64 noundef 24)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ao, align 4, !tbaa !464 ; 3 uses
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.0, align 4, !tbaa !464
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.ap = load i32, ptr %i.s, align 8, !tbaa !1630 ; 3 uses
  %i.aq = load i8, ptr %i.a, align 1, !tbaa !514, !range !512, !noundef !528
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = lshr i32 %i.ap, 6
  %i.at = zext nneg i32 %i.as to i64              ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.at ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !513 ; 2 uses
  %i.aw = and i32 %i.ap, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax                    ; 4 uses
  %i.az = and i64 %i.ay, %i.av
  %.not.i.i.i.i.i = icmp eq i64 %i.az, 0
  %i.ba = zext i32 %i.ap to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ba ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE14unsetChildNodeEjRKS6_.exit.thread.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE14unsetChildNodeEjRKS6_.exit.i.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE14unsetChildNodeEjRKS6_.exit.thread.i.i: ; preds = %bb.o
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.bb, align 8, !tbaa !464
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE18makeChildNodeEmptyEjRKS6_.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE14unsetChildNodeEjRKS6_.exit.i.i: ; preds = %bb.o
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !485 ; 3 uses
  %i.bd = xor i64 %i.ay, -1
  %i.be = and i64 %i.av, %i.bd
  store i64 %i.be, ptr %i.au, align 8, !tbaa !513
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.bb, align 8, !tbaa !464
  %i.bf = icmp eq ptr %i.bc, null
  br i1 %i.bf, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE18makeChildNodeEmptyEjRKS6_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE14unsetChildNodeEjRKS6_.exit.i.i
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EED2Ev(ptr noundef nonnull align 8 dead_on_return(33808) dereferenceable(33808) %i.bc) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 33808) #30
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE18makeChildNodeEmptyEjRKS6_.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE18makeChildNodeEmptyEjRKS6_.exit.i: ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE14unsetChildNodeEjRKS6_.exit.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE14unsetChildNodeEjRKS6_.exit.thread.i.i
  br i1 %i.ar, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE18makeChildNodeEmptyEjRKS6_.exit.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.at ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !513
  %i.bi = or i64 %i.bh, %i.ay
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !513
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE7addTileEjRKS6_b.exit

bb.r:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE18makeChildNodeEmptyEjRKS6_.exit.i
  %i.bj = xor i64 %i.ay, -1
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.at ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !513
  %i.bm = and i64 %i.bl, %i.bj
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !513
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE7addTileEjRKS6_b.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE7addTileEjRKS6_b.exit: ; preds = %bb.r, %bb.q, %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELj0EE10isConstantISC_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSJ_RSA_Rb.exit.thread
  %i.bn = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !tbaa !1629 ; 2 uses
  %i.bo = load i32, ptr %i.s, align 8, !tbaa !1630
  %i.bp = add i32 %i.bo, 1                        ; 4 uses
  %i.bq = lshr i32 %i.bp, 6                       ; 3 uses
  %i.br = icmp ugt i32 %i.bp, 32767
  br i1 %i.br, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE7addTileEjRKS6_b.exit
  %i.bs = and i32 %i.bp, 63
  %i.bt = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !513 ; 2 uses
  %i.bw = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit

bb.t:                                             ; preds = %bb.s
  %i.bz = shl nsw i64 -1, %i.bw
  %i.ca = and i64 %i.bv, %i.bz                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.t
  %exitcond.not.i.i.i.i36 = icmp eq i32 %i.bq, 511
  br i1 %exitcond.not.i.i.i.i36, label %._crit_edge, label %.lr.ph38

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph38
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph38, !llvm.loop !48

.lr.ph38:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i37 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i37, 1 ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !513 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !48

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph38
  %i.cd = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.t
  %.016.lcssa.i.i.i.i = phi i32 [ %i.bq, %bb.t ], [ %i.cd, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ca, %bb.t ], [ %i.cc, %.critedge.loopexit.i.i.i.i ]
  %i.ce = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.cf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = or disjoint i32 %i.ce, %i.cg
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.s, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ch, %.critedge.i.i.i.i ], [ %i.bp, %bb.s ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.s, align 8, !tbaa !1630
  %.not = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !6899
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph57

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit
  %i.f = icmp eq i64 %i.j, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph57, !llvm.loop !6901

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.034.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.0., %.lr.ph ] ; 3 uses
  %.02133.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..021, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_T0_(ptr noundef %.034.lcssa, ptr noundef nonnull %i.g, ptr noundef %.02133.lcssa)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.034.lcssa, align 8, !tbaa !485
  %i.h = load i64, ptr %1, align 8, !tbaa !485
  store i64 %i.h, ptr %.034.lcssa, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8, !tbaa !485
  br label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_T0_.exit

.lr.ph57:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0233256 = phi i64 [ %i.j, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.0213355 = phi ptr [ %..021, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.03454 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.i = phi i64 [ %i.am, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.j = add nsw i64 %.0233256, -1                ; 2 uses
  %i.k = lshr i64 %i.i, 4
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.03454, i64 %i.k ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03454, i64 8 ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.0213355, i64 -8 ; 5 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !2526 ; 3 uses
  %i.p = load i32, ptr %i.l, align 4, !tbaa !2526 ; 3 uses
  %i.q = icmp ult i32 %i.o, %i.p
  %i.r = load i32, ptr %i.n, align 4, !tbaa !2526 ; 4 uses
  br i1 %i.q, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph57
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.03454, align 8, !tbaa !485
  %i.t = load i64, ptr %i.l, align 8, !tbaa !485
  store i64 %i.t, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.u = icmp ult i32 %i.o, %i.r
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %.03454, align 8, !tbaa !485 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.n, align 8, !tbaa !485
  store i64 %i.v, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.m, align 8, !tbaa !485
  store i64 %i.w, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.m, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph57
  %i.x = icmp ult i32 %i.o, %i.r
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24.i.i = load ptr, ptr %.03454, align 8, !tbaa !485
  %i.y = load i64, ptr %i.m, align 8, !tbaa !485
  store i64 %i.y, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i24.i.i, ptr %i.m, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = icmp ult i32 %i.p, %i.r
  %.sroa.0.0.copyload.i.i25.i.i = load ptr, ptr %.03454, align 8, !tbaa !485 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !485
  store i64 %i.aa, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.n, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !485
  store i64 %i.ab, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.l, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213355, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.af, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader ]
  %i.ac = load i32, ptr %.03454, align 4, !tbaa !2526 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i ], [ %i.af, %bb.l ] ; 8 uses
  %i.ad = load i32, ptr %.1.i.i, align 4, !tbaa !2526
  %i.ae = icmp ult i32 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.l, label %.preheader.i.i, !llvm.loop !6902

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.ag = load i32, ptr %.114.i.i, align 4, !tbaa !2526
  %i.ah = icmp ult i32 %i.ac, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.m, !llvm.loop !6903

bb.m:                                             ; preds = %.preheader.i.i
  %i.ai = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ai, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i13.i = load ptr, ptr %.1.i.i, align 8, !tbaa !485
  %i.aj = load i64, ptr %.114.i.i, align 8, !tbaa !485
  store i64 %i.aj, ptr %.1.i.i, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i.i13.i, ptr %.114.i.i, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i, !llvm.loop !6904

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213355 ; 4 uses
  %.0. = select i1 %.not, ptr %.03454, ptr %.1.i.i ; 4 uses
  %i.ak = ptrtoint ptr %..021 to i64
  %i.al = ptrtoint ptr %.0. to i64                ; 2 uses
end_hunk_1

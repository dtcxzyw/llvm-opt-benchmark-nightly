Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/points?download=true
inline.NumInlined: 19258
inline.NumDeleted: 6035
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 416
loop-unroll.NumUnrolled: 522
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSC_6points17PointDataLeafNodeINSC_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISN_EEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.db = icmp ult i64 %i.cw, %i.da
  br i1 %i.db, label %thread-pre-split21, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre24, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cq, %bb.i ], [ %i.cq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISB_EclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.dc)
  %i.dd = load i8, ptr %i.l, align 2, !tbaa !830
  %i.de = add i8 %i.dd, -1                        ; 2 uses
  store i8 %i.de, ptr %i.l, align 2, !tbaa !830
  %i.df = load i8, ptr %5, align 8, !tbaa !831
  %i.dg = add i8 %i.df, 7
  %i.dh = and i8 %i.dg, 7
  store i8 %i.dh, ptr %5, align 8, !tbaa !831
  br label %thread-pre-split21

thread-pre-split21:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.di = phi i8 [ %i.cl, %.noexc ], [ %i.de, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit20, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split21
  %i.dk = load ptr, ptr %3, align 8, !tbaa !827   ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 15
  %i.dm = load atomic i8, ptr %i.dl monotonic, align 1
  %i.dn = icmp eq i8 %i.dm, -1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %.0.i.i = select i1 %i.dn, ptr %i.dp, ptr %i.dk
  %i.dq = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.dq, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit20, label %thread-pre-split, !llvm.loop !2678

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit20: ; preds = %thread-pre-split21, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit20, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEE15DeallocateNodesISB_EclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !758  ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !757    ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !766
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %i.e = phi ptr [ %i.aw, %bb.l ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.013 = phi i64 [ %i.ay, %bb.l ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.013
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !833  ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.l, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262144 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.013.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.q, %bb.g ] ; 5 uses
  %.0712.i.i.i.i = phi i32 [ 0, %bb.b ], [ %i.r, %bb.g ] ; 5 uses
  %i.j = load i64, ptr %.013.i.i.i.i, align 8, !tbaa !169, !noalias !2682 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !169, !noalias !2682 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.1, label %bb.e, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit56

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !169, !noalias !2682 ; 2 uses
  %.not.i.i.i.i.2 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.2, label %bb.f, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit53

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !169, !noalias !2682 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.3, label %bb.g, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.r = add nuw nsw i32 %.0712.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i32 %i.r, 512
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EED2Ev.exit, label %bb.c, !llvm.loop !23

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit: ; preds = %bb.f
  %i.s = or disjoint i32 %.0712.i.i.i.i, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit53: ; preds = %bb.e
  %i.t = or disjoint i32 %.0712.i.i.i.i, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit56: ; preds = %bb.d
  %i.u = or disjoint i32 %.0712.i.i.i.i, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i: ; preds = %bb.c, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit56, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit53, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit
  %.0712.i.i.i.i.lcssa = phi i32 [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit56 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit53 ], [ %i.s, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit ], [ %.0712.i.i.i.i, %bb.c ]
  %.lcssa = phi i64 [ %i.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit56 ], [ %i.n, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit53 ], [ %i.p, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i.split.loop.exit ], [ %i.j, %bb.c ]
  %i.v = shl nuw nsw i32 %.0712.i.i.i.i.lcssa, 6
  %i.w = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x               ; 2 uses
  %.not7.i = icmp eq i32 %i.y, 32768
  br i1 %.not7.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i
  %.sroa.3.08.i = phi i32 [ %.118.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i ], [ %i.y, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i ] ; 2 uses
  %i.z = zext i32 %.sroa.3.08.i to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !160 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EED2Ev(ptr noundef nonnull align 8 dead_on_return(33808) dereferenceable(33808) %i.ab) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 33808) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.ad = add i32 %.sroa.3.08.i, 1                ; 4 uses
  %i.ae = lshr i32 %i.ad, 6                       ; 3 uses
  %i.af = icmp ugt i32 %i.ad, 32767
  br i1 %i.af, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = and i32 %i.ad, 63
  %i.ah = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !169 ; 2 uses
  %i.ak = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.aj, %i.al
  %.not.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.an = shl nsw i64 -1, %i.ak
  %i.ao = and i64 %i.aj, %i.an                    ; 2 uses
  %.not2226.i.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not2226.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.k
  %exitcond.not.i.i.i.i.i40 = icmp eq i32 %i.ae, 511
  br i1 %exitcond.not.i.i.i.i.i40, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EED2Ev.exit, label %.lr.ph42

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph42
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EED2Ev.exit, label %.lr.ph42, !llvm.loop !24

.lr.ph42:                                         ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i41 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i41, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i.i.i
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !169 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !24

.critedge.loopexit.i.i.i.i.i:                     ; preds = %.lr.ph42
  %i.ar = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.k
  %.016.lcssa.i.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ar, %.critedge.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.ao, %bb.k ], [ %i.aq, %.critedge.loopexit.i.i.i.i.i ]
  %i.as = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i, 6
  %i.at = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.j
  %.118.i.i.i.i.i = phi i32 [ %i.av, %.critedge.i.i.i.i.i ], [ %i.ad, %bb.j ] ; 2 uses
  %.not.i = icmp eq i32 %.118.i.i.i.i.i, 32768
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EED2Ev.exit, label %.lr.ph.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EED2Ev.exit: ; preds = %bb.g, %bb.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit.i, %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.i
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef 270352) #29
  %.pre19 = load ptr, ptr %0, align 8, !tbaa !766
  br label %bb.l

bb.l:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EED2Ev.exit, %.lr.ph
  %i.aw = phi ptr [ %.pre19, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EED2Ev.exit ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.013
  store ptr null, ptr %i.ax, align 8, !tbaa !833
  %i.ay = add i64 %.013, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2681
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISK_EENSL_13tbb_allocatorISt4pairIKSK_bEEEE14internal_eraseISK_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %2 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>, 5>>>, true> *, bool>::bucket_accessor", align 8 ; 14 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !770
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2
  %.042 = phi i64 [ %.2.ph.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit35.jt2 ], [ %i.d, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.i = and i64 %.042, %i.b
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS4_6points17PointDataLeafNodeINS4_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISK_EENSL_13tbb_allocatorISt4pairIKSK_bEEEE15bucket_accessorC2EPST_mb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %0, i64 noundef %i.i, i1 noundef zeroext false)
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer: ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer.backedge, %bb.a
  %.1.ph = phi i64 [ %.042, %bb.a ], [ %i.cf, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer.backedge ] ; 6 uses
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit: ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.outer, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !840
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8 ; 5 uses
  %i.m = icmp ugt ptr %i.l, inttoptr (i64 63 to ptr)
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !770    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !770
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %.critedge.thread, label %.lr.ph150

bb.b:                                             ; preds = %.lr.ph150
  %i.r = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !770
  %i.t = icmp eq ptr %i.n, %i.s
  br i1 %i.t, label %.critedge.thread, label %.lr.ph150, !llvm.loop !2683

.lr.ph150:                                        ; preds = %.lr.ph, %bb.b
  %.02290149 = phi ptr [ %i.u, %bb.b ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.u = load ptr, ptr %.02290149, align 8, !tbaa !712 ; 5 uses
  %i.v = icmp ugt ptr %i.u, inttoptr (i64 63 to ptr)
  br i1 %i.v, label %bb.b, label %.critedge, !llvm.loop !2683

.critedge:                                        ; preds = %.lr.ph150, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit
  %.023.lcssa = phi ptr [ null, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit ], [ %.02290149, %.lr.ph150 ]
  %.022.lcssa = phi ptr [ %i.l, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit ], [ %i.u, %.lr.ph150 ] ; 2 uses
  %i.w = icmp eq ptr %.022.lcssa, null
  br i1 %i.w, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %.critedge
  %i.x = load atomic i64, ptr %i.c acquire, align 8 ; 3 uses
  %.not.i26 = icmp eq i64 %.1.ph, %i.x
  br i1 %.not.i26, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = xor i64 %i.x, %.1.ph
  %i.z = and i64 %i.y, %i.b
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add i64 %.1.ph, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.012.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ab = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.ab, 0
  %i.ac = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.f, label %bb.g, !llvm.loop !2684

bb.g:                                             ; preds = %bb.f
  %i.ad = add i64 %i.ac, -1
  %i.ae = and i64 %i.ad, %i.b                     ; 2 uses
  %i.af = or i64 %i.ae, 1
  %i.ag = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true) ; 2 uses
  %i.ah = xor i64 %i.ag, 63
  %i.ai = lshr exact i64 -9223372036854775808, %i.ag
  %i.aj = and i64 %i.ai, -2
  %i.ak = sub i64 %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ah
  %i.am = load atomic ptr, ptr %i.al acquire, align 8
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load atomic ptr, ptr %i.ao acquire, align 8
  %i.aq = icmp eq ptr %i.ap, inttoptr (i64 3 to ptr)
  br i1 %i.aq, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt1, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS7_6points17PointDataLeafNodeINS7_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.thread.jt2

.critedge.thread:                                 ; preds = %bb.b, %.lr.ph, %.critedge
  %.02373 = phi ptr [ %.023.lcssa, %.critedge ], [ null, %.lr.ph ], [ %.02290149, %bb.b ] ; 2 uses
  %.02267 = phi ptr [ %.022.lcssa, %.critedge ], [ %i.l, %.lr.ph ], [ %i.u, %bb.b ] ; 4 uses
  %i.ar = load i8, ptr %i.f, align 8, !tbaa !841, !range !226, !noundef !227
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.critedge.thread
  store i8 1, ptr %i.f, align 8, !tbaa !841
  %i.at = load ptr, ptr %2, align 8, !tbaa !842   ; 9 uses
  %i.au = load atomic i64, ptr %i.at monotonic, align 8 ; 3 uses
  %i.av = and i64 %i.au, -4
  %i.aw = icmp eq i64 %i.av, 4
  %i.ax = and i64 %i.au, 2
  %.not13.i = icmp eq i64 %i.ax, 0
  %or.cond14.i = or i1 %i.aw, %.not13.i
  br i1 %or.cond14.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %.0815.i = phi i64 [ %i.bd, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i ], [ %i.au, %bb.h ] ; 2 uses
  %i.ay = or i64 %.0815.i, 3
  %i.az = cmpxchg ptr %i.at, i64 %.0815.i, i64 %i.ay seq_cst seq_cst, align 8 ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  br i1 %i.ba, label %.preheader.i, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.bb = load atomic i64, ptr %i.at monotonic, align 8
  %i.bc = and i64 %i.bb, -4
  %.not217.i = icmp eq i64 %i.bc, 4
  br i1 %.not217.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %.lr.ph.i
  %i.bd = extractvalue { i64, i1 } %i.az, 0       ; 3 uses
  %i.be = and i64 %i.bd, -4
  %i.bf = icmp eq i64 %i.be, 4
  %i.bg = and i64 %i.bd, 2
  %.not.i39 = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.bf, %.not.i39
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !33

.lr.ph19.i:                                       ; preds = %.preheader.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %.sroa.0.018.i = phi i32 [ %.sroa.0.1.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i ], [ 1, %.preheader.i ] ; 8 uses
  %i.bh = icmp slt i32 %.sroa.0.018.i, 17
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph19.i
  %i.bi = icmp sgt i32 %.sroa.0.018.i, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.i
  %xtraiter = and i32 %.sroa.0.018.i, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.bj, %.lr.ph.i.i.i.prol ], [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bj = add nsw i32 %.01.i.i.i.prol, -1         ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2685

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.018.i, %.lr.ph.i.i.i.preheader ], [ %i.bj, %.lr.ph.i.i.i.prol ]
  %i.bk = icmp ult i32 %.sroa.0.018.i, 8
  br i1 %i.bk, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.bl, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.bl = add nsw i32 %.01.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.bm = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.bm, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i, !llvm.loop !3

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i:     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.i
  %i.bn = shl i32 %.sroa.0.018.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

bb.j:                                             ; preds = %.lr.ph19.i
  %i.bo = call noundef i32 @sched_yield() #19     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %bb.j, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i
  %.sroa.0.1.i = phi i32 [ %i.bn, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i ], [ %.sroa.0.018.i, %bb.j ]
  %i.bp = load atomic i64, ptr %i.at monotonic, align 8
  %i.bq = and i64 %i.bp, -4
  %.not2.i = icmp eq i64 %i.bq, 4
  br i1 %.not2.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, label %.lr.ph19.i, !llvm.loop !34

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, %.preheader.i
  %i.br = atomicrmw add ptr %i.at, i64 -6 seq_cst, align 8 ; 0 uses
  br label %.loopexit
end_hunk_0

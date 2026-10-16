Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Diagnostics?download=true
inline.NumInlined: 29245
inline.NumDeleted: 11782
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 311
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools20diagnostics_internal19InactiveVoxelValuesINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  store i8 0, ptr %i.cl, align 8, !tbaa !1273
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  store ptr %i.bu, ptr %i.cm, align 8, !tbaa !2401
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  store i8 0, ptr %i.cn, align 8, !tbaa !2400
  store ptr %i.cg, ptr %i.p, align 32, !tbaa !2395
  store ptr %i.cg, ptr %i.bv, align 32, !tbaa !2395
  %i.co = load ptr, ptr %3, align 8, !tbaa !1274
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(129) %i.bp, ptr noundef nonnull align 8 dereferenceable(128) %i.co), !inline_history !5450
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cp = load i8, ptr %i.m, align 2, !tbaa !1422
  %i.cq = add i8 %i.cp, -1                        ; 2 uses
  store i8 %i.cq, ptr %i.m, align 2, !tbaa !1422
  %i.cr = load i8, ptr %i.l, align 1, !tbaa !1424
  %i.cs = add i8 %i.cr, 1
  %i.ct = and i8 %i.cs, 7
  store i8 %i.ct, ptr %i.l, align 1, !tbaa !1424
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.cu = load i8, ptr %5, align 8, !tbaa !1423
  %i.cv = zext i8 %i.cu to i64                    ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !281
  %i.cy = icmp ult i8 %i.cx, %i.bj
  br i1 %i.cy, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.cv ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !370
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !368
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !369
  %i.df = sub i64 %i.dc, %i.de
  %i.dg = icmp ult i64 %i.db, %i.df
  br i1 %i.dg, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cv, %bb.i ], [ %i.cv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.pre-phi
  %i.di = load ptr, ptr %i.q, align 8, !tbaa !2394
  call void @_ZN7openvdb5v13_05tools20diagnostics_internal19InactiveVoxelValuesINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(64) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.dh)
  %i.dj = load i8, ptr %i.m, align 2, !tbaa !1422
  %i.dk = add i8 %i.dj, -1                        ; 2 uses
  store i8 %i.dk, ptr %i.m, align 2, !tbaa !1422
  %i.dl = load i8, ptr %5, align 8, !tbaa !1423
  %i.dm = add i8 %i.dl, 7
  %i.dn = and i8 %i.dm, 7
  store i8 %i.dn, ptr %5, align 8, !tbaa !1423
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.do = phi i8 [ %i.cq, %.noexc ], [ %i.dk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split22
  %i.dq = load ptr, ptr %3, align 8, !tbaa !1274  ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 15
  %i.ds = load atomic i8, ptr %i.dr monotonic, align 1
  %i.dt = icmp eq i8 %i.ds, -1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %.0.i.i = select i1 %i.dt, ptr %i.dv, ptr %i.dq
  %i.dw = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.dw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !5451

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools20diagnostics_internal19InactiveVoxelValuesINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.openvdb::v13_0::tree::LeafNode<bool, 3>::ValueIter", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !2402
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i32 512, ptr %i.a, align 8, !tbaa !380
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !535
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !369  ; 2 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !368
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph13, label %.critedge

.lr.ph13:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph13, %_ZN7openvdb5v13_06thread20cancelGroupExecutionEv.exit
  %.011 = phi i64 [ %i.d, %.lr.ph13 ], [ %i.dr, %_ZN7openvdb5v13_06thread20cancelGroupExecutionEv.exit ] ; 2 uses
  %i.l = call noundef ptr @_ZN3tbb6detail2r115current_contextEv() ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN7openvdb5v13_06thread25isGroupExecutionCancelledEv.exit.thread, label %_ZN7openvdb5v13_06thread25isGroupExecutionCancelledEv.exit

_ZN7openvdb5v13_06thread25isGroupExecutionCancelledEv.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.n = load atomic i8, ptr %i.m monotonic, align 1
  %i.o = icmp eq i8 %i.n, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %.0.i.i.i = select i1 %i.o, ptr %i.q, ptr %i.l
  %i.r = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i)
  br i1 %i.r, label %.critedge, label %_ZN7openvdb5v13_06thread25isGroupExecutionCancelledEv.exit.thread

.critedge:                                        ; preds = %_ZN7openvdb5v13_06thread25isGroupExecutionCancelledEv.exit, %_ZN7openvdb5v13_06thread20cancelGroupExecutionEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

_ZN7openvdb5v13_06thread25isGroupExecutionCancelledEv.exit.thread: ; preds = %bb.b, %_ZN7openvdb5v13_06thread25isGroupExecutionCancelledEv.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !2397, !nonnull !481, !align !1416
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2373
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.011
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1240 ; 12 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !300, !noalias !5456 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_06thread25isGroupExecutionCancelledEv.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !300, !noalias !5456 ; 2 uses
  %.not.1.i.i.i = icmp eq i64 %i.z, -1
  br i1 %.not.1.i.i.i, label %bb.d, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !300, !noalias !5456 ; 2 uses
  %.not.2.i.i.i = icmp eq i64 %i.ab, -1
  br i1 %.not.2.i.i.i, label %bb.e, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !300, !noalias !5456 ; 2 uses
  %.not.3.i.i.i = icmp eq i64 %i.ad, -1
  br i1 %.not.3.i.i.i, label %bb.f, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !300, !noalias !5456 ; 2 uses
  %.not.4.i.i.i = icmp eq i64 %i.af, -1
  br i1 %.not.4.i.i.i, label %bb.g, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !300, !noalias !5456 ; 2 uses
  %.not.5.i.i.i = icmp eq i64 %i.ah, -1
  br i1 %.not.5.i.i.i, label %bb.h, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !300, !noalias !5456 ; 2 uses
  %.not.6.i.i.i = icmp eq i64 %i.aj, -1
  br i1 %.not.6.i.i.i, label %bb.i, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !300, !noalias !5456 ; 2 uses
  %.not.7.i.i.i = icmp eq i64 %i.al, -1
  br i1 %.not.7.i.i.i, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit.thread, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit

_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit.thread: ; preds = %bb.i
  store ptr %i.w, ptr %2, align 8, !tbaa !2402
  store i32 512, ptr %i.a, align 8, !tbaa !380
  store ptr %i.w, ptr %i.b, align 8, !tbaa !535
  br label %._crit_edge

_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit: ; preds = %_ZN7openvdb5v13_06thread25isGroupExecutionCancelledEv.exit.thread, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.am = phi i64 [ %i.x, %_ZN7openvdb5v13_06thread25isGroupExecutionCancelledEv.exit.thread ], [ %i.z, %bb.c ], [ %i.ab, %bb.d ], [ %i.ad, %bb.e ], [ %i.af, %bb.f ], [ %i.ah, %bb.g ], [ %i.aj, %bb.h ], [ %i.al, %bb.i ]
  %.0712.lcssa.i.i.i = phi i32 [ 0, %_ZN7openvdb5v13_06thread25isGroupExecutionCancelledEv.exit.thread ], [ 64, %bb.c ], [ 128, %bb.d ], [ 192, %bb.e ], [ 256, %bb.f ], [ 320, %bb.g ], [ 384, %bb.h ], [ 448, %bb.i ]
  %i.an = xor i64 %i.am, -1
  %i.ao = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.an, i1 true)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = or disjoint i32 %.0712.lcssa.i.i.i, %i.ap ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !2402
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !380
  store ptr %i.w, ptr %i.b, align 8, !tbaa !535
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit
  %i.ar = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit ], [ %i.aq, %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit ] ; 2 uses
  %i.as = call noundef nonnull align 8 dereferenceable(144) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = lshr i32 %i.ar, 6
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !300
  %i.ay = and i32 %i.ar, 63
  %i.az = zext nneg i32 %i.ay to i64
  %.02022.i.i = load ptr, ptr %i.g, align 8, !tbaa !1302 ; 3 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  %3 = lshr i64 %i.ax, %i.az                      ; 3 uses
  %4 = trunc i64 %3 to i8
  %.pre.pre.pre = and i8 %4, 1                    ; 2 uses
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %5 = trunc i64 %3 to i1
  br i1 %5, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i.i
  %.02024.us.i.i = phi ptr [ %.020.us.i.i, %.lr.ph.split.us.i.i ], [ %.02022.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02024.us.i.i, i64 24
  %.020.us.i.i = load ptr, ptr %i.ba, align 8, !tbaa !1302 ; 2 uses
  %.not.us.i.i = icmp eq ptr %.020.us.i.i, null
  br i1 %.not.us.i.i, label %._crit_edge.thread34.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !190

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.split.i.i
  %.02024.i.i = phi ptr [ %.020.i.i, %.lr.ph.split.i.i ], [ %.02022.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !480, !range !448, !noundef !481
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  %spec.select27.v.i.i = select i1 %i.bd, i64 16, i64 24
  %spec.select27.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %spec.select27.v.i.i
  %.020.i.i = load ptr, ptr %spec.select27.i.i, align 8, !tbaa !1302 ; 2 uses
  %.not.i.i = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !190

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.i.i
  br i1 %i.bd, label %._crit_edge.thread.i.i, label %_ZNSt8_Rb_treeIbbSt9_IdentityIbEKN7openvdb5v13_05tools20diagnostics_internal3cmpMUlT_T0_E_ESaIbEE16_M_insert_uniqueIRKbEESt4pairISt17_Rb_tree_iteratorIbEbEOS7_.exit

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.lr.ph
  %.019.lcssa33.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.h, %.lr.ph ] ; 4 uses
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !333
  %i.bf = icmp eq ptr %.019.lcssa33.i.i, %i.be
  br i1 %i.bf, label %select.unfold.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i.i
  %i.bg = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa33.i.i) #30
  %6 = trunc i64 %3 to i1
  br label %._crit_edge.thread34.i.i

._crit_edge.thread34.i.i:                         ; preds = %.lr.ph.split.us.i.i, %bb.j
  %.pre16 = phi i8 [ %.pre.pre.pre, %bb.j ], [ 1, %.lr.ph.split.us.i.i ]
  %i.bh = phi i1 [ %6, %bb.j ], [ true, %.lr.ph.split.us.i.i ]
  %.019.lcssa32.i.i = phi ptr [ %.019.lcssa33.i.i, %bb.j ], [ %.02024.us.i.i, %.lr.ph.split.us.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.bg, %bb.j ], [ %.02024.us.i.i, %.lr.ph.split.us.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i, i64 32
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !480, !range !448, !noundef !481
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = xor i1 %i.bk, true
  %i.bm = and i1 %i.bh, %i.bl
  br i1 %i.bm, label %select.unfold.i, label %_ZNSt8_Rb_treeIbbSt9_IdentityIbEKN7openvdb5v13_05tools20diagnostics_internal3cmpMUlT_T0_E_ESaIbEE16_M_insert_uniqueIRKbEESt4pairISt17_Rb_tree_iteratorIbEbEOS7_.exit

select.unfold.i:                                  ; preds = %._crit_edge.thread34.i.i, %._crit_edge.thread.i.i
  %.pre = phi i8 [ %.pre.pre.pre, %._crit_edge.thread.i.i ], [ %.pre16, %._crit_edge.thread34.i.i ] ; 2 uses
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa33.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa32.i.i, %._crit_edge.thread34.i.i ] ; 3 uses
  %i.bn = icmp eq ptr %.sroa.4.0.i.ph.i, %i.h
  br i1 %i.bn, label %_ZNSt8_Rb_treeIbbSt9_IdentityIbEKN7openvdb5v13_05tools20diagnostics_internal3cmpMUlT_T0_E_ESaIbEE10_M_insert_IRKbNSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIbEPSt18_Rb_tree_node_baseSK_OS7_RS8_.exit.i, label %bb.k

bb.k:                                             ; preds = %select.unfold.i
  %7 = trunc nuw i8 %.pre to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !480, !range !448, !noundef !481
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = xor i1 %7, true
  %i.bs = and i1 %i.br, %i.bq
  br label %_ZNSt8_Rb_treeIbbSt9_IdentityIbEKN7openvdb5v13_05tools20diagnostics_internal3cmpMUlT_T0_E_ESaIbEE10_M_insert_IRKbNSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIbEPSt18_Rb_tree_node_baseSK_OS7_RS8_.exit.i

_ZNSt8_Rb_treeIbbSt9_IdentityIbEKN7openvdb5v13_05tools20diagnostics_internal3cmpMUlT_T0_E_ESaIbEE10_M_insert_IRKbNSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIbEPSt18_Rb_tree_node_baseSK_OS7_RS8_.exit.i: ; preds = %bb.k, %select.unfold.i
  %i.bt = phi i1 [ %i.bs, %bb.k ], [ true, %select.unfold.i ]
  %i.bu = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i8 %.pre, ptr %i.bv, align 1, !tbaa !480
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bt, ptr noundef nonnull %i.bu, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #21
  %i.bw = load i64, ptr %i.j, align 8, !tbaa !335
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.j, align 8, !tbaa !335
  br label %_ZNSt8_Rb_treeIbbSt9_IdentityIbEKN7openvdb5v13_05tools20diagnostics_internal3cmpMUlT_T0_E_ESaIbEE16_M_insert_uniqueIRKbEESt4pairISt17_Rb_tree_iteratorIbEbEOS7_.exit

_ZNSt8_Rb_treeIbbSt9_IdentityIbEKN7openvdb5v13_05tools20diagnostics_internal3cmpMUlT_T0_E_ESaIbEE16_M_insert_uniqueIRKbEESt4pairISt17_Rb_tree_iteratorIbEbEOS7_.exit: ; preds = %._crit_edge.i.i, %._crit_edge.thread34.i.i, %_ZNSt8_Rb_treeIbbSt9_IdentityIbEKN7openvdb5v13_05tools20diagnostics_internal3cmpMUlT_T0_E_ESaIbEE10_M_insert_IRKbNSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIbEPSt18_Rb_tree_node_baseSK_OS7_RS8_.exit.i
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !535 ; 8 uses
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !380
  %i.ca = add i32 %i.bz, 1                        ; 4 uses
  %i.cb = lshr i32 %i.ca, 6                       ; 3 uses
  %i.cc = icmp ugt i32 %i.ca, 511
  br i1 %i.cc, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNSt8_Rb_treeIbbSt9_IdentityIbEKN7openvdb5v13_05tools20diagnostics_internal3cmpMUlT_T0_E_ESaIbEE16_M_insert_uniqueIRKbEESt4pairISt17_Rb_tree_iteratorIbEbEOS7_.exit
  %i.cd = and i32 %i.ca, 63
  %i.ce = zext nneg i32 %i.cb to i64              ; 8 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !300 ; 2 uses
  %i.ch = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.ci = shl nuw i64 1, %i.ch
  %i.cj = and i64 %i.cg, %i.ci
  %.not.not.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.not.i.i.i.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = xor i64 %i.cg, -1
  %i.cl = shl nsw i64 -1, %i.ch
  %i.cm = and i64 %i.cl, %i.ck                    ; 2 uses
  %.not25.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not25.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.m
  %exitcond.not.i.i.i.i39 = icmp eq i32 %i.cb, 7
  br i1 %exitcond.not.i.i.i.i39, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit.thread, label %.lr.ph41

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph41
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit.thread, label %.lr.ph41.1

.lr.ph41.1:                                       ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.ce, 2 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i.i.i.i.1
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !300 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.co, -1
  br i1 %.not.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !128

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph41.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit.thread, label %.lr.ph41.2

.lr.ph41.2:                                       ; preds = %.lr.ph.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.ce, 3 ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i.i.i.i.2
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !300 ; 2 uses
  %.not.i.i.i.i.2 = icmp eq i64 %i.cq, -1
  br i1 %.not.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !128

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph41.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit.thread, label %.lr.ph41.3

.lr.ph41.3:                                       ; preds = %.lr.ph.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.ce, 4 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i.i.i.i.3
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !300 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.cs, -1
  br i1 %.not.i.i.i.i.3, label %.lr.ph.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !128

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph41.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit.thread, label %.lr.ph41.4

.lr.ph41.4:                                       ; preds = %.lr.ph.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.ce, 5 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i.i.i.i.4
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !300 ; 2 uses
  %.not.i.i.i.i.4 = icmp eq i64 %i.cu, -1
  br i1 %.not.i.i.i.i.4, label %.lr.ph.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !128

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph41.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit.thread, label %.lr.ph41.5

.lr.ph41.5:                                       ; preds = %.lr.ph.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.ce, 6 ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i.i.i.i.5
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !300 ; 2 uses
  %.not.i.i.i.i.5 = icmp eq i64 %i.cw, -1
  br i1 %.not.i.i.i.i.5, label %.lr.ph.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !128

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph41.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit.thread, label %.lr.ph41.6

.lr.ph41.6:                                       ; preds = %.lr.ph.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.ce, 7 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i.i.i.i.6
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !300 ; 2 uses
  %.not.i.i.i.i.6 = icmp eq i64 %i.cy, -1
  br i1 %.not.i.i.i.i.6, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit.thread, label %.critedge.loopexit.i.i.i.i, !llvm.loop !128

.lr.ph41:                                         ; preds = %.lr.ph.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.ce, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i.i.i.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !300 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.da, -1
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !128

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph41.6, %.lr.ph41.5, %.lr.ph41.4, %.lr.ph41.3, %.lr.ph41.2, %.lr.ph41.1, %.lr.ph41
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph41 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph41.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph41.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph41.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph41.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph41.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph41.6 ]
  %.lcssa43 = phi i64 [ %i.da, %.lr.ph41 ], [ %i.co, %.lr.ph41.1 ], [ %i.cq, %.lr.ph41.2 ], [ %i.cs, %.lr.ph41.3 ], [ %i.cu, %.lr.ph41.4 ], [ %i.cw, %.lr.ph41.5 ], [ %i.cy, %.lr.ph41.6 ]
  %i.db = xor i64 %.lcssa43, -1
  %i.dc = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.m
  %.016.lcssa.i.i.i.i = phi i32 [ %i.cb, %bb.m ], [ %i.dc, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.cm, %bb.m ], [ %i.db, %.critedge.loopexit.i.i.i.i ]
  %i.dd = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.de = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = or disjoint i32 %i.dd, %i.df
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit.thread: ; preds = %_ZNSt8_Rb_treeIbbSt9_IdentityIbEKN7openvdb5v13_05tools20diagnostics_internal3cmpMUlT_T0_E_ESaIbEE16_M_insert_uniqueIRKbEESt4pairISt17_Rb_tree_iteratorIbEbEOS7_.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph41.6, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5
  store i32 512, ptr %i.a, align 8, !tbaa !380
  br label %._crit_edge

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit: ; preds = %bb.l, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.dg, %.critedge.i.i.i.i ], [ %i.ca, %bb.l ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.a, align 8, !tbaa !380
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5454

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit.thread, %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE14cbeginValueOffEv.exit.thread
  %i.dh = load i64, ptr %i.j, align 8, !tbaa !335
  %i.di = load i64, ptr %i.k, align 8, !tbaa !347
  %i.dj = icmp ugt i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.n, label %_ZN7openvdb5v13_06thread20cancelGroupExecutionEv.exit

bb.n:                                             ; preds = %._crit_edge
  %i.dk = call noundef ptr @_ZN3tbb6detail2r115current_contextEv() ; 4 uses
  %.not.i6 = icmp eq ptr %i.dk, null
  br i1 %.not.i6, label %_ZN7openvdb5v13_06thread20cancelGroupExecutionEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 15
  %i.dm = load atomic i8, ptr %i.dl monotonic, align 1
  %i.dn = icmp eq i8 %i.dm, -1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %.0.i.i.i7 = select i1 %i.dn, ptr %i.dp, ptr %i.dk
  %i.dq = call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i7) ; 0 uses
  br label %_ZN7openvdb5v13_06thread20cancelGroupExecutionEv.exit

_ZN7openvdb5v13_06thread20cancelGroupExecutionEv.exit: ; preds = %bb.o, %bb.n, %._crit_edge
  %i.dr = add nuw i64 %.011, 1                    ; 2 uses
  %i.ds = load i64, ptr %1, align 8, !tbaa !368
  %i.dt = icmp ult i64 %i.dr, %i.ds
  br i1 %i.dt, label %bb.b, label %.critedge, !llvm.loop !5455
}

declare noundef ptr @_ZN3tbb6detail2r115current_contextEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(144) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2402   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !291
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !293
  store i8 0, ptr %i.b, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.36, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #21 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !301    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
end_hunk_0

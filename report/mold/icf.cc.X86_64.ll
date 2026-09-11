Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/icf.cc.X86_64?download=true
inline.NumInlined: 3888
inline.NumDeleted: 1791
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 42
begin_hunk_0_@"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE":bb.a
  store ptr %i.ev, ptr %i.cd, align 16, !tbaa !169
  store ptr %i.ev, ptr %i.el, align 16, !tbaa !169
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !310
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.eh, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i.i) #13, !inline_history !545
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.fb = add i8 %i.eb, -1
  %i.fc = add nuw nsw i8 %i.cf, 1
  %i.fd = and i8 %i.fc, 7
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fe = zext i8 %i.dp to i64                    ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !51
  %i.fh = icmp ult i8 %i.fg, %i.dz
  br i1 %i.fh, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i, label %"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS8_6DigestELm18446744073709551615EESB_S9_IjLm18446744073709551615EESC_E3$_0lEEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i"

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i: ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.fe ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !205
  %i.fl = load i64, ptr %i.fi, align 8, !tbaa !203
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !204
  %i.fo = sub nsw i64 %i.fl, %i.fn
  %i.fp = icmp ult i64 %i.fk, %i.fo
  br i1 %i.fp, label %thread-pre-split15.i.i, label %"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS8_6DigestELm18446744073709551615EESB_S9_IjLm18446744073709551615EESC_E3$_0lEEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i"

"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS8_6DigestELm18446744073709551615EESB_S9_IjLm18446744073709551615EESC_E3$_0lEEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i": ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i, %bb.u, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i, %"_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS8_6DigestELm18446744073709551615EESB_S9_IjLm18446744073709551615EESC_E3$_0lEEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge.i_crit_edge.i"
  %i.fq = phi i8 [ %i.dp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ], [ %i.dp, %bb.u ], [ %i.dp, %"_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS8_6DigestELm18446744073709551615EESB_S9_IjLm18446744073709551615EESC_E3$_0lEEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge.i_crit_edge.i" ], [ %i.cz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.fr = phi i8 [ %i.do, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ], [ %i.do, %bb.u ], [ %i.do, %"_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS8_6DigestELm18446744073709551615EESB_S9_IjLm18446744073709551615EESC_E3$_0lEEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge.i_crit_edge.i" ], [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.fe, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ], [ %i.fe, %bb.u ], [ %.pre.i, %"_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS8_6DigestELm18446744073709551615EESB_S9_IjLm18446744073709551615EESC_E3$_0lEEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge.i_crit_edge.i" ], [ %i.da, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.pre-phi.i.i ; 2 uses
  %.val.i.i = load i64, ptr %i.fs, align 8, !tbaa !203
  %i.ft = getelementptr i8, ptr %i.fs, i64 8
  %.val10.i.i = load i64, ptr %i.ft, align 8, !tbaa !204
  call fastcc void @"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8run_bodyERS4_"(ptr noundef nonnull align 64 dereferenceable(144) %0, i64 %.val.i.i, i64 %.val10.i.i), !inline_history !543
  %i.fu = add i8 %i.fr, -1
  %i.fv = add nuw i8 %i.fq, 7
  %i.fw = and i8 %i.fv, 7
  br label %thread-pre-split15.i.i

thread-pre-split15.i.i:                           ; preds = %"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS8_6DigestELm18446744073709551615EESB_S9_IjLm18446744073709551615EESC_E3$_0lEEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i", %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i
  %i.fx = phi i8 [ %i.fu, %"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS8_6DigestELm18446744073709551615EESB_S9_IjLm18446744073709551615EESC_E3$_0lEEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i" ], [ %i.do, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ] ; 2 uses
  %i.fy = phi i8 [ %i.fw, %"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS8_6DigestELm18446744073709551615EESB_S9_IjLm18446744073709551615EESC_E3$_0lEEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i" ], [ %i.dp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ]
  %i.fz = icmp eq i8 %i.fx, 0
  br i1 %i.fz, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit.i.i, label %bb.v

bb.v:                                             ; preds = %thread-pre-split15.i.i, %.thread.i.i
  %i.ga = phi i8 [ %i.fd, %.thread.i.i ], [ %i.cf, %thread-pre-split15.i.i ]
  %i.gb = phi i8 [ %i.fb, %.thread.i.i ], [ %i.fx, %thread-pre-split15.i.i ]
  %i.gc = phi i8 [ %i.ec, %.thread.i.i ], [ %i.fy, %thread-pre-split15.i.i ]
  %i.gd = load ptr, ptr %1, align 8, !tbaa !310   ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 15
  %i.gf = load atomic i8, ptr %i.ge monotonic, align 1
  %i.gg = icmp eq i8 %i.gf, -1
  br i1 %i.gg, label %bb.w, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !51
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi ptr [ %i.gi, %bb.w ], [ %i.gd, %bb.v ]
  %i.gj = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) #13, !inline_history !543
  br i1 %i.gj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit.i.i, label %bb.q, !llvm.loop !546

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit.i.i: ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i, %thread-pre-split15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINSA_6DigestELm18446744073709551615EESD_SB_IjLm18446744073709551615EESE_E3$_0lEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit"

"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINSA_6DigestELm18446744073709551615EESD_SB_IjLm18446744073709551615EESE_E3$_0lEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit": ; preds = %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gl = load ptr, ptr %i.gk, align 16, !tbaa !169 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !115
  %i.go = load ptr, ptr %0, align 64, !tbaa !100
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #13, !inline_history !5
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gr = atomicrmw sub ptr %i.gq, i32 1 seq_cst, align 4
  %i.gs = add i32 %i.gr, -1
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINSA_6DigestELm18446744073709551615EESD_SB_IjLm18446744073709551615EESE_E3$_0lEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit", %bb.x
  %.019.i.i = phi ptr [ %i.gu, %bb.x ], [ %i.gl, %"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINSA_6DigestELm18446744073709551615EESD_SB_IjLm18446744073709551615EESE_E3$_0lEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit" ] ; 5 uses
  %i.gu = load ptr, ptr %.019.i.i, align 8, !tbaa !119 ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i6, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !115
  %i.gx = inttoptr i64 %i.gw to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.gx, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gz = atomicrmw sub ptr %i.gy, i32 1 seq_cst, align 4
  %i.ha = add i32 %i.gz, -1
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit", label %.lr.ph.i.i

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.hd = atomicrmw sub ptr %i.hc, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.hd, 1
  br i1 %.not.i.i.i.i, label %bb.z, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit"

bb.z:                                             ; preds = %bb.y
  %i.he = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.hf = ptrtoint ptr %i.he to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.hf) #13
  br label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit"

"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit": ; preds = %bb.x, %"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINSA_6DigestELm18446744073709551615EESD_SB_IjLm18446744073709551615EESE_E3$_0lEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit", %bb.y, %bb.z
  %i.hg = inttoptr i64 %i.gn to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.hg, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE"(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !169 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115
  %i.e = load ptr, ptr %0, align 64, !tbaa !100
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #13, !inline_history !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !119 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !115
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit"

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #13
  br label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit"

"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit": ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  ret ptr null
}

declare noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define internal fastcc void @"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8run_bodyERS4_"(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(144) %0, i64 %.0.val, i64 %.8.val) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %class.SipHashTmpl, align 8         ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i64, ptr %i.b, align 8, !tbaa !548  ; 2 uses
  %i.d = icmp slt i64 %.8.val, %.0.val
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %"_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS5_6DigestELm18446744073709551615EES8_S6_IjLm18446744073709551615EES9_E3$_0lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 32, !tbaa !549
  %i.g = mul nsw i64 %i.c, %.8.val
  %i.h = add nsw i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 41 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.04.i.i.i.i.i = phi i64 [ %.8.val, %.lr.ph.i.i.i.i.i ], [ %i.cu, %"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i" ]
  %storemerge3.i.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i.i ], [ %i.cv, %"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i" ] ; 4 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !550, !nonnull !172, !align !285 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i8 0, ptr %i.i, align 8, !tbaa !313
  store i8 0, ptr %i.j, align 1, !tbaa !314
  %i.p = load <2 x i64>, ptr @_ZN4moldL11siphash_keyE, align 16
  %i.q = shufflevector <2 x i64> %i.p, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.r = xor <4 x i64> %i.q, <i64 8317987319222330741, i64 7237128888997146499, i64 7816392313619706465, i64 8387220255154660723>
  store <4 x i64> %i.r, ptr %1, align 8, !tbaa !75
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !552, !nonnull !172, !align !285
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !316
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %storemerge3.i.i.i.i.i
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull %i.u, i64 noundef 16)
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !553, !nonnull !172, !align !285
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !555
  %i.y = getelementptr [4 x i8], ptr %i.x, i64 %storemerge3.i.i.i.i.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !147
  %i.aa = zext i32 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !147
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !556, !nonnull !172, !align !285 ; 2 uses
  %i.ag = sub nsw i64 %i.ad, %i.aa                ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = sub i64 %i.aj, %i.aa
  %.0.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ah, i64 %i.ak, i64 %i.ag ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !555
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aa ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i:             ; preds = %bb.b
  %.promoted.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !317
  %.promoted3.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !318
  %.promoted.i.pre.pre.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !319
  %.pre.i.i.i.i.i = load i8, ptr %i.i, align 8, !tbaa !313
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i
  %2 = phi i8 [ %storemerge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.promoted6.i.i7.i.i.i.i.i = phi i64 [ %i.cj, %._crit_edge.i.i.i.i.i.i ], [ %.promoted.i.pre.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.promoted.i.pre.i.i.i.i.i = phi i64 [ %i.ci, %._crit_edge.i.i.i.i.i.i ], [ %.promoted3.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i ] ; 4 uses
  %3 = phi i64 [ %i.cf, %._crit_edge.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.010.015.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.co, %._crit_edge.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ap = load i32, ptr %.sroa.010.015.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !147
  %i.aq = zext i32 %i.ap to i64
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !552, !nonnull !172, !align !285
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !316
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.aq ; 3 uses
  %i.au = load i8, ptr %i.j, align 1, !tbaa !314
  %i.av = add i8 %i.au, 16
  store i8 %i.av, ptr %i.j, align 1, !tbaa !314
  %.not.i.i.i.i.i.i = icmp eq i8 %2, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i, label %bb.c

.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.promoted31.i.pre.i.i.i.i.i = load i64, ptr %1, align 8
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aw = zext i8 %2 to i64                       ; 3 uses
  %i.ax = sub nsw i64 8, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.at, i64 %i.ax, i1 false)
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 2 uses
  %i.az = xor i64 %.0.copyload.i.i.i.i.i.i.i, %3  ; 3 uses
  %.promoted6.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.ba = add i64 %.promoted6.i.i.i.i.i.i.i, %.promoted.i.pre.i.i.i.i.i ; 3 uses
  %i.bb = call noundef i64 @llvm.fshl.i64(i64 %.promoted.i.pre.i.i.i.i.i, i64 %.promoted.i.pre.i.i.i.i.i, i64 13)
  %i.bc = xor i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.be = add i64 %i.az, %.promoted6.i.i7.i.i.i.i.i ; 2 uses
  %i.bf = call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = add i64 %i.bg, %i.bd                    ; 2 uses
  %i.bi = call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bj = xor i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = add i64 %i.bc, %i.be                    ; 3 uses
  %i.bl = call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bm = xor i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32) ; 2 uses
  store i64 %i.bm, ptr %i.k, align 8, !tbaa !318
  store i64 %i.bn, ptr %i.l, align 8, !tbaa !319
  store i64 %i.bj, ptr %i.m, align 8, !tbaa !317
  %i.bo = xor i64 %i.bh, %.0.copyload.i.i.i.i.i.i.i ; 2 uses
  store i64 %i.bo, ptr %1, align 8, !tbaa !320
  %i.bp = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  %i.bq = add nuw nsw i64 %i.aw, 8
  store i8 0, ptr %i.i, align 8, !tbaa !313
  br label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i
  %.ph = phi i64 [ %.promoted6.i.i7.i.i.i.i.i, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i ], [ %i.bn, %bb.c ]
  %.ph11 = phi i64 [ %.promoted.i.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i ], [ %i.bm, %bb.c ]
  %.ph12 = phi i64 [ %.promoted31.i.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i ], [ %i.bo, %bb.c ]
  %.ph13 = phi i64 [ %3, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i ], [ %i.bj, %bb.c ]
  %.127.i.i.i.i.i.i.ph = phi i64 [ 16, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i ], [ %i.bq, %bb.c ]
  %.12026.i.i.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i ], [ %i.bp, %bb.c ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.br = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.bs = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.i ], [ %.ph11, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.bt = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.ph12, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.bu = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.ph13, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.127.i.i.i.i.i.i = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.127.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.12026.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.12026.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0.copyload.i22.i.i.i.i.i.i = load i64, ptr %.12026.i.i.i.i.i.i, align 1 ; 2 uses
  %i.bv = xor i64 %.0.copyload.i22.i.i.i.i.i.i, %i.bu ; 3 uses
  %i.bw = add i64 %i.bt, %i.bs                    ; 3 uses
  %i.bx = call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 13)
  %i.by = xor i64 %i.bw, %i.bx                    ; 3 uses
  %i.bz = call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 32)
  %i.ca = add i64 %i.bv, %i.br                    ; 2 uses
  %i.cb = call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 16)
  %i.cc = xor i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = add i64 %i.cc, %i.bz                    ; 2 uses
  %i.ce = call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 21)
  %i.cf = xor i64 %i.ce, %i.cd                    ; 3 uses
  %i.cg = add i64 %i.ca, %i.by                    ; 3 uses
  %i.ch = call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 17)
  %i.ci = xor i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 32) ; 3 uses
  store i64 %i.ci, ptr %i.k, align 8, !tbaa !318
  store i64 %i.cj, ptr %i.l, align 8, !tbaa !319
  store i64 %i.cf, ptr %i.m, align 8, !tbaa !317
  %i.ck = xor i64 %i.cd, %.0.copyload.i22.i.i.i.i.i.i ; 2 uses
  store i64 %i.ck, ptr %1, align 8, !tbaa !320
  %i.cl = getelementptr inbounds nuw i8, ptr %.12026.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = add nsw i64 %.127.i.i.i.i.i.i, -8       ; 3 uses
  %i.cn = icmp samesign ugt i64 %.127.i.i.i.i.i.i, 15
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !6

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 1 %i.cl, i64 %i.cm, i1 false)
  %storemerge.i.i.i.i.i.i = trunc nuw nsw i64 %i.cm to i8 ; 2 uses
  store i8 %storemerge.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !313
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.an
  br i1 %i.cp, label %"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.b
  %i.cq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !557, !nonnull !172, !align !285
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !316
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %storemerge3.i.i.i.i.i
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6finishEPv(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.cu = add i64 %.04.i.i.i.i.i, 1               ; 2 uses
  %i.cv = add nsw i64 %storemerge3.i.i.i.i.i, %i.c
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cu, %.0.val
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS5_6DigestELm18446744073709551615EES8_S6_IjLm18446744073709551615EES9_E3$_0lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit", label %bb.b, !llvm.loop !547

"_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS5_6DigestELm18446744073709551615EES8_S6_IjLm18446744073709551615EES9_E3$_0lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit": ; preds = %"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !314
  %i.c = trunc i64 %2 to i8
  %i.d = add i8 %i.b, %i.c
  store i8 %i.d, ptr %i.a, align 1, !tbaa !314
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !313   ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i8 %i.f to i64                      ; 4 uses
  %i.h = add nsw i64 %2, %i.g
  %i.i = icmp slt i64 %i.h, 8
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %1, i64 %2, i1 false)
  %i.l = load i8, ptr %i.e, align 8, !tbaa !313
  %i.m = zext i8 %i.l to i64
  %i.n = add nsw i64 %2, %i.m
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.o = sub nsw i64 8, %i.g                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %1, i64 %i.o, i1 false)
  %.0.copyload.i = load i64, ptr %i.p, align 8    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !317
  %i.t = xor i64 %i.s, %.0.copyload.i             ; 3 uses
  %.promoted.i = load i64, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted5.i = load i64, ptr %i.u, align 8, !tbaa !318 ; 3 uses
  %.promoted6.i = load i64, ptr %i.v, align 8, !tbaa !319
  %i.w = add i64 %.promoted5.i, %.promoted.i      ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted5.i, i64 %.promoted5.i, i64 13)
  %i.y = xor i64 %i.w, %i.x                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.aa = add i64 %.promoted6.i, %i.t             ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.ac = xor i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = add i64 %i.ac, %i.z                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = add i64 %i.aa, %i.y                     ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 17)
  %i.ai = xor i64 %i.ag, %i.ah
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 32)
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !318
  store i64 %i.aj, ptr %i.v, align 8, !tbaa !319
  store i64 %i.af, ptr %i.r, align 8, !tbaa !317
  %i.ak = xor i64 %i.ad, %.0.copyload.i
  store i64 %i.ak, ptr %0, align 8, !tbaa !320
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.o
  %i.am = sub nsw i64 %2, %i.o
  store i8 0, ptr %i.e, align 8, !tbaa !313
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.019 = phi ptr [ %i.al, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.0 = phi i64 [ %i.am, %bb.d ], [ %2, %bb.a ]   ; 3 uses
  %i.an = icmp sgt i64 %.0, 7
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.ao, align 8, !tbaa !317
  %.promoted29 = load i64, ptr %0, align 8
  %.promoted30 = load i64, ptr %i.ap, align 8, !tbaa !318
  %.promoted31 = load i64, ptr %i.aq, align 8, !tbaa !319
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.ar = phi i64 [ %.promoted31, %.lr.ph ], [ %i.bj, %bb.f ]
  %i.as = phi i64 [ %.promoted30, %.lr.ph ], [ %i.bi, %bb.f ] ; 3 uses
  %i.at = phi i64 [ %.promoted29, %.lr.ph ], [ %i.bk, %bb.f ]
  %i.au = phi i64 [ %.promoted, %.lr.ph ], [ %i.bf, %bb.f ]
  %.127 = phi i64 [ %.0, %.lr.ph ], [ %i.bm, %bb.f ] ; 2 uses
  %.12026 = phi ptr [ %.019, %.lr.ph ], [ %i.bl, %bb.f ] ; 2 uses
  %.0.copyload.i22 = load i64, ptr %.12026, align 1 ; 2 uses
  %i.av = xor i64 %i.au, %.0.copyload.i22         ; 3 uses
  %i.aw = add i64 %i.as, %i.at                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 13)
  %i.ay = xor i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 32)
  %i.ba = add i64 %i.ar, %i.av                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 16)
  %i.bc = xor i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = add i64 %i.bc, %i.az                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 21)
  %i.bf = xor i64 %i.be, %i.bd                    ; 2 uses
  %i.bg = add i64 %i.ba, %i.ay                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 17)
  %i.bi = xor i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 32) ; 2 uses
  store i64 %i.bi, ptr %i.ap, align 8, !tbaa !318
  store i64 %i.bj, ptr %i.aq, align 8, !tbaa !319
  store i64 %i.bf, ptr %i.ao, align 8, !tbaa !317
  %i.bk = xor i64 %i.bd, %.0.copyload.i22         ; 2 uses
  store i64 %i.bk, ptr %0, align 8, !tbaa !320
  %i.bl = getelementptr inbounds nuw i8, ptr %.12026, i64 8 ; 2 uses
  %i.bm = add nsw i64 %.127, -8                   ; 2 uses
  %i.bn = icmp samesign ugt i64 %.127, 15
  br i1 %i.bn, label %bb.f, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.120.lcssa = phi ptr [ %.019, %bb.e ], [ %i.bl, %bb.f ]
  %.1.lcssa = phi i64 [ %.0, %bb.e ], [ %i.bm, %bb.f ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 1 %.120.lcssa, i64 %.1.lcssa, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.c
  %storemerge.in = phi i64 [ %.1.lcssa, %._crit_edge ], [ %i.n, %bb.c ]
  %storemerge = trunc i64 %storemerge.in to i8
  store i8 %storemerge, ptr %i.e, align 8, !tbaa !313
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN11SipHashTmplILi1ELi3ELi128EE6finishEPv(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i8, ptr %i.b, align 8, !tbaa !313
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = sub nsw i64 8, %i.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.h = load i8, ptr %i.g, align 1, !tbaa !314
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw i64 %i.i, 56
  %.0.copyload.i = load i64, ptr %i.a, align 8
  %i.k = or i64 %i.j, %.0.copyload.i              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !317
  %i.n = xor i64 %i.k, %i.m                       ; 3 uses
  %.promoted.i = load i64, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.promoted5.i = load i64, ptr %i.o, align 8, !tbaa !318 ; 3 uses
  %.promoted6.i = load i64, ptr %i.p, align 8, !tbaa !319
  %i.q = add i64 %.promoted5.i, %.promoted.i      ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted5.i, i64 %.promoted5.i, i64 13)
  %i.s = xor i64 %i.q, %i.r                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 32)
  %i.u = add i64 %.promoted6.i, %i.n              ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.w = xor i64 %i.u, %i.v                       ; 3 uses
  %i.x = add i64 %i.w, %i.t                       ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 21)
  %i.z = xor i64 %i.y, %i.x                       ; 3 uses
  %i.aa = add i64 %i.u, %i.s                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 17)
  %i.ac = xor i64 %i.aa, %i.ab                    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE11init_bucketEm:bb.a
  %.not.i.i.i16 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i16, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i18, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ac
  %i.ax = cmpxchg ptr %i.as, ptr null, ptr %i.aw seq_cst seq_cst, align 8
  %i.ay = extractvalue { ptr, i1 } %i.ax, 1
  br i1 %i.ay, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i18, label %_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i17

_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i17: ; preds = %bb.o
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.av) #13
  br label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i18

_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i18: ; preds = %_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i17, %bb.o, %bb.n
  %i.az = load atomic ptr, ptr %i.as acquire, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i18, %bb.m
  %.0.i.i15 = phi ptr [ %i.az, %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i18 ], [ %i.at, %bb.m ] ; 2 uses
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !233
  %i.bb = icmp eq ptr %.0.i.i15, %i.ba
  br i1 %i.bb, label %bb.q, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit19

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef 1) #13
  br label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit19

_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit19: ; preds = %bb.p, %bb.q
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i15, i64 %i.r
  %i.bd = load atomic ptr, ptr %i.bc acquire, align 8
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %1, 8
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %1, 16
  %.sroa.48.0.extract.shift.i.i.i = lshr i64 %1, 24
  %.sroa.59.0.extract.shift.i.i.i = lshr i64 %1, 32
  %.sroa.610.0.extract.shift.i.i.i = lshr i64 %1, 40
  %.sroa.711.0.extract.shift.i.i.i = lshr i64 %1, 48
  %.sroa.812.0.extract.shift.i.i.i = lshr i64 %1, 56
  %i.be = and i64 %1, 255
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !51
  %i.bh = and i64 %.sroa.2.0.extract.shift.i.i.i, 255
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !51
  %i.bk = and i64 %.sroa.3.0.extract.shift.i.i.i, 255
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !51
  %i.bn = and i64 %.sroa.48.0.extract.shift.i.i.i, 255
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !51
  %i.bq = and i64 %.sroa.59.0.extract.shift.i.i.i, 255
  %i.br = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !51
  %i.bt = and i64 %.sroa.610.0.extract.shift.i.i.i, 255
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !51
  %i.bw = and i64 %.sroa.711.0.extract.shift.i.i.i, 255
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %.sroa.812.0.extract.shift.i.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !51
  %.sroa.10.0.insert.ext.i.i.i = zext i8 %i.bg to i64
  %.sroa.10.0.insert.shift.i.i.i = shl nuw i64 %.sroa.10.0.insert.ext.i.i.i, 56
  %.sroa.9.0.insert.ext.i.i.i = zext i8 %i.bj to i64
  %.sroa.9.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i.i, 48
  %.sroa.9.0.insert.insert.i.i.i = or disjoint i64 %.sroa.9.0.insert.shift.i.i.i, %.sroa.10.0.insert.shift.i.i.i
  %.sroa.8.0.insert.ext.i.i.i = zext i8 %i.bm to i64
  %.sroa.8.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.8.0.insert.ext.i.i.i, 40
  %.sroa.8.0.insert.insert.i.i.i = or disjoint i64 %.sroa.9.0.insert.insert.i.i.i, %.sroa.8.0.insert.shift.i.i.i
  %.sroa.7.0.insert.ext.i.i.i = zext i8 %i.bp to i64
  %.sroa.7.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i.i.i, 32
  %.sroa.7.0.insert.insert.i.i.i = or disjoint i64 %.sroa.8.0.insert.insert.i.i.i, %.sroa.7.0.insert.shift.i.i.i
  %.sroa.6.0.insert.ext.i.i.i = zext i8 %i.bs to i64
  %.sroa.6.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i, 24
  %.sroa.6.0.insert.insert.i.i.i = or disjoint i64 %.sroa.7.0.insert.insert.i.i.i, %.sroa.6.0.insert.shift.i.i.i
  %.sroa.5.0.insert.ext.i.i.i = zext i8 %i.bv to i64
  %.sroa.5.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i, 16
  %.sroa.4.0.insert.ext.i.i.i = zext i8 %i.by to i64
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 8
  %.sroa.4.0.insert.mask.i.i.i = or disjoint i64 %.sroa.6.0.insert.insert.i.i.i, %.sroa.5.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %i.ca to i64
  %.sroa.0.0.insert.mask.i.i.i = or i64 %.sroa.4.0.insert.mask.i.i.i, %.sroa.4.0.insert.shift.i.i.i
  %.sroa.0.0.insert.insert.i.i.i = or i64 %.sroa.0.0.insert.mask.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.cb = and i64 %.sroa.0.0.insert.insert.i.i.i, -2 ; 4 uses
  %i.cc = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 16) #13 ; 9 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !395
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !296
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit19
  %.018.i = phi ptr [ %i.bd, %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit19 ], [ %.018.i.be, %.backedge.i.backedge ] ; 3 uses
  %i.ce = load atomic ptr, ptr %.018.i acquire, align 8 ; 4 uses
  %.not23.i = icmp eq ptr %i.ce, null
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.backedge.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !296 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cb
  br i1 %i.ch, label %.lr.ph, label %.critedge.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !296 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.cb
  br i1 %i.ck, label %.lr.ph, label %.critedge.i, !llvm.loop !1009

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.025.i33 = phi ptr [ %i.cl, %.lr.ph.i ], [ %i.ce, %.lr.ph.i.preheader ] ; 3 uses
  %i.cl = load atomic ptr, ptr %.025.i33 acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.cl, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1009

.critedge.i:                                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.025.i.lcssa = phi ptr [ %i.ce, %.lr.ph.i.preheader ], [ %i.cl, %.lr.ph.i ] ; 3 uses
  %.124.i.lcssa = phi ptr [ %.018.i, %.lr.ph.i.preheader ], [ %.025.i33, %.lr.ph.i ] ; 2 uses
  %.lcssa = phi i64 [ %i.cg, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i ]
  %i.cm = icmp eq i64 %.lcssa, %i.cb
  br i1 %i.cm, label %bb.r, label %.split.i

.split.i:                                         ; preds = %.critedge.i
  store atomic ptr %.025.i.lcssa, ptr %i.cc release, align 8
  %i.cn = cmpxchg ptr %.124.i.lcssa, ptr %.025.i.lcssa, ptr %i.cc seq_cst seq_cst, align 8
  %i.co = extractvalue { ptr, i1 } %i.cn, 1
  br i1 %i.co, label %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit, label %.backedge.i.backedge

bb.r:                                             ; preds = %.critedge.i
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.cc) #13
  br label %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit

._crit_edge.i:                                    ; preds = %.lr.ph, %.backedge.i
  %.1.lcssa.i = phi ptr [ %.018.i, %.backedge.i ], [ %.025.i33, %.lr.ph ] ; 2 uses
  store atomic ptr null, ptr %i.cc release, align 8
  %i.cp = cmpxchg ptr %.1.lcssa.i, ptr null, ptr %i.cc seq_cst seq_cst, align 8
  %i.cq = extractvalue { ptr, i1 } %i.cp, 1
  br i1 %i.cq, label %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.i, %.split.i
  %.018.i.be = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %.124.i.lcssa, %.split.i ]
  br label %.backedge.i, !llvm.loop !1010

_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit: ; preds = %.split.i, %._crit_edge.i, %bb.r
  %.019.i = phi ptr [ %.025.i.lcssa, %bb.r ], [ %i.cc, %._crit_edge.i ], [ %i.cc, %.split.i ]
  %i.cr = or i64 %1, 1
  %i.cs = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true) ; 3 uses
  %i.ct = xor i64 %i.cs, 63                       ; 2 uses
  %i.cu = load atomic ptr, ptr %i.w acquire, align 8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ct ; 3 uses
  %i.cw = load atomic ptr, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit
  %i.cy = icmp eq i64 %i.cs, 63
  %i.cz = shl i64 8, %i.ct
  %i.da = select i1 %i.cy, i64 16, i64 %i.cz      ; 2 uses
  %i.db = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.da) #13 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.db, i8 0, i64 %i.da, i1 false), !tbaa !395
  %.not.i.i.i22 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i22, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i24, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = lshr exact i64 -9223372036854775808, %i.cs
  %i.dd = and i64 %i.dc, -2
  %i.de = sub i64 0, %i.dd
  %i.df = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.de
  %i.dg = cmpxchg ptr %i.cv, ptr null, ptr %i.df seq_cst seq_cst, align 8
  %i.dh = extractvalue { ptr, i1 } %i.dg, 1
  br i1 %i.dh, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i24, label %_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i23

_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i23: ; preds = %bb.t
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.db) #13
  br label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i24

_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i24: ; preds = %_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i23, %bb.t, %bb.s
  %i.di = load atomic ptr, ptr %i.cv acquire, align 8
  br label %bb.u

bb.u:                                             ; preds = %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i24, %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit
  %.0.i.i21 = phi ptr [ %i.di, %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i24 ], [ %i.cw, %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit ] ; 2 uses
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !233
  %i.dk = icmp eq ptr %.0.i.i21, %i.dj
  br i1 %i.dk, label %bb.v, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit25

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef 1) #13
  br label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit25

_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit25: ; preds = %bb.u, %bb.v
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i21, i64 %1
  store atomic ptr %.019.i, ptr %i.dl release, align 8
  br label %_ZNSt6atomicIPN3tbb6detail2d29list_nodeImEEE23compare_exchange_strongERS5_S5_St12memory_order.exit

_ZNSt6atomicIPN3tbb6detail2d29list_nodeImEEE23compare_exchange_strongERS5_S5_St12memory_order.exit: ; preds = %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit, %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define internal fastcc void @_ZSt4sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EvSG_SG_T0_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %3 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %4 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %5 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %6 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %7 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %8 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !241    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !242  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !243  ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !241    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !242  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !243  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.k = icmp ne ptr %i.a, %i.f
  %.fr.i.i = freeze i1 %i.k                       ; 3 uses
  %i.l = icmp ne i64 %i.c, %i.h
  %.not3.i.i = select i1 %.fr.i.i, i1 true, i1 %i.l
  br i1 %.not3.i.i, label %bb.b, label %_ZSt6__sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %7, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.c, ptr %i.m, align 8, !tbaa !242
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.e, ptr %i.n, align 8, !tbaa !243
  store ptr %i.f, ptr %8, align 8, !tbaa !241
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.h, ptr %i.o, align 8, !tbaa !242
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.j, ptr %i.p, align 8, !tbaa !243
  %i.q = sub nsw i64 %i.h, %i.c                   ; 2 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 false)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = sub nsw i64 126, %i.s
  call fastcc void @_ZSt16__introsort_loopIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_T1_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %7, ptr nofree noundef align 8 dead_on_return dereferenceable(24) %8, i64 noundef %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.u = icmp sgt i64 %i.q, 16
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %3, align 8, !tbaa !241
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.v, align 8, !tbaa !242
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.e, ptr %i.w, align 8, !tbaa !243
  %i.x = add i64 %i.c, 16                         ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !241, !alias.scope !1015
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !242, !alias.scope !1015
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.z, align 8, !tbaa !243, !alias.scope !1015
  call fastcc void @_ZSt16__insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %3, ptr nofree noundef align 8 dead_on_return dereferenceable(24) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.aa = icmp ne i64 %i.x, %i.h
  %.not3.i6.i.i.i = or i1 %.fr.i.i, %i.aa
  br i1 %.not3.i6.i.i.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.lr.ph.i.i.i, label %_ZSt26__unguarded_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.lr.ph.i.i.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  br i1 %.fr.i.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.preheader.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.preheader.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i: ; preds = %bb.f, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.preheader.i
  %.sroa.5.08.i.us.i.i = phi i64 [ %61, %bb.f ], [ %i.x, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.preheader.i ] ; 7 uses
  %9 = or i64 %.sroa.5.08.i.us.i.i, 1
  %10 = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %9, i1 true)
  %11 = xor i64 %10, 63                           ; 3 uses
  %12 = load atomic ptr, ptr %i.ad acquire, align 8
  %13 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %11
  %14 = load atomic ptr, ptr %13 acquire, align 8
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %.sroa.5.08.i.us.i.i
  %16 = load ptr, ptr %15, align 8, !tbaa !130    ; 4 uses
  %17 = add i64 %.sroa.5.08.i.us.i.i, -1          ; 4 uses
  %18 = getelementptr i8, ptr %16, i64 48         ; 2 uses
  %i.ae = or i64 %17, 1
  %i.af = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = xor i64 %i.af, 63                       ; 2 uses
  %i.ah = load atomic ptr, ptr %i.ad acquire, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load atomic ptr, ptr %i.ai acquire, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %17
  %.pr.i.i = load ptr, ptr %i.ak, align 8, !tbaa !130 ; 2 uses
  %i.al = load ptr, ptr %16, align 8, !tbaa !249
  %.val2.i.i.peel.i = load i32, ptr %18, align 8, !tbaa !250
  %i.am = load ptr, ptr %.pr.i.i, align 8, !tbaa !249
  %19 = getelementptr i8, ptr %.pr.i.i, i64 48
  %.val4.i.i.peel.i = load i32, ptr %19, align 8, !tbaa !250
  %20 = getelementptr i8, ptr %i.al, i64 128
  %.val.val.i.i.peel.i = load i64, ptr %20, align 8, !tbaa !275
  %21 = getelementptr i8, ptr %i.am, i64 128
  %.val3.val.i.i.peel.i = load i64, ptr %21, align 8, !tbaa !275
  %22 = shl i64 %.val.val.i.i.peel.i, 32
  %23 = sext i32 %.val2.i.i.peel.i to i64
  %24 = or i64 %22, %23
  %25 = shl i64 %.val3.val.i.i.peel.i, 32
  %26 = sext i32 %.val4.i.i.peel.i to i64
  %27 = or i64 %25, %26
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i
  %29 = load atomic ptr, ptr %i.ad acquire, align 8
  %30 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %i.ag
  %31 = load atomic ptr, ptr %30 acquire, align 8
  %32 = getelementptr inbounds nuw [8 x i8], ptr %31, i64 %17
  %33 = load ptr, ptr %32, align 8, !tbaa !130
  %i.an = load atomic ptr, ptr %i.ad acquire, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %11
  %i.ap = load atomic ptr, ptr %i.ao acquire, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.5.08.i.us.i.i
  store ptr %33, ptr %i.aq, align 8, !tbaa !130
  %34 = add i64 %.sroa.5.08.i.us.i.i, -2
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.peel.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.peel.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i, %bb.d
  %.sroa.6.0.i14.i = phi i64 [ %.sroa.6.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i ], [ %17, %bb.d ] ; 4 uses
  %.sroa.6.0.i.i = phi i64 [ %57, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i ], [ %34, %bb.d ] ; 6 uses
  %35 = or i64 %.sroa.6.0.i.i, 1
  %36 = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %35, i1 true)
  %37 = xor i64 %36, 63
  %38 = load atomic ptr, ptr %i.ad acquire, align 8
  %39 = getelementptr inbounds nuw [8 x i8], ptr %38, i64 %37
  %40 = load atomic ptr, ptr %39 acquire, align 8
  %41 = getelementptr inbounds nuw [8 x i8], ptr %40, i64 %.sroa.6.0.i.i
  %i.ar = load ptr, ptr %41, align 8, !tbaa !130  ; 2 uses
  %.val.i.i.peel.i = load ptr, ptr %16, align 8, !tbaa !249
  %.val2.i.i.peel.i.a = load i32, ptr %18, align 8, !tbaa !250
  %.val3.i.i.peel.i = load ptr, ptr %i.ar, align 8, !tbaa !249
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %.val4.i.i.peel.i.a = load i32, ptr %i.as, align 8, !tbaa !250
  %i.at = getelementptr i8, ptr %.val.i.i.peel.i, i64 128
  %.val.val.i.i.peel.i.a = load i64, ptr %i.at, align 8, !tbaa !275
  %i.au = getelementptr i8, ptr %.val3.i.i.peel.i, i64 128
  %.val3.val.i.i.peel.i.a = load i64, ptr %i.au, align 8, !tbaa !275
  %i.av = shl i64 %.val.val.i.i.peel.i.a, 32
  %i.aw = sext i32 %.val2.i.i.peel.i.a to i64
  %i.ax = or i64 %i.av, %i.aw
  %i.ay = shl i64 %.val3.val.i.i.peel.i.a, 32
  %i.az = sext i32 %.val4.i.i.peel.i.a to i64
  %i.ba = or i64 %i.ay, %i.az
  %i.bb = icmp slt i64 %i.ax, %i.ba
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i, label %bb.e

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.peel.i
  %42 = or i64 %.sroa.6.0.i.i, 1
  %43 = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %42, i1 true)
  %44 = xor i64 %43, 63
  %45 = load atomic ptr, ptr %i.ad acquire, align 8
  %46 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %44
  %47 = load atomic ptr, ptr %46 acquire, align 8
  %48 = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %.sroa.6.0.i.i
  %49 = load ptr, ptr %48, align 8, !tbaa !130
  %50 = or i64 %.sroa.6.0.i14.i, 1
  %51 = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %50, i1 true)
  %52 = xor i64 %51, 63
  %53 = load atomic ptr, ptr %i.ad acquire, align 8
  %54 = getelementptr inbounds nuw [8 x i8], ptr %53, i64 %52
  %55 = load atomic ptr, ptr %54 acquire, align 8
  %56 = getelementptr inbounds nuw [8 x i8], ptr %55, i64 %.sroa.6.0.i14.i
  store ptr %49, ptr %56, align 8, !tbaa !130
  %57 = add i64 %.sroa.6.0.i.i, -1
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.peel.i, !llvm.loop !1013

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.peel.i
  %i.bc = or i64 %.sroa.6.0.i14.i, 1
  %i.bd = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 true)
  %i.be = xor i64 %i.bd, 63
  br label %bb.f

bb.f:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i, %bb.e
  %.pre-phi14 = phi i64 [ %i.be, %bb.e ], [ %11, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i ]
  %58 = phi i64 [ %.sroa.6.0.i14.i, %bb.e ], [ %.sroa.5.08.i.us.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i ]
  %59 = load atomic ptr, ptr %i.ad acquire, align 8
  %60 = getelementptr inbounds nuw [8 x i8], ptr %59, i64 %.pre-phi14
  %i.bf = load atomic ptr, ptr %60 acquire, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %58
  store ptr %16, ptr %i.bg, align 8, !tbaa !130
  %61 = add i64 %.sroa.5.08.i.us.i.i, 1
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.lr.ph.i.i.i, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i
  %.sroa.5.08.i.i.i = phi i64 [ %i.bh, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i ], [ %i.x, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.lr.ph.i.i.i ] ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !241
  store i64 %.sroa.5.08.i.i.i, ptr %i.ab, align 8, !tbaa !242
  store ptr null, ptr %i.ac, align 8, !tbaa !243
  call fastcc void @_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %2)
  %i.bh = add i64 %.sroa.5.08.i.i.i, 1            ; 2 uses
  %.not.i.i = icmp eq i64 %i.bh, %i.h
  br i1 %.not.i.i, label %_ZSt26__unguarded_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i, !llvm.loop !1014

_ZSt26__unguarded_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZSt22__final_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i

bb.g:                                             ; preds = %bb.b
  store ptr %i.a, ptr %5, align 8, !tbaa !241
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.c, ptr %i.bi, align 8, !tbaa !242
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.bj, align 8, !tbaa !243
  store ptr %i.f, ptr %6, align 8, !tbaa !241
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.h, ptr %i.bk, align 8, !tbaa !242
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.j, ptr %i.bl, align 8, !tbaa !243
  call fastcc void @_ZSt16__insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %5, ptr nofree noundef align 8 dead_on_return dereferenceable(24) %6)
  br label %_ZSt22__final_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i

_ZSt22__final_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i: ; preds = %bb.g, %_ZSt26__unguarded_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt6__sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit

_ZSt6__sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit: ; preds = %bb.a, %_ZSt22__final_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret void
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZSt16__introsort_loopIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_T1_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 12 uses
  %4 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %5 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 4 uses
  %6 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !242  ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !242  ; 3 uses
  %i.e = sub nsw i64 %i.c, %i.d                   ; 3 uses
  %i.f = icmp sgt i64 %i.e, 16
  br i1 %i.f, label %.lr.ph, label %_ZSt14__partial_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph95

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEESJ_SJ_SJ_T0_.exit
  %i.n = icmp eq i64 %i.cx, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph95, !llvm.loop !1017

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa92 = phi i64 [ %i.e, %.lr.ph ], [ %i.ma, %bb.b ] ; 2 uses
  %.lcssa90 = phi i64 [ %i.d, %.lr.ph ], [ %i.lz, %bb.b ] ; 9 uses
  %.lcssa88 = phi i64 [ %i.c, %.lr.ph ], [ %.us-phi, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !241    ; 4 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !243  ; 5 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !241
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !243  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.s = add nsw i64 %.lcssa92, -2
  %i.t = lshr i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !241
  store i64 %.lcssa90, ptr %i.u, align 8, !tbaa !242
  store ptr %i.p, ptr %i.v, align 8, !tbaa !243
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.t, %._crit_edge ], [ %i.ag, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i ] ; 4 uses
  %i.x = add i64 %.08.i.i.i, %.lcssa90            ; 2 uses
  %i.y = or i64 %i.x, 1
  %i.z = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = load atomic ptr, ptr %i.w acquire, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load atomic ptr, ptr %i.ac acquire, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.x
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !130
  call fastcc void @_ZSt13__adjust_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_T2_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %4, i64 noundef %.08.i.i.i, i64 noundef %.lcssa92, ptr noundef %i.af)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.ag = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i, !llvm.loop !1018

_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.p, null
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.al = or i64 %.lcssa90, 1
  %i.am = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 true)
  %i.an = xor i64 %i.am, 63                       ; 2 uses
  br i1 %i.aj, label %.lr.ph.i1.split.us.i, label %.lr.ph.i1.split.i

.lr.ph.i1.split.us.i:                             ; preds = %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i
  %.sroa.7.0.us.i = phi ptr [ %.sroa.7.1.us40.i, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i ], [ %i.r, %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread ] ; 2 uses
  %i.ao = phi i64 [ %i.ap, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i ], [ %.lcssa88, %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread ] ; 2 uses
  %i.ap = add i64 %i.ao, -1                       ; 6 uses
  %.not.i.i2.us.i = icmp eq ptr %.sroa.7.0.us.i, null
  br i1 %.not.i.i2.us.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.us.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.us.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.us.i: ; preds = %.lr.ph.i1.split.us.i
  %i.aq = add i64 %i.ao, -3
  %i.ar = and i64 %i.aq, %i.ap
  %i.as = icmp eq i64 %i.ar, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %i.as, label %bb.c, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.us.i: ; preds = %.lr.ph.i1.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.c

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.us.i
  %i.at = getelementptr inbounds i8, ptr %.sroa.7.0.us.i, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !130
  %i.av = load atomic ptr, ptr %i.w acquire, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.an
  %i.ax = load atomic ptr, ptr %i.aw acquire, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.lcssa90
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !130
  br label %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i

bb.c:                                             ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.us.i, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.us.i
  %i.ba = or i64 %i.ap, 1
  %i.bb = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = xor i64 %i.bb, 63                       ; 2 uses
  %i.bd = load atomic ptr, ptr %i.ak acquire, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load atomic ptr, ptr %i.be acquire, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ap
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !130
  %i.bi = load atomic ptr, ptr %i.w acquire, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.an
  %i.bk = load atomic ptr, ptr %i.bj acquire, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.lcssa90
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !130
  %i.bn = load atomic ptr, ptr %i.ak acquire, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bc
  %i.bp = load atomic ptr, ptr %i.bo acquire, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ap
  br label %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i

_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i: ; preds = %bb.c, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i
  %i.br = phi ptr [ %i.bm, %bb.c ], [ %i.az, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i ]
  %i.bs = phi ptr [ %i.bh, %bb.c ], [ %i.au, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i ]
  %.sroa.7.1.us40.i = phi ptr [ null, %bb.c ], [ %i.at, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i ]
  %.0.i4.i.i8.us.i = phi ptr [ %i.bq, %bb.c ], [ %i.at, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i ]
  store ptr %i.br, ptr %.0.i4.i.i8.us.i, align 8, !tbaa !130
  store ptr %i.o, ptr %3, align 8, !tbaa !241
  store i64 %.lcssa90, ptr %i.ah, align 8, !tbaa !242
  store ptr null, ptr %i.ai, align 8, !tbaa !243
  %i.bt = sub nsw i64 %i.ap, %.lcssa90            ; 2 uses
  call fastcc void @_ZSt13__adjust_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_T2_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %3, i64 noundef 0, i64 noundef %i.bt, ptr noundef %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %.lr.ph.i1.split.us.i, label %_ZSt14__partial_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit, !llvm.loop !1019

.lr.ph.i1.split.i:                                ; preds = %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i
  %.sroa.7.0.i = phi ptr [ %.sroa.7.144.i, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i ], [ %i.r, %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread ] ; 2 uses
  %i.bv = phi i64 [ %i.bw, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i ], [ %.lcssa88, %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread ] ; 2 uses
  %i.bw = add i64 %i.bv, -1                       ; 6 uses
  %.not.i.i2.i = icmp eq ptr %.sroa.7.0.i, null
  br i1 %.not.i.i2.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.i: ; preds = %.lr.ph.i1.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.d

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i: ; preds = %.lr.ph.i1.split.i
  %i.bx = add i64 %i.bv, -3
  %i.by = and i64 %i.bx, %i.bw
  %i.bz = icmp eq i64 %i.by, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %i.bz, label %bb.d, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i
end_hunk_1

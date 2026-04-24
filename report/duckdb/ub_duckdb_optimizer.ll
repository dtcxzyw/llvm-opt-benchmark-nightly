inline.NumInlined: 25585
inline.NumDeleted: 11329
begin_hunk_0_@_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE:bb.a
  %or.cond = and i1 %i.an, %i.am
  %i.ao = fmul double %i.af, 1.150000e+00
  %.sroa.5.0 = select i1 %or.cond, double %i.ao, double %i.af
  %6 = fcmp ule double %.sroa.5.0, %i.ae          ; 3 uses
  %i.ap = icmp eq i64 %i.ac, %i.q
  br i1 %i.ap, label %bb.h, label %bb.u

end_hunk_0
begin_hunk_1_@_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(97) %i.e)
          to label %bb.j unwind label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %.val45 = load ptr, ptr %i.aq, align 8, !tbaa !62 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE:bb.a
  %.sroa.03.08.i = phi ptr [ %.val45, %.lr.ph.i ], [ %i.bh, %.noexc ] ; 2 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !62
  %i.be = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13ColumnBindingESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %i.bd, ptr %i.bc, ptr nonnull align 8 dereferenceable(16) %.sroa.03.08.i)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.k
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !62 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE:bb.a
  %.sroa.03.08.i51 = phi ptr [ %.val.pre, %.lr.ph.i48 ], [ %i.bo, %.noexc56 ] ; 2 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !62
  %i.bl = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13ColumnBindingESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIS4_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %i.bk, ptr %i.bj, ptr nonnull align 8 dereferenceable(16) %.sroa.03.08.i51)
          to label %.noexc56 unwind label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit59

.noexc56:                                         ; preds = %bb.l
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !62 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE:bb.a
_ZN6duckdbL26ComputeOverlappingBindingsERKNS_6vectorINS_13ColumnBindingELb1ESaIS1_EEES5_.exit57: ; preds = %.noexc56, %bb.j, %_ZN6duckdbL26ComputeOverlappingBindingsERKNS_6vectorINS_13ColumnBindingELb1ESaIS1_EEES5_.exit
  %.0.lcssa.i83 = phi i64 [ %spec.select.i, %_ZN6duckdbL26ComputeOverlappingBindingsERKNS_6vectorINS_13ColumnBindingELb1ESaIS1_EEES5_.exit ], [ 0, %bb.j ], [ %spec.select.i, %.noexc56 ] ; 2 uses
  %.0.lcssa.i55 = phi i64 [ 0, %_ZN6duckdbL26ComputeOverlappingBindingsERKNS_6vectorINS_13ColumnBindingELb1ESaIS1_EEES5_.exit ], [ 0, %bb.j ], [ %spec.select.i53, %.noexc56 ] ; 2 uses
  %i.bp = icmp ule i64 %.0.lcssa.i83, %.0.lcssa.i55
  %7 = icmp ule i64 %.0.lcssa.i55, %.0.lcssa.i83
  %not.or.cond66 = select i1 %6, i1 %7, i1 %i.bp
  %.1 = xor i1 %6, %not.or.cond66
  %i.bq = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdbL26ComputeOverlappingBindingsERKNS_6vectorINS_13ColumnBindingELb1ESaIS1_EEES5_.exit57
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #35
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdbL26ComputeOverlappingBindingsERKNS_6vectorINS_13ColumnBindingELb1ESaIS1_EEES5_.exit57, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %8 = load ptr, ptr %4, align 8, !tbaa !12       ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %8, null
  br i1 %.not.i.i.i59, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdlPv(ptr noundef nonnull %8) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.1, label %bb.v, label %_ZN6duckdbL12FlipChildrenERNS_15LogicalOperatorE.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %bb.i
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit61

bb.q:                                             ; preds = %bb.k
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit59: ; preds = %bb.l
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit59, %bb.q
  %.pn = phi { ptr, i32 } [ %11, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit59 ], [ %10, %bb.q ] ; 2 uses
  %i.br = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit61, label %bb.s
end_hunk_4
begin_hunk_5_@_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE:bb.a
  call void @_ZdlPv(ptr noundef nonnull %i.br) #35
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit61

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit61: ; preds = %bb.s, %bb.r, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %9, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit ], [ %.pn, %bb.r ], [ %.pn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.bs = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.bs, null
end_hunk_5
begin_hunk_6_@_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE:bb.a
  br label %common.resume

bb.u:                                             ; preds = %bb.h, %bb.g
  br i1 %6, label %_ZN6duckdbL12FlipChildrenERNS_15LogicalOperatorE.exit, label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.u
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0) ; 4 uses
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 4 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !156
end_hunk_6
begin_hunk_7_@_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE:bb.a
bb.ad:                                            ; preds = %bb.aa
  unreachable

_ZN6duckdbL12FlipChildrenERNS_15LogicalOperatorE.exit: ; preds = %.sink.split.i, %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i, %bb.p, %bb.u
  %.284 = phi i1 [ false, %bb.p ], [ false, %bb.u ], [ true, %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i ], [ true, %.sink.split.i ]
  ret i1 %.284
}

end_hunk_7
begin_hunk_8_@_ZN6duckdb11Deliminator22RemoveJoinWithDelimGetERNS_21LogicalComparisonJoinEmRNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEERb:bb.a
  br label %_ZN6duckdbL18OperatorIsDelimGetERNS_15LogicalOperatorE.exit

_ZN6duckdbL18OperatorIsDelimGetERNS_15LogicalOperatorE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ 0, %bb.d ], [ 1, %bb.b ], [ 1, %bb.c ]
  %.0.i.a = phi i1 [ false, %bb.d ], [ true, %bb.b ], [ true, %bb.c ] ; 2 uses
  %not. = xor i1 %.0.i.a, true
  %i.p = zext i1 %not. to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
end_hunk_8
begin_hunk_9_@_ZN6duckdb11Deliminator22RemoveJoinWithDelimGetERNS_21LogicalComparisonJoinEmRNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEERb:bb.a

bb.bw:                                            ; preds = %bb.bu, %.critedge101
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jq, i64 noundef %.0.i)
          to label %bb.bx unwind label %bb.ci     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
end_hunk_9

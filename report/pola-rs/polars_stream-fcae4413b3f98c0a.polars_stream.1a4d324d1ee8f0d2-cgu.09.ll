Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.09?download=true
inline.NumInlined: 6052
inline.NumDeleted: 2187
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components4sizeNtB2_15RowCountAndSize9add_delta:bb.a
  br i1 %or.cond.i.i, label %bb.g, label %bb.b, !dbg !91570

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw i32 %5, %2, !dbg !91571          ; 2 uses
  %i.d = sub nuw i64 %4, %1, !dbg !91572          ; 2 uses
  %i.e = icmp ugt i32 %3, %i.c, !dbg !91573
  br i1 %i.e, label %bb.g, label %bb.c, !dbg !91573

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %5, %2, !dbg !91574
  br i1 %i.f, label %_RNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components4sizeNtB2_15RowCountAndSize13row_byte_size.exit.i, label %bb.d, !dbg !91574

bb.d:                                             ; preds = %bb.c
  %i.g = zext i32 %i.c to i64, !dbg !91575
  %i.h = udiv i64 %i.d, %i.g, !dbg !91576
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 1), !dbg !91577
  br label %_RNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components4sizeNtB2_15RowCountAndSize13row_byte_size.exit.i, !dbg !91578

_RNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components4sizeNtB2_15RowCountAndSize13row_byte_size.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.i.i.i, %bb.d ], [ 0, %bb.c ], !dbg !91579
  %i.i = zext i32 %3 to i64, !dbg !91580
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i.i, i64 %i.i), !dbg !91581 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 0, !dbg !91581
  %i.l = extractvalue { i64, i1 } %i.j, 1, !dbg !91581
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !91582, !prof !2152

bb.e:                                             ; preds = %_RNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components4sizeNtB2_15RowCountAndSize13row_byte_size.exit.i
  br label %bb.f, !dbg !91583

bb.f:                                             ; preds = %bb.e, %_RNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components4sizeNtB2_15RowCountAndSize13row_byte_size.exit.i
  %.sroa.01.0.i = phi i64 [ -1, %bb.e ], [ %i.k, %_RNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components4sizeNtB2_15RowCountAndSize13row_byte_size.exit.i ], !dbg !91584
  %i.m = add i32 %3, %2, !dbg !91585              ; 2 uses
  %i.n = icmp ult i32 %i.m, %2, !dbg !91585
  br i1 %i.n, label %bb.g, label %bb.h, !dbg !91586, !prof !2152

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.h, %bb.f
  %storemerge2 = phi i64 [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], !dbg !91587
  store i64 %storemerge2, ptr %0, align 8, !dbg !91587
  ret void, !dbg !91588

bb.h:                                             ; preds = %bb.f
  %.sroa.0.0.i2.i = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %.sroa.01.0.i), !dbg !91589
  %i.o = tail call i64 @llvm.uadd.sat.i64(i64 %1, i64 %.sroa.0.0.i2.i), !dbg !91590
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91591
  store i64 %i.o, ptr %i.p, align 8, !dbg !91591
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !91591
  store i32 %i.m, ptr %i.q, align 8, !dbg !91591
  br label %bb.g, !dbg !91592
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selectorNtB2_14ColumnSelector13replace_input(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, 3) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !91593 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !91599, !range !2147, !noundef !2145
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91599 ; 2 uses
  %i.c = icmp eq i64 %i.a, 2, !dbg !91600
  br i1 %i.c, label %.lr.ph, label %._crit_edge, !dbg !91600

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ]
  %i.e = load ptr, ptr %i.d, align 8, !dbg !91601, !nonnull !2145, !noundef !2145 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !91599, !range !2147, !noundef !2145
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !91599 ; 2 uses
  %i.h = icmp eq i64 %i.f, 2, !dbg !91600
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !dbg !91600

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph ] ; 3 uses
  %.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.g, %.lr.ph ], !dbg !91599 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selector14ColumnSelectorEBS_(ptr noalias noundef align 8 dereferenceable(16) %.sroa.0.0.lcssa)
          to label %bb.c unwind label %bb.b, !dbg !91602

bb.b:                                             ; preds = %._crit_edge
  %i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %1, ptr %.sroa.0.0.lcssa, align 8, !dbg !91602
  store ptr %2, ptr %.lcssa, align 8, !dbg !91602
  resume { ptr, i32 } %i.i, !dbg !91603

bb.c:                                             ; preds = %._crit_edge
  store i64 %1, ptr %.sroa.0.0.lcssa, align 8, !dbg !91602
  store ptr %2, ptr %.lcssa, align 8, !dbg !91602
  ret void, !dbg !91604
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selectorNtB2_14ColumnSelector19select_from_columns(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noundef nonnull align 16 %2, i64 noundef range(i64 0, 57646075230342349) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !91605 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [160 x i8], align 16              ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size(), !dbg !91628
  %i.f = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size(), !dbg !91628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !91628
  store ptr %1, ptr %i.d, align 8, !dbg !91628
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !91628
  store ptr %2, ptr %i.g, align 8, !dbg !91628
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !91628
  store i64 %3, ptr %i.h, align 8, !dbg !91628
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !91628
  store i64 %4, ptr %i.i, align 8, !dbg !91628
  %i.j = tail call { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack(), !dbg !91629, !noalias !91624 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0, !dbg !91629
  %i.l = trunc nuw i64 %i.k to i1, !dbg !91630
  %i.m = extractvalue { i64, i64 } %i.j, 1
  %.not.i = icmp uge i64 %i.m, %i.e
  %or.cond.i.not = select i1 %i.l, i1 %.not.i, i1 false, !dbg !91630
  br i1 %or.cond.i.not, label %bb.h, label %bb.b, !dbg !91630

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91625), !dbg !91631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !91632, !noalias !91626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !91633, !noalias !91625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !91634, !noalias !91626
  store i8 33, ptr %i.b, align 16, !dbg !91635, !noalias !91626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !91636, !noalias !91626
  store ptr %i.c, ptr %i.a, align 8, !dbg !91636, !noalias !91626
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !91636
  store ptr %i.b, ptr %i.n, align 8, !dbg !91636, !noalias !91626
  invoke void @_RNvCsiMOpCev58qw_7stacker5__grow(i64 noundef %i.f, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @5)
          to label %bb.c unwind label %bb.f, !dbg !91637, !noalias !91626, !inline_history !91620

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i8, ptr %i.b, align 16, !dbg !91638, !noalias !91626 ; 2 uses
  %.not.i1 = icmp eq i8 %.sroa.0.0.copyload.i, 33, !dbg !91639
  br i1 %.not.i1, label %bb.d, label %_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selectorNtB2J_14ColumnSelector19select_from_columns0EB2T_.exit, !dbg !91640, !prof !2152

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #59, !dbg !91641, !noalias !91626, !inline_history !91620
  unreachable

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.o, !dbg !91642

bb.f:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(160) %i.b) #61
          to label %bb.e unwind label %bb.g, !dbg !91643, !noalias !91626, !inline_history !91620

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #60, !dbg !91642, !noalias !91626, !inline_history !91620
  unreachable, !dbg !91642

_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selectorNtB2J_14ColumnSelector19select_from_columns0EB2T_.exit: ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !91638
  store i8 %.sroa.0.0.copyload.i, ptr %0, align 16, !dbg !91644, !alias.scope !91625
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !91644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(159) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(159) %.sroa.5.0..sroa_idx.i, i64 159, i1 false), !dbg !91644, !noalias !91627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !91645, !noalias !91626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !91643, !noalias !91626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !91646, !noalias !91626
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selectorNtB2Q_14ColumnSelector19select_from_columns0EB30_.exit, !dbg !91647

bb.h:                                             ; preds = %bb.a
  call fastcc void @_RNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selectorNtB4_14ColumnSelector19select_from_columns0Be_(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d), !dbg !91648
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selectorNtB2Q_14ColumnSelector19select_from_columns0EB30_.exit, !dbg !91647

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selectorNtB2Q_14ColumnSelector19select_from_columns0EB30_.exit: ; preds = %_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selectorNtB2J_14ColumnSelector19select_from_columns0EB2T_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !91649
  ret void, !dbg !91650
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components4sizeNtB5_20TargetSinkMorselSize16calc_next_splits(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #0 !dbg !91651 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = add i32 %5, %3, !dbg !91686              ; 3 uses
  %i.d = icmp ult i32 %i.c, %3, !dbg !91686
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !91687, !prof !2152

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @llvm.uadd.sat.i64(i64 %2, i64 %4), !dbg !91688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !91689
  call fastcc void @_RNvMs0_NtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components4sizeNtB5_20TargetSinkMorselSize21build_part_sizes_iter(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.e, i32 noundef %i.c), !dbg !91690
  %.sroa.05.0.copyload = load i64, ptr %i.b, align 8, !dbg !91691 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !91691
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !91691 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !91691
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !91691 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !91692
  %i.g = load i8, ptr %i.f, align 8, !dbg !91692, !range !2486, !noundef !2145 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !91693
  %i.h = icmp eq i32 %5, 0, !dbg !91694
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !2486 ; 2 uses
  br i1 %i.h, label %._crit_edge, label %bb.d, !dbg !91694

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @553) #64, !dbg !91695
  unreachable, !dbg !91695

._crit_edge:                                      ; preds = %bb.b, %bb.f, %bb.g, %bb.e, %bb.h
  %.sroa.025.0 = phi i8 [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ %i.y, %bb.h ], [ %i.g, %bb.e ], [ %i.g, %bb.b ], !dbg !91696
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload, %bb.f ], [ %.sroa.10.0.copyload, %bb.g ], [ %.sroa.324.0.copyload, %bb.h ], [ %.sroa.10.0.copyload, %bb.e ], [ %.sroa.10.0.copyload, %bb.b ], !dbg !91696 ; 2 uses
  %.sroa.8.0 = phi i64 [ 1, %bb.f ], [ 1, %bb.g ], [ %.sroa.2.0.copyload, %bb.h ], [ %.sroa.8.0.copyload, %bb.e ], [ %.sroa.8.0.copyload, %bb.b ], !dbg !91696 ; 3 uses
  %.sroa.05.0 = phi i64 [ %.sroa.05.0.copyload, %bb.f ], [ %.sroa.05.0.copyload, %bb.g ], [ %.sroa.023.0.copyload, %bb.h ], [ %.sroa.05.0.copyload, %bb.e ], [ %.sroa.05.0.copyload, %bb.b ], !dbg !91696 ; 5 uses
  %.sroa.04.0 = phi i8 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.w, %bb.h ], [ 0, %bb.e ], [ 0, %bb.b ], !dbg !91697 ; 3 uses
  %i.i = icmp ne i8 %.sroa.025.0, 0, !dbg !91698
  %i.j = icmp ugt i64 %.sroa.8.0, 1
  %or.cond3.not46 = select i1 %i.i, i1 true, i1 %i.j, !dbg !91698
  %i.k = trunc nuw i8 %.pre to i1
  %or.cond44 = select i1 %or.cond3.not46, i1 true, i1 %i.k, !dbg !91698
  %i.l = icmp slt i64 %.sroa.05.0, 0
  %or.cond47 = select i1 %or.cond44, i1 true, i1 %i.l, !dbg !91698, !prof !91674
  br i1 %or.cond47, label %.thread, label %bb.i, !dbg !91698, !prof !91675

bb.d:                                             ; preds = %bb.b
  %i.m = trunc nuw i8 %.pre to i1, !dbg !91699
  %i.n = icmp eq i8 %i.g, 0
  %or.cond41 = and i1 %i.n, %i.m, !dbg !91676
  br i1 %or.cond41, label %.thread, label %bb.e, !dbg !91676

bb.e:                                             ; preds = %bb.d
  switch i64 %.sroa.8.0.copyload, label %bb.h [
    i64 0, label %._crit_edge
    i64 1, label %bb.f
  ], !dbg !91700

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ule i32 %5, %3, !dbg !91701
  %i.p = icmp eq i32 %3, 0
  %or.cond = or i1 %i.p, %i.o, !dbg !91701
  br i1 %or.cond, label %._crit_edge, label %bb.g, !dbg !91701

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !91702
  %i.r = load i32, ptr %i.q, align 8, !dbg !91702, !range !2388, !noundef !2145
  %i.s = udiv i32 %5, %3, !dbg !91703
  %i.t = udiv i32 %i.r, %i.c, !dbg !91702
  %i.u = icmp ugt i32 %i.s, %i.t, !dbg !91703
  br i1 %i.u, label %bb.h, label %._crit_edge, !dbg !91700

bb.h:                                             ; preds = %bb.e, %bb.g
  %i.v = icmp ne i32 %3, 0, !dbg !91704
  %i.w = zext i1 %i.v to i8, !dbg !91704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !91705
  call fastcc void @_RNvMs0_NtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components4sizeNtB5_20TargetSinkMorselSize21build_part_sizes_iter(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %4, i32 noundef %5), !dbg !91706
  %.sroa.023.0.copyload = load i64, ptr %i.a, align 8, !dbg !91707
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !91707
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !91707
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !91707
  %.sroa.324.0.copyload = load i64, ptr %.sroa.324.0..sroa_idx, align 8, !dbg !91707
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !91708
  %i.y = load i8, ptr %i.x, align 8, !dbg !91708, !range !2486, !noundef !2145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !91709
  br label %._crit_edge, !dbg !91710

.thread:                                          ; preds = %bb.d, %bb.i, %._crit_edge, %bb.j
  %.sroa.04.058 = phi i8 [ %.sroa.04.0, %._crit_edge ], [ %.sroa.04.0, %bb.j ], [ %.sroa.04.0, %bb.i ], [ 0, %bb.d ]
  %.sroa.10.1 = phi i64 [ %.sroa.10.0, %._crit_edge ], [ 0, %bb.j ], [ %.sroa.10.0, %bb.i ], [ %.sroa.10.0.copyload, %bb.d ], !dbg !91696
  %.sroa.8.1 = phi i64 [ %.sroa.8.0, %._crit_edge ], [ 0, %bb.j ], [ %.sroa.8.0, %bb.i ], [ %.sroa.8.0.copyload, %bb.d ], !dbg !91696
  %.sroa.05.1 = phi i64 [ %.sroa.05.0, %._crit_edge ], [ 0, %bb.j ], [ %.sroa.05.0, %bb.i ], [ %.sroa.05.0.copyload, %bb.d ], !dbg !91696
  store i8 %.sroa.04.058, ptr %0, align 8, !dbg !91711
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91711
  store i64 %.sroa.05.1, ptr %i.z, align 8, !dbg !91711
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !91711
  store i64 %.sroa.8.1, ptr %.sroa.431.0..sroa_idx, align 8, !dbg !91711
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !91711
  store i64 %.sroa.10.1, ptr %.sroa.532.0..sroa_idx, align 8, !dbg !91711
  ret void, !dbg !91712

bb.i:                                             ; preds = %._crit_edge
  %i.aa = shl nuw i64 %.sroa.05.0, 1, !dbg !91713
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !91714
  %i.ac = load i32, ptr %i.ab, align 8, !dbg !91714, !range !2388, !noundef !2145
  %i.ad = zext i32 %i.ac to i64, !dbg !91715      ; 2 uses
  %i.ae = sub nsw i64 %i.aa, %i.ad, !dbg !91716
  %.sroa.033.0 = tail call i64 @llvm.abs.i64(i64 %i.ae, i1 true), !dbg !91716
  %i.af = sub nsw i64 %.sroa.05.0, %i.ad, !dbg !91717
  %.sroa.034.0 = tail call i64 @llvm.abs.i64(i64 %i.af, i1 true), !dbg !91717
  %i.ag = icmp samesign ult i64 %.sroa.033.0, %.sroa.034.0, !dbg !91684
  br i1 %i.ag, label %bb.j, label %.thread, !dbg !91718

bb.j:                                             ; preds = %bb.i
  br label %.thread, !dbg !91719
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components4sizeNtB5_20TargetSinkMorselSize21build_part_sizes_iter(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !91720 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = icmp eq i32 %3, 0, !dbg !91749
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !91749

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 25, i1 false), !dbg !91750
  br label %bb.d, !dbg !91751

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !91752
  %i.e = load i8, ptr %i.d, align 8, !dbg !91752, !range !2486, !noundef !2145
  %i.f = trunc nuw i8 %i.e to i1, !dbg !91752     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !91753
  %i.h = load i32, ptr %i.g, align 8, !dbg !91753, !range !2388, !noundef !2145 ; 4 uses
  br i1 %i.f, label %bb.e, label %bb.g, !dbg !91731

bb.d:                                             ; preds = %bb.p, %bb.s, %bb.b
  ret void, !dbg !91751

bb.e:                                             ; preds = %bb.c
  %i.i = udiv i32 %3, %i.h, !dbg !91754
  %i.j = tail call i32 @llvm.umax.i32(i32 %i.i, i32 1), !dbg !91755
  %.sroa.0.0.i = zext i32 %i.j to i64, !dbg !91755
  br label %bb.f, !dbg !91756

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i, %bb.e ], [ %i.o, %bb.g ], !dbg !91753 ; 3 uses
  %i.k = load i64, ptr %1, align 8, !dbg !91757, !range !2843, !noundef !2145 ; 2 uses
  %i.l = icmp eq i64 %i.k, -1, !dbg !91757
  br i1 %i.l, label %bb.h, label %bb.i, !dbg !91757

bb.g:                                             ; preds = %bb.c
  %i.m = zext i32 %i.h to i64, !dbg !91758
  %i.n = zext i32 %3 to i64, !dbg !91759
  %i.o = tail call noundef i64 @_RNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts(i64 noundef %i.n, i64 noundef %i.m), !dbg !91760
  br label %bb.f, !dbg !91756

bb.h:                                             ; preds = %bb.f, %bb.i
  %.sroa.06.0 = phi i64 [ 0, %bb.f ], [ %i.t, %bb.i ], !dbg !91761 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.f ], [ %i.u, %bb.i ], !dbg !91762 ; 3 uses
  %.sroa.0.0.i14 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.06.0, i64 %.sroa.09.0), !dbg !91763
  %i.p = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.01.0, i64 %.sroa.0.0.i14), !dbg !91764
  switch i8 %i.p, label %bb.j [
    i8 -1, label %bb.l
    i8 0, label %bb.k
    i8 1, label %bb.m
  ], !dbg !91765

bb.i:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !91766
  %i.r = load i32, ptr %i.q, align 4, !dbg !91766, !range !2388, !noundef !2145
  %i.s = udiv i32 %3, %i.r, !dbg !91767
  %i.t = zext i32 %i.s to i64, !dbg !91768
  %i.u = tail call noundef i64 @_RNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts(i64 noundef %2, i64 noundef %i.k), !dbg !91769
  br label %bb.h, !dbg !91770

bb.j:                                             ; preds = %bb.h
  unreachable, !dbg !91771

bb.k:                                             ; preds = %bb.h
  br i1 %i.f, label %.critedge, label %bb.l, !dbg !91765

bb.l:                                             ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !91772
  %i.v = icmp ult i64 %.sroa.09.0, %.sroa.06.0, !dbg !91773
  br i1 %i.v, label %bb.o, label %bb.n, !dbg !91773

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !91774
  br i1 %i.f, label %bb.q, label %bb.r, !dbg !91774

bb.n:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !91775
  %i.x = load i32, ptr %i.w, align 4, !dbg !91775, !range !2388, !noundef !2145
  %i.y = zext i32 %i.x to i64, !dbg !91776
  store i64 %i.y, ptr %i.a, align 8, !dbg !91777
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !91777
  store i64 %.sroa.06.0, ptr %i.z, align 8, !dbg !91777
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !91777
  store i64 -1, ptr %i.aa, align 8, !dbg !91777
  br label %bb.p, !dbg !91772

bb.o:                                             ; preds = %bb.l
  %i.ab = zext i32 %3 to i64, !dbg !91778
  call void @_RNvMNtCs2mZqlW55729_12polars_utils17calc_morsel_splitNtB2_13PartSizesIter19new_from_total_size(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ab, i64 noundef %.sroa.09.0), !dbg !91779
  br label %bb.p, !dbg !91772

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !91780
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !91780
  store i8 1, ptr %i.ac, align 8, !dbg !91780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !91781
  br label %bb.d, !dbg !91782

.critedge:                                        ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !91774
  br label %bb.q, !dbg !91774

bb.q:                                             ; preds = %.critedge, %bb.m
  %i.ad = icmp ult i32 %3, %i.h, !dbg !91783
  br i1 %i.ad, label %bb.u, label %bb.t, !dbg !91783

bb.r:                                             ; preds = %bb.m
  %i.ae = zext i32 %3 to i64, !dbg !91784
  call void @_RNvMNtCs2mZqlW55729_12polars_utils17calc_morsel_splitNtB2_13PartSizesIter19new_from_total_size(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ae, i64 noundef %.sroa.01.0), !dbg !91785
  br label %bb.s, !dbg !91786

bb.s:                                             ; preds = %bb.t, %bb.u, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !91787
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !91787
  store i8 0, ptr %i.af, align 8, !dbg !91787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !91788
  br label %bb.d, !dbg !91782

bb.t:                                             ; preds = %bb.q
  %i.ag = zext i32 %i.h to i64, !dbg !91789
  store i64 %i.ag, ptr %i.b, align 8, !dbg !91790
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !91790
  store i64 %.sroa.01.0, ptr %i.ah, align 8, !dbg !91790
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !91790
  store i64 -1, ptr %i.ai, align 8, !dbg !91790
  br label %bb.s, !dbg !91791

bb.u:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !dbg !91792
  br label %bb.s, !dbg !91748
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE15bulk_steal_leftCs2g09Ig8GZd6_13polars_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !91793 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !91985
  %i.d = load ptr, ptr %i.c, align 8, !dbg !91985, !nonnull !2145, !noundef !2145 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 626, !dbg !91986 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !dbg !91986, !noundef !2145
  %i.g = zext i16 %i.f to i64, !dbg !91987        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !91988
  %i.i = load ptr, ptr %i.h, align 8, !dbg !91988, !nonnull !2145, !noundef !2145 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 626, !dbg !91989 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !dbg !91989, !noundef !2145
  %i.l = zext i16 %i.k to i64, !dbg !91990        ; 4 uses
  %i.m = add nuw nsw i64 %1, %i.l, !dbg !91991    ; 3 uses
  %i.n = icmp samesign ult i64 %i.m, 12, !dbg !91991
  br i1 %i.n, label %bb.c, label %bb.b, !dbg !91991, !prof !2337

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @554, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @555) #64, !dbg !91992
  unreachable, !dbg !91992

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.g, !dbg !91993
  br i1 %.not, label %bb.d, label %bb.e, !dbg !91993, !prof !2152

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @556, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @557) #64, !dbg !91994
  unreachable, !dbg !91994

bb.e:                                             ; preds = %bb.c
  %i.o = sub nuw nsw i64 %i.g, %1, !dbg !91995    ; 4 uses
  %i.p = trunc nuw i64 %i.o to i16, !dbg !91996
  store i16 %i.p, ptr %i.e, align 2, !dbg !91996
  %i.q = trunc nuw nsw i64 %i.m to i16, !dbg !91997
  store i16 %i.q, ptr %i.j, align 2, !dbg !91997
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 536, !dbg !91998 ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %1, !dbg !91999
  %i.t = shl nuw nsw i64 %i.l, 3, !dbg !92000     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.r, i64 %i.t, i1 false), !dbg !92000, !alias.scope !91919
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %1, !dbg !92001
  %i.v = mul nuw nsw i64 %i.l, 48, !dbg !92002
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.i, i64 %i.v, i1 false), !dbg !92002, !alias.scope !91920
  %i.w = add nuw nsw i64 %i.o, 1, !dbg !92003     ; 4 uses
  %i.x = sub nuw nsw i64 %i.g, %i.w, !dbg !92004  ; 5 uses
  %i.y = add nsw i64 %1, -1, !dbg !92005
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91926), !dbg !92006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91927), !dbg !92006
  %i.z = icmp eq i64 %i.x, %i.y, !dbg !92007
  br i1 %i.z, label %_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node13move_to_sliceNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream.exit, label %bb.f, !dbg !92007, !prof !2337

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #64, !dbg !92008, !noalias !91928
  unreachable, !dbg !92008

_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node13move_to_sliceNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 536, !dbg !92009 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.w, !dbg !92010
  %i.ac = shl nuw nsw i64 %i.x, 3, !dbg !92011
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull readonly align 8 %i.ab, i64 %i.ac, i1 false), !dbg !92011, !alias.scope !91928
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.w, !dbg !92012
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCs2g09Ig8GZd6_13polars_stream10expression10StreamExprEE9drop_slowB1B_
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCs2g09Ig8GZd6_13polars_stream10expression10StreamExprEE9drop_slowB1B_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #49

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcShE9drop_slowCsbm5zPlkZccl_4pyo3(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #49

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSjE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #49

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSxE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #49

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #49

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCscgRAwXFJnXP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCscgRAwXFJnXP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB13_B1T_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB13_B1T_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_8DebugMap7entriesRmRNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4ItermB15_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxTNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selector14ColumnSelectorNtNtB18_9transform15ColumnTransformEENtB6_5Debug3fmtB1i_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtNtB8_3num7nonzero7NonZeroyENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCscgRAwXFJnXP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4asof11AsOfOptionsE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxTINtNtB6_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB11_5field5FieldEEE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjmENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtCsgjwxzEoLG5s_12polars_error9ErrStringNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsV_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionNtCsgjwxzEoLG5s_12polars_error9ErrStringENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtNtCscgRAwXFJnXP_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapdEENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtNtCscgRAwXFJnXP_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E10init_frontCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE10init_frontCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB2_11OwnedObjectNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCscgRAwXFJnXP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components15column_selector14ColumnSelectorINtNtNtBa_5slice4iter4IterB14_EEB1g_(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtBN_5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionnEENtNtBN_5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtBN_5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtBN_5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXNtNtNtCsbm5zPlkZccl_4pyo311conversions3std6optionINtNtCscgRAwXFJnXP_4core6option6OptionuENtNtB8_10conversion12IntoPyObject13into_pyobjectCs2g09Ig8GZd6_13polars_stream(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXNtNtNtCslpwjCj2YNBy_9polars_io5utils4file14async_writableNtB2_16AsyncDynWritableNtNtNtCskmDBXs7hs3c_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #53

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #53

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #53

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #53

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #53

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #53

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #53

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #53

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+f16c,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #23 = { nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { inlinehint nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #41 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #44 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #47 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #49 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #52 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #53 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #54 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #55 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #57 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #59 = { noreturn }
attributes #60 = { cold noreturn nounwind }
attributes #61 = { cold }
attributes #62 = { noinline }
attributes #63 = { nounwind }
attributes #64 = { noinline noreturn }
attributes #65 = { inlinehint }

!llvm.module.flags = !{!2137, !2138, !2139, !2140}
!llvm.ident = !{!2141}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !2142, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<core::result::Result<polars_stream::physical_plan::PhysStream, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB1s_", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!2 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<polars_stream::physical_plan::PhysStream, polars_error::PolarsError>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB16_", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!3 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<core::result::Result<polars_stream::graph::GraphNodeKey, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB1s_", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!4 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<polars_stream::graph::GraphNodeKey, polars_error::PolarsError>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB16_", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!5 = distinct !DISubprogram(name: "offset_from_unsigned<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh20offset_from_unsignedCs2g09Ig8GZd6_13polars_stream", scope: !2184, file: !2182, line: 701, type: !2146, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!6 = distinct !DILexicalBlock(scope: !5, file: !2182, line: 726, column: 9)
!7 = distinct !DISubprogram(name: "offset_from_unsigned<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh20offset_from_unsignedCs2g09Ig8GZd6_13polars_stream", scope: !2165, file: !2163, line: 882, type: !2146, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!8 = distinct !DISubprogram(name: "offset_from_unsigned<u8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhE20offset_from_unsignedCs2g09Ig8GZd6_13polars_stream", scope: !2185, file: !2172, line: 948, type: !2146, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!9 = distinct !DISubprogram(name: "len<u8>", linkageName: "_RNvXs2I_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs2g09Ig8GZd6_13polars_stream", scope: !2186, file: !2175, line: 142, type: !2146, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!10 = distinct !DILexicalBlock(scope: !9, file: !2175, line: 25, column: 86)
!11 = distinct !DILexicalBlock(scope: !10, file: !2175, line: 33, column: 13)
!12 = distinct !DISubprogram(name: "eq<u8>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhENtNtB9_3cmp9PartialEq2eqCs2g09Ig8GZd6_13polars_stream", scope: !2174, file: !2172, line: 1716, type: !2146, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!13 = distinct !DISubprogram(name: "next_back<u8>", linkageName: "_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2g09Ig8GZd6_13polars_stream", scope: !2199, file: !2175, line: 438, type: !2146, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!14 = distinct !DILexicalBlock(scope: !13, file: !2175, line: 25, column: 86)
!15 = distinct !DILexicalBlock(scope: !14, file: !2175, line: 33, column: 13)
!16 = distinct !DISubprogram(name: "next_code_point_reverse<core::slice::iter::Iter<u8>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2g09Ig8GZd6_13polars_stream", scope: !2178, file: !2177, line: 78, type: !2146, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!17 = distinct !DISubprogram(name: "offset<u8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhE6offsetCs2g09Ig8GZd6_13polars_stream", scope: !2185, file: !2172, line: 575, type: !2146, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!18 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhE3subCs2g09Ig8GZd6_13polars_stream", scope: !2185, file: !2172, line: 728, type: !2146, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!19 = distinct !DISubprogram(name: "pre_dec_end<u8>", linkageName: "_RNvMs2H_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhE11pre_dec_endCs2g09Ig8GZd6_13polars_stream", scope: !2169, file: !2175, line: 119, type: !2146, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!20 = distinct !DILexicalBlock(scope: !19, file: !2175, line: 11, column: 90)
!21 = distinct !DILexicalBlock(scope: !20, file: !2175, line: 21, column: 13)
!22 = distinct !DISubprogram(name: "next_back_unchecked<u8>", linkageName: "_RNvMs2H_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhE19next_back_uncheckedCs2g09Ig8GZd6_13polars_stream", scope: !2169, file: !2175, line: 81, type: !2146, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!23 = distinct !DILexicalBlock(scope: !16, file: !2177, line: 83, column: 5)
!24 = distinct !DILexicalBlock(scope: !23, file: !2177, line: 90, column: 5)
!25 = distinct !DISubprogram(name: "utf8_first_byte", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3str11validations15utf8_first_byte", scope: !2178, file: !2177, line: 10, type: !2146, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!26 = distinct !DILexicalBlock(scope: !24, file: !2177, line: 93, column: 5)
!27 = distinct !DISubprogram(name: "utf8_is_cont_byte", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3str11validations17utf8_is_cont_byte", scope: !2178, file: !2177, line: 23, type: !2146, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!28 = distinct !DILexicalBlock(scope: !16, file: !2177, line: 84, column: 9)
!29 = distinct !DILexicalBlock(scope: !26, file: !2177, line: 98, column: 9)
!30 = distinct !DISubprogram(name: "utf8_acc_cont_byte", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3str11validations18utf8_acc_cont_byte", scope: !2178, file: !2177, line: 16, type: !2146, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!31 = distinct !DILexicalBlock(scope: !29, file: !2177, line: 103, column: 13)
!32 = distinct !DISubprogram(name: "select_unpredictable<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core4hint20select_unpredictablejECs2g09Ig8GZd6_13polars_stream", scope: !2218, file: !2217, line: 829, type: !2146, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!33 = distinct !DILexicalBlock(scope: !32, file: !2217, line: 835, column: 5)
!34 = distinct !DILexicalBlock(scope: !33, file: !2217, line: 836, column: 5)
!35 = distinct !DILexicalBlock(scope: !34, file: !2217, line: 851, column: 5)
!36 = distinct !DILexicalBlock(scope: !35, file: !2217, line: 852, column: 5)
!37 = distinct !DILexicalBlock(scope: !36, file: !2217, line: 862, column: 9)
!38 = distinct !DILexicalBlock(scope: !37, file: !2217, line: 863, column: 9)
!39 = distinct !DILexicalBlock(scope: !38, file: !2217, line: 869, column: 9)
!40 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subjjECs2g09Ig8GZd6_13polars_stream", scope: !2246, file: !2244, line: 3950, type: !2146, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!41 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !2247, file: !2244, line: 3191, type: !2146, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!42 = distinct !DISubprogram(name: "drop<polars_plan::dsl::file_scan::default_values::IcebergDefaultFieldValues, alloc::alloc::Global>", linkageName: "_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values25IcebergDefaultFieldValuesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream", scope: !2251, file: !2248, line: 2810, type: !2146, scopeLine: 2810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!43 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<polars_plan::dsl::file_scan::default_values::IcebergDefaultFieldValues, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values25IcebergDefaultFieldValuesEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!44 = distinct !DISubprogram(name: "drop_in_place<polars_plan::dsl::file_scan::default_values::DefaultFieldValues>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!45 = distinct !DISubprogram(name: "fence", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4sync6atomic5fence", scope: !2246, file: !2244, line: 4383, type: !2146, scopeLine: 4383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!46 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !2268, file: !2266, line: 609, type: !2146, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!47 = distinct !DISubprogram(name: "is_heap_allocated", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr17is_heap_allocated", scope: !2268, file: !2266, line: 446, type: !2146, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!48 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !2271, file: !2266, line: 776, type: !2146, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!49 = distinct !DISubprogram(name: "drop_in_place<compact_str::repr::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!50 = distinct !DISubprogram(name: "drop_in_place<compact_str::CompactString>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!51 = distinct !DISubprogram(name: "drop_in_place<polars_utils::pl_str::PlSmallStr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!52 = distinct !DISubprogram(name: "push_mut<polars_plan::plans::expr_ir::ExprIR, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE8push_mutCs2g09Ig8GZd6_13polars_stream", scope: !2274, file: !2272, line: 1035, type: !2198, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!53 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCs2g09Ig8GZd6_13polars_stream", scope: !2278, file: !2276, line: 618, type: !2146, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!54 = distinct !DISubprogram(name: "capacity<polars_plan::plans::expr_ir::ExprIR, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE8capacityCs2g09Ig8GZd6_13polars_stream", scope: !2279, file: !2276, line: 308, type: !2146, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!55 = distinct !DILexicalBlock(scope: !52, file: !2272, line: 1037, column: 9)
!56 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, polars_plan::plans::expr_ir::ExprIR>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream", scope: !2278, file: !2276, line: 613, type: !2146, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!57 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, polars_plan::plans::expr_ir::ExprIR>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream", scope: !2278, file: !2276, line: 608, type: !2146, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!58 = distinct !DISubprogram(name: "ptr<polars_plan::plans::expr_ir::ExprIR, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE3ptrCs2g09Ig8GZd6_13polars_stream", scope: !2279, file: !2276, line: 295, type: !2146, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!59 = distinct !DISubprogram(name: "as_mut_ptr<polars_plan::plans::expr_ir::ExprIR, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE10as_mut_ptrCs2g09Ig8GZd6_13polars_stream", scope: !2274, file: !2272, line: 2023, type: !2146, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!60 = distinct !DISubprogram(name: "add<polars_plan::plans::expr_ir::ExprIR>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIR3addCs2g09Ig8GZd6_13polars_stream", scope: !2165, file: !2163, line: 927, type: !2146, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!61 = distinct !DILexicalBlock(scope: !55, file: !2272, line: 1044, column: 13)
!62 = distinct !DISubprogram(name: "or_insert_with<u32, polars_utils::pl_str::PlSmallStr, fn() -> polars_utils::pl_str::PlSmallStr>", linkageName: "_RINvMNtNtCse4dvU5uQ85g_8indexmap3map5entryINtB3_5EntrymNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE14or_insert_withNvBT_18unique_column_nameECs2g09Ig8GZd6_13polars_stream", scope: !2254, file: !2252, line: 51, type: !2146, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!63 = distinct !DILexicalBlock(scope: !62, file: !2252, line: 57, column: 13)
!64 = distinct !DISubprogram(name: "call_once<fn() -> polars_utils::pl_str::PlSmallStr, ()>", linkageName: "_RNvYNvNtCs2mZqlW55729_12polars_utils6pl_str18unique_column_nameINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceCs2g09Ig8GZd6_13polars_stream", scope: !2287, file: !2194, line: 250, type: !2146, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!65 = distinct !DISubprogram(name: "insert<u32, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvMs1_NtNtCse4dvU5uQ85g_8indexmap5inner5entryINtB5_11VacantEntrymNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE6insertCs2g09Ig8GZd6_13polars_stream", scope: !2282, file: !2280, line: 281, type: !2146, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!66 = distinct !DILexicalBlock(scope: !65, file: !2280, line: 282, column: 9)
!67 = distinct !DISubprogram(name: "as_mut_slice<indexmap::Bucket<u32, polars_utils::pl_str::PlSmallStr>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketmNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE12as_mut_sliceCs2g09Ig8GZd6_13polars_stream", scope: !2274, file: !2272, line: 1860, type: !2146, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!68 = distinct !DILexicalBlock(scope: !62, file: !2252, line: 56, column: 13)
!69 = distinct !DISubprogram(name: "into_mut<u32, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvMs_NtNtCse4dvU5uQ85g_8indexmap5inner5entryINtB4_13OccupiedEntrymNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8into_mutCs2g09Ig8GZd6_13polars_stream", scope: !2283, file: !2280, line: 102, type: !2146, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!70 = distinct !DISubprogram(name: "into_bucket<u32, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvMs_NtNtCse4dvU5uQ85g_8indexmap5inner5entryINtB4_13OccupiedEntrymNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE11into_bucketCs2g09Ig8GZd6_13polars_stream", scope: !2283, file: !2280, line: 68, type: !2146, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!71 = distinct !DISubprogram(name: "index_mut<indexmap::Bucket<u32, polars_utils::pl_str::PlSmallStr>, usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketmNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutCs2g09Ig8GZd6_13polars_stream", scope: !2284, file: !2272, line: 3838, type: !2146, scopeLine: 3838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!72 = distinct !DISubprogram(name: "deref_mut<indexmap::Bucket<u32, polars_utils::pl_str::PlSmallStr>, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketmNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCs2g09Ig8GZd6_13polars_stream", scope: !2285, file: !2272, line: 3763, type: !2146, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!73 = distinct !DISubprogram(name: "index_mut<indexmap::Bucket<u32, polars_utils::pl_str::PlSmallStr>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtCse4dvU5uQ85g_8indexmap6BucketmNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE9index_mutCs2g09Ig8GZd6_13polars_stream", scope: !2216, file: !2214, line: 276, type: !2146, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!74 = distinct !DISubprogram(name: "index_mut<indexmap::Bucket<u32, polars_utils::pl_str::PlSmallStr>, usize>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSINtCse4dvU5uQ85g_8indexmap6BucketmNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtB8_3ops5index8IndexMutjE9index_mutCs2g09Ig8GZd6_13polars_stream", scope: !2286, file: !2214, line: 30, type: !2146, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!75 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, indexmap::Bucket<u32, polars_utils::pl_str::PlSmallStr>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtCse4dvU5uQ85g_8indexmap6BucketmNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2g09Ig8GZd6_13polars_stream", scope: !2278, file: !2276, line: 613, type: !2146, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!76 = distinct !DISubprogram(name: "as_mut_ptr<indexmap::Bucket<u32, polars_utils::pl_str::PlSmallStr>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketmNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE10as_mut_ptrCs2g09Ig8GZd6_13polars_stream", scope: !2274, file: !2272, line: 2023, type: !2146, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!77 = distinct !DISubprogram(name: "ptr<indexmap::Bucket<u32, polars_utils::pl_str::PlSmallStr>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketmNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE3ptrCs2g09Ig8GZd6_13polars_stream", scope: !2279, file: !2276, line: 295, type: !2146, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!78 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, indexmap::Bucket<u32, polars_utils::pl_str::PlSmallStr>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtCse4dvU5uQ85g_8indexmap6BucketmNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2g09Ig8GZd6_13polars_stream", scope: !2278, file: !2276, line: 608, type: !2146, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!79 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCs2g09Ig8GZd6_13polars_stream", scope: !2278, file: !2276, line: 618, type: !2146, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!80 = distinct !DISubprogram(name: "capacity<polars_plan::plans::aexpr::AExpr, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE8capacityCs2g09Ig8GZd6_13polars_stream", scope: !2279, file: !2276, line: 308, type: !2146, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!81 = distinct !DISubprogram(name: "push_mut<polars_plan::plans::aexpr::AExpr, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE8push_mutCs2g09Ig8GZd6_13polars_stream", scope: !2274, file: !2272, line: 1035, type: !2198, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!82 = distinct !DILexicalBlock(scope: !81, file: !2272, line: 1037, column: 9)
!83 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, polars_plan::plans::aexpr::AExpr>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprECs2g09Ig8GZd6_13polars_stream", scope: !2278, file: !2276, line: 613, type: !2146, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!84 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, polars_plan::plans::aexpr::AExpr>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprECs2g09Ig8GZd6_13polars_stream", scope: !2278, file: !2276, line: 608, type: !2146, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!85 = distinct !DISubprogram(name: "ptr<polars_plan::plans::aexpr::AExpr, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE3ptrCs2g09Ig8GZd6_13polars_stream", scope: !2279, file: !2276, line: 295, type: !2146, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!86 = distinct !DISubprogram(name: "as_mut_ptr<polars_plan::plans::aexpr::AExpr, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE10as_mut_ptrCs2g09Ig8GZd6_13polars_stream", scope: !2274, file: !2272, line: 2023, type: !2146, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!87 = distinct !DISubprogram(name: "add<polars_plan::plans::aexpr::AExpr>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExpr3addCs2g09Ig8GZd6_13polars_stream", scope: !2165, file: !2163, line: 927, type: !2146, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!88 = distinct !DILexicalBlock(scope: !82, file: !2272, line: 1044, column: 13)
!89 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<polars_utils::arena::Node, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!90 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<polars_utils::arena::Node, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!91 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<(), polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!92 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<()>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleuEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!93 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<polars_stream::nodes::io_sources::ipc::record_batch_data_fetch::RecordBatchData, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc23record_batch_data_fetch15RecordBatchDataNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB29_", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!94 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<polars_buffer::buffer::Buffer<u8>, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!95 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<polars_stream::nodes::io_sources::parquet::row_group_data_fetch::RowGroupData, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet20row_group_data_fetch12RowGroupDataNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB29_", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!96 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<alloc::vec::Vec<alloc::sync::Arc<polars_io::file_cache::entry::FileCacheEntry, alloc::alloc::Global>, alloc::alloc::Global>, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB24_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!97 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<polars_ooc::spill_file::SpillFile>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleNtNtCskAlUH1kY1DR_10polars_ooc10spill_file9SpillFileEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!98 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<polars_io::utils::byte_source::DynByteSource, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!99 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<(polars_buffer::buffer::Buffer<u8>, core::option::Option<polars_buffer::buffer::Buffer<u8>>), polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEINtNtB4_6option6OptionB20_EENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!100 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<usize, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!101 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<hashbrown::map::HashMap<i64, alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!102 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<polars_io::utils::file::Writable, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtNtCslpwjCj2YNBy_9polars_io5utils4file8WritableNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!103 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<bool, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultbNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!104 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<(), std::io::error::Error>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!105 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<tokio::runtime::task::Notified<alloc::sync::Arc<tokio::runtime::scheduler::multi_thread::handle::Handle, alloc::alloc::Global>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCskmDBXs7hs3c_5tokio7runtime4task8NotifiedINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB17_9scheduler12multi_thread6handle6HandleEEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!106 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::Task<alloc::sync::Arc<tokio::runtime::scheduler::multi_thread::handle::Handle, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCskmDBXs7hs3c_5tokio7runtime4task4TaskINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!107 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::Notified<alloc::sync::Arc<tokio::runtime::scheduler::multi_thread::handle::Handle, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCskmDBXs7hs3c_5tokio7runtime4task8NotifiedINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!108 = distinct !DISubprogram(name: "add<core::mem::maybe_uninit::MaybeUninit<usize>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitjE3addCs2g09Ig8GZd6_13polars_stream", scope: !2165, file: !2163, line: 927, type: !2146, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!109 = distinct !DISubprogram(name: "slice_remove<usize>", linkageName: "_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node12slice_removejECs2g09Ig8GZd6_13polars_stream", scope: !2330, file: !2327, line: 1839, type: !2146, scopeLine: 1839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!110 = distinct !DILexicalBlock(scope: !109, file: !2327, line: 1841, column: 9)
!111 = distinct !DILexicalBlock(scope: !110, file: !2327, line: 1843, column: 9)
!112 = distinct !DISubprogram(name: "read<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readjECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 1682, type: !2146, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!113 = distinct !DISubprogram(name: "read<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPj4readCs2g09Ig8GZd6_13polars_stream", scope: !2184, file: !2182, line: 1166, type: !2146, scopeLine: 1166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!114 = distinct !DISubprogram(name: "assume_init_read<usize>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitjE16assume_init_readCs2g09Ig8GZd6_13polars_stream", scope: !2341, file: !2338, line: 793, type: !2146, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!115 = distinct !DILexicalBlock(scope: !111, file: !2327, line: 1844, column: 9)
!116 = distinct !DISubprogram(name: "copy<core::mem::maybe_uninit::MaybeUninit<usize>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4copyINtNtNtB4_3mem12maybe_uninit11MaybeUninitjEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 628, type: !2146, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!117 = distinct !DISubprogram(name: "copy_nonoverlapping<core::mem::maybe_uninit::MaybeUninit<usize>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingINtNtNtB4_3mem12maybe_uninit11MaybeUninitjEECs2g09Ig8GZd6_13polars_stream", scope: !2155, file: !2154, line: 531, type: !2146, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!118 = distinct !DISubprogram(name: "move_to_slice<usize>", linkageName: "_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node13move_to_slicejECs2g09Ig8GZd6_13polars_stream", scope: !2330, file: !2327, line: 1875, type: !2146, scopeLine: 1875, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!119 = distinct !DISubprogram(name: "add<core::mem::maybe_uninit::MaybeUninit<polars_core::frame::dataframe::DataFrame>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE3addCs2g09Ig8GZd6_13polars_stream", scope: !2165, file: !2163, line: 927, type: !2146, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!120 = distinct !DISubprogram(name: "slice_remove<polars_core::frame::dataframe::DataFrame>", linkageName: "_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node12slice_removeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream", scope: !2330, file: !2327, line: 1839, type: !2146, scopeLine: 1839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2145)
!121 = distinct !DILexicalBlock(scope: !120, file: !2327, line: 1841, column: 9)
!122 = distinct !DILexicalBlock(scope: !121, file: !2327, line: 1843, column: 9)
end_hunk_1

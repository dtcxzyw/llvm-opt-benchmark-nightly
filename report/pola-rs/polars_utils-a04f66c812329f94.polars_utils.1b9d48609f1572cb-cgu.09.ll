inline.NumInlined: 119
inline.NumDeleted: 64
begin_hunk_0_@_RNvMNtCs2mZqlW55729_12polars_utils11row_counterNtB2_10RowCounter16num_rows_idxsize:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !597, !noalias !593
  store ptr %i.h, ptr %i.a, align 8, !dbg !597, !noalias !593
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !597
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !597, !noalias !593
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !597
  store ptr @6, ptr %i.u, align 8, !dbg !597, !noalias !593
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !597
  store ptr @_RNvXs8_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !597, !noalias !593
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !597
  store ptr %i.i, ptr %i.v, align 8, !dbg !597, !noalias !593
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !597
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs2mZqlW55729_12polars_utils11row_counter10RowCounterNtB6_5Debug3fmtBA_, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !597, !noalias !593
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !597
  store ptr %i.c, ptr %i.w, align 8, !dbg !597, !noalias !593
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !597
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCs2mZqlW55729_12polars_utils, ptr %.sroa.414.0..sroa_idx.i, align 8, !dbg !597, !noalias !593
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @7, ptr noundef nonnull %i.a), !dbg !601, !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !607, !noalias !593
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !608
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !dbg !610
  store i64 2, ptr %i.g, align 8, !dbg !608, !alias.scope !614, !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !619, !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !dbg !621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !622
  br label %bb.f, !dbg !623

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !567
  br label %bb.g, !dbg !624

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void, !dbg !625
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCs2mZqlW55729_12polars_utils11row_counterNtB2_10RowCounter3add(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !626 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.d, align 8
  store i64 %2, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.e, align 8
  %i.f = add i64 %2, %0, !dbg !627                ; 3 uses
  %.not.i = icmp ult i64 %i.f, %0, !dbg !627      ; 2 uses
  %i.g = add i64 %3, %1, !dbg !633                ; 3 uses
  %i.h = icmp ult i64 %i.g, %1, !dbg !633
  br i1 %i.h, label %_RNCNvMNtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounter3add0B6_.exit, label %bb.b, !dbg !636, !prof !352

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 0, !dbg !642
  br i1 %i.i, label %bb.c, label %bb.d, !dbg !642

bb.c:                                             ; preds = %bb.b
  %..i = select i1 %.not.i, i64 -1, i64 %i.f, !dbg !644
  br label %bb.e, !dbg !644

bb.d:                                             ; preds = %bb.b
  br i1 %.not.i, label %_RNCNvMNtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounter3add0B6_.exit, label %bb.e, !dbg !647

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph = phi i64 [ %..i, %bb.c ], [ %i.f, %bb.d ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.4.0.ph, 0, !dbg !651
  %i.k = insertvalue { i64, i64 } %i.j, i64 %i.g, 1, !dbg !651
  ret { i64, i64 } %i.k, !dbg !651

_RNCNvMNtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounter3add0B6_.exit: ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !652
  store ptr %i.c, ptr %i.a, align 8, !dbg !652
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !652
  store ptr @_RNvXs_NtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounterNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !652
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !652
  store ptr %i.b, ptr %i.l, align 8, !dbg !652
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !652
  store ptr @_RNvXs_NtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounterNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !652
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19, !dbg !660
  unreachable, !dbg !660
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCs2mZqlW55729_12polars_utils11row_counterNtB2_10RowCounter3sub(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !661 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  store i64 %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %1, ptr %i.e, align 8
  store i64 %2, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.f, align 8
  %i.g = icmp ult i64 %0, %2, !dbg !662
  br i1 %i.g, label %bb.c, label %bb.b, !dbg !662, !prof !352

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, %3, !dbg !669
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !669, !prof !352

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !673
  store ptr %i.d, ptr %i.b, align 8, !dbg !673
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !673
  store ptr @_RNvXs_NtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounterNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !673
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !673
  store ptr %i.c, ptr %i.i, align 8, !dbg !673
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !673
  store ptr @_RNvXs_NtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounterNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !673
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19, !dbg !681
  unreachable, !dbg !681

bb.d:                                             ; preds = %bb.b
  %i.j = sub nuw i64 %0, %2, !dbg !682
  %i.k = sub nuw i64 %1, %3, !dbg !683
  %i.l = insertvalue { i64, i64 } poison, i64 %i.j, 0, !dbg !684
  %i.m = insertvalue { i64, i64 } %i.l, i64 %i.k, 1, !dbg !684
  ret { i64, i64 } %i.m, !dbg !684

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !685
  store ptr %i.d, ptr %i.a, align 8, !dbg !685
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !685
  store ptr @_RNvXs_NtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounterNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !685
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !685
  store ptr %i.c, ptr %i.n, align 8, !dbg !685
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !685
  store ptr @_RNvXs_NtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounterNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !685
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19, !dbg !691
  unreachable, !dbg !691
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2mZqlW55729_12polars_utils11row_counterNtB2_10RowCounter8num_rows(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !507 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = load i64, ptr %1, align 8, !dbg !692, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !693 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !693, !noundef !12 ; 2 uses
  %i.g = icmp ult i64 %i.d, %i.f, !dbg !694
  br i1 %i.g, label %bb.c, label %bb.b, !dbg !694

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %i.d, %i.f, !dbg !696
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !697
  store i64 %i.h, ptr %i.i, align 8, !dbg !697
  store i64 18, ptr %0, align 8, !dbg !697
  br label %bb.d, !dbg !700

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702), !dbg !701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !707, !noalias !708
  store ptr %i.e, ptr %i.a, align 8, !dbg !707, !noalias !708
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !707
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !707, !noalias !708
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !707
  store ptr %1, ptr %i.j, align 8, !dbg !707, !noalias !708
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !707
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !707, !noalias !708
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @10, ptr noundef nonnull %i.a), !dbg !710, !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !705, !noalias !708
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !714
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !dbg !716
  store i64 2, ptr %i.c, align 8, !dbg !714, !alias.scope !718, !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !725
  br label %bb.d, !dbg !725

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void, !dbg !726
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !727 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [72 x i8], align 8                ; 8 uses
  %i.h = alloca [72 x i8], align 8                ; 9 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 8 uses
  %i.l = alloca [72 x i8], align 8                ; 7 uses
  %i.m = alloca [72 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [4 x i8], align 4                 ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = tail call noundef zeroext i1 @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellbEE4withNvMs8_BX_BU_3getbECs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @20), !dbg !730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !733
  %.val = load ptr, ptr %1, align 8, !dbg !735    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !736, !noalias !742
  %i.t = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !746, !noalias !742
  store i32 %i.t, ptr %i.q, align 4, !dbg !746, !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !747, !noalias !752
  br i1 %i.s, label %bb.c, label %bb.b, !dbg !756

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !757, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !757, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !757, !noalias !752
  invoke void @_RINvMNtNtCsbm5zPlkZccl_4pyo35types6moduleNtB3_8PyModule6importReECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 6)
          to label %.noexc.i unwind label %bb.ay, !dbg !757, !noalias !742

.noexc.i:                                         ; preds = %bb.b
  %i.u = load i64, ptr %i.i, align 8, !dbg !758, !range !14, !noalias !752, !noundef !12
  %i.v = trunc nuw i64 %i.u to i1, !dbg !762
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !763
  %.sroa.072.0.copyload.i.i = load ptr, ptr %i.w, align 8, !dbg !763, !noalias !752 ; 5 uses
  br i1 %i.v, label %bb.d, label %bb.e, !dbg !762

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !764, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !764, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !764, !noalias !752
  invoke void @_RINvMNtNtCsbm5zPlkZccl_4pyo35types6moduleNtB3_8PyModule6importReECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 11)
          to label %.noexc3.i unwind label %bb.ay, !dbg !764, !noalias !742

.noexc3.i:                                        ; preds = %bb.c
  %i.x = load i64, ptr %i.m, align 8, !dbg !765, !range !14, !noalias !752, !noundef !12
  %i.y = trunc nuw i64 %i.x to i1, !dbg !767
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !768
  %.sroa.054.0.copyload.i.i = load ptr, ptr %i.z, align 8, !dbg !768, !noalias !752 ; 5 uses
  br i1 %i.y, label %bb.ai, label %bb.aj, !dbg !767

bb.d:                                             ; preds = %.noexc.i
  %.sroa.573.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !769
  %.sroa.26.sroa.0.0.copyload48 = load <56 x i8>, ptr %.sroa.573.0..sroa_idx.i.i, align 8, !dbg !769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !770, !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !771, !noalias !752
  br label %bb.ah, !dbg !772

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !770, !noalias !752
  store ptr %.sroa.072.0.copyload.i.i, ptr %i.j, align 8, !dbg !775, !noalias !752
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 5)
          to label %bb.g unwind label %bb.f, !dbg !778, !noalias !752

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag, !dbg !779

bb.g:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.k, align 8, !dbg !782, !range !14, !noalias !752, !noundef !12
  %i.ac = trunc nuw i64 %i.ab to i1, !dbg !786
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !787
  %.sroa.078.0.copyload.i.i = load ptr, ptr %i.ad, align 8, !dbg !787, !noalias !752 ; 6 uses
  br i1 %i.ac, label %bb.h, label %bb.j, !dbg !786

bb.h:                                             ; preds = %bb.g
  %.sroa.579.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !788
  %.sroa.26.sroa.0.0.copyload47 = load <56 x i8>, ptr %.sroa.579.0..sroa_idx.i.i, align 8, !dbg !788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !771, !noalias !752
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.072.0.copyload.i.i) #15, !dbg !789, !noalias !752
  br label %bb.ah, !dbg !795

bb.i:                                             ; preds = %bb.ad, %bb.y, %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !771, !noalias !752
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.072.0.copyload.i.i) #15, !dbg !796, !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !795, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !800, !noalias !752
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_Py_IncRef(ptr noundef nonnull %.val) #15, !dbg !802, !noalias !752
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance2PyNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noundef nonnull %.val, ptr noundef nonnull %.sroa.078.0.copyload.i.i)
          to label %bb.k unwind label %bb.i, !dbg !809, !noalias !752

bb.k:                                             ; preds = %bb.j
  %i.af = load i64, ptr %i.h, align 8, !dbg !800, !range !14, !noalias !752, !noundef !12
  %i.ag = trunc nuw i64 %i.af to i1, !dbg !816
  br i1 %i.ag, label %bb.l, label %bb.m, !dbg !816

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !817, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !817, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !817, !noalias !752
  invoke void @_RINvMNtNtCsbm5zPlkZccl_4pyo35types6moduleNtB3_8PyModule6importReECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 11)
          to label %bb.o unwind label %bb.n, !dbg !817, !noalias !752

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !818
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !818, !noalias !752, !nonnull !12, !noundef !12
  br label %bb.z, !dbg !819

bb.n:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.o:                                             ; preds = %bb.l
  %i.ak = load i64, ptr %i.e, align 8, !dbg !820, !range !14, !noalias !752, !noundef !12
  %i.al = trunc nuw i64 %i.ak to i1, !dbg !822
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !823
  %.sroa.084.0.copyload.i.i = load ptr, ptr %i.am, align 8, !dbg !823, !noalias !752 ; 5 uses
  br i1 %i.al, label %bb.p, label %bb.q, !dbg !822

bb.p:                                             ; preds = %bb.o
  %.sroa.585.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !824
  %.sroa.26.sroa.0.0.copyload46 = load <56 x i8>, ptr %.sroa.585.0..sroa_idx.i.i, align 8, !dbg !824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !825, !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !826, !noalias !752
  br label %bb.ac, !dbg !827

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !825, !noalias !752
  store ptr %.sroa.084.0.copyload.i.i, ptr %i.f, align 8, !dbg !829, !noalias !752
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 5)
          to label %bb.s unwind label %bb.r, !dbg !832, !noalias !752

bb.r:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.084.0.copyload.i.i) #15, !dbg !833, !noalias !752
  br label %bb.af, !dbg !837

bb.s:                                             ; preds = %bb.q
  %i.ao = load i64, ptr %i.g, align 8, !dbg !838, !range !14, !noalias !752, !noundef !12
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !841
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !842
  %.sroa.090.0.copyload.i.i = load ptr, ptr %i.aq, align 8, !dbg !842, !noalias !752 ; 5 uses
  br i1 %i.ap, label %bb.t, label %bb.v, !dbg !841

bb.t:                                             ; preds = %bb.s
  %.sroa.591.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !843
  %.sroa.26.sroa.0.0.copyload45 = load <56 x i8>, ptr %.sroa.591.0..sroa_idx.i.i, align 8, !dbg !843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !826, !noalias !752
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.084.0.copyload.i.i) #15, !dbg !844, !noalias !752
  br label %bb.ac, !dbg !848

bb.u:                                             ; preds = %bb.v
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.090.0.copyload.i.i) #15, !dbg !849, !noalias !752
  br label %bb.af, !dbg !853

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !826, !noalias !752
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.084.0.copyload.i.i) #15, !dbg !854, !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !858, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !859, !noalias !752
  call void @_Py_IncRef(ptr noundef nonnull %.val) #15, !dbg !861, !noalias !752
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance2PyNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noundef nonnull %.val, ptr noundef nonnull %.sroa.090.0.copyload.i.i)
          to label %bb.w unwind label %bb.u, !dbg !865, !noalias !752

bb.w:                                             ; preds = %bb.v
  %i.as = load i64, ptr %i.d, align 8, !dbg !867, !range !14, !noalias !752, !noundef !12
  %i.at = trunc nuw i64 %i.as to i1, !dbg !869
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !870
  %.sroa.096.0.copyload.i.i = load ptr, ptr %i.au, align 8, !dbg !870, !noalias !752 ; 2 uses
  br i1 %i.at, label %bb.x, label %bb.y, !dbg !869

bb.x:                                             ; preds = %bb.w
  %.sroa.597.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !871
  %.sroa.26.sroa.0.0.copyload44 = load <56 x i8>, ptr %.sroa.597.0..sroa_idx.i.i, align 8, !dbg !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !872, !noalias !752
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.090.0.copyload.i.i) #15, !dbg !873, !noalias !752
  br label %bb.ad, !dbg !877

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !872, !noalias !752
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.090.0.copyload.i.i) #15, !dbg !878, !noalias !752
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(72) %i.h)
          to label %bb.z unwind label %bb.i, !dbg !819, !noalias !752

bb.z:                                             ; preds = %bb.y, %bb.m
  %.sroa.0.0 = phi i8 [ 1, %bb.y ], [ 0, %bb.m ], !dbg !882
  %.sroa.0.05.i.i = phi ptr [ %.sroa.096.0.copyload.i.i, %bb.y ], [ %i.ai, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !819, !noalias !752
  br label %bb.aa, !dbg !747

bb.aa:                                            ; preds = %bb.ar, %bb.z
  %.sroa.0.1 = phi i8 [ 1, %bb.ar ], [ %.sroa.0.0, %bb.z ], !dbg !882
  %.sink.i.i = phi ptr [ %.sroa.060.0.copyload.i.i, %bb.ar ], [ %.sroa.078.0.copyload.i.i, %bb.z ]
  %.sroa.0.1.i.i = phi ptr [ %.sroa.066.0.copyload.i.i, %bb.ar ], [ %.sroa.0.05.i.i, %bb.z ], !dbg !883 ; 4 uses
  call void @_Py_DecRef(ptr noundef nonnull %.sink.i.i) #15, !dbg !884, !noalias !752
  invoke void @_RNvXsl_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_13PyBackedBytesNtNtB7_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noundef nonnull %.sroa.0.1.i.i)
          to label %bb.at unwind label %bb.as, !dbg !888, !noalias !752

bb.ab:                                            ; preds = %bb.af
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #17, !dbg !891, !noalias !752
  unreachable, !dbg !891

bb.ac:                                            ; preds = %bb.t, %bb.p
  %.sroa.26.sroa.0.0 = phi <56 x i8> [ %.sroa.26.sroa.0.0.copyload46, %bb.p ], [ %.sroa.26.sroa.0.0.copyload45, %bb.t ], !dbg !817
  %.sroa.14.2 = phi ptr [ %.sroa.084.0.copyload.i.i, %bb.p ], [ %.sroa.090.0.copyload.i.i, %bb.t ], !dbg !892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !858, !noalias !752
  br label %bb.ad, !dbg !827

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.sroa.26.sroa.0.1 = phi <56 x i8> [ %.sroa.26.sroa.0.0, %bb.ac ], [ %.sroa.26.sroa.0.0.copyload44, %bb.x ], !dbg !895
  %.sroa.14.1 = phi ptr [ %.sroa.14.2, %bb.ac ], [ %.sroa.096.0.copyload.i.i, %bb.x ], !dbg !896
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(72) %i.h)
          to label %bb.ae unwind label %bb.i, !dbg !819, !noalias !752

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !819, !noalias !752
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.078.0.copyload.i.i) #15, !dbg !897, !noalias !752
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit.thread, !dbg !901

bb.af:                                            ; preds = %bb.u, %bb.r, %bb.n
  %.pn.i.i = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.ar, %bb.u ], [ %i.an, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(72) %i.h) #16
          to label %bb.ag unwind label %bb.ab, !dbg !819, !noalias !752

bb.ag:                                            ; preds = %bb.as, %bb.an, %bb.ak, %bb.af, %bb.i, %bb.f
  %.sroa.0.1.sink.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.as ], [ %.sroa.060.0.copyload.i.i, %bb.an ], [ %.sroa.054.0.copyload.i.i, %bb.ak ], [ %.sroa.072.0.copyload.i.i, %bb.f ], [ %.sroa.078.0.copyload.i.i, %bb.af ], [ %.sroa.078.0.copyload.i.i, %bb.i ]
  %.pn104.i.i = phi { ptr, i32 } [ %i.be, %bb.as ], [ %i.ba, %bb.an ], [ %i.aw, %bb.ak ], [ %i.aa, %bb.f ], [ %.pn.i.i, %bb.af ], [ %i.ae, %bb.i ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0.1.sink.i.i) #15, !dbg !883, !noalias !752
  br label %.body.i, !dbg !891

bb.ah:                                            ; preds = %bb.h, %bb.d
  %.sroa.26.sroa.0.2 = phi <56 x i8> [ %.sroa.26.sroa.0.0.copyload48, %bb.d ], [ %.sroa.26.sroa.0.0.copyload47, %bb.h ], !dbg !757
  %.sroa.14.3 = phi ptr [ %.sroa.072.0.copyload.i.i, %bb.d ], [ %.sroa.078.0.copyload.i.i, %bb.h ], !dbg !902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !795, !noalias !752
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit.thread, !dbg !772

bb.ai:                                            ; preds = %.noexc3.i
  %.sroa.555.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !903
  %.sroa.26.sroa.0.0.copyload51 = load <56 x i8>, ptr %.sroa.555.0..sroa_idx.i.i, align 8, !dbg !903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !904, !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !905, !noalias !752
  br label %bb.ax, !dbg !772

bb.aj:                                            ; preds = %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !904, !noalias !752
  store ptr %.sroa.054.0.copyload.i.i, ptr %i.n, align 8, !dbg !906, !noalias !752
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 5)
          to label %bb.al unwind label %bb.ak, !dbg !909, !noalias !752

bb.ak:                                            ; preds = %bb.aj
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag, !dbg !910

bb.al:                                            ; preds = %bb.aj
  %i.ax = load i64, ptr %i.o, align 8, !dbg !912, !range !14, !noalias !752, !noundef !12
  %i.ay = trunc nuw i64 %i.ax to i1, !dbg !914
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !915
  %.sroa.060.0.copyload.i.i = load ptr, ptr %i.az, align 8, !dbg !915, !noalias !752 ; 5 uses
  br i1 %i.ay, label %bb.am, label %bb.ao, !dbg !914

bb.am:                                            ; preds = %bb.al
  %.sroa.561.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !916
  %.sroa.26.sroa.0.0.copyload50 = load <56 x i8>, ptr %.sroa.561.0..sroa_idx.i.i, align 8, !dbg !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !905, !noalias !752
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.054.0.copyload.i.i) #15, !dbg !917, !noalias !752
  br label %bb.ax, !dbg !921

bb.an:                                            ; preds = %bb.ao
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag, !dbg !922

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !905, !noalias !752
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.054.0.copyload.i.i) #15, !dbg !924, !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !921, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !928, !noalias !752
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_Py_IncRef(ptr noundef nonnull %.val) #15, !dbg !930, !noalias !752
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance2PyNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.l, ptr noundef nonnull %.val, ptr noundef nonnull %.sroa.060.0.copyload.i.i)
          to label %bb.ap unwind label %bb.an, !dbg !933, !noalias !752

bb.ap:                                            ; preds = %bb.ao
  %i.bb = load i64, ptr %i.l, align 8, !dbg !935, !range !14, !noalias !752, !noundef !12
  %i.bc = trunc nuw i64 %i.bb to i1, !dbg !937
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !938
  %.sroa.066.0.copyload.i.i = load ptr, ptr %i.bd, align 8, !dbg !938, !noalias !752 ; 2 uses
  br i1 %i.bc, label %bb.aq, label %bb.ar, !dbg !937

bb.aq:                                            ; preds = %bb.ap
  %.sroa.567.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !939
  %.sroa.26.sroa.0.0.copyload49 = load <56 x i8>, ptr %.sroa.567.0..sroa_idx.i.i, align 8, !dbg !939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !940, !noalias !752
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.060.0.copyload.i.i) #15, !dbg !941, !noalias !752
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit.thread, !dbg !945

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !940, !noalias !752
  br label %bb.aa, !dbg !747

bb.as:                                            ; preds = %bb.au, %bb.aa
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i.i) ]
  br label %bb.ag, !dbg !946

bb.at:                                            ; preds = %bb.aa
  %i.bf = load ptr, ptr %i.p, align 8, !dbg !948, !noalias !752, !noundef !12 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null, !dbg !948      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !951 ; 2 uses
  br i1 %i.bg, label %bb.au, label %bb.av, !dbg !952

bb.au:                                            ; preds = %bb.at
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !953, !noalias !752, !nonnull !12, !noundef !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !953
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !953, !noalias !752, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !954, !noalias !752
  invoke void @_RNvXs1_NtNtCsbm5zPlkZccl_4pyo33err10cast_errorNtB7_5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bk)
          to label %bb.aw unwind label %bb.as, !dbg !956, !noalias !752

bb.av:                                            ; preds = %bb.at
  %.sroa.26.sroa.0.0.copyload52 = load <24 x i8>, ptr %i.bh, align 8, !dbg !959
  %.sroa.26.sroa.0.0.vec.expand = shufflevector <24 x i8> %.sroa.26.sroa.0.0.copyload52, <24 x i8> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !959
  %.sroa.26.sroa.0.0.vecblend = shufflevector <56 x i8> %.sroa.26.sroa.0.0.vec.expand, <56 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111>, !dbg !959
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit, !dbg !960

bb.aw:                                            ; preds = %bb.au
  %.sroa.14.8.copyload13 = load ptr, ptr %i.c, align 8, !dbg !961, !noalias !962
  %.sroa.26.8..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !961
  %.sroa.26.sroa.0.0.copyload = load <56 x i8>, ptr %.sroa.26.8..sroa_idx16, align 8, !dbg !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !963, !noalias !752
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit, !dbg !964

bb.ax:                                            ; preds = %bb.am, %bb.ai
  %.sroa.26.sroa.0.3 = phi <56 x i8> [ %.sroa.26.sroa.0.0.copyload51, %bb.ai ], [ %.sroa.26.sroa.0.0.copyload50, %bb.am ], !dbg !764
  %.sroa.14.4 = phi ptr [ %.sroa.054.0.copyload.i.i, %bb.ai ], [ %.sroa.060.0.copyload.i.i, %bb.am ], !dbg !965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !921, !noalias !752
  br label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit.thread, !dbg !772

bb.ay:                                            ; preds = %bb.c, %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !966

.body.i:                                          ; preds = %bb.ay, %bb.ag
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bl, %bb.ay ], [ %.pn104.i.i, %bb.ag ]
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.q)
          to label %common.resume unwind label %bb.az, !dbg !967, !noalias !742

bb.az:                                            ; preds = %.body.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #17, !dbg !970, !noalias !742
  unreachable, !dbg !970

common.resume:                                    ; preds = %bb.bd, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.bs, %bb.bd ]
  resume { ptr, i32 } %common.resume.op, !dbg !882

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit.thread: ; preds = %bb.ax, %bb.aq, %bb.ah, %bb.ae
  %.sroa.26.sroa.0.4 = phi <56 x i8> [ %.sroa.26.sroa.0.3, %bb.ax ], [ %.sroa.26.sroa.0.0.copyload49, %bb.aq ], [ %.sroa.26.sroa.0.2, %bb.ah ], [ %.sroa.26.sroa.0.1, %bb.ae ], !dbg !883
  %.sroa.14.5.ph = phi ptr [ %.sroa.14.4, %bb.ax ], [ %.sroa.066.0.copyload.i.i, %bb.aq ], [ %.sroa.14.3, %bb.ah ], [ %.sroa.14.1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !971, !noalias !752
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.q), !dbg !972, !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !966, !noalias !742
  br label %bb.ba, !dbg !974

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit: ; preds = %bb.av, %bb.aw
  %.sroa.26.sroa.0.5 = phi <56 x i8> [ %.sroa.26.sroa.0.0.copyload, %bb.aw ], [ %.sroa.26.sroa.0.0.vecblend, %bb.av ], !dbg !951 ; 2 uses
  %.sroa.14.0 = phi ptr [ %.sroa.14.8.copyload13, %bb.aw ], [ %i.bf, %bb.av ], !dbg !951 ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0.1.i.i) #15, !dbg !976, !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !971, !noalias !752
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.q), !dbg !972, !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !966, !noalias !742
  br i1 %i.bg, label %bb.ba, label %bb.bb, !dbg !974

bb.ba:                                            ; preds = %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit.thread, %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit
  %.sroa.26.sroa.0.6 = phi <56 x i8> [ %.sroa.26.sroa.0.4, %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit.thread ], [ %.sroa.26.sroa.0.5, %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit ], !dbg !883 ; 2 uses
  %.sroa.14.541 = phi ptr [ %.sroa.14.5.ph, %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit.thread ], [ %.sroa.14.0, %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !980
  %.sroa.26.sroa.0.24.vec.extract = shufflevector <56 x i8> %.sroa.26.sroa.0.6, <56 x i8> poison, <32 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>, !dbg !987
  store <32 x i8> %.sroa.26.sroa.0.24.vec.extract, ptr %i.bn, align 8, !dbg !987
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !980
  %.sroa.26.sroa.0.0.vec.extract = shufflevector <56 x i8> %.sroa.26.sroa.0.6, <56 x i8> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !989
  store <24 x i8> %.sroa.26.sroa.0.0.vec.extract, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !989
  store i64 17, ptr %0, align 8, !dbg !980
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !980
  store ptr %.sroa.14.541, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !980
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked13PyBackedBytesECs2mZqlW55729_12polars_utils.exit, !dbg !990

bb.bb:                                            ; preds = %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_.exit
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !991 ; 2 uses
  %.sroa.26.sroa.0.0.vec.extract54 = shufflevector <56 x i8> %.sroa.26.sroa.0.5, <56 x i8> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !735
  store <24 x i8> %.sroa.26.sroa.0.0.vec.extract54, ptr %.sroa.427.0..sroa_idx, align 8, !dbg !735
  store ptr %.sroa.14.0, ptr %i.r, align 8, !dbg !991
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !994 ; 8 uses
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !994, !alias.scope !1003, !noundef !12 ; 3 uses
  %i.bq = load i64, ptr %2, align 8, !dbg !1006, !range !84, !alias.scope !1003, !noundef !12
  %i.br = icmp eq i64 %i.bp, %i.bq, !dbg !1016
  br i1 %i.br, label %bb.bc, label %bb.be, !dbg !1016

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.be unwind label %bb.bd, !dbg !1017

bb.bd:                                            ; preds = %bb.bg, %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockAhj2_E5force0ECs2mZqlW55729_12polars_utils.exit, %bb.bf, %bb.bc
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked13PyBackedBytesECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(32) %i.r) #16
          to label %common.resume unwind label %bb.bo, !dbg !1018

bb.be:                                            ; preds = %bb.bb, %bb.bc
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !1019 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !1019, !alias.scope !1003, !nonnull !12, !noundef !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bp, !dbg !1028
  store i8 %.sroa.0.1, ptr %i.bv, align 1, !dbg !1034
  %i.bw = add i64 %i.bp, 1, !dbg !1038
  store i64 %i.bw, ptr %i.bo, align 8, !dbg !1038, !alias.scope !1003
  %i.bx = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PYTHON3_VERSION, i64 8) acquire, align 8, !dbg !1039
  %i.by = icmp eq i32 %i.bx, 0, !dbg !1056
  br i1 %i.by, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockAhj2_E5force0ECs2mZqlW55729_12polars_utils.exit, label %bb.bf, !dbg !1056, !prof !1057

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1058
  store ptr @_RNvNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PYTHON3_VERSION, ptr %i.b, align 8, !dbg !1059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1060
  store ptr %i.b, ptr %i.a, align 8, !dbg !1060
  invoke void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PYTHON3_VERSION, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc6 unwind label %bb.bd, !dbg !1062

.noexc6:                                          ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1064
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockAhj2_E5force0ECs2mZqlW55729_12polars_utils.exit, !dbg !1064

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockAhj2_E5force0ECs2mZqlW55729_12polars_utils.exit: ; preds = %.noexc6, %bb.be
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2)
          to label %bb.bg unwind label %bb.bd, !dbg !1065

bb.bg:                                            ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockAhj2_E5force0ECs2mZqlW55729_12polars_utils.exit
  %i.bz = load i64, ptr %i.bo, align 8, !dbg !1077, !alias.scope !1080, !noundef !12 ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, -1, !dbg !1083
  call void @llvm.assume(i1 %i.ca), !dbg !1085
  %i.cb = load ptr, ptr %i.bt, align 8, !dbg !1086, !alias.scope !1080, !nonnull !12, !noundef !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz, !dbg !1096
  %i.cd = load i16, ptr @_RNvNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PYTHON3_VERSION, align 8, !dbg !1099
  store i16 %i.cd, ptr %i.cc, align 1, !dbg !1099
  %.pre.i = load i64, ptr %i.bo, align 8, !dbg !1102, !alias.scope !1080
  %i.ce = add i64 %.pre.i, 2, !dbg !1102
  store i64 %i.ce, ptr %i.bo, align 8, !dbg !1102, !alias.scope !1080
  %i.cf = load ptr, ptr %i.r, align 8, !dbg !1103, !nonnull !12, !noundef !12
  %i.cg = load i64, ptr %.sroa.427.0..sroa_idx, align 8, !dbg !1103, !noundef !12 ; 4 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cg)
          to label %.noexc9 unwind label %bb.bd, !dbg !1114

.noexc9:                                          ; preds = %bb.bg
  %i.ch = load i64, ptr %i.bo, align 8, !dbg !1120, !alias.scope !1122, !noundef !12 ; 3 uses
  %i.ci = icmp sgt i64 %i.ch, -1, !dbg !1125
  call void @llvm.assume(i1 %i.ci), !dbg !1126
  %.not.i = icmp eq i64 %i.cg, 0, !dbg !1127
  br i1 %.not.i, label %bb.bi, label %bb.bh, !dbg !1127

bb.bh:                                            ; preds = %.noexc9
  %i.cj = load ptr, ptr %i.bt, align 8, !dbg !1128, !alias.scope !1122, !nonnull !12, !noundef !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch, !dbg !1133
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull readonly align 1 %i.cf, i64 %i.cg, i1 false), !dbg !1135
  %.pre.i8 = load i64, ptr %i.bo, align 8, !dbg !1137, !alias.scope !1122
  br label %bb.bi, !dbg !1138

bb.bi:                                            ; preds = %bb.bh, %.noexc9
  %i.cl = phi i64 [ %.pre.i8, %bb.bh ], [ %i.ch, %.noexc9 ], !dbg !1137
  %i.cm = add i64 %i.cl, %i.cg, !dbg !1137
  store i64 %i.cm, ptr %i.bo, align 8, !dbg !1137, !alias.scope !1122
  store i64 18, ptr %0, align 8, !dbg !1139
  call void @llvm.experimental.noalias.scope.decl(metadata !1140), !dbg !1018
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !1143 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1145), !dbg !1143
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !1148, !alias.scope !1150, !noundef !12 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null, !dbg !1148
  br i1 %i.cp, label %bb.bj, label %bb.bm, !dbg !1148

bb.bj:                                            ; preds = %bb.bi
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !1148
  %.val.i.i = load ptr, ptr %i.cq, align 8, !dbg !1148, !alias.scope !1150, !nonnull !12, !noundef !12 ; 2 uses
  %i.cr = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !1151
  %.val.i.i.i.i.i.i = load i64, ptr %i.cr, align 8, !dbg !1159, !noalias !1150, !noundef !12
  %i.cs = icmp sgt i64 %.val.i.i.i.i.i.i, 0, !dbg !1160
  br i1 %i.cs, label %bb.bl, label %bb.bk, !dbg !1162, !prof !174

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val.i.i), !dbg !1164, !noalias !1150
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked13PyBackedBytesECs2mZqlW55729_12polars_utils.exit, !dbg !1164

bb.bl:                                            ; preds = %bb.bj
  call void @_Py_DecRef(ptr noundef nonnull %.val.i.i) #15, !dbg !1165, !noalias !1150
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked13PyBackedBytesECs2mZqlW55729_12polars_utils.exit, !dbg !1167

bb.bm:                                            ; preds = %bb.bi
  %i.ct = atomicrmw sub ptr %i.co, i64 1 release, align 8, !dbg !1168, !noalias !1173
  %i.cu = icmp eq i64 %i.ct, 1, !dbg !1178
  br i1 %i.cu, label %bb.bn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked13PyBackedBytesECs2mZqlW55729_12polars_utils.exit, !dbg !1178

bb.bn:                                            ; preds = %bb.bm
  fence acquire, !dbg !1179
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcShE9drop_slowCsbm5zPlkZccl_4pyo3(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cn) #18, !dbg !1181
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked13PyBackedBytesECs2mZqlW55729_12polars_utils.exit, !dbg !1181

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked13PyBackedBytesECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !1018
  ret void, !dbg !990

bb.bo:                                            ; preds = %bb.bd
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #17, !dbg !1182
  unreachable, !dbg !1182
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs2mZqlW55729_12polars_utils12pl_serialize25python_object_deserialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1183 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 4                 ; 6 uses
  %i.j = alloca [8 x i8], align 4                 ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %.not = icmp eq i64 %2, 0, !dbg !1184
  br i1 %.not, label %bb.c, label %bb.b, !dbg !1184

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %1, align 1, !dbg !1184, !noundef !12
  %i.m = icmp eq i8 %i.l, 0, !dbg !1185
  br i1 %i.m, label %bb.d, label %bb.e, !dbg !1185

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #19, !dbg !1184
  unreachable, !dbg !1184

bb.d:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i64 %2, 3, !dbg !1187
  br i1 %i.n, label %bb.y, label %.thread, !dbg !1187, !prof !1198

bb.e:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %2, 2, !dbg !1199
  br i1 %i.o, label %bb.g, label %bb.f, !dbg !1199, !prof !1057

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #19, !dbg !1205
  unreachable, !dbg !1205

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !1206
  %i.q = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PYTHON3_VERSION, i64 8) acquire, align 8, !dbg !1210
  %i.r = icmp eq i32 %i.q, 0, !dbg !1220
  br i1 %i.r, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockAhj2_E5force0ECs2mZqlW55729_12polars_utils.exit, label %bb.h, !dbg !1220, !prof !1057

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1221
  store ptr @_RNvNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PYTHON3_VERSION, ptr %i.g, align 8, !dbg !1222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1223
  store ptr %i.g, ptr %i.f, align 8, !dbg !1223
  call void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PYTHON3_VERSION, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !dbg !1224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1226
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockAhj2_E5force0ECs2mZqlW55729_12polars_utils.exit, !dbg !1226

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockAhj2_E5force0ECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.0.copyload = load i16, ptr @_RNvNtNtCs2mZqlW55729_12polars_utils15python_function10serde_wrap15PYTHON3_VERSION, align 8, !dbg !1218 ; 3 uses
  %i.s = load i16, ptr %i.p, align 1, !dbg !1227  ; 3 uses
  %i.t = icmp eq i16 %i.s, %.sroa.0.0.copyload, !dbg !1227
  br i1 %i.t, label %.thread, label %.split, !dbg !1243, !prof !1057

.split:                                           ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockAhj2_E5force0ECs2mZqlW55729_12polars_utils.exit
  %i.u = lshr i16 %i.s, 8, !dbg !1243
  %i.v = trunc nuw i16 %i.u to i8, !dbg !1243
  %i.w = trunc i16 %i.s to i8, !dbg !1243
  %i.x = trunc i16 %.sroa.0.0.copyload to i8, !dbg !1243
  %i.y = lshr i16 %.sroa.0.0.copyload, 8, !dbg !1243
  %i.z = trunc nuw i16 %i.y to i8, !dbg !1243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !1245
  store i32 3, ptr %i.j, align 4, !dbg !1245
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 4, !dbg !1245
  store i8 %i.x, ptr %i.aa, align 4, !dbg !1245
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 5, !dbg !1245
  store i8 %i.z, ptr %i.ab, align 1, !dbg !1245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !1246
  store i32 3, ptr %i.i, align 4, !dbg !1246
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 4, !dbg !1246
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!695 = !DILocation(line: 119, column: 14, scope: !507)
!696 = !DILocation(line: 981, column: 31, scope: !513, inlinedAt: !695)
!697 = !DILocation(line: 1368, column: 24, scope: !698, inlinedAt: !699)
!698 = distinct !DILexicalBlock(scope: !523, file: !342, line: 1368, column: 13)
!699 = !DILocation(line: 120, column: 14, scope: !507)
!700 = !DILocation(line: 1371, column: 5, scope: !523, inlinedAt: !699)
!701 = !DILocation(line: 1369, column: 25, scope: !523, inlinedAt: !699)
!702 = !{!703}
!703 = distinct !{!703, !704, !"_RNCNvMNtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounter8num_rows0B6_: argument 0"}
!704 = distinct !{!704, !"_RNCNvMNtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounter8num_rows0B6_"}
!705 = !DILocation(line: 121, column: 17, scope: !519, inlinedAt: !706)
!706 = distinct !DILocation(line: 1369, column: 25, scope: !523, inlinedAt: !699)
!707 = !DILocation(line: 121, column: 17, scope: !527, inlinedAt: !706)
!708 = !{!703, !709}
!709 = distinct !{!709, !704, !"_RNCNvMNtCs2mZqlW55729_12polars_utils11row_counterNtB4_10RowCounter8num_rows0B6_: argument 1"}
!710 = !DILocation(line: 659, column: 34, scope: !535, inlinedAt: !711)
!711 = distinct !DILocation(line: 1278, column: 21, scope: !540, inlinedAt: !712)
!712 = distinct !DILocation(line: 659, column: 19, scope: !542, inlinedAt: !713)
!713 = distinct !DILocation(line: 121, column: 17, scope: !544, inlinedAt: !706)
!714 = !DILocation(line: 669, column: 9, scope: !547, inlinedAt: !715)
!715 = distinct !DILocation(line: 121, column: 17, scope: !519, inlinedAt: !706)
!716 = !DILocation(line: 778, column: 9, scope: !553, inlinedAt: !717)
!717 = distinct !DILocation(line: 121, column: 17, scope: !558, inlinedAt: !706)
!718 = !{!719, !721, !703}
!719 = distinct !{!719, !720, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 0"}
!720 = distinct !{!720, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use"}
!721 = distinct !{!721, !720, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 1"}
!722 = !{!709}
!723 = !DILocation(line: 127, column: 14, scope: !519, inlinedAt: !706)
!724 = !DILocation(line: 1369, column: 21, scope: !523, inlinedAt: !699)
!725 = !DILocation(line: 1369, column: 30, scope: !523, inlinedAt: !699)
!726 = !DILocation(line: 128, column: 6, scope: !507)
!727 = distinct !DISubprogram(name: "python_object_serialize", linkageName: "_RNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize", scope: !729, file: !728, line: 212, type: !11, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!728 = !DIFile(filename: "crates/polars-utils/src/pl_serialize.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "6e9abddfcd87bcdbd9ccc284a4571398")
!729 = !DINamespace(name: "pl_serialize", scope: !501)
!730 = !DILocation(line: 559, column: 14, scope: !731, inlinedAt: !732)
!731 = distinct !DISubprogram(name: "get<bool>", linkageName: "_RNvMs3_NtNtCsh8eZTKRCwoO_3std6thread5localINtB5_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellbEE3getCs2mZqlW55729_12polars_utils", scope: !143, file: !142, line: 555, type: !11, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!732 = !DILocation(line: 222, column: 47, scope: !727)
!733 = !DILocation(line: 223, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !727, file: !728, line: 222, column: 5)
!735 = !DILocation(line: 223, column: 18, scope: !734)
!736 = !DILocation(line: 417, column: 13, scope: !737, inlinedAt: !741)
!737 = distinct !DISubprogram(name: "attach<polars_utils::pl_serialize::python_object_serialize::{closure_env#0}, core::result::Result<pyo3::pybacked::PyBackedBytes, pyo3::err::PyErr>>", linkageName: "_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_", scope: !739, file: !738, line: 413, type: !26, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!738 = !DIFile(filename: "src/marker.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0", checksumkind: CSK_MD5, checksum: "0c2968e224ba06951c1d531b63b18d24")
!739 = !DINamespace(name: "Python", scope: !740)
!740 = !DINamespace(name: "marker", scope: !25)
!741 = distinct !DILocation(line: 223, column: 18, scope: !734)
!742 = !{!743, !745}
!743 = distinct !{!743, !744, !"_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_: argument 0"}
!744 = distinct !{!744, !"_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_"}
!745 = distinct !{!745, !744, !"_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB7_8pybacked13PyBackedBytesNtNtB7_3err5PyErrEEBW_: argument 1"}
!746 = !DILocation(line: 417, column: 21, scope: !737, inlinedAt: !741)
!747 = !DILocation(line: 225, column: 9, scope: !748, inlinedAt: !750)
!748 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0B5_", scope: !749, file: !728, line: 223, type: !26, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!749 = !DINamespace(name: "python_object_serialize", scope: !729)
!750 = distinct !DILocation(line: 418, column: 9, scope: !751, inlinedAt: !741)
!751 = distinct !DILexicalBlock(scope: !737, file: !738, line: 417, column: 9)
!752 = !{!753, !755, !743, !745}
!753 = distinct !{!753, !754, !"_RNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0B5_: argument 0"}
!754 = distinct !{!754, !"_RNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0B5_"}
!755 = distinct !{!755, !754, !"_RNCNvNtCs2mZqlW55729_12polars_utils12pl_serialize23python_object_serialize0B5_: argument 1"}
!756 = !DILocation(line: 225, column: 12, scope: !748, inlinedAt: !750)
!757 = !DILocation(line: 229, column: 26, scope: !748, inlinedAt: !750)
!758 = !DILocation(line: 2173, column: 15, scope: !759, inlinedAt: !761)
!759 = distinct !DISubprogram(name: "branch<pyo3::instance::Bound<pyo3::types::module::PyModule>, pyo3::err::PyErr>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtBP_5types6module8PyModuleENtNtBP_3err5PyErrENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !760, file: !170, line: 2172, type: !11, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!760 = !DINamespace(name: "{impl#27}", scope: !172)
!761 = distinct !DILocation(line: 229, column: 26, scope: !748, inlinedAt: !750)
!762 = !DILocation(line: 2173, column: 9, scope: !759, inlinedAt: !761)
!763 = !DILocation(line: 0, scope: !759, inlinedAt: !761)
!764 = !DILocation(line: 226, column: 31, scope: !748, inlinedAt: !750)
!765 = !DILocation(line: 2173, column: 15, scope: !759, inlinedAt: !766)
!766 = distinct !DILocation(line: 226, column: 31, scope: !748, inlinedAt: !750)
!767 = !DILocation(line: 2173, column: 9, scope: !759, inlinedAt: !766)
!768 = !DILocation(line: 0, scope: !759, inlinedAt: !766)
!769 = !DILocation(line: 2175, column: 17, scope: !759, inlinedAt: !761)
!770 = !DILocation(line: 229, column: 56, scope: !748, inlinedAt: !750)
!771 = !DILocation(line: 229, column: 74, scope: !748, inlinedAt: !750)
!772 = !DILocation(line: 0, scope: !773, inlinedAt: !750)
!773 = !DILexicalBlockFile(scope: !748, file: !774, discriminator: 0)
!774 = !DIFile(filename: "crates/polars-utils/src/lib.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "166f19075a2797604bb6b50c0b859353")
!775 = !DILocation(line: 229, column: 26, scope: !776, inlinedAt: !750)
!776 = distinct !DILexicalBlock(scope: !777, file: !728, line: 229, column: 26)
!777 = distinct !DILexicalBlock(scope: !748, file: !728, line: 229, column: 56)
!778 = !DILocation(line: 229, column: 58, scope: !748, inlinedAt: !750)
!779 = !DILocation(line: 810, column: 1, scope: !780, inlinedAt: !781)
!780 = distinct !DISubprogram(name: "drop_in_place<pyo3::instance::Bound<pyo3::types::module::PyModule>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtBL_5types6module8PyModuleEECs2mZqlW55729_12polars_utils", scope: !9, file: !8, line: 810, type: !26, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!781 = distinct !DILocation(line: 229, column: 75, scope: !748, inlinedAt: !750)
!782 = !DILocation(line: 2173, column: 15, scope: !783, inlinedAt: !784)
!783 = distinct !DISubprogram(name: "branch<pyo3::instance::Bound<pyo3::types::any::PyAny>, pyo3::err::PyErr>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtBP_5types3any5PyAnyENtNtBP_3err5PyErrENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !760, file: !170, line: 2172, type: !11, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!784 = distinct !DILocation(line: 229, column: 26, scope: !785, inlinedAt: !750)
!785 = !DILexicalBlockFile(scope: !748, file: !728, discriminator: 6)
!786 = !DILocation(line: 2173, column: 9, scope: !783, inlinedAt: !784)
!787 = !DILocation(line: 0, scope: !783, inlinedAt: !784)
!788 = !DILocation(line: 2175, column: 17, scope: !783, inlinedAt: !784)
!789 = !DILocation(line: 269, column: 13, scope: !790, inlinedAt: !791)
!790 = distinct !DISubprogram(name: "Py_DECREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_DECREF", scope: !18, file: !17, line: 255, type: !11, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!791 = distinct !DILocation(line: 832, column: 18, scope: !792, inlinedAt: !793)
!792 = distinct !DISubprogram(name: "drop<pyo3::types::module::PyModule>", linkageName: "_RNvXs8_NtCsbm5zPlkZccl_4pyo38instanceINtB5_5BoundNtNtNtB7_5types6module8PyModuleENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils", scope: !23, file: !22, line: 829, type: !26, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!793 = distinct !DILocation(line: 810, column: 1, scope: !780, inlinedAt: !794)
!794 = distinct !DILocation(line: 229, column: 75, scope: !748, inlinedAt: !750)
!795 = !DILocation(line: 229, column: 75, scope: !748, inlinedAt: !750)
!796 = !DILocation(line: 269, column: 13, scope: !790, inlinedAt: !797)
!797 = distinct !DILocation(line: 832, column: 18, scope: !792, inlinedAt: !798)
!798 = distinct !DILocation(line: 810, column: 1, scope: !780, inlinedAt: !799)
!799 = distinct !DILocation(line: 229, column: 75, scope: !748, inlinedAt: !750)
!800 = !DILocation(line: 230, column: 19, scope: !801, inlinedAt: !750)
!801 = distinct !DILexicalBlock(scope: !748, file: !728, line: 229, column: 13)
!802 = !DILocation(line: 192, column: 13, scope: !803, inlinedAt: !804)
!803 = distinct !DISubprogram(name: "Py_INCREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_INCREF", scope: !18, file: !17, line: 179, type: !11, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!804 = distinct !DILocation(line: 1816, column: 18, scope: !805, inlinedAt: !808)
!805 = !DILexicalBlockFile(scope: !806, file: !22, discriminator: 2)
!806 = distinct !DISubprogram(name: "clone_ref<pyo3::types::any::PyAny>", linkageName: "_RNvMsq_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyE9clone_refCs2mZqlW55729_12polars_utils", scope: !807, file: !22, line: 1811, type: !11, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!807 = !DINamespace(name: "Py", scope: !24)
!808 = distinct !DILocation(line: 230, column: 39, scope: !801, inlinedAt: !750)
!809 = !DILocation(line: 1186, column: 14, scope: !810, inlinedAt: !815)
!810 = distinct !DISubprogram(name: "call1<(pyo3::instance::Py<pyo3::types::any::PyAny>)>", linkageName: "_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods5call1TINtBF_2PyBZ_EEECs2mZqlW55729_12polars_utils", scope: !812, file: !811, line: 1182, type: !11, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!811 = !DIFile(filename: "src/types/any.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0", checksumkind: CSK_MD5, checksum: "e36c821b32e933948abc14ab8473bf4a")
!812 = !DINamespace(name: "{impl#1}", scope: !813)
!813 = !DINamespace(name: "any", scope: !814)
!814 = !DINamespace(name: "types", scope: !25)
!815 = distinct !DILocation(line: 230, column: 26, scope: !801, inlinedAt: !750)
!816 = !DILocation(line: 230, column: 13, scope: !801, inlinedAt: !750)
!817 = !DILocation(line: 234, column: 39, scope: !801, inlinedAt: !750)
!818 = !DILocation(line: 231, column: 20, scope: !801, inlinedAt: !750)
!819 = !DILocation(line: 237, column: 13, scope: !801, inlinedAt: !750)
!820 = !DILocation(line: 2173, column: 15, scope: !759, inlinedAt: !821)
!821 = distinct !DILocation(line: 234, column: 39, scope: !801, inlinedAt: !750)
!822 = !DILocation(line: 2173, column: 9, scope: !759, inlinedAt: !821)
!823 = !DILocation(line: 0, scope: !759, inlinedAt: !821)
!824 = !DILocation(line: 2175, column: 17, scope: !759, inlinedAt: !821)
!825 = !DILocation(line: 234, column: 74, scope: !801, inlinedAt: !750)
!826 = !DILocation(line: 234, column: 92, scope: !801, inlinedAt: !750)
!827 = !DILocation(line: 0, scope: !828, inlinedAt: !750)
!828 = !DILexicalBlockFile(scope: !801, file: !774, discriminator: 0)
!829 = !DILocation(line: 234, column: 39, scope: !830, inlinedAt: !750)
!830 = distinct !DILexicalBlock(scope: !831, file: !728, line: 234, column: 39)
!831 = distinct !DILexicalBlock(scope: !801, file: !728, line: 234, column: 74)
!832 = !DILocation(line: 234, column: 76, scope: !801, inlinedAt: !750)
!833 = !DILocation(line: 269, column: 13, scope: !790, inlinedAt: !834)
!834 = distinct !DILocation(line: 832, column: 18, scope: !792, inlinedAt: !835)
!835 = distinct !DILocation(line: 810, column: 1, scope: !780, inlinedAt: !836)
!836 = distinct !DILocation(line: 234, column: 93, scope: !801, inlinedAt: !750)
!837 = !DILocation(line: 810, column: 1, scope: !780, inlinedAt: !836)
!838 = !DILocation(line: 2173, column: 15, scope: !783, inlinedAt: !839)
!839 = distinct !DILocation(line: 234, column: 39, scope: !840, inlinedAt: !750)
!840 = !DILexicalBlockFile(scope: !801, file: !728, discriminator: 6)
!841 = !DILocation(line: 2173, column: 9, scope: !783, inlinedAt: !839)
!842 = !DILocation(line: 0, scope: !783, inlinedAt: !839)
!843 = !DILocation(line: 2175, column: 17, scope: !783, inlinedAt: !839)
!844 = !DILocation(line: 269, column: 13, scope: !790, inlinedAt: !845)
!845 = distinct !DILocation(line: 832, column: 18, scope: !792, inlinedAt: !846)
!846 = distinct !DILocation(line: 810, column: 1, scope: !780, inlinedAt: !847)
!847 = distinct !DILocation(line: 234, column: 93, scope: !801, inlinedAt: !750)
!848 = !DILocation(line: 810, column: 1, scope: !780, inlinedAt: !847)
!849 = !DILocation(line: 269, column: 13, scope: !16, inlinedAt: !850)
!850 = distinct !DILocation(line: 832, column: 18, scope: !21, inlinedAt: !851)
!851 = distinct !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !852)
!852 = distinct !DILocation(line: 236, column: 17, scope: !801, inlinedAt: !750)
!853 = !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !852)
!854 = !DILocation(line: 269, column: 13, scope: !790, inlinedAt: !855)
!855 = distinct !DILocation(line: 832, column: 18, scope: !792, inlinedAt: !856)
!856 = distinct !DILocation(line: 810, column: 1, scope: !780, inlinedAt: !857)
!857 = distinct !DILocation(line: 234, column: 93, scope: !801, inlinedAt: !750)
!858 = !DILocation(line: 234, column: 93, scope: !801, inlinedAt: !750)
!859 = !DILocation(line: 235, column: 21, scope: !860, inlinedAt: !750)
!860 = distinct !DILexicalBlock(scope: !801, file: !728, line: 234, column: 21)
!861 = !DILocation(line: 192, column: 13, scope: !803, inlinedAt: !862)
!862 = distinct !DILocation(line: 1816, column: 18, scope: !863, inlinedAt: !864)
!863 = !DILexicalBlockFile(scope: !806, file: !22, discriminator: 4)
!864 = distinct !DILocation(line: 235, column: 46, scope: !860, inlinedAt: !750)
!865 = !DILocation(line: 1186, column: 14, scope: !810, inlinedAt: !866)
!866 = distinct !DILocation(line: 235, column: 33, scope: !860, inlinedAt: !750)
!867 = !DILocation(line: 2173, column: 15, scope: !783, inlinedAt: !868)
!868 = distinct !DILocation(line: 235, column: 21, scope: !860, inlinedAt: !750)
!869 = !DILocation(line: 2173, column: 9, scope: !783, inlinedAt: !868)
!870 = !DILocation(line: 0, scope: !783, inlinedAt: !868)
!871 = !DILocation(line: 2175, column: 17, scope: !783, inlinedAt: !868)
!872 = !DILocation(line: 235, column: 62, scope: !860, inlinedAt: !750)
!873 = !DILocation(line: 269, column: 13, scope: !16, inlinedAt: !874)
!874 = distinct !DILocation(line: 832, column: 18, scope: !21, inlinedAt: !875)
!875 = distinct !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !876)
!876 = distinct !DILocation(line: 236, column: 17, scope: !801, inlinedAt: !750)
!877 = !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !876)
!878 = !DILocation(line: 269, column: 13, scope: !16, inlinedAt: !879)
!879 = distinct !DILocation(line: 832, column: 18, scope: !21, inlinedAt: !880)
!880 = distinct !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !881)
!881 = distinct !DILocation(line: 236, column: 17, scope: !801, inlinedAt: !750)
!882 = !DILocation(line: 0, scope: !727)
!883 = !DILocation(line: 0, scope: !748, inlinedAt: !750)
!884 = !DILocation(line: 269, column: 13, scope: !16, inlinedAt: !885)
!885 = distinct !DILocation(line: 832, column: 18, scope: !21, inlinedAt: !886)
!886 = distinct !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !887)
!887 = distinct !DILocation(line: 0, scope: !748, inlinedAt: !750)
!888 = !DILocation(line: 1326, column: 9, scope: !889, inlinedAt: !890)
!889 = distinct !DISubprogram(name: "extract<pyo3::pybacked::PyBackedBytes>", linkageName: "_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7extractNtNtB9_8pybacked13PyBackedBytesECs2mZqlW55729_12polars_utils", scope: !812, file: !811, line: 1322, type: !11, scopeLine: 1322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!890 = distinct !DILocation(line: 239, column: 10, scope: !748, inlinedAt: !750)
!891 = !DILocation(line: 223, column: 33, scope: !748, inlinedAt: !750)
!892 = !DILocation(line: 2189, column: 23, scope: !893, inlinedAt: !817)
!893 = distinct !DISubprogram(name: "from_residual<pyo3::pybacked::PyBackedBytes, pyo3::err::PyErr, pyo3::err::PyErr>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtCsbm5zPlkZccl_4pyo38pybacked13PyBackedBytesNtNtBO_3err5PyErrEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1v_EE13from_residualCs2mZqlW55729_12polars_utils", scope: !894, file: !170, line: 2187, type: !11, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!894 = !DINamespace(name: "{impl#28}", scope: !172)
!895 = !DILocation(line: 0, scope: !801, inlinedAt: !750)
!896 = !DILocation(line: 2189, column: 23, scope: !893, inlinedAt: !895)
!897 = !DILocation(line: 269, column: 13, scope: !16, inlinedAt: !898)
!898 = distinct !DILocation(line: 832, column: 18, scope: !21, inlinedAt: !899)
!899 = distinct !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !900)
!900 = distinct !DILocation(line: 238, column: 9, scope: !748, inlinedAt: !750)
!901 = !DILocation(line: 238, column: 9, scope: !748, inlinedAt: !750)
!902 = !DILocation(line: 2189, column: 23, scope: !893, inlinedAt: !757)
!903 = !DILocation(line: 2175, column: 17, scope: !759, inlinedAt: !766)
!904 = !DILocation(line: 226, column: 66, scope: !748, inlinedAt: !750)
!905 = !DILocation(line: 226, column: 84, scope: !748, inlinedAt: !750)
!906 = !DILocation(line: 226, column: 31, scope: !907, inlinedAt: !750)
!907 = distinct !DILexicalBlock(scope: !908, file: !728, line: 226, column: 31)
!908 = distinct !DILexicalBlock(scope: !748, file: !728, line: 226, column: 66)
!909 = !DILocation(line: 226, column: 68, scope: !748, inlinedAt: !750)
!910 = !DILocation(line: 810, column: 1, scope: !780, inlinedAt: !911)
!911 = distinct !DILocation(line: 226, column: 85, scope: !748, inlinedAt: !750)
!912 = !DILocation(line: 2173, column: 15, scope: !783, inlinedAt: !913)
!913 = distinct !DILocation(line: 226, column: 31, scope: !785, inlinedAt: !750)
!914 = !DILocation(line: 2173, column: 9, scope: !783, inlinedAt: !913)
!915 = !DILocation(line: 0, scope: !783, inlinedAt: !913)
!916 = !DILocation(line: 2175, column: 17, scope: !783, inlinedAt: !913)
!917 = !DILocation(line: 269, column: 13, scope: !790, inlinedAt: !918)
!918 = distinct !DILocation(line: 832, column: 18, scope: !792, inlinedAt: !919)
!919 = distinct !DILocation(line: 810, column: 1, scope: !780, inlinedAt: !920)
!920 = distinct !DILocation(line: 226, column: 85, scope: !748, inlinedAt: !750)
!921 = !DILocation(line: 226, column: 85, scope: !748, inlinedAt: !750)
!922 = !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !923)
!923 = distinct !DILocation(line: 228, column: 9, scope: !748, inlinedAt: !750)
!924 = !DILocation(line: 269, column: 13, scope: !790, inlinedAt: !925)
!925 = distinct !DILocation(line: 832, column: 18, scope: !792, inlinedAt: !926)
!926 = distinct !DILocation(line: 810, column: 1, scope: !780, inlinedAt: !927)
!927 = distinct !DILocation(line: 226, column: 85, scope: !748, inlinedAt: !750)
!928 = !DILocation(line: 227, column: 13, scope: !929, inlinedAt: !750)
!929 = distinct !DILexicalBlock(scope: !748, file: !728, line: 226, column: 13)
!930 = !DILocation(line: 192, column: 13, scope: !803, inlinedAt: !931)
!931 = distinct !DILocation(line: 1816, column: 18, scope: !806, inlinedAt: !932)
!932 = distinct !DILocation(line: 227, column: 38, scope: !929, inlinedAt: !750)
!933 = !DILocation(line: 1186, column: 14, scope: !810, inlinedAt: !934)
!934 = distinct !DILocation(line: 227, column: 25, scope: !929, inlinedAt: !750)
!935 = !DILocation(line: 2173, column: 15, scope: !783, inlinedAt: !936)
!936 = distinct !DILocation(line: 227, column: 13, scope: !929, inlinedAt: !750)
!937 = !DILocation(line: 2173, column: 9, scope: !783, inlinedAt: !936)
!938 = !DILocation(line: 0, scope: !783, inlinedAt: !936)
!939 = !DILocation(line: 2175, column: 17, scope: !783, inlinedAt: !936)
!940 = !DILocation(line: 227, column: 54, scope: !929, inlinedAt: !750)
!941 = !DILocation(line: 269, column: 13, scope: !16, inlinedAt: !942)
!942 = distinct !DILocation(line: 832, column: 18, scope: !21, inlinedAt: !943)
!943 = distinct !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !944)
!944 = distinct !DILocation(line: 228, column: 9, scope: !748, inlinedAt: !750)
!945 = !DILocation(line: 228, column: 9, scope: !748, inlinedAt: !750)
!946 = !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !947)
!947 = distinct !DILocation(line: 240, column: 35, scope: !748, inlinedAt: !750)
!948 = !DILocation(line: 966, column: 15, scope: !949, inlinedAt: !950)
!949 = distinct !DISubprogram(name: "map_err<pyo3::pybacked::PyBackedBytes, pyo3::err::cast_error::CastError, pyo3::err::PyErr, fn(pyo3::err::cast_error::CastError) -> pyo3::err::PyErr>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsbm5zPlkZccl_4pyo38pybacked13PyBackedBytesNtNtNtBM_3err10cast_error9CastErrorE7map_errNtB1x_5PyErrNvYB2b_INtNtB5_7convert4FromB1t_E4fromECs2mZqlW55729_12polars_utils", scope: !171, file: !170, line: 962, type: !11, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!950 = distinct !DILocation(line: 240, column: 10, scope: !748, inlinedAt: !750)
!951 = !DILocation(line: 0, scope: !949, inlinedAt: !950)
!952 = !DILocation(line: 966, column: 9, scope: !949, inlinedAt: !950)
!953 = !DILocation(line: 968, column: 17, scope: !949, inlinedAt: !950)
!954 = !DILocation(line: 968, column: 27, scope: !955, inlinedAt: !950)
!955 = distinct !DILexicalBlock(scope: !949, file: !170, line: 968, column: 13)
!956 = !DILocation(line: 250, column: 5, scope: !957, inlinedAt: !958)
!957 = distinct !DISubprogram(name: "call_once<fn(pyo3::err::cast_error::CastError) -> pyo3::err::PyErr, (pyo3::err::cast_error::CastError)>", linkageName: "_RNvYNvYNtNtCsbm5zPlkZccl_4pyo33err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtNtB7_10cast_error9CastErrorE4fromINtNtNtBH_3ops8function6FnOnceTB1d_EE9call_onceCs2mZqlW55729_12polars_utils", scope: !137, file: !136, line: 250, type: !11, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!958 = distinct !DILocation(line: 968, column: 27, scope: !955, inlinedAt: !950)
!959 = !DILocation(line: 967, column: 16, scope: !949, inlinedAt: !950)
!960 = !DILocation(line: 970, column: 5, scope: !949, inlinedAt: !950)
!961 = !DILocation(line: 968, column: 23, scope: !955, inlinedAt: !950)
!962 = !{!755, !745}
!963 = !DILocation(line: 968, column: 32, scope: !955, inlinedAt: !950)
!964 = !DILocation(line: 968, column: 32, scope: !949, inlinedAt: !950)
!965 = !DILocation(line: 2189, column: 23, scope: !893, inlinedAt: !764)
!966 = !DILocation(line: 419, column: 5, scope: !737, inlinedAt: !741)
!967 = !DILocation(line: 810, column: 1, scope: !968, inlinedAt: !969)
!968 = distinct !DISubprogram(name: "drop_in_place<pyo3::internal::state::AttachGuard>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsbm5zPlkZccl_4pyo38internal5state11AttachGuardECs2mZqlW55729_12polars_utils", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!969 = distinct !DILocation(line: 419, column: 5, scope: !737, inlinedAt: !741)
!970 = !DILocation(line: 413, column: 5, scope: !737, inlinedAt: !741)
!971 = !DILocation(line: 240, column: 35, scope: !748, inlinedAt: !750)
!972 = !DILocation(line: 810, column: 1, scope: !968, inlinedAt: !973)
!973 = distinct !DILocation(line: 419, column: 5, scope: !737, inlinedAt: !741)
!974 = !DILocation(line: 2173, column: 9, scope: !975, inlinedAt: !735)
!975 = distinct !DISubprogram(name: "branch<pyo3::pybacked::PyBackedBytes, pyo3::err::PyErr>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtCsbm5zPlkZccl_4pyo38pybacked13PyBackedBytesNtNtBO_3err5PyErrENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !760, file: !170, line: 2172, type: !11, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!976 = !DILocation(line: 269, column: 13, scope: !16, inlinedAt: !977)
!977 = distinct !DILocation(line: 832, column: 18, scope: !21, inlinedAt: !978)
!978 = distinct !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !979)
!979 = distinct !DILocation(line: 240, column: 35, scope: !748, inlinedAt: !750)
!980 = !DILocation(line: 2189, column: 23, scope: !981, inlinedAt: !983)
!981 = distinct !DILexicalBlock(scope: !982, file: !170, line: 2189, column: 13)
!982 = distinct !DISubprogram(name: "from_residual<(), pyo3::err::PyErr, polars_error::PolarsError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsbm5zPlkZccl_4pyo33err5PyErrEE13from_residualCs2mZqlW55729_12polars_utils", scope: !894, file: !170, line: 2187, type: !11, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!983 = !DILocation(line: 223, column: 18, scope: !984)
!984 = !DILexicalBlockFile(scope: !985, file: !728, discriminator: 2)
!985 = distinct !DILexicalBlock(scope: !986, file: !728, line: 241, column: 7)
!986 = distinct !DILexicalBlock(scope: !734, file: !728, line: 241, column: 7)
!987 = !DILocation(line: 2175, column: 23, scope: !988, inlinedAt: !735)
!988 = distinct !DILexicalBlock(scope: !975, file: !170, line: 2175, column: 13)
!989 = !DILocation(line: 241, column: 7, scope: !734)
!990 = !DILocation(line: 250, column: 2, scope: !727)
!991 = !DILocation(line: 223, column: 18, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !728, line: 223, column: 18)
!993 = distinct !DILexicalBlock(scope: !734, file: !728, line: 241, column: 7)
!994 = !DILocation(line: 1037, column: 19, scope: !995, inlinedAt: !999)
!995 = distinct !DISubprogram(name: "push_mut<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2mZqlW55729_12polars_utils", scope: !997, file: !996, line: 1035, type: !11, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!996 = !DIFile(filename: "library/alloc/src/vec/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "798a33fa32aec5b8561311078a20d89c")
!997 = !DINamespace(name: "Vec", scope: !998)
!998 = !DINamespace(name: "vec", scope: !82)
!999 = distinct !DILocation(line: 1004, column: 22, scope: !1000, inlinedAt: !1001)
!1000 = distinct !DISubprogram(name: "push<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE4pushCs2mZqlW55729_12polars_utils", scope: !997, file: !996, line: 1003, type: !11, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1001 = !DILocation(line: 244, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !734, file: !728, line: 223, column: 5)
!1003 = !{!1004}
!1004 = distinct !{!1004, !1005, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2mZqlW55729_12polars_utils: argument 0"}
!1005 = distinct !{!1005, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2mZqlW55729_12polars_utils"}
!1006 = !DILocation(line: 619, column: 49, scope: !1007, inlinedAt: !1011)
!1007 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCs2mZqlW55729_12polars_utils", scope: !1009, file: !1008, line: 618, type: !11, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1008 = !DIFile(filename: "library/alloc/src/raw_vec/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "574f79ffb8958f4ee3ea71272af6c6ad")
!1009 = !DINamespace(name: "RawVecInner", scope: !1010)
!1010 = !DINamespace(name: "raw_vec", scope: !82)
!1011 = distinct !DILocation(line: 309, column: 20, scope: !1012, inlinedAt: !1014)
!1012 = distinct !DISubprogram(name: "capacity<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8capacityCs2mZqlW55729_12polars_utils", scope: !1013, file: !1008, line: 308, type: !11, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1013 = !DINamespace(name: "RawVec", scope: !1010)
!1014 = distinct !DILocation(line: 1040, column: 28, scope: !1015, inlinedAt: !999)
!1015 = distinct !DILexicalBlock(scope: !995, file: !996, line: 1037, column: 9)
!1016 = !DILocation(line: 1040, column: 12, scope: !1015, inlinedAt: !999)
!1017 = !DILocation(line: 1041, column: 22, scope: !1015, inlinedAt: !999)
!1018 = !DILocation(line: 250, column: 1, scope: !734)
!1019 = !DILocation(line: 614, column: 9, scope: !1020, inlinedAt: !1021)
!1020 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs2mZqlW55729_12polars_utils", scope: !1009, file: !1008, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1021 = distinct !DILocation(line: 609, column: 14, scope: !1022, inlinedAt: !1023)
!1022 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs2mZqlW55729_12polars_utils", scope: !1009, file: !1008, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1023 = distinct !DILocation(line: 296, column: 20, scope: !1024, inlinedAt: !1025)
!1024 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCs2mZqlW55729_12polars_utils", scope: !1013, file: !1008, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1025 = distinct !DILocation(line: 2026, column: 18, scope: !1026, inlinedAt: !1027)
!1026 = distinct !DISubprogram(name: "as_mut_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE10as_mut_ptrCs2mZqlW55729_12polars_utils", scope: !997, file: !996, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1027 = distinct !DILocation(line: 1044, column: 28, scope: !1015, inlinedAt: !999)
!1028 = !DILocation(line: 961, column: 18, scope: !1029, inlinedAt: !1033)
!1029 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCs2mZqlW55729_12polars_utils", scope: !1031, file: !1030, line: 927, type: !11, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1030 = !DIFile(filename: "library/core/src/ptr/mut_ptr.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7c03c8e0ae695174f7f10881dc49d2cb")
!1031 = !DINamespace(name: "{impl#0}", scope: !1032)
!1032 = !DINamespace(name: "mut_ptr", scope: !9)
!1033 = distinct !DILocation(line: 1044, column: 41, scope: !1015, inlinedAt: !999)
!1034 = !DILocation(line: 1921, column: 41, scope: !1035, inlinedAt: !1036)
!1035 = distinct !DISubprogram(name: "write<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writehECs2mZqlW55729_12polars_utils", scope: !9, file: !8, line: 1898, type: !11, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1036 = distinct !DILocation(line: 1045, column: 13, scope: !1037, inlinedAt: !999)
!1037 = distinct !DILexicalBlock(scope: !1015, file: !996, line: 1044, column: 13)
!1038 = !DILocation(line: 1046, column: 13, scope: !1037, inlinedAt: !999)
!1039 = !DILocation(line: 3905, column: 24, scope: !1040, inlinedAt: !1041)
!1040 = distinct !DISubprogram(name: "atomic_load<u32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadmECs2mZqlW55729_12polars_utils", scope: !301, file: !300, line: 3900, type: !11, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1041 = distinct !DILocation(line: 2870, column: 26, scope: !1042, inlinedAt: !1043)
!1042 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE4load", scope: !305, file: !300, line: 2868, type: !11, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1043 = distinct !DILocation(line: 87, column: 31, scope: !1044, inlinedAt: !1046)
!1044 = distinct !DISubprogram(name: "is_completed", linkageName: "_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once12is_completed", scope: !1045, file: !356, line: 84, type: !11, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1045 = !DINamespace(name: "Once", scope: !358)
!1046 = distinct !DILocation(line: 221, column: 23, scope: !1047, inlinedAt: !1049)
!1047 = distinct !DISubprogram(name: "call_once_force<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<[u8; 2], fn() -> [u8; 2]>>", linkageName: "_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockAhj2_E5force0ECs2mZqlW55729_12polars_utils", scope: !1048, file: !332, line: 216, type: !26, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1048 = !DINamespace(name: "Once", scope: !335)
!1049 = distinct !DILocation(line: 242, column: 19, scope: !1050, inlinedAt: !1052)
!1050 = distinct !DISubprogram(name: "force<[u8; 2], fn() -> [u8; 2]>", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB2_8LazyLockAhj2_E5forceCs2mZqlW55729_12polars_utils", scope: !1051, file: !367, line: 241, type: !11, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1051 = !DINamespace(name: "LazyLock", scope: !370)
!1052 = !DILocation(line: 357, column: 9, scope: !1053, inlinedAt: !1055)
!1053 = distinct !DISubprogram(name: "deref<[u8; 2], fn() -> [u8; 2]>", linkageName: "_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockAhj2_ENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs2mZqlW55729_12polars_utils", scope: !1054, file: !367, line: 356, type: !11, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1054 = !DINamespace(name: "{impl#3}", scope: !370)
!1055 = !DILocation(line: 245, column: 28, scope: !1002)
!1056 = !DILocation(line: 221, column: 12, scope: !1047, inlinedAt: !1049)
!1057 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1058 = !DILocation(line: 225, column: 13, scope: !1047, inlinedAt: !1049)
!1059 = !DILocation(line: 225, column: 21, scope: !1047, inlinedAt: !1049)
!1060 = !DILocation(line: 226, column: 36, scope: !1061, inlinedAt: !1049)
!1061 = distinct !DILexicalBlock(scope: !1047, file: !332, line: 225, column: 9)
!1062 = !DILocation(line: 226, column: 20, scope: !1061, inlinedAt: !1049)
!1063 = !DILocation(line: 226, column: 61, scope: !1061, inlinedAt: !1049)
!1064 = !DILocation(line: 227, column: 5, scope: !1047, inlinedAt: !1049)
!1065 = !DILocation(line: 2906, column: 14, scope: !1066, inlinedAt: !1068)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !996, line: 2905, column: 9)
!1067 = distinct !DISubprogram(name: "append_elements<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2mZqlW55729_12polars_utils", scope: !997, file: !996, line: 2904, type: !11, scopeLine: 2904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1068 = distinct !DILocation(line: 56, column: 23, scope: !1069, inlinedAt: !1074)
!1069 = distinct !DILexicalBlock(scope: !1071, file: !1070, line: 55, column: 9)
!1070 = !DIFile(filename: "library/alloc/src/vec/spec_extend.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "64fc232c5e502e0225698dc98d50caf8")
!1071 = distinct !DISubprogram(name: "spec_extend<u8, alloc::alloc::Global>", linkageName: "_RNvXs2_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhEE11spec_extendCs2mZqlW55729_12polars_utils", scope: !1072, file: !1070, line: 54, type: !11, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1072 = !DINamespace(name: "{impl#4}", scope: !1073)
!1073 = !DINamespace(name: "spec_extend", scope: !998)
!1074 = !DILocation(line: 3527, column: 14, scope: !1075, inlinedAt: !1076)
!1075 = distinct !DISubprogram(name: "extend_from_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCs2mZqlW55729_12polars_utils", scope: !997, file: !996, line: 3526, type: !11, scopeLine: 3526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1076 = !DILocation(line: 245, column: 9, scope: !1002)
!1077 = !DILocation(line: 3024, column: 19, scope: !1078, inlinedAt: !1079)
!1078 = distinct !DISubprogram(name: "len<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE3lenCs2mZqlW55729_12polars_utils", scope: !997, file: !996, line: 3023, type: !11, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1079 = distinct !DILocation(line: 2907, column: 24, scope: !1066, inlinedAt: !1068)
!1080 = !{!1081}
!1081 = distinct !{!1081, !1082, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2mZqlW55729_12polars_utils: argument 0"}
!1082 = distinct !{!1082, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2mZqlW55729_12polars_utils"}
!1083 = !DILocation(line: 3029, column: 37, scope: !1084, inlinedAt: !1079)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !996, line: 3024, column: 9)
!1085 = !DILocation(line: 3029, column: 18, scope: !1084, inlinedAt: !1079)
!1086 = !DILocation(line: 614, column: 9, scope: !1087, inlinedAt: !1088)
!1087 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs2mZqlW55729_12polars_utils", scope: !1009, file: !1008, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1088 = distinct !DILocation(line: 609, column: 14, scope: !1089, inlinedAt: !1090)
!1089 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs2mZqlW55729_12polars_utils", scope: !1009, file: !1008, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1090 = distinct !DILocation(line: 296, column: 20, scope: !1091, inlinedAt: !1092)
!1091 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCs2mZqlW55729_12polars_utils", scope: !1013, file: !1008, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1092 = distinct !DILocation(line: 2026, column: 18, scope: !1093, inlinedAt: !1094)
!1093 = distinct !DISubprogram(name: "as_mut_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE10as_mut_ptrCs2mZqlW55729_12polars_utils", scope: !997, file: !996, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1094 = distinct !DILocation(line: 2910, column: 66, scope: !1095, inlinedAt: !1068)
!1095 = distinct !DILexicalBlock(scope: !1066, file: !996, line: 2907, column: 9)
!1096 = !DILocation(line: 961, column: 18, scope: !1097, inlinedAt: !1098)
!1097 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCs2mZqlW55729_12polars_utils", scope: !1031, file: !1030, line: 927, type: !11, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1098 = distinct !DILocation(line: 2910, column: 79, scope: !1095, inlinedAt: !1068)
!1099 = !DILocation(line: 552, column: 14, scope: !1100, inlinedAt: !1101)
!1100 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECs2mZqlW55729_12polars_utils", scope: !9, file: !8, line: 531, type: !11, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1101 = distinct !DILocation(line: 2910, column: 17, scope: !1095, inlinedAt: !1068)
!1102 = !DILocation(line: 2913, column: 9, scope: !1095, inlinedAt: !1068)
!1103 = !DILocation(line: 444, column: 20, scope: !1104, inlinedAt: !1108)
!1104 = distinct !DISubprogram(name: "as_ref<[u8]>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullShE6as_refCs2mZqlW55729_12polars_utils", scope: !1106, file: !1105, line: 440, type: !11, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1105 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "84a86787d0c87de0d69993189aea0a0d")
!1106 = !DINamespace(name: "NonNull", scope: !1107)
!1107 = !DINamespace(name: "non_null", scope: !9)
!1108 = !DILocation(line: 220, column: 28, scope: !1109, inlinedAt: !1113)
!1109 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXsb_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_13PyBackedBytesNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !1111, file: !1110, line: 218, type: !11, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1110 = !DIFile(filename: "src/pybacked.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0", checksumkind: CSK_MD5, checksum: "0c9a12bd5ccf666b9440bef4cdf5e9da")
!1111 = !DINamespace(name: "{impl#13}", scope: !1112)
!1112 = !DINamespace(name: "pybacked", scope: !25)
!1113 = !DILocation(line: 248, column: 27, scope: !1002)
!1114 = !DILocation(line: 2906, column: 14, scope: !1066, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 56, column: 23, scope: !1116, inlinedAt: !1117)
!1116 = distinct !DILexicalBlock(scope: !1071, file: !1070, line: 55, column: 9)
!1117 = !DILocation(line: 3527, column: 14, scope: !1118, inlinedAt: !1119)
!1118 = !DILexicalBlockFile(scope: !1075, file: !996, discriminator: 2)
!1119 = !DILocation(line: 248, column: 9, scope: !1002)
!1120 = !DILocation(line: 3024, column: 19, scope: !1078, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 2907, column: 24, scope: !1066, inlinedAt: !1115)
!1122 = !{!1123}
!1123 = distinct !{!1123, !1124, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2mZqlW55729_12polars_utils: argument 0"}
!1124 = distinct !{!1124, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs2mZqlW55729_12polars_utils"}
!1125 = !DILocation(line: 3029, column: 37, scope: !1084, inlinedAt: !1121)
!1126 = !DILocation(line: 3029, column: 18, scope: !1084, inlinedAt: !1121)
!1127 = !DILocation(line: 2908, column: 12, scope: !1095, inlinedAt: !1115)
!1128 = !DILocation(line: 614, column: 9, scope: !1087, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 609, column: 14, scope: !1089, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 296, column: 20, scope: !1091, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 2026, column: 18, scope: !1093, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 2910, column: 66, scope: !1095, inlinedAt: !1115)
!1133 = !DILocation(line: 961, column: 18, scope: !1097, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 2910, column: 79, scope: !1095, inlinedAt: !1115)
!1135 = !DILocation(line: 552, column: 14, scope: !1100, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 2910, column: 17, scope: !1095, inlinedAt: !1115)
!1137 = !DILocation(line: 2913, column: 9, scope: !1095, inlinedAt: !1115)
!1138 = !DILocation(line: 2908, column: 9, scope: !1095, inlinedAt: !1115)
!1139 = !DILocation(line: 249, column: 5, scope: !1002)
!1140 = !{!1141}
!1141 = distinct !{!1141, !1142, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked13PyBackedBytesECs2mZqlW55729_12polars_utils: argument 0"}
!1142 = distinct !{!1142, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked13PyBackedBytesECs2mZqlW55729_12polars_utils"}
!1143 = !DILocation(line: 810, column: 1, scope: !271, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 250, column: 1, scope: !734)
!1145 = !{!1146}
!1146 = distinct !{!1146, !1147, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked20PyBackedBytesStorageECs2mZqlW55729_12polars_utils: argument 0"}
!1147 = distinct !{!1147, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked20PyBackedBytesStorageECs2mZqlW55729_12polars_utils"}
!1148 = !DILocation(line: 810, column: 1, scope: !277, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 810, column: 1, scope: !271, inlinedAt: !1144)
!1150 = !{!1146, !1141}
!1151 = !DILocation(line: 75, column: 26, scope: !128, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 250, column: 5, scope: !135, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 461, column: 37, scope: !141, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 39, column: 18, scope: !148, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 2290, column: 16, scope: !151, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 2306, column: 9, scope: !285, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 810, column: 1, scope: !287, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 810, column: 1, scope: !277, inlinedAt: !1149)
!1159 = !DILocation(line: 462, column: 12, scope: !162, inlinedAt: !1154)
!1160 = !DILocation(line: 39, column: 31, scope: !165, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 462, column: 12, scope: !162, inlinedAt: !1154)
!1162 = !DILocation(line: 1595, column: 9, scope: !169, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 39, column: 44, scope: !148, inlinedAt: !1155)
!1164 = !DILocation(line: 2294, column: 17, scope: !151, inlinedAt: !1156)
!1165 = !DILocation(line: 269, column: 13, scope: !177, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 2292, column: 26, scope: !151, inlinedAt: !1156)
!1167 = !DILocation(line: 2290, column: 13, scope: !151, inlinedAt: !1156)
!1168 = !DILocation(line: 3956, column: 24, scope: !299, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 3193, column: 26, scope: !304, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 2814, column: 32, scope: !307, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 810, column: 1, scope: !312, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 810, column: 1, scope: !277, inlinedAt: !1149)
!1173 = !{!1174, !1176, !1146, !1141}
!1174 = distinct !{!1174, !1175, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcShENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils: argument 0"}
!1175 = distinct !{!1175, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcShENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils"}
!1176 = distinct !{!1176, !1177, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcShEECs2mZqlW55729_12polars_utils: argument 0"}
!1177 = distinct !{!1177, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcShEECs2mZqlW55729_12polars_utils"}
!1178 = !DILocation(line: 2814, column: 12, scope: !307, inlinedAt: !1171)
!1179 = !DILocation(line: 4387, column: 24, scope: !321, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 64, column: 9, scope: !307, inlinedAt: !1171)
!1181 = !DILocation(line: 2857, column: 18, scope: !307, inlinedAt: !1171)
!1182 = !DILocation(line: 212, column: 1, scope: !727)
!1183 = distinct !DISubprogram(name: "python_object_deserialize", linkageName: "_RNvNtCs2mZqlW55729_12polars_utils12pl_serialize25python_object_deserialize", scope: !729, file: !728, line: 253, type: !11, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1184 = !DILocation(line: 261, column: 27, scope: !1183)
!1185 = !DILocation(line: 262, column: 8, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !728, line: 261, column: 5)
!1187 = !DILocation(line: 568, column: 12, scope: !1188, inlinedAt: !1193)
!1188 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCs2mZqlW55729_12polars_utils", scope: !1190, file: !1189, line: 567, type: !11, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
end_hunk_1

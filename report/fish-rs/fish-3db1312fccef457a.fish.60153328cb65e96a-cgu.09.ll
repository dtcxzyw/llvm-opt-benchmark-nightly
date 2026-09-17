Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.09?download=true
inline.NumInlined: 2082
inline.NumDeleted: 649
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtNtCs8frGy5WneL6_4fish6reader14history_search10SearchModeBM_EBS_:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #38
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtNtCs8frGy5WneL6_4fish6reader6reader15EditableLineTagBM_EBS_(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #38
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtNtCs8frGy5WneL6_4fish7history7history15SearchDirectionBM_EBS_(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #38
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtNtCs8frGy5WneL6_4fish8builtins8argparse15UnknownHandlingBM_EBS_(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #38
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedONtNtB4_3ffi6c_voidBM_ECs8frGy5WneL6_4fish(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #38
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedQINtNtCs1xwejQucwHj_5alloc3vec3VechERAhj2_ECs8frGy5WneL6_4fish(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #38
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedQINtNtCs1xwejQucwHj_5alloc3vec3VechERAhj3_ECs8frGy5WneL6_4fish(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #38
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedRShRAhj2_ECs8frGy5WneL6_4fish(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #38
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedbbECs8frGy5WneL6_4fish(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RINvNtCs8frGy5WneL6_4fish8terminal10best_colorINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorEEB4_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !505, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8, !alias.scope !505 ; 2 uses
  %i.e = icmp eq ptr %.promoted, %i.c
  br i1 %i.e, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.051 = phi i8 [ %spec.select38, %bb.b ], [ -1, %bb.a ] ; 3 uses
  %.sroa.5.sroa.0.050 = phi i24 [ %spec.select, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %.sroa.011.049 = phi i8 [ %.sroa.011.2, %bb.b ], [ -1, %bb.a ] ; 3 uses
  %.sroa.7.048 = phi i24 [ %.sroa.7.2, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %.sroa.017.047 = phi i8 [ %.sroa.017.1, %bb.b ], [ -1, %bb.a ] ; 3 uses
  %.sroa.719.046 = phi i24 [ %.sroa.719.1, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.g, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.sroa.03.0.copyload.i = load i32, ptr %i.f, align 1, !noalias !505 ; 3 uses
  %.sroa.029.0.extract.trunc = trunc i32 %.sroa.03.0.copyload.i to i8 ; 2 uses
  %.not31 = icmp eq i8 %.sroa.029.0.extract.trunc, -1
  br i1 %.not31, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit
  %.sroa.430.0.extract.shift = lshr i32 %.sroa.03.0.copyload.i, 8
  %.sroa.430.0.extract.trunc = trunc nuw i32 %.sroa.430.0.extract.shift to i24 ; 3 uses
  %.not35 = icmp eq i8 %.sroa.0.051, -1           ; 2 uses
  %spec.select = select i1 %.not35, i24 %.sroa.430.0.extract.trunc, i24 %.sroa.5.sroa.0.050 ; 2 uses
  %spec.select38 = select i1 %.not35, i8 %.sroa.029.0.extract.trunc, i8 %.sroa.0.051 ; 2 uses
  %.not36 = icmp eq i8 %.sroa.011.049, -1
  %.sroa.029.0.extract.trunc.mask = and i32 %.sroa.03.0.copyload.i, 255 ; 2 uses
  %i.h = icmp eq i32 %.sroa.029.0.extract.trunc.mask, 2
  %or.cond = and i1 %.not36, %i.h                 ; 2 uses
  %.sroa.7.2 = select i1 %or.cond, i24 %.sroa.430.0.extract.trunc, i24 %.sroa.7.048 ; 2 uses
  %.sroa.011.2 = select i1 %or.cond, i8 2, i8 %.sroa.011.049 ; 2 uses
  %.not37 = icmp eq i8 %.sroa.017.047, -1
  %i.i = icmp eq i32 %.sroa.029.0.extract.trunc.mask, 1
  %or.cond6 = and i1 %.not37, %i.i                ; 2 uses
  %.sroa.719.1 = select i1 %or.cond6, i24 %.sroa.430.0.extract.trunc, i24 %.sroa.719.046 ; 2 uses
  %.sroa.017.1 = select i1 %or.cond6, i8 1, i8 %.sroa.017.047 ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.c
  br i1 %i.j, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.sink.split, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.sink.split: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit, %bb.b
  %.sroa.719.0.lcssa.ph = phi i24 [ %.sroa.719.1, %bb.b ], [ %.sroa.719.046, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit ]
  %.sroa.017.0.lcssa.ph = phi i8 [ %.sroa.017.1, %bb.b ], [ %.sroa.017.047, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit ]
  %.sroa.7.0.lcssa.ph = phi i24 [ %.sroa.7.2, %bb.b ], [ %.sroa.7.048, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit ]
  %.sroa.011.0.lcssa.ph = phi i8 [ %.sroa.011.2, %bb.b ], [ %.sroa.011.049, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit ]
  %.sroa.5.sroa.0.0.lcssa.ph = phi i24 [ %spec.select, %bb.b ], [ %.sroa.5.sroa.0.050, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit ]
  %.sroa.0.0.lcssa.ph = phi i8 [ %spec.select38, %bb.b ], [ %.sroa.0.051, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit ]
  store ptr %i.g, ptr %i.d, align 8, !alias.scope !505
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.sink.split, %bb.a
  %.sroa.719.0.lcssa = phi i24 [ undef, %bb.a ], [ %.sroa.719.0.lcssa.ph, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.sink.split ]
  %.sroa.017.0.lcssa = phi i8 [ -1, %bb.a ], [ %.sroa.017.0.lcssa.ph, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.sink.split ] ; 2 uses
  %.sroa.7.0.lcssa = phi i24 [ undef, %bb.a ], [ %.sroa.7.0.lcssa.ph, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.sink.split ]
  %.sroa.011.0.lcssa = phi i8 [ -1, %bb.a ], [ %.sroa.011.0.lcssa.ph, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.sink.split ] ; 2 uses
  %.sroa.5.sroa.0.0.lcssa = phi i24 [ undef, %bb.a ], [ %.sroa.5.sroa.0.0.lcssa.ph, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.sink.split ]
  %.sroa.0.0.lcssa = phi i8 [ -1, %bb.a ], [ %.sroa.0.0.lcssa.ph, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.sink.split ]
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsdcxgzuWc7wi_10fish_color5ColorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not32 = trunc i8 %1 to i1
  %.not33 = icmp ne i8 %.sroa.011.0.lcssa, -1
  %brmerge.not45 = and i1 %.not33, %.not32
  %.not = icmp eq i8 %.sroa.017.0.lcssa, -1
  %or.cond39 = select i1 %brmerge.not45, i1 true, i1 %.not ; 2 uses
  %.sroa.7.1 = select i1 %or.cond39, i24 %.sroa.7.0.lcssa, i24 %.sroa.719.0.lcssa
  %.sroa.011.1 = select i1 %or.cond39, i8 %.sroa.011.0.lcssa, i8 %.sroa.017.0.lcssa ; 2 uses
  %.not34 = icmp eq i8 %.sroa.011.1, -1           ; 2 uses
  %.sroa.5.sroa.0.1 = select i1 %.not34, i24 %.sroa.5.sroa.0.0.lcssa, i24 %.sroa.7.1
  %.sroa.0.1 = select i1 %.not34, i8 %.sroa.0.0.lcssa, i8 %.sroa.011.1
  %.sroa.5.0.insert.ext = zext i24 %.sroa.5.sroa.0.1 to i32
  %.sroa.5.0.insert.shift = shl nuw i32 %.sroa.5.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.1 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngENtNtB14_3rng6RngExt12random_rangejINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.j, !prof !14

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %0, align 8              ; 10 uses
  %i.b = icmp ugt i64 %2, 4294967295
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc i64 %1 to i32                      ; 2 uses
  %i.d = trunc nuw i64 %2 to i32                  ; 2 uses
  %i.e = icmp ult i32 %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %4 = sub nuw i64 %2, %1                         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !521, !noundef !4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 32 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !521, !noundef !4 ; 2 uses
  %i.j = add i64 %i.i, %i.g                       ; 2 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 23)
  %i.l = add i64 %i.k, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !521, !noundef !4 ; 3 uses
  %i.o = shl i64 %i.n, 17
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 24 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !521, !noundef !4
  %i.r = xor i64 %i.q, %i.g                       ; 2 uses
  %i.s = xor i64 %i.n, %i.i                       ; 3 uses
  %i.t = xor i64 %i.r, %i.n                       ; 4 uses
  store i64 %i.t, ptr %i.m, align 8, !noalias !521
  %i.u = xor i64 %i.s, %i.g                       ; 5 uses
  store i64 %i.u, ptr %i.f, align 8, !noalias !521
  %i.v = xor i64 %i.r, %i.o                       ; 2 uses
  store i64 %i.v, ptr %i.p, align 8, !noalias !521
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 45) ; 3 uses
  store i64 %i.w, ptr %i.h, align 8, !noalias !521
  %i.x = lshr i64 %i.l, 32
  %i.y = mul nuw i64 %i.x, %4                     ; 2 uses
  %i.z = lshr i64 %i.y, 32                        ; 2 uses
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  %i.ab = sub i32 %i.c, %i.d
  %i.ac = icmp ult i32 %i.ab, %i.aa
  br i1 %i.ac, label %bb.e, label %_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBc_4rngs5small8SmallRngEmmECs8frGy5WneL6_4fish.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ad = add i64 %i.w, %i.u                      ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 23)
  %i.af = add i64 %i.ae, %i.u
  %i.ag = shl i64 %i.t, 17
  %i.ah = xor i64 %i.v, %i.u                      ; 2 uses
  %i.ai = xor i64 %i.t, %i.w                      ; 3 uses
  %i.aj = xor i64 %i.ah, %i.t
  store i64 %i.aj, ptr %i.m, align 8, !alias.scope !522, !noalias !521
  %i.ak = xor i64 %i.ai, %i.u
  store i64 %i.ak, ptr %i.f, align 8, !alias.scope !522, !noalias !521
  %i.al = xor i64 %i.ah, %i.ag
  store i64 %i.al, ptr %i.p, align 8, !alias.scope !522, !noalias !521
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 45)
  store i64 %i.am, ptr %i.h, align 8, !alias.scope !522, !noalias !521
  %i.an = lshr i64 %i.af, 32
  %5 = mul nuw i64 %i.an, %4
  %6 = lshr i64 %5, 32
  %7 = trunc nuw i64 %6 to i32
  %i.ao = xor i32 %i.aa, -1
  %.not10.i.i.i.i = icmp ult i32 %i.ao, %7
  %i.ap = zext i1 %.not10.i.i.i.i to i64
  %i.aq = add nuw nsw i64 %i.z, %i.ap
  br label %_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBc_4rngs5small8SmallRngEmmECs8frGy5WneL6_4fish.exit.i.i

bb.f:                                             ; preds = %bb.b
  %i.ar = sub nuw i64 %2, %1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.val2, i64 8 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !noalias !523, !noundef !4 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val2, i64 32 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !noalias !523, !noundef !4 ; 2 uses
  %i.aw = add i64 %i.av, %i.at                    ; 2 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 23)
  %i.ay = add i64 %i.ax, %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !noalias !523, !noundef !4 ; 3 uses
  %i.bb = shl i64 %i.ba, 17
  %i.bc = getelementptr inbounds nuw i8, ptr %.val2, i64 24 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !523, !noundef !4
  %i.be = xor i64 %i.bd, %i.at                    ; 2 uses
  %i.bf = xor i64 %i.ba, %i.av                    ; 3 uses
  %i.bg = xor i64 %i.be, %i.ba                    ; 4 uses
  store i64 %i.bg, ptr %i.az, align 8, !noalias !523
  %i.bh = xor i64 %i.bf, %i.at                    ; 5 uses
  store i64 %i.bh, ptr %i.as, align 8, !noalias !523
  %i.bi = xor i64 %i.be, %i.bb                    ; 2 uses
  store i64 %i.bi, ptr %i.bc, align 8, !noalias !523
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 45) ; 3 uses
  store i64 %i.bj, ptr %i.au, align 8, !noalias !523
  %i.bk = zext i64 %i.ar to i128                  ; 2 uses
  %i.bl = zext i64 %i.ay to i128
  %i.bm = mul nuw i128 %i.bl, %i.bk               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = trunc nuw i128 %i.bn to i64             ; 2 uses
  %i.bp = trunc i128 %i.bm to i64                 ; 2 uses
  %i.bq = sub i64 %1, %2
  %i.br = icmp ult i64 %i.bq, %i.bp
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = add i64 %i.bj, %i.bh                    ; 2 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 23)
  %i.bu = add i64 %i.bt, %i.bh
  %i.bv = shl i64 %i.bg, 17
  %i.bw = xor i64 %i.bi, %i.bh                    ; 2 uses
  %i.bx = xor i64 %i.bg, %i.bj                    ; 3 uses
  %i.by = xor i64 %i.bw, %i.bg
  store i64 %i.by, ptr %i.az, align 8, !alias.scope !524, !noalias !523
  %i.bz = xor i64 %i.bx, %i.bh
  store i64 %i.bz, ptr %i.as, align 8, !alias.scope !524, !noalias !523
  %i.ca = xor i64 %i.bw, %i.bv
  store i64 %i.ca, ptr %i.bc, align 8, !alias.scope !524, !noalias !523
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 45)
  store i64 %i.cb, ptr %i.au, align 8, !alias.scope !524, !noalias !523
  %8 = zext i64 %i.bu to i128
  %9 = mul nuw i128 %8, %i.bk
  %10 = lshr i128 %9, 64
  %11 = trunc nuw i128 %10 to i64
  %i.cc = xor i64 %i.bp, -1
  %.not7.i.i.i.i = icmp ult i64 %i.cc, %11
  %i.cd = zext i1 %.not7.i.i.i.i to i64
  %i.ce = add nuw i64 %i.cd, %i.bo
  br label %bb.h

_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBc_4rngs5small8SmallRngEmmECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.aq, %bb.e ], [ %i.z, %bb.d ]
  %i.cf = add i64 %.sroa.04.0.i.i.i.i, %1
  %.sroa.6.0.extract.shift.i.i = and i64 %i.cf, 4294967295
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtCsfFbyYyxlmiH_4rand5distr7uniform5ErrorE6unwrapCs8frGy5WneL6_4fish.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.ce, %bb.g ], [ %i.bo, %bb.f ]
  %i.cg = add i64 %.sroa.01.0.i.i.i.i, %1
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtCsfFbyYyxlmiH_4rand5distr7uniform5ErrorE6unwrapCs8frGy5WneL6_4fish.exit

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !525
  store i8 0, ptr %i.a, align 1, !noalias !525
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #38, !noalias !526
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtCsfFbyYyxlmiH_4rand5distr7uniform5ErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.h, %_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBc_4rngs5small8SmallRngEmmECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.74.0.ph = phi i64 [ %.sroa.6.0.extract.shift.i.i, %_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBc_4rngs5small8SmallRngEmmECs8frGy5WneL6_4fish.exit.i.i ], [ %i.cg, %bb.h ]
  ret i64 %.sroa.74.0.ph

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngENtNtB14_3rng6RngExt12random_rangeyINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveyEECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %1, align 8, !alias.scope !538, !noalias !539, !noundef !4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !alias.scope !539, !noalias !538, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %.val, %.val1
  br i1 %.not.i, label %bb.f, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %.val4 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = sub nuw i64 %.val1, %.val                ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !540, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val4, i64 32 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !540, !noundef !4 ; 2 uses
  %i.i = add i64 %i.h, %i.f                       ; 2 uses
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 23)
  %i.k = add i64 %i.j, %i.f                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val4, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !540, !noundef !4 ; 3 uses
  %i.n = shl i64 %i.m, 17
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 24 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !540, !noundef !4
  %i.q = xor i64 %i.p, %i.f                       ; 2 uses
  %i.r = xor i64 %i.m, %i.h                       ; 3 uses
  %i.s = xor i64 %i.q, %i.m                       ; 4 uses
  store i64 %i.s, ptr %i.l, align 8, !noalias !540
  %i.t = xor i64 %i.r, %i.f                       ; 5 uses
  store i64 %i.t, ptr %i.e, align 8, !noalias !540
  %i.u = xor i64 %i.q, %i.n                       ; 2 uses
  store i64 %i.u, ptr %i.o, align 8, !noalias !540
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 45) ; 3 uses
  store i64 %i.v, ptr %i.g, align 8, !noalias !540
  br i1 %i.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtCsfFbyYyxlmiH_4rand5distr7uniform5ErrorE6unwrapCs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = zext i64 %i.c to i128                    ; 2 uses
  %i.x = zext i64 %i.k to i128
  %i.y = mul nuw i128 %i.x, %i.w                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = trunc nuw i128 %i.z to i64              ; 2 uses
  %i.ab = trunc i128 %i.y to i64                  ; 2 uses
  %i.ac = xor i64 %i.b, -1
  %i.ad = icmp ugt i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = add i64 %i.v, %i.t                      ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 23)
  %i.ag = add i64 %i.af, %i.t
  %i.ah = shl i64 %i.s, 17
  %i.ai = xor i64 %i.u, %i.t                      ; 2 uses
  %i.aj = xor i64 %i.s, %i.v                      ; 3 uses
  %i.ak = xor i64 %i.ai, %i.s
  store i64 %i.ak, ptr %i.l, align 8, !alias.scope !541, !noalias !540
  %i.al = xor i64 %i.aj, %i.t
  store i64 %i.al, ptr %i.e, align 8, !alias.scope !541, !noalias !540
  %i.am = xor i64 %i.ai, %i.ah
  store i64 %i.am, ptr %i.o, align 8, !alias.scope !541, !noalias !540
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 45)
  store i64 %i.an, ptr %i.g, align 8, !alias.scope !541, !noalias !540
  %3 = zext i64 %i.ag to i128
  %4 = mul nuw i128 %3, %i.w
  %5 = lshr i128 %4, 64
  %6 = trunc nuw i128 %5 to i64
  %i.ao = xor i64 %i.ab, -1
  %.not7.i.i = icmp ult i64 %i.ao, %6
  %i.ap = zext i1 %.not7.i.i to i64
  %i.aq = add nuw i64 %i.ap, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i = phi i64 [ %i.aq, %bb.d ], [ %i.aa, %bb.c ]
  %i.ar = add i64 %.sroa.01.0.i.i, %.val
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtCsfFbyYyxlmiH_4rand5distr7uniform5ErrorE6unwrapCs8frGy5WneL6_4fish.exit

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtCsfFbyYyxlmiH_4rand5distr7uniform5ErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.e, %bb.b
  %.sroa.65.0 = phi i64 [ %i.ar, %bb.e ], [ %i.k, %bb.b ]
  ret i64 %.sroa.65.0

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCs1xwejQucwHj_5alloc4sync3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE5force0E0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !13, !noundef !4 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !7, !noundef !4
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs1xwejQucwHj_5alloc4sync3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE5force0Cs8frGy5WneL6_4fish.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #38
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs1xwejQucwHj_5alloc4sync3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE5force0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.f = tail call { ptr, i64 } %i.e(), !inline_history !542 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs8frGy5WneL6_4fish18universal_notifier17UniversalNotifierEL_EE5force0E0B2j_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !13, !noundef !4 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !7, !noundef !4
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs8frGy5WneL6_4fish18universal_notifier17UniversalNotifierEL_EE5force0B1y_.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #38
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs8frGy5WneL6_4fish18universal_notifier17UniversalNotifierEL_EE5force0B1y_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.f = tail call { ptr, ptr } %i.e(), !inline_history !543 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtCs8frGy5WneL6_4fish10fd_monitor9FdMonitorE5force0E0B1J_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !13, !noundef !4 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !7, !noundef !4
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtCs8frGy5WneL6_4fish10fd_monitor9FdMonitorE5force0BY_.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #38
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtCs8frGy5WneL6_4fish10fd_monitor9FdMonitorE5force0BY_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !inline_history !544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtCs8frGy5WneL6_4fish3env12config_paths8FishPathE5force0E0B1L_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !13, !noundef !4 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !7, !noundef !4
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCs8frGy5WneL6_4fish3env12config_paths8FishPathE5force0B10_.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #38
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCs8frGy5WneL6_4fish3env12config_paths8FishPathE5force0B10_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !inline_history !545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockbE5force0E0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !13, !noundef !4 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !7, !noundef !4
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockbE5force0Cs8frGy5WneL6_4fish.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #38
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockbE5force0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.f = tail call noundef zeroext i1 %i.e(), !inline_history !546
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr %i.b, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCs8frGy5WneL6_4fish3env12config_pathsNtB4_11ConfigPaths14from_exec_path0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 -1, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
end_hunk_0
begin_hunk_1_@tcsetpgrp
declare noundef i32 @tcsetpgrp(i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish6signal21signal_reset_handlers() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @getpgid(i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeRNtNtNtCs3oUPovFnLWP_4core3ffi5c_str4CStrEB6_(i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safexEB6_(i32 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safejEB6_(i32 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #24

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt8slice_toCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeRShEB6_(i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs3oUPovFnLWP_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs3oUPovFnLWP_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #24

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsa_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impm4__fmt(i32 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsm_Cskr4qsHYS30i_15fish_widestringxNtB5_9ToWString10to_wstring(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMso_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB1X_s_0ECs8frGy5WneL6_4fish(i64 noundef range(i64 1, -9223372036854775807), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtB6_5ErrorNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_Cskr4qsHYS30i_15fish_widestringlNtB5_9ToWString10to_wstring(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtNtB8_3num7nonzero7NonZeroyENtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish2io15SeparatedBufferEE9drop_slowB1z_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsk_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXss_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_10StderrLockNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCslEmbWASCaJL_8bitflags6parser9to_writerNtNtCs8frGy5WneL6_4fish8terminal12ColorSupportQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCslEmbWASCaJL_8bitflags6parser9to_writerNtNtNtCs8frGy5WneL6_4fish3env3var7EnvModeQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBO_(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCslEmbWASCaJL_8bitflags6parser9to_writerNtNtNtCs8frGy5WneL6_4fish3env3var11EnvVarFlagsQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBO_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i1, i8 } @_RINvNtCslEmbWASCaJL_8bitflags6parser8from_strNtNtCs8frGy5WneL6_4fish8terminal12ColorSupportEBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i32 @_RINvNtCslEmbWASCaJL_8bitflags6parser8from_strNtNtNtCs8frGy5WneL6_4fish3env3var7EnvModeEBN_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i1, i8 } @_RINvNtCslEmbWASCaJL_8bitflags6parser8from_strNtNtNtCs8frGy5WneL6_4fish3env3var11EnvVarFlagsEBN_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionlENtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_6Binary3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_5Octal3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRjNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRReNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRRSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRlNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt17pointer_fmt_inner(i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtNtB8_3num7nonzero7NonZeromENtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataEE9drop_slowB1f_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtNtCs8frGy5WneL6_4fish8terminal12ColorSupportE3newBT_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtNtNtCs8frGy5WneL6_4fish3env3var11EnvVarFlagsE3newBV_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtNtNtCs8frGy5WneL6_4fish3env3var7EnvModeE3newBV_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtB4_13SpecAdvanceBy15spec_advance_byCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #34

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #29 = { nofree nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #35 = { cold }
attributes #36 = { cold noreturn nounwind }
attributes #37 = { noinline }
attributes #38 = { noinline noreturn }
attributes #39 = { nounwind }
attributes #40 = { noreturn }
attributes #41 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{i64 0, i64 -9223372036854775804}
!7 = !{i8 0, i8 2}
!8 = !{i8 0, i8 3}
!9 = !{i64 -1, i64 -9223372036854775808}
!10 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!11 = !{i32 0, i32 -1}
!12 = !{i64 1, i64 536870913}
!13 = !{i64 8}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{i64 0, i64 8}
!17 = !{i64 0, i64 2}
!18 = !{i64 0, i64 -9223372036854775807}
!19 = !{i8 0, i8 6}
!20 = !{i64 0, i64 3}
!21 = !{i32 0, i32 2}
!22 = !{i32 0, i32 134}
!23 = !{i32 0, i32 1114112}
!24 = !{i64 4}
!25 = !{i32 1, i32 0}
!26 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!27 = !{!"branch_weights", i32 4001, i32 4000000}
!28 = !{i32 -1, i32 1000000000}
!29 = !{!"address", !"read_provenance"}
!30 = !{!"llvm.loop.peeled.count", i32 1}
!31 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!32 = !{i64 0, i64 5}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{i8 0, i8 36}
!35 = !{!"branch_weights", i32 4000000, i32 4001}
!36 = !{i32 -2, i32 1114112}
!37 = distinct !{!37, !"_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_7sources4once4OncecEECs8frGy5WneL6_4fish"}
!38 = distinct !{!38, !37, !"_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_7sources4once4OncecEECs8frGy5WneL6_4fish: argument 0"}
!39 = distinct !{!39, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OncecENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1L_11Utf32StringINtNtBY_7collect6ExtendcE6extendB3_E0ECs8frGy5WneL6_4fish"}
!40 = distinct !{!40, !39, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OncecENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1L_11Utf32StringINtNtBY_7collect6ExtendcE6extendB3_E0ECs8frGy5WneL6_4fish: argument 0"}
!41 = distinct !{!41, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OncecENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvBU_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB27_11Utf32StringINtNtBY_7collect6ExtendcE6extendB3_E0E0ECs8frGy5WneL6_4fish"}
!42 = distinct !{!42, !41, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OncecENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvBU_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB27_11Utf32StringINtNtBY_7collect6ExtendcE6extendB3_E0E0ECs8frGy5WneL6_4fish: argument 0"}
!43 = distinct !{!43, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish"}
!44 = distinct !{!44, !43, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!45 = !{!44, !42, !40, !38}
!46 = distinct !{!46, !"_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB9_6utfstr4iter10CharsUtf32ECs8frGy5WneL6_4fish"}
!47 = distinct !{!47, !46, !"_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB9_6utfstr4iter10CharsUtf32ECs8frGy5WneL6_4fish: argument 0"}
!48 = distinct !{!48, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_eachNCINvXs1V_NtB9_9utfstringNtB2b_11Utf32StringINtNtB11_7collect6ExtendcE6extendB3_E0ECs8frGy5WneL6_4fish"}
!49 = distinct !{!49, !48, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_eachNCINvXs1V_NtB9_9utfstringNtB2b_11Utf32StringINtNtB11_7collect6ExtendcE6extendB3_E0ECs8frGy5WneL6_4fish: argument 0"}
!50 = distinct !{!50, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvBX_8for_each4callcNCINvXs1V_NtB9_9utfstringNtB2x_11Utf32StringINtNtB11_7collect6ExtendcE6extendB3_E0E0ECs8frGy5WneL6_4fish"}
!51 = distinct !{!51, !50, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvBX_8for_each4callcNCINvXs1V_NtB9_9utfstringNtB2x_11Utf32StringINtNtB11_7collect6ExtendcE6extendB3_E0E0ECs8frGy5WneL6_4fish: argument 0"}
!52 = distinct !{!52, !"_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next"}
!53 = distinct !{!53, !52, !"_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next: argument 0"}
!54 = distinct !{!54, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultcNtNtCslLGyqsphxMB_10widestring5error16DecodeUtf32ErrorE6unwrapCs8frGy5WneL6_4fish"}
!55 = distinct !{!55, !54, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultcNtNtCslLGyqsphxMB_10widestring5error16DecodeUtf32ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!56 = distinct !{!56, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish"}
!57 = distinct !{!57, !56, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!58 = !{!47}
!59 = !{!49}
!60 = !{!51}
!61 = !{!53, !51, !49, !47}
!62 = !{!55, !53, !51, !49, !47}
!63 = !{!53}
!64 = !{!57, !51, !49, !47}
!65 = distinct !{!65, !"_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB9_6utfstr4iter10CharsUtf32ECs8frGy5WneL6_4fish"}
!66 = distinct !{!66, !65, !"_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB9_6utfstr4iter10CharsUtf32ECs8frGy5WneL6_4fish: argument 0"}
!67 = distinct !{!67, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_eachNCINvXs1V_NtB9_9utfstringNtB2b_11Utf32StringINtNtB11_7collect6ExtendcE6extendB3_E0ECs8frGy5WneL6_4fish"}
!68 = distinct !{!68, !67, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_eachNCINvXs1V_NtB9_9utfstringNtB2b_11Utf32StringINtNtB11_7collect6ExtendcE6extendB3_E0ECs8frGy5WneL6_4fish: argument 0"}
!69 = distinct !{!69, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvBX_8for_each4callcNCINvXs1V_NtB9_9utfstringNtB2x_11Utf32StringINtNtB11_7collect6ExtendcE6extendB3_E0E0ECs8frGy5WneL6_4fish"}
!70 = distinct !{!70, !69, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvBX_8for_each4callcNCINvXs1V_NtB9_9utfstringNtB2x_11Utf32StringINtNtB11_7collect6ExtendcE6extendB3_E0E0ECs8frGy5WneL6_4fish: argument 0"}
!71 = distinct !{!71, !"_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next"}
!72 = distinct !{!72, !71, !"_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next: argument 0"}
!73 = distinct !{!73, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultcNtNtCslLGyqsphxMB_10widestring5error16DecodeUtf32ErrorE6unwrapCs8frGy5WneL6_4fish"}
!74 = distinct !{!74, !73, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultcNtNtCslLGyqsphxMB_10widestring5error16DecodeUtf32ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!75 = distinct !{!75, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish"}
!76 = distinct !{!76, !75, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!77 = !{!66}
!78 = !{!68}
!79 = !{!70}
!80 = !{!72, !70, !68, !66}
!81 = !{!74, !72, !70, !68, !66}
!82 = !{!72}
!83 = !{!76, !70, !68, !66}
!84 = distinct !{!84, !"_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_7sources4once4OncecEECs8frGy5WneL6_4fish"}
!85 = distinct !{!85, !84, !"_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_7sources4once4OncecEECs8frGy5WneL6_4fish: argument 0"}
!86 = distinct !{!86, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OncecENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1L_11Utf32StringINtNtBY_7collect6ExtendcE6extendB3_E0ECs8frGy5WneL6_4fish"}
!87 = distinct !{!87, !86, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OncecENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1L_11Utf32StringINtNtBY_7collect6ExtendcE6extendB3_E0ECs8frGy5WneL6_4fish: argument 0"}
!88 = distinct !{!88, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OncecENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvBU_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB27_11Utf32StringINtNtBY_7collect6ExtendcE6extendB3_E0E0ECs8frGy5WneL6_4fish"}
!89 = distinct !{!89, !88, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OncecENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvBU_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB27_11Utf32StringINtNtBY_7collect6ExtendcE6extendB3_E0E0ECs8frGy5WneL6_4fish: argument 0"}
!90 = distinct !{!90, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish"}
!91 = distinct !{!91, !90, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!92 = !{!91, !89, !87, !85}
!93 = distinct !{!93, !"_RINvMsf_NtCs8frGy5WneL6_4fish2ioNtB6_20BufferedOutputStream22append_with_separationRINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEB8_"}
!94 = distinct !{!94, !93, !"_RINvMsf_NtCs8frGy5WneL6_4fish2ioNtB6_20BufferedOutputStream22append_with_separationRINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEB8_: argument 1"}
!95 = distinct !{!95, !93, !"_RINvMsf_NtCs8frGy5WneL6_4fish2ioNtB6_20BufferedOutputStream22append_with_separationRINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEB8_: argument 0"}
!96 = distinct !{!96, !"_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEB8_"}
!97 = distinct !{!97, !96, !"_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEB8_: argument 1"}
!98 = distinct !{!98, !96, !"_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEB8_: argument 0"}
!99 = distinct !{!99, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5chainINtNtNtB13_7sources4once4OncecEECs8frGy5WneL6_4fish"}
!100 = distinct !{!100, !99, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5chainINtNtNtB13_7sources4once4OncecEECs8frGy5WneL6_4fish: argument 0"}
!101 = !{!95, !94}
!102 = !{!95}
!103 = !{!97}
!104 = !{!98, !97}
!105 = !{!98}
!106 = !{!100}
!107 = distinct !{!107, !"_RINvMsf_NtCs8frGy5WneL6_4fish2ioNtB6_20BufferedOutputStream22append_with_separationRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_"}
!108 = distinct !{!108, !107, !"_RINvMsf_NtCs8frGy5WneL6_4fish2ioNtB6_20BufferedOutputStream22append_with_separationRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_: argument 1"}
!109 = distinct !{!109, !107, !"_RINvMsf_NtCs8frGy5WneL6_4fish2ioNtB6_20BufferedOutputStream22append_with_separationRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_: argument 0"}
!110 = distinct !{!110, !"_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_"}
!111 = distinct !{!111, !110, !"_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_: argument 1"}
!112 = distinct !{!112, !110, !"_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_: argument 0"}
!113 = distinct !{!113, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5chainINtNtNtB13_7sources4once4OncecEECs8frGy5WneL6_4fish"}
!114 = distinct !{!114, !113, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5chainINtNtNtB13_7sources4once4OncecEECs8frGy5WneL6_4fish: argument 0"}
!115 = !{!109, !108}
!116 = !{!109}
!117 = !{!112, !111}
!118 = !{!114}
!119 = distinct !{!119, !"_RINvMsd_NtCs8frGy5WneL6_4fish2ioNtB6_14FdOutputStream6appendINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainNtNtNtB15_3str4iter5CharsINtNtNtB13_7sources4once4OncecEEEB8_"}
!120 = distinct !{!120, !119, !"_RINvMsd_NtCs8frGy5WneL6_4fish2ioNtB6_14FdOutputStream6appendINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainNtNtNtB15_3str4iter5CharsINtNtNtB13_7sources4once4OncecEEEB8_: argument 0"}
!121 = distinct !{!121, !119, !"_RINvMsd_NtCs8frGy5WneL6_4fish2ioNtB6_14FdOutputStream6appendINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainNtNtNtB15_3str4iter5CharsINtNtNtB13_7sources4once4OncecEEEB8_: argument 1"}
!122 = distinct !{!122, !"_RINvMse_NtCs8frGy5WneL6_4fish2ioNtB6_18StringOutputStream6appendINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainNtNtNtB19_3str4iter5CharsINtNtNtB17_7sources4once4OncecEEEB8_"}
!123 = distinct !{!123, !122, !"_RINvMse_NtCs8frGy5WneL6_4fish2ioNtB6_18StringOutputStream6appendINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainNtNtNtB19_3str4iter5CharsINtNtNtB17_7sources4once4OncecEEEB8_: argument 1"}
!124 = distinct !{!124, !"_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_8adapters5chain5ChainNtNtNtB1a_3str4iter5CharsINtNtNtB18_7sources4once4OncecEEECs8frGy5WneL6_4fish"}
!125 = distinct !{!125, !124, !"_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_8adapters5chain5ChainNtNtNtB1a_3str4iter5CharsINtNtNtB18_7sources4once4OncecEEECs8frGy5WneL6_4fish: argument 1"}
!126 = distinct !{!126, !122, !"_RINvMse_NtCs8frGy5WneL6_4fish2ioNtB6_18StringOutputStream6appendINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainNtNtNtB19_3str4iter5CharsINtNtNtB17_7sources4once4OncecEEEB8_: argument 0"}
!127 = distinct !{!127, !124, !"_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtB18_8adapters5chain5ChainNtNtNtB1a_3str4iter5CharsINtNtNtB18_7sources4once4OncecEEECs8frGy5WneL6_4fish: argument 0"}
!128 = distinct !{!128, !"_RINvMsf_NtCs8frGy5WneL6_4fish2ioNtB6_20BufferedOutputStream6appendINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainNtNtNtB1b_3str4iter5CharsINtNtNtB19_7sources4once4OncecEEEB8_"}
!129 = distinct !{!129, !128, !"_RINvMsf_NtCs8frGy5WneL6_4fish2ioNtB6_20BufferedOutputStream6appendINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainNtNtNtB1b_3str4iter5CharsINtNtNtB19_7sources4once4OncecEEEB8_: argument 1"}
!130 = distinct !{!130, !128, !"_RINvMsf_NtCs8frGy5WneL6_4fish2ioNtB6_20BufferedOutputStream6appendINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainNtNtNtB1b_3str4iter5CharsINtNtNtB19_7sources4once4OncecEEEB8_: argument 0"}
!131 = !{!120}
!132 = !{!121}
end_hunk_1

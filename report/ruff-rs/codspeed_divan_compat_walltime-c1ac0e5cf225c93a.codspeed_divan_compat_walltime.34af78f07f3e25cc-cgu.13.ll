Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/codspeed_divan_compat_walltime-c1ac0e5cf225c93a.codspeed_divan_compat_walltime.34af78f07f3e25cc-cgu.13?download=true
inline.NumInlined: 275
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeENvMB1p_B1n_8locationENtNtNtBa_6traits8iterator8Iterator4foldRNtNtB1r_4meta13EntryLocationNCINvNtB8_7flatten11flatten_oneINtNtBc_6option6OptionB3x_EB3x_NCINvNvB2U_6min_by4foldB3x_NvYB3x_NtNtBc_3cmp3Ord3cmpE0E0EB1t_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !224
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeINtNtBa_6option6OptionRNtNtBZ_4meta13EntryLocationEB2s_NvMBX_BV_8locationNCINvNtB6_7flatten11flatten_oneB26_B2s_NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB2s_NvYB2s_NtNtBa_3cmp3Ord3cmpE0E0E0B11_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeINtNtBa_6option6OptionRNtNtBZ_4meta13EntryLocationEB2s_NvMBX_BV_8locationNCINvNtB6_7flatten11flatten_oneB26_B2s_NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB2s_NvYB2s_NtNtBa_3cmp3Ord3cmpE0E0E0B11_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.02.0.i, %bb.c ], [ %.sroa.0.0.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRNtNtBU_4meta13EntryLocationNCINvNtNtB28_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionB2M_EB2M_NvMBS_BQ_8locationNCINvNtB3l_7flatten11flatten_oneB3R_B2M_NCINvNvB22_6min_by4foldB2M_NvYB2M_NtNtBb_3cmp3Ord3cmpE0E0E0EBW_.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRNtNtBU_4meta13EntryLocationNCINvNtNtB28_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionB2M_EB2M_NvMBS_BQ_8locationNCINvNtB3l_7flatten11flatten_oneB3R_B2M_NCINvNvB22_6min_by4foldB2M_NvYB2M_NtNtBb_3cmp3Ord3cmpE0E0E0EBW_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeINtNtBa_6option6OptionRNtNtBZ_4meta13EntryLocationEB2s_NvMBX_BV_8locationNCINvNtB6_7flatten11flatten_oneB26_B2s_NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB2s_NvYB2s_NtNtBa_3cmp3Ord3cmpE0E0E0B11_.exit.i, %bb.a
  %.sroa.0.0.i = phi ptr [ %2, %bb.a ], [ %.sroa.0.0.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeINtNtBa_6option6OptionRNtNtBZ_4meta13EntryLocationEB2s_NvMBX_BV_8locationNCINvNtB6_7flatten11flatten_oneB26_B2s_NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB2s_NvYB2s_NtNtBa_3cmp3Ord3cmpE0E0E0B11_.exit.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENCNvNtNtB1t_5divan8codspeed24collect_walltime_results0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3w_8for_each4calloNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4J_3VecoE14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2c_8adapters3map8map_foldRBQ_ouNCNvNtNtBW_5divan8codspeed24collect_walltime_results0NCINvNvB26_8for_each4calloNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4W_3VecoE14extend_trustedINtB2W_3MapBF_B3w_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load i128, ptr %i.g, align 16, !noalias !234, !noundef !3
  %i.h = udiv i128 %.val16.i, 1000
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.f
  store i128 %i.h, ptr %i.i, align 16, !noalias !235
  %i.j = add i64 %i.f, 1                          ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e
  br i1 %i.l, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2c_8adapters3map8map_foldRBQ_ouNCNvNtNtBW_5divan8codspeed24collect_walltime_results0NCINvNvB26_8for_each4calloNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4W_3VecoE14extend_trustedINtB2W_3MapBF_B3w_EE0E0E0EBW_.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2c_8adapters3map8map_foldRBQ_ouNCNvNtNtBW_5divan8codspeed24collect_walltime_results0NCINvNvB26_8for_each4calloNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4W_3VecoE14extend_trustedINtB2W_3MapBF_B3w_EE0E0E0EBW_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.j, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !234
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRReENCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB1y_9EntryTree13max_name_span00ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNvB35_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8, !noalias !244
  %i.i = icmp eq ptr %i.d, %i.f
  br i1 %i.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRReENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB10_8adapters3map8map_foldRBQ_jjNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB2r_9EntryTree13max_name_span00NCINvNvBU_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0EB2v_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRRRejjNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB17_9EntryTree13max_name_span00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0B1b_.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.ab, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRRRejjNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB17_9EntryTree13max_name_span00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0B1b_.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %1, %bb.b ], [ %.sroa.0.0.i.i3.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRRRejjNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB17_9EntryTree13max_name_span00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0B1b_.exit.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %.val.i = load ptr, ptr %i.o, align 8, !noalias !244, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !245, !noalias !244, !nonnull !3, !align !5, !noundef !3
  %i.p = load i64, ptr %.val.i.i, align 8, !noalias !245, !noundef !3
  %i.q = load ptr, ptr %.val.i, align 8, !noalias !245, !nonnull !3, !noundef !3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !245, !noundef !3 ; 3 uses
  %i.t = icmp ult i64 %i.s, 32
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = call noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s), !noalias !245
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRRRejjNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB17_9EntryTree13max_name_span00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0B1b_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.v = call noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s), !noalias !245
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRRRejjNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB17_9EntryTree13max_name_span00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0B1b_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRRRejjNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB17_9EntryTree13max_name_span00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0B1b_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.v, %bb.e ], [ %i.u, %bb.d ]
  %i.w = mul i64 %i.p, 3
  %i.x = add i64 %i.w, 3
  %i.y = add i64 %i.x, %.sroa.0.0.i.i.i.i         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !246
  store i64 %.sroa.02.0.i, ptr %i.b, align 8, !noalias !247
  store i64 %i.y, ptr %i.a, align 8, !noalias !247
  %i.z = call noundef i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  %i.aa = icmp sgt i8 %i.z, 0
  %.sroa.0.0.i.i3.i.i = select i1 %i.aa, i64 %.sroa.02.0.i, i64 %i.y ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !246
  %i.ab = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.m
  br i1 %i.ac, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRReENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB10_8adapters3map8map_foldRBQ_jjNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB2r_9EntryTree13max_name_span00NCINvNvBU_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0EB2v_.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRReENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB10_8adapters3map8map_foldRBQ_jjNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB2r_9EntryTree13max_name_span00NCINvNvBU_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0EB2v_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRRRejjNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB17_9EntryTree13max_name_span00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0B1b_.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %.sroa.0.0.i.i3.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRRRejjNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB17_9EntryTree13max_name_span00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0B1b_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvMs_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanNtB1w_5Divan15run_bench_entry0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callINtNtNtBc_3num7nonzero7NonZerojENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4B_3VecB3W_E14extend_trustedBN_E0E0EB1y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjINtNtNtBb_3num7nonzero7NonZerojEuNCNvMs_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanNtB2R_5Divan15run_bench_entry0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4O_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2K_EE0E0E0EB2T_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.f ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.f ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load i64, ptr %i.f, align 8, !noalias !256, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.val16.i, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load atomic i64, ptr @_RNvNvNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4util17known_parallelism6CACHED monotonic, align 8, !noalias !257 ; 2 uses
  %.not5.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not5.i.i.i, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.h = invoke fastcc noundef i64 @_RNvNvNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4util17known_parallelism4slow()
          to label %bb.f unwind label %bb.g, !noalias !256

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.1.i.i.i = phi i64 [ %.val16.i, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  store i64 %.sroa.0.1.i.i.i, ptr %i.i, align 8, !noalias !258
  %i.j = add i64 %.val15.i, 1                     ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e
  br i1 %i.l, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjINtNtNtBb_3num7nonzero7NonZerojEuNCNvMs_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanNtB2R_5Divan15run_bench_entry0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4O_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2K_EE0E0E0EB2T_.exit, label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !256
  resume { ptr, i32 } %i.m

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjINtNtNtBb_3num7nonzero7NonZerojEuNCNvMs_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanNtB2R_5Divan15run_bench_entry0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4O_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2K_EE0E0E0EB2T_.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !256
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB14_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB1M_INtNtNtBc_5slice4iter4IterB1M_EEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1M_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1M_E0INtNtBc_6result6ResultB4R_zEECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTdNtNtBa_6string6StringEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBY_ENCINvNtNtB1r_8adapters3map12map_try_foldBW_BY_B2p_INtNtB1t_6result6ResultB2p_zENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRBY_INtNtNtB1t_5slice4iter4IterBY_EEs0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBY_E0E0B3R_ECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtBR_8adapters4take4TakeINtNtNtBR_7sources6repeat6RepeatcEEECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources6repeat6RepeatcEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB2n_6StringINtNtB1B_7collect6ExtendcE6extendBN_E0ECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %1, -1                           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = icmp samesign ult i32 %2, 128
  %i.d = icmp samesign ult i32 %2, 65536
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = trunc i32 %2 to i8                       ; 2 uses
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128                ; 3 uses
  %i.i = lshr i32 %2, 6
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 2 uses
  %i.m = lshr i32 %2, 12
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = lshr i32 %2, 18
  %i.r = trunc nuw nsw i32 %i.q to i8
  %i.s = or disjoint i8 %i.r, -16
  %i.t = or disjoint i8 %i.n, -32
  %i.u = or disjoint i8 %i.j, -64
  %.pre15.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !267 ; 4 uses
  br i1 %i.c, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us.i.i.i, label %.split.i.i.i

_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us.i.i.i: ; preds = %bb.b, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us.i.i.i
  %i.v = phi i64 [ %i.z, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us.i.i.i ], [ %.pre15.i.i.i, %bb.b ] ; 3 uses
  %.sroa.01.0.us.i.i.i = phi i64 [ %i.ab, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us.i.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = load ptr, ptr %i.e, align 8, !alias.scope !267, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.f, ptr %i.y, align 1
  %i.z = add nuw i64 %i.v, 1                      ; 2 uses
  store i64 %i.z, ptr %i.b, align 8, !alias.scope !267
  %i.aa = icmp eq i64 %.sroa.01.0.us.i.i.i, 0
  %i.ab = add i64 %.sroa.01.0.us.i.i.i, -1
  br i1 %i.aa, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources6repeat6RepeatcEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB2n_6StringINtNtB1B_7collect6ExtendcE6extendBN_E0ECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us.i.i.i

.split.i.i.i:                                     ; preds = %bb.b
  %i.ac = icmp samesign ult i32 %2, 2048
  br i1 %i.ac, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us4.i.i.i, label %.split.split.i.i.i

_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us4.i.i.i: ; preds = %.split.i.i.i, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us4.i.i.i
  %i.ad = phi i64 [ %i.ai, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us4.i.i.i ], [ %.pre15.i.i.i, %.split.i.i.i ] ; 3 uses
  %.sroa.01.0.us3.i.i.i = phi i64 [ %i.ak, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us4.i.i.i ], [ %i.a, %.split.i.i.i ] ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %i.af = load ptr, ptr %i.e, align 8, !alias.scope !267, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad ; 2 uses
  store i8 %i.u, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.h, ptr %i.ah, align 1
  %i.ai = add nuw i64 %i.ad, 2                    ; 2 uses
  store i64 %i.ai, ptr %i.b, align 8, !alias.scope !267
  %i.aj = icmp eq i64 %.sroa.01.0.us3.i.i.i, 0
  %i.ak = add i64 %.sroa.01.0.us3.i.i.i, -1
  br i1 %i.aj, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources6repeat6RepeatcEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB2n_6StringINtNtB1B_7collect6ExtendcE6extendBN_E0ECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us4.i.i.i

.split.split.i.i.i:                               ; preds = %.split.i.i.i
  br i1 %i.d, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us7.i.i.i, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i.i

_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us7.i.i.i: ; preds = %.split.split.i.i.i, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us7.i.i.i
  %i.al = phi i64 [ %i.ar, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us7.i.i.i ], [ %.pre15.i.i.i, %.split.split.i.i.i ] ; 3 uses
  %.sroa.01.0.us6.i.i.i = phi i64 [ %i.at, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us7.i.i.i ], [ %i.a, %.split.split.i.i.i ] ; 2 uses
  %i.am = icmp sgt i64 %i.al, -1
  tail call void @llvm.assume(i1 %i.am)
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 3)
  %i.an = load ptr, ptr %i.e, align 8, !alias.scope !267, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al ; 3 uses
  store i8 %i.t, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.l, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i8 %i.h, ptr %i.aq, align 1
  %i.ar = add nuw i64 %i.al, 3                    ; 2 uses
  store i64 %i.ar, ptr %i.b, align 8, !alias.scope !267
  %i.as = icmp eq i64 %.sroa.01.0.us6.i.i.i, 0
  %i.at = add i64 %.sroa.01.0.us6.i.i.i, -1
  br i1 %i.as, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources6repeat6RepeatcEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB2n_6StringINtNtB1B_7collect6ExtendcE6extendBN_E0ECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us7.i.i.i

_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i.i: ; preds = %.split.split.i.i.i, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i.i
  %i.au = phi i64 [ %i.bb, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i.i ], [ %.pre15.i.i.i, %.split.split.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.bd, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i.i ], [ %i.a, %.split.split.i.i.i ] ; 2 uses
  %i.av = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.av)
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4)
  %i.aw = load ptr, ptr %i.e, align 8, !alias.scope !267, !nonnull !3, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au ; 4 uses
  store i8 %i.s, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.p, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i8 %i.l, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  store i8 %i.h, ptr %i.ba, align 1
  %i.bb = add nuw i64 %i.au, 4                    ; 2 uses
  store i64 %i.bb, ptr %i.b, align 8, !alias.scope !267
  %i.bc = icmp eq i64 %.sroa.01.0.i.i.i, 0
  %i.bd = add i64 %.sroa.01.0.i.i.i, -1
  br i1 %i.bc, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources6repeat6RepeatcEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB2n_6StringINtNtB1B_7collect6ExtendcE6extendBN_E0ECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i.i

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources6repeat6RepeatcEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB2n_6StringINtNtB1B_7collect6ExtendcE6extendBN_E0ECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit: ; preds = %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i.i.i, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us7.i.i.i, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us4.i.i.i, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.us.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRmECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRmNtB8_4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit:
  %.val = load i64, ptr %0, align 8, !noundef !3  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = xor i64 %.val, 8317987319222330741
  %i.c = xor i64 %.val2, 7237128888997146477      ; 3 uses
  %i.d = xor i64 %.val, 7816392313619706465
  %.val.i = load i32, ptr %1, align 4, !noalias !270, !noundef !3
  %.pre.i.i.i = zext i32 %.val.i to i64
  %i.e = or disjoint i64 %.pre.i.i.i, 288230376151711744 ; 2 uses
  %i.f = xor i64 %.val2, %i.e
  %i.g = xor i64 %i.f, 8387220255154660723        ; 3 uses
  %i.h = add i64 %i.c, %i.b                       ; 3 uses
  %i.i = add i64 %i.g, %i.d                       ; 2 uses
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 %i.c, i64 %i.c, i64 13)
  %i.k = xor i64 %i.j, %i.h                       ; 3 uses
  %i.l = tail call noundef i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 16)
  %i.m = xor i64 %i.l, %i.i                       ; 3 uses
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 32)
  %i.o = add i64 %i.i, %i.k                       ; 3 uses
  %i.p = add i64 %i.m, %i.n                       ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.k, i64 %i.k, i64 17)
  %i.r = xor i64 %i.o, %i.q                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 21)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = xor i64 %i.p, %i.e
  %i.w = xor i64 %i.u, 255
  %i.x = add i64 %i.v, %i.r                       ; 3 uses
  %i.y = add i64 %i.t, %i.w                       ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 13)
  %i.aa = xor i64 %i.x, %i.z                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.aa, %i.y                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.ah, %i.af                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.ao = xor i64 %i.an, %i.al                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 17)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 21)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 13)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 16)
  %i.be = xor i64 %i.bd, %i.ba                    ; 2 uses
  %i.bf = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 21)
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 32)
  %i.bj = xor i64 %i.bh, %i.bg
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = xor i64 %i.bk, %i.bf
  ret i64 %i.bl
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef range(i64 1, 0) i64 @_RNvNvNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4util17known_parallelism4slow() unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { i64, ptr } @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions21available_parallelism() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0        ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 2 uses
  store i64 %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = trunc nuw i64 %i.c to i1
  %.cast = ptrtoint ptr %i.d to i64
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit: ; preds = %bb.a
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, %bb.a
  %.sroa.0.0 = phi i64 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit ], [ %.cast, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = cmpxchg ptr @_RNvNvNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4util17known_parallelism6CACHED, i64 0, i64 %.sroa.0.0 monotonic monotonic, align 8 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %spec.select = select i1 %i.h, i64 %.sroa.0.0, i64 %i.i
  ret i64 %spec.select
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1j_NtCs4NRVxsYgnAr_4core3fmtQNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanNtNtCscdodAO9FK5_5alloc6string6StringNtB5_9SkipRegex10skip_regex(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  invoke void @_RNvXs1_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanReNtB5_9SkipRegex10skip_regex(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #15
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !273, !noundef !3 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
end_hunk_0

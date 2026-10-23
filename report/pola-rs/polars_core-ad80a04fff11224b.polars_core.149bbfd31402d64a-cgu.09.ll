Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.09?download=true
inline.NumInlined: 13762
inline.NumDeleted: 6781
loop-unroll.NumCompletelyUnrolled: 155
loop-unroll.NumRuntimeUnrolled: 281
loop-unroll.NumUnrolled: 436
begin_hunk_0_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TmB1s_EuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2W_3MapIB4V_IB13_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB3z_8downcastINtB3B_12ChunkedArrayNtNtB3D_9datatypes11Float16TypeE13downcast_iter0ENCINvB3x_16arg_sort_numericB7j_E0EBP_B1s_Es_0NCINvNvB2d_8for_each4callB3i_NCINvMsj_NtB5k_3vecINtB9r_3VecB3i_E14extend_trustedIB4V_BP_B3q_EE0E0E0EB3D_:bb.a
bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.t, %bb.c ], !dbg !167601 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ], !dbg !167602 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !167601
  %.val16.i = load i16, ptr %i.h, align 2, !dbg !167603, !noalias !167586, !noundef !7547
  %i.i = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !167604, !noalias !167587, !noundef !7547 ; 2 uses
  %i.j = add i32 %i.i, 1, !dbg !167605
  store i32 %i.j, ptr %.sroa.8.0.copyload, align 4, !dbg !167605, !noalias !167587
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !167606 ; 2 uses
  store i32 %i.i, ptr %i.k, align 4, !dbg !167607, !noalias !167588
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !167607
  store i16 %.val16.i, ptr %i.l, align 4, !dbg !167607, !noalias !167588
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !167601
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !167601
  %.val16.i.1 = load i16, ptr %i.n, align 2, !dbg !167603, !noalias !167586, !noundef !7547
  %i.o = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !167604, !noalias !167587, !noundef !7547 ; 2 uses
  %i.p = add i32 %i.o, 1, !dbg !167605
  store i32 %i.p, ptr %.sroa.8.0.copyload, align 4, !dbg !167605, !noalias !167587
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !167606 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !167606
  store i32 %i.o, ptr %i.r, align 4, !dbg !167607, !noalias !167588
  %i.s = getelementptr i8, ptr %i.q, i64 12, !dbg !167607
  store i16 %.val16.i.1, ptr %i.s, align 4, !dbg !167607, !noalias !167588
  %i.t = add i64 %i.g, 2, !dbg !167608            ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 2, !dbg !167609 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !167610 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !167610
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_TmBQ_EuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB37_3MapIB55_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB3J_8downcastINtB3L_12ChunkedArrayNtNtB3N_9datatypes11Float16TypeE13downcast_iter0ENCINvB3H_16arg_sort_numericB7s_E0EINtB2q_6CopiedBF_EBQ_Es_0NCINvNvB1A_8for_each4callB3t_NCINvMsj_NtB5t_3vecINtB9O_3VecB3t_E14extend_trustedIB55_B8N_B3A_EE0E0E0E0EB3N_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !167610

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_TmBQ_EuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB37_3MapIB55_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB3J_8downcastINtB3L_12ChunkedArrayNtNtB3N_9datatypes11Float16TypeE13downcast_iter0ENCINvB3H_16arg_sort_numericB7s_E0EINtB2q_6CopiedBF_EBQ_Es_0NCINvNvB1A_8for_each4callB3t_NCINvMsj_NtB5t_3vecINtB9O_3VecB3t_E14extend_trustedIB55_B8N_B3A_EE0E0E0E0EB3N_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.v = and i64 %i.d, 2, !dbg !167610
  %lcmp.mod.not = icmp eq i64 %i.v, 0, !dbg !167610
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_TmBQ_EuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB37_3MapIB55_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB3J_8downcastINtB3L_12ChunkedArrayNtNtB3N_9datatypes11Float16TypeE13downcast_iter0ENCINvB3H_16arg_sort_numericB7s_E0EINtB2q_6CopiedBF_EBQ_Es_0NCINvNvB1A_8for_each4callB3t_NCINvMsj_NtB5t_3vecINtB9O_3VecB3t_E14extend_trustedIB55_B8N_B3A_EE0E0E0E0EB3N_.exit, label %.epil.preheader, !dbg !167610

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_TmBQ_EuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB37_3MapIB55_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB3J_8downcastINtB3L_12ChunkedArrayNtNtB3N_9datatypes11Float16TypeE13downcast_iter0ENCINvB3H_16arg_sort_numericB7s_E0EINtB2q_6CopiedBF_EBQ_Es_0NCINvNvB1A_8for_each4callB3t_NCINvMsj_NtB5t_3vecINtB9O_3VecB3t_E14extend_trustedIB55_B8N_B3A_EE0E0E0E0EB3N_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_TmBQ_EuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB37_3MapIB55_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB3J_8downcastINtB3L_12ChunkedArrayNtNtB3N_9datatypes11Float16TypeE13downcast_iter0ENCINvB3H_16arg_sort_numericB7s_E0EINtB2q_6CopiedBF_EBQ_Es_0NCINvNvB1A_8for_each4callB3t_NCINvMsj_NtB5t_3vecINtB9O_3VecB3t_E14extend_trustedIB55_B8N_B3A_EE0E0E0E0EB3N_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_TmBQ_EuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB37_3MapIB55_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB3J_8downcastINtB3L_12ChunkedArrayNtNtB3N_9datatypes11Float16TypeE13downcast_iter0ENCINvB3H_16arg_sort_numericB7s_E0EINtB2q_6CopiedBF_EBQ_Es_0NCINvNvB1A_8for_each4callB3t_NCINvMsj_NtB5t_3vecINtB9O_3VecB3t_E14extend_trustedIB55_B8N_B3A_EE0E0E0E0EB3N_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !167610
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !167610
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !167601
  %.val16.i.epil = load i16, ptr %i.w, align 2, !dbg !167603, !noalias !167586, !noundef !7547
  %i.x = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !167604, !noalias !167587, !noundef !7547 ; 2 uses
  %i.y = add i32 %i.x, 1, !dbg !167605
  store i32 %i.y, ptr %.sroa.8.0.copyload, align 4, !dbg !167605, !noalias !167587
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !167606 ; 2 uses
  store i32 %i.x, ptr %i.z, align 4, !dbg !167607, !noalias !167588
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4, !dbg !167607
  store i16 %.val16.i.epil, ptr %i.aa, align 4, !dbg !167607, !noalias !167588
  %i.ab = add i64 %.epil.init, 1, !dbg !167608
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_TmBQ_EuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB37_3MapIB55_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB3J_8downcastINtB3L_12ChunkedArrayNtNtB3N_9datatypes11Float16TypeE13downcast_iter0ENCINvB3H_16arg_sort_numericB7s_E0EINtB2q_6CopiedBF_EBQ_Es_0NCINvNvB1A_8for_each4callB3t_NCINvMsj_NtB5t_3vecINtB9O_3VecB3t_E14extend_trustedIB55_B8N_B3A_EE0E0E0E0EB3N_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_TmBQ_EuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB37_3MapIB55_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB3J_8downcastINtB3L_12ChunkedArrayNtNtB3N_9datatypes11Float16TypeE13downcast_iter0ENCINvB3H_16arg_sort_numericB7s_E0EINtB2q_6CopiedBF_EBQ_Es_0NCINvNvB1A_8for_each4callB3t_NCINvMsj_NtB5t_3vecINtB9O_3VecB3t_E14extend_trustedIB55_B8N_B3A_EE0E0E0E0EB3N_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_TmBQ_EuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB37_3MapIB55_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB3J_8downcastINtB3L_12ChunkedArrayNtNtB3N_9datatypes11Float16TypeE13downcast_iter0ENCINvB3H_16arg_sort_numericB7s_E0EINtB2q_6CopiedBF_EBQ_Es_0NCINvNvB1A_8for_each4callB3t_NCINvMsj_NtB5t_3vecINtB9O_3VecB3t_E14extend_trustedIB55_B8N_B3A_EE0E0E0E0EB3N_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_TmBQ_EuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB37_3MapIB55_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB3J_8downcastINtB3L_12ChunkedArrayNtNtB3N_9datatypes11Float16TypeE13downcast_iter0ENCINvB3H_16arg_sort_numericB7s_E0EINtB2q_6CopiedBF_EBQ_Es_0NCINvNvB1A_8for_each4callB3t_NCINvMsj_NtB5t_3vecINtB9O_3VecB3t_E14extend_trustedIB55_B8N_B3A_EE0E0E0E0EB3N_.exit.loopexit.unr-lcssa ], [ %i.ab, %.epil.preheader ], !dbg !167611
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !167611, !noalias !167586
  ret void, !dbg !167612
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_yuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB3v_9datatypes11Float16TypeE00NCINvNvB2d_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5I_3VecyE14extend_trustedINtB2W_3MapBP_B3k_EE0E0E0EB3v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !167613 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !167685 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !167685
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !167685 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !167685
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !167685
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !167685
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !167685 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !167686
  %i.a = icmp eq ptr %0, %1, !dbg !167687
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_yuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB3G_9datatypes11Float16TypeE00NCINvNvB1A_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5T_3VecyE14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3v_EE0E0E0E0EB3G_.exit, label %bb.b, !dbg !167688

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !167689
  %i.c = ptrtoint ptr %0 to i64, !dbg !167689
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !167689
  %i.e = lshr exact i64 %i.d, 1, !dbg !167689
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c, !dbg !167690

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ], !dbg !167691 ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !167692
  %.val16.i = load i16, ptr %i.f, align 2, !dbg !167693, !noalias !167677, !noundef !7547
  %i.g = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1Q_7float164pf16EECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.9.0.copyload, i16 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !dbg !167694, !noalias !167677

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !167695
  store i64 %i.g, ptr %i.h, align 8, !dbg !167696, !noalias !167678
  %i.i = add i64 %.val15.i, 1, !dbg !167697       ; 2 uses
  %i.j = add nuw i64 %.sroa.01.0.i, 1, !dbg !167698 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e, !dbg !167699
  br i1 %i.k, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_yuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB3G_9datatypes11Float16TypeE00NCINvNvB1A_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5T_3VecyE14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3v_EE0E0E0E0EB3G_.exit, label %bb.c, !dbg !167699

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !167700, !noalias !167677
  resume { ptr, i32 } %i.l, !dbg !167701

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNtB2s_3map8map_foldBQ_yuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB3G_9datatypes11Float16TypeE00NCINvNvB1A_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5T_3VecyE14extend_trustedINtB37_3MapINtB2q_6CopiedBF_EB3v_EE0E0E0E0EB3G_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ], !dbg !167702
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !167702, !noalias !167677
  ret void, !dbg !167703
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4foldaNCINvNvB1v_6min_by4foldaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !167704 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !167746
  %i.d = icmp eq ptr %0, %1, !dbg !167747
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNvBS_6min_by4foldaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !167748

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64, !dbg !167749
  %i.f = ptrtoint ptr %0 to i64, !dbg !167749
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !167749
  br label %bb.c, !dbg !167750

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ], !dbg !167751 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !167752 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !167753
  %.val.i = load i8, ptr %i.h, align 1, !dbg !167754, !noundef !7547 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !167744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !167744
  store i8 %.sroa.02.0.i, ptr %i.c, align 1, !noalias !167745
  store i8 %.val.i, ptr %i.b, align 1, !noalias !167745
  %i.i = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpINtB7_6FnOnceTRaB23_EE9call_onceCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b), !dbg !167755
  %i.j = icmp slt i8 %i.i, 1, !dbg !167756
  %.sroa.0.0.i.i.i.i = select i1 %i.j, i8 %.sroa.02.0.i, i8 %.val.i, !dbg !167755 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !167757, !noalias !167744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !167757, !noalias !167744
  %i.k = add nuw i64 %.sroa.04.0.i, 1, !dbg !167758 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.g, !dbg !167759
  br i1 %i.l, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNvBS_6min_by4foldaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.c, !dbg !167759

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNvBS_6min_by4foldaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !167752
  ret i8 %.sroa.0.0.i, !dbg !167760
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !167761 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !167796
  %i.a = icmp eq ptr %0, %1, !dbg !167797
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %iter.check, !dbg !167798

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !167799
  %i.c = ptrtoint ptr %0 to i64, !dbg !167799
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !167799     ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !167800
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !167800

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !167800
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !167800

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !167800

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !167801 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !167802 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !167803
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !167803
  %wide.load4 = load <16 x i8>, ptr %i.g, align 1, !dbg !167803
  %i.h = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !167804 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %vec.phi3, <16 x i8> %wide.load4), !dbg !167804 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !167801 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !167805
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !167805, !llvm.loop !167791

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !167805
  %i.k = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax), !dbg !167805 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !167805
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !167805

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8647

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !167801
  %bc.merge.rdx = phi i8 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !167806
  %n.vec5 = and i64 %i.d, -8                      ; 3 uses
  %broadcast.splatinsert6 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <8 x i8> %broadcast.splatinsert6, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !167801 ; 2 uses
  %vec.phi9 = phi <8 x i8> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.m, %vec.epilog.vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index8, !dbg !167802
  %wide.load10 = load <8 x i8>, ptr %i.l, align 1, !dbg !167803
  %i.m = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %vec.phi9, <8 x i8> %wide.load10), !dbg !167804 ; 2 uses
  %index.next11 = add nuw i64 %index8, 8, !dbg !167801 ; 2 uses
  %i.n = icmp eq i64 %index.next11, %n.vec5, !dbg !167805
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !167805, !llvm.loop !167792

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.m), !dbg !167805 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.d, %n.vec5, !dbg !167805
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph.preheader, !dbg !167805

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !167805

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.q, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !167801 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !167806
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !167802
  %.val.i = load i8, ptr %i.p, align 1, !dbg !167803, !noundef !7547
  %.sroa.0.0.i.i.i.i = tail call noundef i8 @llvm.smax.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !167804 ; 2 uses
  %i.q = add nuw i64 %.sroa.04.0.i, 1, !dbg !167807 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d, !dbg !167805
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph, !dbg !167805, !llvm.loop !167795

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !167806
  ret i8 %.sroa.0.0.i, !dbg !167808
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !167809 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !167844
  %i.a = icmp eq ptr %0, %1, !dbg !167845
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %iter.check, !dbg !167846

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !167847
  %i.c = ptrtoint ptr %0 to i64, !dbg !167847
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !167847     ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !167848
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !167848

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !167848
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !167848

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !167848

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !167849 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !167850 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !167851
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !167851
  %wide.load4 = load <16 x i8>, ptr %i.g, align 1, !dbg !167851
  %i.h = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !167852 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %vec.phi3, <16 x i8> %wide.load4), !dbg !167852 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !167849 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !167853
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !167853, !llvm.loop !167839

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !167853
  %i.k = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax), !dbg !167853 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !167853
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !167853

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8647

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !167849
  %bc.merge.rdx = phi i8 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !167854
  %n.vec5 = and i64 %i.d, -8                      ; 3 uses
  %broadcast.splatinsert6 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <8 x i8> %broadcast.splatinsert6, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !167849 ; 2 uses
  %vec.phi9 = phi <8 x i8> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.m, %vec.epilog.vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index8, !dbg !167850
  %wide.load10 = load <8 x i8>, ptr %i.l, align 1, !dbg !167851
  %i.m = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %vec.phi9, <8 x i8> %wide.load10), !dbg !167852 ; 2 uses
  %index.next11 = add nuw i64 %index8, 8, !dbg !167849 ; 2 uses
  %i.n = icmp eq i64 %index.next11, %n.vec5, !dbg !167853
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !167853, !llvm.loop !167840

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.m), !dbg !167853 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.d, %n.vec5, !dbg !167853
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph.preheader, !dbg !167853

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !167853

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.q, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !167849 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !167854
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !167850
  %.val.i = load i8, ptr %i.p, align 1, !dbg !167851, !noundef !7547
  %.sroa.0.0.i.i.i.i = tail call noundef i8 @llvm.smin.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !167852 ; 2 uses
  %i.q = add nuw i64 %.sroa.04.0.i, 1, !dbg !167855 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d, !dbg !167853
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph, !dbg !167853, !llvm.loop !167843

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !167854
  ret i8 %.sroa.0.0.i, !dbg !167856
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldaTmaEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2e_3MapIB47_IB13_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2L_8downcastINtB2N_12ChunkedArrayNtNtB2P_9datatypes8Int8TypeE13downcast_iter0ENCINvB2J_16arg_sort_numericB6v_E0EBP_aEs_0NCINvNvB1v_8for_each4callB2x_NCINvMsj_NtB4w_3vecINtB8w_3VecB2x_E14extend_trustedIB47_BP_B2C_EE0E0E0EB2P_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !167857 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !167925 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !167925
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !167925 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !167925
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !167925 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !167925
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !167925 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !167926
  %i.a = icmp eq ptr %0, %1, !dbg !167927
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaTmaEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes8Int8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EaEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8S_3VecB2G_E14extend_trustedIB4g_B7U_B2L_EE0E0E0E0EB2Y_.exit, label %bb.b, !dbg !167928

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !167929     ; 2 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !167929     ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !167929     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %xtraiter = and i64 %i.d, 1, !dbg !167930
  %i.e = add i64 %i.b, -1, !dbg !167930
  %i.f = icmp eq i64 %i.e, %i.c, !dbg !167930
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !167930

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.d, -2, !dbg !167930
  br label %bb.c, !dbg !167930

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.t, %bb.c ], !dbg !167931 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ], !dbg !167932 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !167931
  %.val16.i = load i8, ptr %i.h, align 1, !dbg !167933, !noalias !167916, !noundef !7547
  %i.i = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !167934, !noalias !167917, !noundef !7547 ; 2 uses
  %i.j = add i32 %i.i, 1, !dbg !167935
  store i32 %i.j, ptr %.sroa.8.0.copyload, align 4, !dbg !167935, !noalias !167917
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !167936 ; 2 uses
  store i32 %i.i, ptr %i.k, align 4, !dbg !167937, !noalias !167918
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !167937
  store i8 %.val16.i, ptr %i.l, align 4, !dbg !167937, !noalias !167918
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !167931
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !167931
  %.val16.i.1 = load i8, ptr %i.n, align 1, !dbg !167933, !noalias !167916, !noundef !7547
  %i.o = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !167934, !noalias !167917, !noundef !7547 ; 2 uses
  %i.p = add i32 %i.o, 1, !dbg !167935
  store i32 %i.p, ptr %.sroa.8.0.copyload, align 4, !dbg !167935, !noalias !167917
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !167936 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !167936
  store i32 %i.o, ptr %i.r, align 4, !dbg !167937, !noalias !167918
  %i.s = getelementptr i8, ptr %i.q, i64 12, !dbg !167937
  store i8 %.val16.i.1, ptr %i.s, align 4, !dbg !167937, !noalias !167918
  %i.t = add i64 %i.g, 2, !dbg !167938            ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 2, !dbg !167939 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !167940 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !167940
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaTmaEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes8Int8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EaEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8S_3VecB2G_E14extend_trustedIB4g_B7U_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !167940

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaTmaEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes8Int8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EaEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8S_3VecB2G_E14extend_trustedIB4g_B7U_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !167940
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaTmaEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes8Int8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EaEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8S_3VecB2G_E14extend_trustedIB4g_B7U_B2L_EE0E0E0E0EB2Y_.exit, label %.epil.preheader, !dbg !167940

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaTmaEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes8Int8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EaEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8S_3VecB2G_E14extend_trustedIB4g_B7U_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaTmaEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes8Int8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EaEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8S_3VecB2G_E14extend_trustedIB4g_B7U_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaTmaEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes8Int8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EaEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8S_3VecB2G_E14extend_trustedIB4g_B7U_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.d to i1, !dbg !167940
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !167940
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !167931
  %.val16.i.epil = load i8, ptr %i.v, align 1, !dbg !167933, !noalias !167916, !noundef !7547
  %i.w = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !167934, !noalias !167917, !noundef !7547 ; 2 uses
  %i.x = add i32 %i.w, 1, !dbg !167935
  store i32 %i.x, ptr %.sroa.8.0.copyload, align 4, !dbg !167935, !noalias !167917
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !167936 ; 2 uses
  store i32 %i.w, ptr %i.y, align 4, !dbg !167937, !noalias !167918
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4, !dbg !167937
  store i8 %.val16.i.epil, ptr %i.z, align 4, !dbg !167937, !noalias !167918
  %i.aa = add i64 %.epil.init, 1, !dbg !167938
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaTmaEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes8Int8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EaEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8S_3VecB2G_E14extend_trustedIB4g_B7U_B2L_EE0E0E0E0EB2Y_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaTmaEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes8Int8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EaEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8S_3VecB2G_E14extend_trustedIB4g_B7U_B2L_EE0E0E0E0EB2Y_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaTmaEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes8Int8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EaEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8S_3VecB2G_E14extend_trustedIB4g_B7U_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldaTmaEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes8Int8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EaEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8S_3VecB2G_E14extend_trustedIB4g_B7U_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ], [ %i.aa, %.epil.preheader ], !dbg !167941
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !167941, !noalias !167916
  ret void, !dbg !167942
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldayuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2K_9datatypes8Int8TypeE00NCINvNvB1v_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4T_3VecyE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !167943 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !168015 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !168015
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !168015 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !168015
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !168015
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !168015
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !168015 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !168016
  %i.a = icmp eq ptr %0, %1, !dbg !168017
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldayuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes8Int8TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.b, !dbg !168018

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !168019
  %i.c = ptrtoint ptr %0 to i64, !dbg !168019
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !168019
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c, !dbg !168020

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.d ], !dbg !168021 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !168022
  %.val16.i = load i8, ptr %i.e, align 1, !dbg !168023, !noalias !168007, !noundef !7547
  %i.f = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneaECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.9.0.copyload, i8 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !dbg !168024, !noalias !168007

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !168025
  store i64 %i.f, ptr %i.g, align 8, !dbg !168026, !noalias !168008
  %i.h = add i64 %.val15.i, 1, !dbg !168027       ; 2 uses
  %i.i = add nuw i64 %.sroa.01.0.i, 1, !dbg !168028 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !168029
  br i1 %i.j, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldayuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes8Int8TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.c, !dbg !168029

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !168030, !noalias !168007
  resume { ptr, i32 } %i.k, !dbg !168031

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNtB1K_3map8map_foldayuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes8Int8TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB51_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.h, %bb.d ], !dbg !168032
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !168032, !noalias !168007
  ret void, !dbg !168033
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNCINvNvB1v_6min_by4folddNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, double noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !168034 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !168076
  %i.d = icmp eq ptr %0, %1, !dbg !168077
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNCINvNvBS_6min_by4folddNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !168078

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64, !dbg !168079
  %i.f = ptrtoint ptr %0 to i64, !dbg !168079
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !168079
  %i.h = lshr exact i64 %i.g, 3, !dbg !168079
  br label %bb.c, !dbg !168080

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ], !dbg !168081 ; 2 uses
  %.sroa.02.0.i = phi double [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !168082 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !168083
  %.val.i = load double, ptr %i.i, align 8, !dbg !168084, !noundef !7547 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !168074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !168074
  store double %.sroa.02.0.i, ptr %i.c, align 8, !noalias !168075
  store double %.val.i, ptr %i.b, align 8, !noalias !168075
  %i.j = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpINtB7_6FnOnceTRdB23_EE9call_onceCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !168085
  %i.k = icmp slt i8 %i.j, 1, !dbg !168086
  %.sroa.0.0.i.i.i.i = select i1 %i.k, double %.sroa.02.0.i, double %.val.i, !dbg !168085 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !168087, !noalias !168074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !168087, !noalias !168074
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldfTmfEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2e_3MapIB47_IB13_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2L_8downcastINtB2N_12ChunkedArrayNtNtB2P_9datatypes11Float32TypeE13downcast_iter0ENCINvB2J_16arg_sort_numericB6v_E0EBP_fEs_0NCINvNvB1v_8for_each4callB2x_NCINvMsj_NtB4w_3vecINtB8A_3VecB2x_E14extend_trustedIB47_BP_B2C_EE0E0E0EB2P_:bb.a
bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.t, %bb.c ], !dbg !168595 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ], !dbg !168596 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !168595
  %.val16.i = load float, ptr %i.h, align 4, !dbg !168597, !noalias !168580, !noundef !7547
  %i.i = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !168598, !noalias !168581, !noundef !7547 ; 2 uses
  %i.j = add i32 %i.i, 1, !dbg !168599
  store i32 %i.j, ptr %.sroa.8.0.copyload, align 4, !dbg !168599, !noalias !168581
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !168600 ; 2 uses
  store i32 %i.i, ptr %i.k, align 4, !dbg !168601, !noalias !168582
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !168601
  store float %.val16.i, ptr %i.l, align 4, !dbg !168601, !noalias !168582
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !168595
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !168595
  %.val16.i.1 = load float, ptr %i.n, align 4, !dbg !168597, !noalias !168580, !noundef !7547
  %i.o = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !168598, !noalias !168581, !noundef !7547 ; 2 uses
  %i.p = add i32 %i.o, 1, !dbg !168599
  store i32 %i.p, ptr %.sroa.8.0.copyload, align 4, !dbg !168599, !noalias !168581
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !168600 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !168600
  store i32 %i.o, ptr %i.r, align 4, !dbg !168601, !noalias !168582
  %i.s = getelementptr i8, ptr %i.q, i64 12, !dbg !168601
  store float %.val16.i.1, ptr %i.s, align 4, !dbg !168601, !noalias !168582
  %i.t = add i64 %i.g, 2, !dbg !168602            ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 2, !dbg !168603 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !168604 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !168604
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfTmfEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11Float32TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EfEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !168604

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfTmfEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11Float32TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EfEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.v = and i64 %i.d, 4, !dbg !168604
  %lcmp.mod.not = icmp eq i64 %i.v, 0, !dbg !168604
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfTmfEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11Float32TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EfEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit, label %.epil.preheader, !dbg !168604

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfTmfEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11Float32TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EfEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfTmfEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11Float32TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EfEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfTmfEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11Float32TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EfEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !168604
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !168604
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !168595
  %.val16.i.epil = load float, ptr %i.w, align 4, !dbg !168597, !noalias !168580, !noundef !7547
  %i.x = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !168598, !noalias !168581, !noundef !7547 ; 2 uses
  %i.y = add i32 %i.x, 1, !dbg !168599
  store i32 %i.y, ptr %.sroa.8.0.copyload, align 4, !dbg !168599, !noalias !168581
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !168600 ; 2 uses
  store i32 %i.x, ptr %i.z, align 4, !dbg !168601, !noalias !168582
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4, !dbg !168601
  store float %.val16.i.epil, ptr %i.aa, align 4, !dbg !168601, !noalias !168582
  %i.ab = add i64 %.epil.init, 1, !dbg !168602
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfTmfEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11Float32TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EfEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfTmfEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11Float32TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EfEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfTmfEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11Float32TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EfEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfTmfEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11Float32TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EfEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ], [ %i.ab, %.epil.preheader ], !dbg !168605
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !168605, !noalias !168580
  ret void, !dbg !168606
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldfyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2K_9datatypes11Float32TypeE00NCINvNvB1v_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4X_3VecyE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !168607 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !168679 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !168679
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !168679 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !168679
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !168679
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !168679
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !168679 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !168680
  %i.a = icmp eq ptr %0, %1, !dbg !168681
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes11Float32TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.b, !dbg !168682

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !168683
  %i.c = ptrtoint ptr %0 to i64, !dbg !168683
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !168683
  %i.e = lshr exact i64 %i.d, 2, !dbg !168683
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c, !dbg !168684

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ], !dbg !168685 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !168686
  %.val16.i = load float, ptr %i.f, align 4, !dbg !168687, !noalias !168671, !noundef !7547
  %i.g = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapfEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.9.0.copyload, float noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !dbg !168688, !noalias !168671

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !168689
  store i64 %i.g, ptr %i.h, align 8, !dbg !168690, !noalias !168672
  %i.i = add i64 %.val15.i, 1, !dbg !168691       ; 2 uses
  %i.j = add nuw i64 %.sroa.01.0.i, 1, !dbg !168692 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e, !dbg !168693
  br i1 %i.k, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes11Float32TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.c, !dbg !168693

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !168694, !noalias !168671
  resume { ptr, i32 } %i.l, !dbg !168695

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNtB1K_3map8map_foldfyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes11Float32TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ], !dbg !168696
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !168696, !noalias !168671
  ret void, !dbg !168697
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNCINvNvB1v_6min_by4foldhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !168698 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !168740
  %i.d = icmp eq ptr %0, %1, !dbg !168741
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNvBS_6min_by4foldhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !168742

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64, !dbg !168743
  %i.f = ptrtoint ptr %0 to i64, !dbg !168743
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !168743
  br label %bb.c, !dbg !168744

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ], !dbg !168745 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !168746 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !168747
  %.val.i = load i8, ptr %i.h, align 1, !dbg !168748, !noundef !7547 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !168738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !168738
  store i8 %.sroa.02.0.i, ptr %i.c, align 1, !noalias !168739
  store i8 %.val.i, ptr %i.b, align 1, !noalias !168739
  %i.i = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpINtB7_6FnOnceTRhB23_EE9call_onceCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b), !dbg !168749
  %i.j = icmp slt i8 %i.i, 1, !dbg !168750
  %.sroa.0.0.i.i.i.i = select i1 %i.j, i8 %.sroa.02.0.i, i8 %.val.i, !dbg !168749 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !168751, !noalias !168738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !168751, !noalias !168738
  %i.k = add nuw i64 %.sroa.04.0.i, 1, !dbg !168752 ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.g, !dbg !168753
  br i1 %i.l, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNvBS_6min_by4foldhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.c, !dbg !168753

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNvBS_6min_by4foldhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !168746
  ret i8 %.sroa.0.0.i, !dbg !168754
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !168755 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !168790
  %i.a = icmp eq ptr %0, %1, !dbg !168791
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %iter.check, !dbg !168792

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !168793
  %i.c = ptrtoint ptr %0 to i64, !dbg !168793
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !168793     ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !168794
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !168794

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !168794
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !168794

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !168794

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !168795 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !168796 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !168797
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !168797
  %wide.load4 = load <16 x i8>, ptr %i.g, align 1, !dbg !168797
  %i.h = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !168798 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi3, <16 x i8> %wide.load4), !dbg !168798 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !168795 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !168799
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !168799, !llvm.loop !168785

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !168799
  %i.k = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax), !dbg !168799 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !168799
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !168799

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8650

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !168795
  %bc.merge.rdx = phi i8 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !168800
  %n.vec5 = and i64 %i.d, -4                      ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i8> %broadcast.splatinsert6, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !168795 ; 2 uses
  %vec.phi9 = phi <4 x i8> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.m, %vec.epilog.vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index8, !dbg !168796
  %wide.load10 = load <4 x i8>, ptr %i.l, align 1, !dbg !168797
  %i.m = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi9, <4 x i8> %wide.load10), !dbg !168798 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !168795 ; 2 uses
  %i.n = icmp eq i64 %index.next11, %n.vec5, !dbg !168799
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !168799, !llvm.loop !168786

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.m), !dbg !168799 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.d, %n.vec5, !dbg !168799
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph.preheader, !dbg !168799

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !168799

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.q, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !168795 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !168800
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !168796
  %.val.i = load i8, ptr %i.p, align 1, !dbg !168797, !noundef !7547
  %.sroa.0.0.i.i.i.i = tail call noundef i8 @llvm.umax.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !168798 ; 2 uses
  %i.q = add nuw i64 %.sroa.04.0.i, 1, !dbg !168801 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d, !dbg !168799
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph, !dbg !168799, !llvm.loop !168789

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !168800
  ret i8 %.sroa.0.0.i, !dbg !168802
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !168803 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !168838
  %i.a = icmp eq ptr %0, %1, !dbg !168839
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %iter.check, !dbg !168840

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !168841
  %i.c = ptrtoint ptr %0 to i64, !dbg !168841
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !168841     ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !168842
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !168842

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !168842
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !168842

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !168842

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !168843 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !168844 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !168845
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !168845
  %wide.load4 = load <16 x i8>, ptr %i.g, align 1, !dbg !168845
  %i.h = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !168846 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi3, <16 x i8> %wide.load4), !dbg !168846 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !168843 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !168847
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !168847, !llvm.loop !168833

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !168847
  %i.k = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax), !dbg !168847 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !168847
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !168847

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8650

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !168843
  %bc.merge.rdx = phi i8 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !168848
  %n.vec5 = and i64 %i.d, -4                      ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i8> %broadcast.splatinsert6, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !168843 ; 2 uses
  %vec.phi9 = phi <4 x i8> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.m, %vec.epilog.vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index8, !dbg !168844
  %wide.load10 = load <4 x i8>, ptr %i.l, align 1, !dbg !168845
  %i.m = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %vec.phi9, <4 x i8> %wide.load10), !dbg !168846 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !168843 ; 2 uses
  %i.n = icmp eq i64 %index.next11, %n.vec5, !dbg !168847
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !168847, !llvm.loop !168834

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.m), !dbg !168847 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.d, %n.vec5, !dbg !168847
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph.preheader, !dbg !168847

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !168847

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.q, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !168843 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !168848
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !168844
  %.val.i = load i8, ptr %i.p, align 1, !dbg !168845, !noundef !7547
  %.sroa.0.0.i.i.i.i = tail call noundef i8 @llvm.umin.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !168846 ; 2 uses
  %i.q = add nuw i64 %.sroa.04.0.i, 1, !dbg !168849 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d, !dbg !168847
  br i1 %i.r, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph, !dbg !168847, !llvm.loop !168837

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !168848
  ret i8 %.sroa.0.0.i, !dbg !168850
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhTmhEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2e_3MapIB47_IB13_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2L_8downcastINtB2N_12ChunkedArrayNtNtB2P_9datatypes9UInt8TypeE13downcast_iter0ENCINvB2J_16arg_sort_numericB6v_E0EBP_hEs_0NCINvNvB1v_8for_each4callB2x_NCINvMsj_NtB4w_3vecINtB8x_3VecB2x_E14extend_trustedIB47_BP_B2C_EE0E0E0EB2P_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !168851 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !168919 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !168919
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !168919 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !168919
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !168919 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !168919
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !168919 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !168920
  %i.a = icmp eq ptr %0, %1, !dbg !168921
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhTmhEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9UInt8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EhEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit, label %bb.b, !dbg !168922

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !168923     ; 2 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !168923     ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !168923     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %xtraiter = and i64 %i.d, 1, !dbg !168924
  %i.e = add i64 %i.b, -1, !dbg !168924
  %i.f = icmp eq i64 %i.e, %i.c, !dbg !168924
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !168924

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.d, -2, !dbg !168924
  br label %bb.c, !dbg !168924

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.t, %bb.c ], !dbg !168925 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ], !dbg !168926 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !168925
  %.val16.i = load i8, ptr %i.h, align 1, !dbg !168927, !noalias !168910, !noundef !7547
  %i.i = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !168928, !noalias !168911, !noundef !7547 ; 2 uses
  %i.j = add i32 %i.i, 1, !dbg !168929
  store i32 %i.j, ptr %.sroa.8.0.copyload, align 4, !dbg !168929, !noalias !168911
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !168930 ; 2 uses
  store i32 %i.i, ptr %i.k, align 4, !dbg !168931, !noalias !168912
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !168931
  store i8 %.val16.i, ptr %i.l, align 4, !dbg !168931, !noalias !168912
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !168925
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !168925
  %.val16.i.1 = load i8, ptr %i.n, align 1, !dbg !168927, !noalias !168910, !noundef !7547
  %i.o = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !168928, !noalias !168911, !noundef !7547 ; 2 uses
  %i.p = add i32 %i.o, 1, !dbg !168929
  store i32 %i.p, ptr %.sroa.8.0.copyload, align 4, !dbg !168929, !noalias !168911
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !168930 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !168930
  store i32 %i.o, ptr %i.r, align 4, !dbg !168931, !noalias !168912
  %i.s = getelementptr i8, ptr %i.q, i64 12, !dbg !168931
  store i8 %.val16.i.1, ptr %i.s, align 4, !dbg !168931, !noalias !168912
  %i.t = add i64 %i.g, 2, !dbg !168932            ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 2, !dbg !168933 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !168934 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !168934
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhTmhEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9UInt8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EhEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !168934

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhTmhEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9UInt8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EhEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !168934
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhTmhEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9UInt8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EhEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit, label %.epil.preheader, !dbg !168934

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhTmhEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9UInt8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EhEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhTmhEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9UInt8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EhEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhTmhEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9UInt8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EhEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.d to i1, !dbg !168934
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !168934
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !168925
  %.val16.i.epil = load i8, ptr %i.v, align 1, !dbg !168927, !noalias !168910, !noundef !7547
  %i.w = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !168928, !noalias !168911, !noundef !7547 ; 2 uses
  %i.x = add i32 %i.w, 1, !dbg !168929
  store i32 %i.x, ptr %.sroa.8.0.copyload, align 4, !dbg !168929, !noalias !168911
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !168930 ; 2 uses
  store i32 %i.w, ptr %i.y, align 4, !dbg !168931, !noalias !168912
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4, !dbg !168931
  store i8 %.val16.i.epil, ptr %i.z, align 4, !dbg !168931, !noalias !168912
  %i.aa = add i64 %.epil.init, 1, !dbg !168932
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhTmhEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9UInt8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EhEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhTmhEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9UInt8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EhEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhTmhEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9UInt8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EhEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhTmhEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9UInt8TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EhEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ], [ %i.aa, %.epil.preheader ], !dbg !168935
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !168935, !noalias !168910
  ret void, !dbg !168936
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2K_9datatypes9UInt8TypeE00NCINvNvB1v_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4U_3VecyE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !168937 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !169009 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !169009
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !169009 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !169009
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !169009
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !169009
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !169009 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !169010
  %i.a = icmp eq ptr %0, %1, !dbg !169011
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes9UInt8TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB52_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.b, !dbg !169012

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !169013
  %i.c = ptrtoint ptr %0 to i64, !dbg !169013
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !169013
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c, !dbg !169014

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.d ], !dbg !169015 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !169016
  %.val16.i = load i8, ptr %i.e, align 1, !dbg !169017, !noalias !169001, !noundef !7547
  %i.f = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_onehECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.9.0.copyload, i8 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !dbg !169018, !noalias !169001

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !169019
  store i64 %i.f, ptr %i.g, align 8, !dbg !169020, !noalias !169002
  %i.h = add i64 %.val15.i, 1, !dbg !169021       ; 2 uses
  %i.i = add nuw i64 %.sroa.01.0.i, 1, !dbg !169022 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !169023
  br i1 %i.j, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes9UInt8TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB52_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.c, !dbg !169023

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !169024, !noalias !169001
  resume { ptr, i32 } %i.k, !dbg !169025

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNtB1K_3map8map_foldhyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes9UInt8TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB52_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.h, %bb.d ], !dbg !169026
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !169026, !noalias !169001
  ret void, !dbg !169027
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldlNCINvNvB1v_6min_by4foldlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !169028 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !169070
  %i.d = icmp eq ptr %0, %1, !dbg !169071
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldlNCINvNtNtBY_8adapters6copied9copy_foldllNCINvNvBS_6min_by4foldlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !169072

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64, !dbg !169073
  %i.f = ptrtoint ptr %0 to i64, !dbg !169073
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !169073
  %i.h = lshr exact i64 %i.g, 2, !dbg !169073
  br label %bb.c, !dbg !169074

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ], !dbg !169075 ; 2 uses
  %.sroa.02.0.i = phi i32 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !169076 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !169077
  %.val.i = load i32, ptr %i.i, align 4, !dbg !169078, !noundef !7547 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !169068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !169068
  store i32 %.sroa.02.0.i, ptr %i.c, align 4, !noalias !169069
  store i32 %.val.i, ptr %i.b, align 4, !noalias !169069
  %i.j = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpINtB7_6FnOnceTRlB23_EE9call_onceCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b), !dbg !169079
  %i.k = icmp slt i8 %i.j, 1, !dbg !169080
  %.sroa.0.0.i.i.i.i = select i1 %i.k, i32 %.sroa.02.0.i, i32 %.val.i, !dbg !169079 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !169081, !noalias !169068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !169081, !noalias !169068
end_hunk_1
begin_hunk_2_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldoTmoEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2e_3MapIB47_IB13_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2L_8downcastINtB2N_12ChunkedArrayNtNtB2P_9datatypes11UInt128TypeE13downcast_iter0ENCINvB2J_16arg_sort_numericB6v_E0EBP_oEs_0NCINvNvB1v_8for_each4callB2x_NCINvMsj_NtB4w_3vecINtB8A_3VecB2x_E14extend_trustedIB47_BP_B2C_EE0E0E0EB2P_:bb.a
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ], !dbg !171615 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !171614
  %.val16.i = load i128, ptr %i.h, align 16, !dbg !171616, !noalias !171599, !noundef !7547
  %i.i = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !171617, !noalias !171600, !noundef !7547 ; 2 uses
  %i.j = add i32 %i.i, 1, !dbg !171618
  store i32 %i.j, ptr %.sroa.8.0.copyload, align 4, !dbg !171618, !noalias !171600
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !171619 ; 2 uses
  store i32 %i.i, ptr %i.k, align 16, !dbg !171620, !noalias !171601
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !171620
  store i128 %.val16.i, ptr %i.l, align 16, !dbg !171620, !noalias !171601
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !171614
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !171614
  %.val16.i.1 = load i128, ptr %i.n, align 16, !dbg !171616, !noalias !171599, !noundef !7547
  %i.o = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !171617, !noalias !171600, !noundef !7547 ; 2 uses
  %i.p = add i32 %i.o, 1, !dbg !171618
  store i32 %i.p, ptr %.sroa.8.0.copyload, align 4, !dbg !171618, !noalias !171600
  %i.q = getelementptr [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !171619 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 32, !dbg !171619
  store i32 %i.o, ptr %i.r, align 16, !dbg !171620, !noalias !171601
  %i.s = getelementptr i8, ptr %i.q, i64 48, !dbg !171620
  store i128 %.val16.i.1, ptr %i.s, align 16, !dbg !171620, !noalias !171601
  %i.t = add i64 %i.g, 2, !dbg !171621            ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 2, !dbg !171622 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !171623 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !171623
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoTmoEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11UInt128TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EoEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !171623

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoTmoEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11UInt128TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EoEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.v = and i64 %i.d, 16, !dbg !171623
  %lcmp.mod.not = icmp eq i64 %i.v, 0, !dbg !171623
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoTmoEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11UInt128TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EoEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit, label %.epil.preheader, !dbg !171623

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoTmoEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11UInt128TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EoEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoTmoEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11UInt128TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EoEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoTmoEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11UInt128TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EoEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !171623
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !171623
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !171614
  %.val16.i.epil = load i128, ptr %i.w, align 16, !dbg !171616, !noalias !171599, !noundef !7547
  %i.x = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !171617, !noalias !171600, !noundef !7547 ; 2 uses
  %i.y = add i32 %i.x, 1, !dbg !171618
  store i32 %i.y, ptr %.sroa.8.0.copyload, align 4, !dbg !171618, !noalias !171600
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !171619 ; 2 uses
  store i32 %i.x, ptr %i.z, align 16, !dbg !171620, !noalias !171601
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !171620
  store i128 %.val16.i.epil, ptr %i.aa, align 16, !dbg !171620, !noalias !171601
  %i.ab = add i64 %.epil.init, 1, !dbg !171621
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoTmoEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11UInt128TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EoEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoTmoEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11UInt128TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EoEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoTmoEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11UInt128TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EoEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoTmoEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes11UInt128TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EoEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8W_3VecB2G_E14extend_trustedIB4g_B7Y_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ], [ %i.ab, %.epil.preheader ], !dbg !171624
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !171624, !noalias !171599
  ret void, !dbg !171625
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldoyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2K_9datatypes11UInt128TypeE00NCINvNvB1v_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4X_3VecyE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !171626 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !171698 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !171698
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !171698 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !171698
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !171698
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !171698
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !171698 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !171699
  %i.a = icmp eq ptr %0, %1, !dbg !171700
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes11UInt128TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.b, !dbg !171701

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !171702
  %i.c = ptrtoint ptr %0 to i64, !dbg !171702
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !171702
  %i.e = lshr exact i64 %i.d, 4, !dbg !171702
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c, !dbg !171703

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ], !dbg !171704 ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !171705
  %.val16.i = load i128, ptr %i.f, align 16, !dbg !171706, !noalias !171690, !noundef !7547
  %i.g = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneoECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.9.0.copyload, i128 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !dbg !171707, !noalias !171690

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !171708
  store i64 %i.g, ptr %i.h, align 8, !dbg !171709, !noalias !171691
  %i.i = add i64 %.val15.i, 1, !dbg !171710       ; 2 uses
  %i.j = add nuw i64 %.sroa.01.0.i, 1, !dbg !171711 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e, !dbg !171712
  br i1 %i.k, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes11UInt128TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.c, !dbg !171712

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !171713, !noalias !171690
  resume { ptr, i32 } %i.l, !dbg !171714

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldouNCINvNtB1K_3map8map_foldoyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes11UInt128TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ], !dbg !171715
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !171715, !noalias !171690
  ret void, !dbg !171716
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldsNCINvNvB1v_6min_by4foldsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !171717 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !171759
  %i.d = icmp eq ptr %0, %1, !dbg !171760
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNvBS_6min_by4foldsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !171761

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64, !dbg !171762
  %i.f = ptrtoint ptr %0 to i64, !dbg !171762
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !171762
  %i.h = lshr exact i64 %i.g, 1, !dbg !171762
  br label %bb.c, !dbg !171763

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ], !dbg !171764 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !171765 ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !171766
  %.val.i = load i16, ptr %i.i, align 2, !dbg !171767, !noundef !7547 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !171757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !171757
  store i16 %.sroa.02.0.i, ptr %i.c, align 2, !noalias !171758
  store i16 %.val.i, ptr %i.b, align 2, !noalias !171758
  %i.j = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpINtB7_6FnOnceTRsB23_EE9call_onceCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.c, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.b), !dbg !171768
  %i.k = icmp slt i8 %i.j, 1, !dbg !171769
  %.sroa.0.0.i.i.i.i = select i1 %i.k, i16 %.sroa.02.0.i, i16 %.val.i, !dbg !171768 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !171770, !noalias !171757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !171770, !noalias !171757
  %i.l = add nuw i64 %.sroa.04.0.i, 1, !dbg !171771 ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.h, !dbg !171772
  br i1 %i.m, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNvBS_6min_by4foldsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.c, !dbg !171772

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNvBS_6min_by4foldsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !171765
  ret i16 %.sroa.0.0.i, !dbg !171773
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !171774 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !171809
  %i.a = icmp eq ptr %0, %1, !dbg !171810
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %iter.check, !dbg !171811

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !171812
  %i.c = ptrtoint ptr %0 to i64, !dbg !171812
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !171812     ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !171812     ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !171813
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !171813

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !171813
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !171813

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !171813

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !171814 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !171815 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !171816
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !171816
  %wide.load4 = load <8 x i16>, ptr %i.g, align 2, !dbg !171816
  %i.h = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !171817 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi3, <8 x i16> %wide.load4), !dbg !171817 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !171814 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !171818
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !171818, !llvm.loop !171804

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !171818
  %i.k = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax), !dbg !171818 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !171818
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !171818

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.l = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8680

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !171814
  %bc.merge.rdx = phi i16 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !171819
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i16> %broadcast.splatinsert6, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !171814 ; 2 uses
  %vec.phi9 = phi <4 x i16> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.n, %vec.epilog.vector.body ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index8, !dbg !171815
  %wide.load10 = load <4 x i16>, ptr %i.m, align 2, !dbg !171816
  %i.n = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi9, <4 x i16> %wide.load10), !dbg !171817 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !171814 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec5, !dbg !171818
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !171818, !llvm.loop !171805

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.p = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.n), !dbg !171818 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.e, %n.vec5, !dbg !171818
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph.preheader, !dbg !171818

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !171818

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !171814 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !171819
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !171815
  %.val.i = load i16, ptr %i.q, align 2, !dbg !171816, !noundef !7547
  %.sroa.0.0.i.i.i.i = tail call noundef i16 @llvm.smax.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !171817 ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 1, !dbg !171820 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !171818
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph, !dbg !171818, !llvm.loop !171808

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !171819
  ret i16 %.sroa.0.0.i, !dbg !171821
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !171822 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !171857
  %i.a = icmp eq ptr %0, %1, !dbg !171858
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %iter.check, !dbg !171859

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !171860
  %i.c = ptrtoint ptr %0 to i64, !dbg !171860
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !171860     ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !171860     ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !171861
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !171861

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !171861
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !171861

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !171861

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !171862 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !171863 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !171864
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !171864
  %wide.load4 = load <8 x i16>, ptr %i.g, align 2, !dbg !171864
  %i.h = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !171865 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi3, <8 x i16> %wide.load4), !dbg !171865 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !171862 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !171866
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !171866, !llvm.loop !171852

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !171866
  %i.k = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax), !dbg !171866 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !171866
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !171866

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.l = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8680

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !171862
  %bc.merge.rdx = phi i16 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !171867
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i16> %broadcast.splatinsert6, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !171862 ; 2 uses
  %vec.phi9 = phi <4 x i16> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.n, %vec.epilog.vector.body ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index8, !dbg !171863
  %wide.load10 = load <4 x i16>, ptr %i.m, align 2, !dbg !171864
  %i.n = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %vec.phi9, <4 x i16> %wide.load10), !dbg !171865 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !171862 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec5, !dbg !171866
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !171866, !llvm.loop !171853

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.p = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.n), !dbg !171866 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.e, %n.vec5, !dbg !171866
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph.preheader, !dbg !171866

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !171866

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !171862 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !171867
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !171863
  %.val.i = load i16, ptr %i.q, align 2, !dbg !171864, !noundef !7547
  %.sroa.0.0.i.i.i.i = tail call noundef i16 @llvm.smin.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !171865 ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 1, !dbg !171868 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !171866
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph, !dbg !171866, !llvm.loop !171856

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !171867
  ret i16 %.sroa.0.0.i, !dbg !171869
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldsTmsEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2e_3MapIB47_IB13_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2L_8downcastINtB2N_12ChunkedArrayNtNtB2P_9datatypes9Int16TypeE13downcast_iter0ENCINvB2J_16arg_sort_numericB6v_E0EBP_sEs_0NCINvNvB1v_8for_each4callB2x_NCINvMsj_NtB4w_3vecINtB8x_3VecB2x_E14extend_trustedIB47_BP_B2C_EE0E0E0EB2P_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !171870 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !171938 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !171938
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !171938 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !171938
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !171938 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !171938
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !171938 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !171939
  %i.a = icmp eq ptr %0, %1, !dbg !171940
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsTmsEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EsEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit, label %bb.b, !dbg !171941

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !171942
  %i.c = ptrtoint ptr %0 to i64, !dbg !171942
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !171942     ; 3 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !171942     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.f = icmp eq i64 %i.d, 2, !dbg !171943
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !171943

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 9223372036854775806, !dbg !171943
  br label %bb.c, !dbg !171943

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.t, %bb.c ], !dbg !171944 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ], !dbg !171945 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !171944
  %.val16.i = load i16, ptr %i.h, align 2, !dbg !171946, !noalias !171929, !noundef !7547
  %i.i = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !171947, !noalias !171930, !noundef !7547 ; 2 uses
  %i.j = add i32 %i.i, 1, !dbg !171948
  store i32 %i.j, ptr %.sroa.8.0.copyload, align 4, !dbg !171948, !noalias !171930
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !171949 ; 2 uses
  store i32 %i.i, ptr %i.k, align 4, !dbg !171950, !noalias !171931
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !171950
  store i16 %.val16.i, ptr %i.l, align 4, !dbg !171950, !noalias !171931
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !171944
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !171944
  %.val16.i.1 = load i16, ptr %i.n, align 2, !dbg !171946, !noalias !171929, !noundef !7547
  %i.o = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !171947, !noalias !171930, !noundef !7547 ; 2 uses
  %i.p = add i32 %i.o, 1, !dbg !171948
  store i32 %i.p, ptr %.sroa.8.0.copyload, align 4, !dbg !171948, !noalias !171930
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !171949 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !171949
  store i32 %i.o, ptr %i.r, align 4, !dbg !171950, !noalias !171931
  %i.s = getelementptr i8, ptr %i.q, i64 12, !dbg !171950
  store i16 %.val16.i.1, ptr %i.s, align 4, !dbg !171950, !noalias !171931
  %i.t = add i64 %i.g, 2, !dbg !171951            ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 2, !dbg !171952 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !171953 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !171953
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsTmsEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EsEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !171953

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsTmsEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EsEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.v = and i64 %i.d, 2, !dbg !171953
  %lcmp.mod.not = icmp eq i64 %i.v, 0, !dbg !171953
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsTmsEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EsEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit, label %.epil.preheader, !dbg !171953

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsTmsEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EsEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsTmsEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EsEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsTmsEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EsEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !171953
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !171953
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !171944
  %.val16.i.epil = load i16, ptr %i.w, align 2, !dbg !171946, !noalias !171929, !noundef !7547
  %i.x = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !171947, !noalias !171930, !noundef !7547 ; 2 uses
  %i.y = add i32 %i.x, 1, !dbg !171948
  store i32 %i.y, ptr %.sroa.8.0.copyload, align 4, !dbg !171948, !noalias !171930
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !171949 ; 2 uses
  store i32 %i.x, ptr %i.z, align 4, !dbg !171950, !noalias !171931
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4, !dbg !171950
  store i16 %.val16.i.epil, ptr %i.aa, align 4, !dbg !171950, !noalias !171931
  %i.ab = add i64 %.epil.init, 1, !dbg !171951
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsTmsEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EsEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsTmsEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EsEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsTmsEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EsEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsTmsEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EsEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ], [ %i.ab, %.epil.preheader ], !dbg !171954
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !171954, !noalias !171929
  ret void, !dbg !171955
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldsyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2K_9datatypes9Int16TypeE00NCINvNvB1v_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4U_3VecyE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !171956 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !172028 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !172028
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !172028 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !172028
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !172028
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !172028
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !172028 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !172029
  %i.a = icmp eq ptr %0, %1, !dbg !172030
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes9Int16TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB52_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.b, !dbg !172031

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !172032
  %i.c = ptrtoint ptr %0 to i64, !dbg !172032
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !172032
  %i.e = lshr exact i64 %i.d, 1, !dbg !172032
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c, !dbg !172033

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ], !dbg !172034 ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !172035
  %.val16.i = load i16, ptr %i.f, align 2, !dbg !172036, !noalias !172020, !noundef !7547
  %i.g = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_onesECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.9.0.copyload, i16 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !dbg !172037, !noalias !172020

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !172038
  store i64 %i.g, ptr %i.h, align 8, !dbg !172039, !noalias !172021
  %i.i = add i64 %.val15.i, 1, !dbg !172040       ; 2 uses
  %i.j = add nuw i64 %.sroa.01.0.i, 1, !dbg !172041 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e, !dbg !172042
  br i1 %i.k, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes9Int16TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB52_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.c, !dbg !172042

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !172043, !noalias !172020
  resume { ptr, i32 } %i.l, !dbg !172044

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNtB1K_3map8map_foldsyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes9Int16TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB52_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ], !dbg !172045
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !172045, !noalias !172020
  ret void, !dbg !172046
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNvB1v_6min_by4foldtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !172047 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !172089
  %i.d = icmp eq ptr %0, %1, !dbg !172090
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNvBS_6min_by4foldtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !172091

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64, !dbg !172092
  %i.f = ptrtoint ptr %0 to i64, !dbg !172092
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !172092
  %i.h = lshr exact i64 %i.g, 1, !dbg !172092
  br label %bb.c, !dbg !172093

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ], !dbg !172094 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !172095 ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !172096
  %.val.i = load i16, ptr %i.i, align 2, !dbg !172097, !noundef !7547 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !172087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !172087
  store i16 %.sroa.02.0.i, ptr %i.c, align 2, !noalias !172088
  store i16 %.val.i, ptr %i.b, align 2, !noalias !172088
  %i.j = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpINtB7_6FnOnceTRtB23_EE9call_onceCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.c, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.b), !dbg !172098
  %i.k = icmp slt i8 %i.j, 1, !dbg !172099
  %.sroa.0.0.i.i.i.i = select i1 %i.k, i16 %.sroa.02.0.i, i16 %.val.i, !dbg !172098 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !172100, !noalias !172087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !172100, !noalias !172087
  %i.l = add nuw i64 %.sroa.04.0.i, 1, !dbg !172101 ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.h, !dbg !172102
  br i1 %i.m, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNvBS_6min_by4foldtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.c, !dbg !172102

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNvBS_6min_by4foldtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !172095
  ret i16 %.sroa.0.0.i, !dbg !172103
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !172104 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !172139
  %i.a = icmp eq ptr %0, %1, !dbg !172140
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %iter.check, !dbg !172141

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !172142
  %i.c = ptrtoint ptr %0 to i64, !dbg !172142
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !172142     ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !172142     ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !172143
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !172143

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !172143
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !172143

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !172143

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !172144 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !172145 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !172146
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !172146
  %wide.load4 = load <8 x i16>, ptr %i.g, align 2, !dbg !172146
  %i.h = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !172147 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi3, <8 x i16> %wide.load4), !dbg !172147 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !172144 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !172148
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !172148, !llvm.loop !172134

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !172148
  %i.k = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax), !dbg !172148 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !172148
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !172148

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.l = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8680

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !172144
  %bc.merge.rdx = phi i16 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !172149
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i16> %broadcast.splatinsert6, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !172144 ; 2 uses
  %vec.phi9 = phi <4 x i16> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.n, %vec.epilog.vector.body ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index8, !dbg !172145
  %wide.load10 = load <4 x i16>, ptr %i.m, align 2, !dbg !172146
  %i.n = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi9, <4 x i16> %wide.load10), !dbg !172147 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !172144 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec5, !dbg !172148
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !172148, !llvm.loop !172135

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.p = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.n), !dbg !172148 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.e, %n.vec5, !dbg !172148
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph.preheader, !dbg !172148

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !172148

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !172144 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !172149
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !172145
  %.val.i = load i16, ptr %i.q, align 2, !dbg !172146, !noundef !7547
  %.sroa.0.0.i.i.i.i = tail call noundef i16 @llvm.umax.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !172147 ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 1, !dbg !172150 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !172148
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph, !dbg !172148, !llvm.loop !172138

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !172149
  ret i16 %.sroa.0.0.i, !dbg !172151
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !172152 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !172187
  %i.a = icmp eq ptr %0, %1, !dbg !172188
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %iter.check, !dbg !172189

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !172190
  %i.c = ptrtoint ptr %0 to i64, !dbg !172190
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !172190     ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !172190     ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !172191
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !172191

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !172191
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !172191

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !172191

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !172192 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !172193 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !172194
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !172194
  %wide.load4 = load <8 x i16>, ptr %i.g, align 2, !dbg !172194
  %i.h = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !172195 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi3, <8 x i16> %wide.load4), !dbg !172195 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !172192 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !172196
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !172196, !llvm.loop !172182

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !172196
  %i.k = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax), !dbg !172196 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !172196
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !172196

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.l = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8680

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !172192
  %bc.merge.rdx = phi i16 [ %i.k, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !172197
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat7 = shufflevector <4 x i16> %broadcast.splatinsert6, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !172192 ; 2 uses
  %vec.phi9 = phi <4 x i16> [ %broadcast.splat7, %vec.epilog.ph ], [ %i.n, %vec.epilog.vector.body ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index8, !dbg !172193
  %wide.load10 = load <4 x i16>, ptr %i.m, align 2, !dbg !172194
  %i.n = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %vec.phi9, <4 x i16> %wide.load10), !dbg !172195 ; 2 uses
  %index.next11 = add nuw i64 %index8, 4, !dbg !172192 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec5, !dbg !172196
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !172196, !llvm.loop !172183

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.p = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.n), !dbg !172196 ; 2 uses
  %cmp.n12 = icmp eq i64 %i.e, %n.vec5, !dbg !172196
  br i1 %cmp.n12, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph.preheader, !dbg !172196

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !172196

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.r, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !172192 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !172197
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !172193
  %.val.i = load i16, ptr %i.q, align 2, !dbg !172194, !noundef !7547
  %.sroa.0.0.i.i.i.i = tail call noundef i16 @llvm.umin.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !172195 ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 1, !dbg !172198 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e, !dbg !172196
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph, !dbg !172196, !llvm.loop !172186

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.sroa.0.0.i.i.i.i, %vec.epilog.scalar.ph ], !dbg !172197
  ret i16 %.sroa.0.0.i, !dbg !172199
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldtTmtEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2e_3MapIB47_IB13_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2L_8downcastINtB2N_12ChunkedArrayNtNtB2P_9datatypes10UInt16TypeE13downcast_iter0ENCINvB2J_16arg_sort_numericB6v_E0EBP_tEs_0NCINvNvB1v_8for_each4callB2x_NCINvMsj_NtB4w_3vecINtB8z_3VecB2x_E14extend_trustedIB47_BP_B2C_EE0E0E0EB2P_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !172200 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !172268 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !172268
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !172268 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !172268
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !172268 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !172268
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !172268 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !172269
  %i.a = icmp eq ptr %0, %1, !dbg !172270
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtTmtEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes10UInt16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EtEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8V_3VecB2G_E14extend_trustedIB4g_B7X_B2L_EE0E0E0E0EB2Y_.exit, label %bb.b, !dbg !172271

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !172272
  %i.c = ptrtoint ptr %0 to i64, !dbg !172272
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !172272     ; 3 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !172272     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.f = icmp eq i64 %i.d, 2, !dbg !172273
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !172273

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 9223372036854775806, !dbg !172273
  br label %bb.c, !dbg !172273

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.t, %bb.c ], !dbg !172274 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ], !dbg !172275 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !172274
  %.val16.i = load i16, ptr %i.h, align 2, !dbg !172276, !noalias !172259, !noundef !7547
  %i.i = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !172277, !noalias !172260, !noundef !7547 ; 2 uses
  %i.j = add i32 %i.i, 1, !dbg !172278
  store i32 %i.j, ptr %.sroa.8.0.copyload, align 4, !dbg !172278, !noalias !172260
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !172279 ; 2 uses
  store i32 %i.i, ptr %i.k, align 4, !dbg !172280, !noalias !172261
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !172280
  store i16 %.val16.i, ptr %i.l, align 4, !dbg !172280, !noalias !172261
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !172274
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !172274
  %.val16.i.1 = load i16, ptr %i.n, align 2, !dbg !172276, !noalias !172259, !noundef !7547
  %i.o = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !172277, !noalias !172260, !noundef !7547 ; 2 uses
  %i.p = add i32 %i.o, 1, !dbg !172278
  store i32 %i.p, ptr %.sroa.8.0.copyload, align 4, !dbg !172278, !noalias !172260
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !172279 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !172279
  store i32 %i.o, ptr %i.r, align 4, !dbg !172280, !noalias !172261
  %i.s = getelementptr i8, ptr %i.q, i64 12, !dbg !172280
  store i16 %.val16.i.1, ptr %i.s, align 4, !dbg !172280, !noalias !172261
  %i.t = add i64 %i.g, 2, !dbg !172281            ; 3 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 2, !dbg !172282 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !172283 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !172283
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtTmtEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes10UInt16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EtEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8V_3VecB2G_E14extend_trustedIB4g_B7X_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !172283

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtTmtEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes10UInt16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EtEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8V_3VecB2G_E14extend_trustedIB4g_B7X_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.v = and i64 %i.d, 2, !dbg !172283
  %lcmp.mod.not = icmp eq i64 %i.v, 0, !dbg !172283
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtTmtEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes10UInt16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EtEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8V_3VecB2G_E14extend_trustedIB4g_B7X_B2L_EE0E0E0E0EB2Y_.exit, label %.epil.preheader, !dbg !172283

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtTmtEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes10UInt16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EtEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8V_3VecB2G_E14extend_trustedIB4g_B7X_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtTmtEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes10UInt16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EtEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8V_3VecB2G_E14extend_trustedIB4g_B7X_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtTmtEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes10UInt16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EtEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8V_3VecB2G_E14extend_trustedIB4g_B7X_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !172283
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !172283
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !172274
  %.val16.i.epil = load i16, ptr %i.w, align 2, !dbg !172276, !noalias !172259, !noundef !7547
  %i.x = load i32, ptr %.sroa.8.0.copyload, align 4, !dbg !172277, !noalias !172260, !noundef !7547 ; 2 uses
  %i.y = add i32 %i.x, 1, !dbg !172278
  store i32 %i.y, ptr %.sroa.8.0.copyload, align 4, !dbg !172278, !noalias !172260
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !172279 ; 2 uses
  store i32 %i.x, ptr %i.z, align 4, !dbg !172280, !noalias !172261
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4, !dbg !172280
  store i16 %.val16.i.epil, ptr %i.aa, align 4, !dbg !172280, !noalias !172261
  %i.ab = add i64 %.epil.init, 1, !dbg !172281
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtTmtEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes10UInt16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EtEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8V_3VecB2G_E14extend_trustedIB4g_B7X_B2L_EE0E0E0E0EB2Y_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtTmtEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes10UInt16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EtEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8V_3VecB2G_E14extend_trustedIB4g_B7X_B2L_EE0E0E0E0EB2Y_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtTmtEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes10UInt16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EtEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8V_3VecB2G_E14extend_trustedIB4g_B7X_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtTmtEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes10UInt16TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_EtEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8V_3VecB2G_E14extend_trustedIB4g_B7X_B2L_EE0E0E0E0EB2Y_.exit.loopexit.unr-lcssa ], [ %i.ab, %.epil.preheader ], !dbg !172284
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !172284, !noalias !172259
  ret void, !dbg !172285
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldtyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2K_9datatypes10UInt16TypeE00NCINvNvB1v_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4W_3VecyE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2K_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !172286 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !172358 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !172358
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !172358 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !172358
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !172358
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !172358
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !172358 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !172359
  %i.a = icmp eq ptr %0, %1, !dbg !172360
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes10UInt16TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.b, !dbg !172361

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !172362
  %i.c = ptrtoint ptr %0 to i64, !dbg !172362
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !172362
  %i.e = lshr exact i64 %i.d, 1, !dbg !172362
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c, !dbg !172363

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ], !dbg !172364 ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !172365
  %.val16.i = load i16, ptr %i.f, align 2, !dbg !172366, !noalias !172350, !noundef !7547
  %i.g = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_onetECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.9.0.copyload, i16 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !dbg !172367, !noalias !172350

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !172368
  store i64 %i.g, ptr %i.h, align 8, !dbg !172369, !noalias !172351
  %i.i = add i64 %.val15.i, 1, !dbg !172370       ; 2 uses
  %i.j = add nuw i64 %.sroa.01.0.i, 1, !dbg !172371 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e, !dbg !172372
  br i1 %i.k, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes10UInt16TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit, label %bb.c, !dbg !172372

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !172373, !noalias !172350
  resume { ptr, i32 } %i.l, !dbg !172374

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNtB1K_3map8map_foldtyuNCNCINvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher16numeric_vec_hashNtNtB2T_9datatypes10UInt16TypeE00NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB54_3VecyE14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0E0EB2T_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ], !dbg !172375
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !172375, !noalias !172350
  ret void, !dbg !172376
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2e_3MapIB47_IB13_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2L_8downcastINtB2N_12ChunkedArrayNtNtB2P_9datatypes9Int64TypeE13downcast_iter0ENCINvB2J_16arg_sort_numericB6v_E0EBP_xEs_0NCINvNvB1v_8for_each4callB2x_NCINvMsj_NtB4w_3vecINtB8x_3VecB2x_E14extend_trustedIB47_BP_B2C_EE0E0E0EB2P_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !172377 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !172445 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !172445
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !172445 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !172445
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !172445 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !172445
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !172445 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !172446
  %i.a = icmp eq ptr %0, %1, !dbg !172447
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxTmxEuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtB2m_3MapIB4g_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2U_8downcastINtB2W_12ChunkedArrayNtNtB2Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB2S_16arg_sort_numericB6D_E0EINtB1I_6CopiedBF_ExEs_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtB4E_3vecINtB8T_3VecB2G_E14extend_trustedIB4g_B7V_B2L_EE0E0E0E0EB2Y_.exit, label %bb.b, !dbg !172448

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !172449
  %i.c = ptrtoint ptr %0 to i64, !dbg !172449
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !172449     ; 3 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !172449     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.f = icmp eq i64 %i.d, 8, !dbg !172450
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !172450

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950, !dbg !172450
  br label %bb.c, !dbg !172450

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.t, %bb.c ], !dbg !172451 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ], !dbg !172452 ; 3 uses
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet.git_xet.731ec678f938a728-cgu.12?download=true
inline.NumInlined: 887
inline.NumDeleted: 407
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE4withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3t_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEENCINvMs7_B2L_NtB2L_9CoreGuard5enterNCINvB4Z_8block_onINtNtB3t_3pin3PinQNCNvCs9SMuO7kbZ2K_7git_xet4main0EE0B3o_E0E0B29_EB67_:bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i64 24, i1 false), !noalias !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @_RINvMNtNtNtCsUrhh0HcRih_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB14_14current_threadNtB1F_9CoreGuard5enterNCINvB1B_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs9SMuO7kbZ2K_7git_xet4main0EE0INtNtB2K_6option6OptionINtNtB2K_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEE0TINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtB1F_4CoreEB3L_EEB3g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.i, ptr noundef nonnull align 8 %.sroa.0.0.copyload.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !17
  %i.j = icmp eq i64 %.pre, 2
  br i1 %i.j, label %bb.e, label %bb.f, !prof !18

bb.e:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3x_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEENCINvMs7_B2P_NtB2P_9CoreGuard5enterNCINvB53_8block_onINtNtB3x_3pin3PinQNCNvCs9SMuO7kbZ2K_7git_xet4main0EE0B3s_E0E0B2d_EB6b_.exit.thread, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3x_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEENCINvMs7_B2P_NtB2P_9CoreGuard5enterNCINvB53_8block_onINtNtB3x_3pin3PinQNCNvCs9SMuO7kbZ2K_7git_xet4main0EE0B3s_E0E0B2d_EB6b_.exit
  call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19
  unreachable

bb.f:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3x_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEENCINvMs7_B2P_NtB2P_9CoreGuard5enterNCINvB53_8block_onINtNtB3x_3pin3PinQNCNvCs9SMuO7kbZ2K_7git_xet4main0EE0B3s_E0E0B2d_EB6b_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB29_NtNtNtB3h_5panic11unwind_safe13RefUnwindSafeNtNtB3h_6marker4SendNtB4O_4SyncNtB46_10UnwindSafeEL_EE3get0jECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !inline_history !81 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !12
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB29_NtNtNtB3h_5panic11unwind_safe13RefUnwindSafeNtNtB3h_6marker4SendNtB4O_4SyncNtB46_10UnwindSafeEL_EE9put_value0jECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !inline_history !82 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !12
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RINvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB6_12LeafAccessor8positionReECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.01.08 = phi i64 [ %.sroa.01.1, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.04.07 = phi i64 [ %.sroa.04.1, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = zext i64 %.sroa.01.08 to i128
  %i.d = zext i64 %.sroa.04.07 to i128
  %i.e = add nuw nsw i128 %i.c, %i.d
  %i.f = lshr i128 %i.e, 1
  %i.g = trunc nuw i128 %i.f to i64               ; 4 uses
  %i.h = tail call { ptr, i64 } @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor13key_unchecked(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i64 noundef %i.g) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %i.k = tail call noundef i8 @_RNvXse_NtCs7SkU8gPisFf_4redb5typesReNtB5_3Key7compare(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.j)
  switch i8 %i.k, label %default.unreachable13 [
    i8 -1, label %bb.c
    i8 0, label %._crit_edge
    i8 1, label %bb.b
  ]

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ true, %.lr.ph ], [ false, %bb.c ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ], [ %.sroa.01.1, %bb.c ]
  %i.l = insertvalue { i64, i1 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i1 } %i.l, i1 %.lcssa, 1
  ret { i64, i1 } %i.m

default.unreachable13:                            ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.n = add nuw i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.04.1 = phi i64 [ %.sroa.04.07, %bb.b ], [ %i.g, %.lr.ph ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.n, %bb.b ], [ %.sroa.01.08, %.lr.ph ] ; 3 uses
  %i.o = icmp ult i64 %.sroa.01.1, %.sroa.04.1
  br i1 %i.o, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMsb_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB6_11LeafMutator31sufficient_insert_inplace_spaceNtNtNtB8_10page_store4base8PageImplECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 0, 2) %3, i64 %4, i64 noundef range(i64 0, 2) %5, i64 %6, ptr noalias nofree noundef nonnull readonly captures(none) %7, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias nofree noundef nonnull readonly captures(none) %9, i64 noundef range(i64 0, -9223372036854775808) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val15 = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16 = load i64, ptr %i.e, align 8, !noundef !12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  call void @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %.val16, i64 noundef %3, i64 %4, i64 noundef %5, i64 %6)
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.427.0.copyload = load i8, ptr %.sroa.427.0..sroa_idx, align 8, !alias.scope !95
  %.not = icmp ne i8 %.sroa.427.0.copyload, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ult i64 %1, %i.h
  %or.cond = select i1 %.not, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = call noundef i64 @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor12total_length(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
  %i.k = sub i64 %.val16, %i.j                    ; 2 uses
  %i.l = add nuw i64 %10, %8                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9SMuO7kbZ2K_7git_xet.exit11

bb.d:                                             ; preds = %bb.b
  %i.n = call noundef i64 @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor12total_length(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
  %i.o = sub i64 %.val16, %i.n
  %i.p = add nuw i64 %10, %8                      ; 2 uses
  %.not6 = icmp eq i64 %3, 0
  %i.q = add i64 %i.p, 4
  %spec.select = select i1 %.not6, i64 %i.q, i64 %i.p ; 2 uses
  %.not7 = icmp eq i64 %5, 0
  %i.r = add i64 %spec.select, 4
  %.sroa.01.1 = select i1 %.not7, i64 %i.r, i64 %spec.select
  %i.s = icmp ule i64 %.sroa.01.1, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9SMuO7kbZ2K_7git_xet.exit, %bb.b
  %.sroa.0.1 = phi i1 [ false, %bb.b ], [ %i.y, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9SMuO7kbZ2K_7git_xet.exit ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96
  store i8 2, ptr %i.a, align 1, !noalias !96
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !97
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9SMuO7kbZ2K_7git_xet.exit11: ; preds = %bb.c
  %i.t = add i64 %1, 1
  %i.u = call noundef i64 @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor15length_of_pairs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d, i64 noundef %1, i64 noundef %i.t) ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9SMuO7kbZ2K_7git_xet.exit10

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9SMuO7kbZ2K_7git_xet.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98
  store i8 2, ptr %i.b, align 1, !noalias !98
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !noalias !99
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9SMuO7kbZ2K_7git_xet.exit10: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9SMuO7kbZ2K_7git_xet.exit11
  %i.w = icmp slt i64 %i.k, 0
  br i1 %i.w, label %bb.h, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9SMuO7kbZ2K_7git_xet.exit

bb.h:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9SMuO7kbZ2K_7git_xet.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !100
  store i8 2, ptr %i.c, align 1, !noalias !100
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19, !noalias !101
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9SMuO7kbZ2K_7git_xet.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9SMuO7kbZ2K_7git_xet.exit10
  %i.x = sub nsw i64 %i.l, %i.u
  %i.y = icmp sle i64 %i.x, %i.k
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB6_14BranchAccessorNtNtNtB8_10page_store4base8PageImplE13child_for_keyReECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = alloca [16 x i8], align 4                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !12 ; 4 uses
  %.not26 = icmp eq i64 %i.f, 0
  %.sink39.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sink39.sroa.gep48 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.l
  %4 = shl i64 %.sroa.0.1, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %4, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa.a = phi i64 [ 0, %bb.a ], [ %.sroa.0.1, %._crit_edge.loopexit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %.not.i = icmp ult i64 %.sroa.0.0.lcssa.a, %i.g
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.h = shl i64 %i.g, 4
  %i.i = or disjoint i64 %i.h, 8
  %i.j = add i64 %i.i, %.sroa.0.0.lcssa           ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !108, !nonnull !12, !align !19, !noundef !12 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val10.i = load i64, ptr %i.m, align 8, !noalias !109, !noundef !12 ; 2 uses
  %i.n = or disjoint i64 %i.j, 7
  %or.cond.not.i = icmp ult i64 %i.n, %.val10.i
  br i1 %or.cond.not.i, label %bb.e, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.o = add i64 %i.j, 8
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef %i.o, i64 noundef %.val10.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19, !noalias !109
  unreachable

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.sroa.0.025 = phi i64 [ %.sroa.0.1, %bb.l ], [ 0, %bb.a ] ; 2 uses
  %.sroa.04.024 = phi i64 [ %.sroa.04.1, %bb.l ], [ %i.f, %bb.a ] ; 2 uses
  %i.p = zext i64 %.sroa.0.025 to i128
  %i.q = zext i64 %.sroa.04.024 to i128
  %i.r = add nuw nsw i128 %i.p, %i.q
  %i.s = lshr i128 %i.r, 1
  %i.t = trunc nuw i128 %i.s to i64               ; 6 uses
  %i.u = tail call { ptr, i64 } @_RNvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB5_14BranchAccessorNtNtNtB7_10page_store4base8PageImplE3keyCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.t) ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.g, label %bb.f, !prof !13

bb.d:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.i
  %.sink = phi ptr [ %i.ah, %bb.i ], [ %i.l, %bb.b ]
  %.sink41 = phi i64 [ %i.af, %bb.i ], [ %i.j, %bb.b ]
  %.sink39.sroa.phi = phi ptr [ %.sink39.sroa.gep, %bb.i ], [ %.sink39.sroa.gep48, %bb.b ]
  %.lcssa36.sink = phi i64 [ %i.t, %bb.i ], [ %.sroa.0.0.lcssa.a, %bb.b ]
  %.sink38 = phi ptr [ %i.d, %bb.i ], [ %i.b, %bb.b ]
  %.val.i14 = load ptr, ptr %.sink, align 8, !noalias !12, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i14, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink41
  %.sroa.02.0.copyload.i15 = load i64, ptr %i.x, align 1, !noalias !12
  call void @_RNvMs1_NtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4baseNtB5_10PageNumber13from_le_bytes(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %.sink39.sroa.phi, i64 noundef %.sroa.02.0.copyload.i15)
  store i64 %.lcssa36.sink, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %.sink38, i64 12, i1 false)
  ret void

bb.f:                                             ; preds = %.lr.ph
  %i.z = extractvalue { ptr, i64 } %i.u, 1
  %i.aa = tail call noundef i8 @_RNvXse_NtCs7SkU8gPisFf_4redb5typesReNtB5_3Key7compare(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.z)
  switch i8 %i.aa, label %default.unreachable34 [
    i8 -1, label %bb.l
    i8 0, label %bb.h
    i8 1, label %bb.k
  ]

bb.g:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
  unreachable

default.unreachable34:                            ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.ab = add i64 %i.f, 1                         ; 2 uses
  %.not.i9 = icmp ugt i64 %i.ab, %i.t
  br i1 %.not.i9, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ac = shl i64 %i.ab, 4
  %i.ad = shl i64 %i.t, 3
  %i.ae = or disjoint i64 %i.ac, 8
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !110, !nonnull !12, !align !19, !noundef !12 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val10.i11 = load i64, ptr %i.ai, align 8, !noalias !111, !noundef !12 ; 2 uses
  %i.aj = or disjoint i64 %i.af, 7
  %or.cond.not.i12 = icmp ult i64 %i.aj, %.val10.i11
  br i1 %or.cond.not.i12, label %bb.e, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ak = add i64 %i.af, 8
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.af, i64 noundef %i.ak, i64 noundef %.val10.i11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19, !noalias !111
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.al = add nuw i64 %i.t, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k
  %.sroa.04.1 = phi i64 [ %.sroa.04.024, %bb.k ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.al, %bb.k ], [ %.sroa.0.025, %bb.f ] ; 4 uses
  %i.am = icmp ult i64 %.sroa.0.1, %.sroa.04.1
  br i1 %i.am, label %.lr.ph, label %._crit_edge.loopexit

bb.m:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB2w_10processing23deduplication_interface24UploadSessionDataManagerENtNtB2w_5error9DataErrorENtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !21, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB2g_10processing23deduplication_interface24UploadSessionDataManagerENtNtB2g_5error9DataErrorENtNtB4_6marker4SendEL_EECs9SMuO7kbZ2K_7git_xet.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !22, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB2g_10processing23deduplication_interface24UploadSessionDataManagerENtNtB2g_5error9DataErrorENtNtB4_6marker4SendEL_EECs9SMuO7kbZ2K_7git_xet.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !21, !invariant.load !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB23_10processing23deduplication_interface24UploadSessionDataManagerENtNtB23_5error9DataErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !22, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB23_10processing23deduplication_interface24UploadSessionDataManagerENtNtB23_5error9DataErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB23_10processing23deduplication_interface24UploadSessionDataManagerENtNtB23_5error9DataErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB2g_10processing23deduplication_interface24UploadSessionDataManagerENtNtB2g_5error9DataErrorENtNtB4_6marker4SendEL_EECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEECs9SMuO7kbZ2K_7git_xet(ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.8.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %.val.i.i.i.i = load ptr, ptr %.8.val, align 8, !alias.scope !140, !noundef !12 ; 3 uses
  %i.b = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsUrhh0HcRih_5tokio7runtime4task8NotifiedINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %.val.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.e, !noalias !140

.noexc.i.i.i.i:                                   ; preds = %bb.c
  br i1 %i.c, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsUrhh0HcRih_5tokio7runtime4task8NotifiedINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i

bb.d:                                             ; preds = %.noexc.i.i.i.i
  invoke void @_RNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %.val.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsUrhh0HcRih_5tokio7runtime4task8NotifiedINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i unwind label %bb.e, !noalias !140

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_6handle6HandleEEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #23
          to label %.body.i.i.i.i unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsUrhh0HcRih_5tokio7runtime4task8NotifiedINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i: ; preds = %bb.d, %.noexc.i.i.i.i, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 24 ; 5 uses
  invoke void @_RNvXs3_NtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsUrhh0HcRih_5tokio7runtime4task8NotifiedINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !143, !nonnull !12, !noundef !12
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !144
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %.body.i.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #24
          to label %.body.i.i.i.i unwind label %bb.j

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsUrhh0HcRih_5tokio7runtime4task8NotifiedINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.k = load ptr, ptr %i.f, align 8, !alias.scope !147, !nonnull !12, !noundef !12
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !148
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_6handle6HandleEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_6handle6HandleEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i unwind label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.m, %bb.g, %bb.f, %bb.e
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.t, %bb.m ], [ %i.g, %bb.g ], [ %i.g, %bb.f ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !150, !noundef !12 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.r, label %bb.k

bb.k:                                             ; preds = %.body.i.i.i.i
  %i.r = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !151
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #24
          to label %bb.r unwind label %bb.p

bb.m:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_6handle6HandleEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !153, !noundef !12 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6worker4CoreEECs9SMuO7kbZ2K_7git_xet.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_6handle6HandleEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i
  %i.x = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !154
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6worker4CoreEECs9SMuO7kbZ2K_7git_xet.exit.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6worker4CoreEECs9SMuO7kbZ2K_7git_xet.exit.i.i unwind label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l, %bb.k, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.q ], [ %.pn.i.i.i.i, %bb.l ], [ %.pn.i.i.i.i, %bb.k ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 120, i64 noundef 8) #22
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6worker4CoreEECs9SMuO7kbZ2K_7git_xet.exit.i.i: ; preds = %bb.o, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_6handle6HandleEEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 120, i64 noundef 8) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEECs9SMuO7kbZ2K_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6worker4CoreEECs9SMuO7kbZ2K_7git_xet.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs9SMuO7kbZ2K_7git_xet(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs9SMuO7kbZ2K_7git_xet.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c
end_hunk_0

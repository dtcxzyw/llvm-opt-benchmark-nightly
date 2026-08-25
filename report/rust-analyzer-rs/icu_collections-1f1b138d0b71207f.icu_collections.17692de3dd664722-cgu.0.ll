Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_collections-1f1b138d0b71207f.icu_collections.17692de3dd664722-cgu.0?download=true
inline.NumInlined: 103
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList14contains_query:bb.a
  %i.y = and i64 %.sroa.05.0.lcssa.i, 1
  %.27 = xor i64 %i.y, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %.sroa.6.1 = phi i64 [ undef, %bb.a ], [ %.sroa.05.0.lcssa.i, %bb.e ], [ %spec.select, %bb.d ]
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %.27, %bb.e ], [ %spec.select29, %bb.d ]
  %i.z = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.aa = insertvalue { i64, i64 } %i.z, i64 %.sroa.6.1, 1
  ret { i64, i64 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList23try_from_inversion_list(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter6ChunksINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EENtNtNtNtBa_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRSBL_mmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB3d_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtB1L_5accummNtB5h_3Sum3sumINtB2x_3MapB3_B38_EE0E0EB3h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_ENCNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv0E0B2g_.exit.us.i.i, label %_RNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv.exit.thread

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_ENCNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv0E0B2g_.exit.us.i.i
  %i.d = add i64 %i.e, -1
  %.not15.not.i.i = icmp ult i64 %i.e, 3
  br i1 %.not15.not.i.i, label %_RNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv.exit, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_ENCNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv0E0B2g_.exit.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_ENCNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv0E0B2g_.exit.us.i.i: ; preds = %bb.b, %.split.us.i.i
  %i.e = phi i64 [ %i.d, %.split.us.i.i ], [ %2, %bb.b ] ; 2 uses
  %i.f = phi ptr [ %i.g, %.split.us.i.i ], [ %1, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 1
  %.sroa.2.0.copyload.i.i.us.i.i = load i16, ptr %i.h, align 1, !alias.scope !124, !noalias !129
  %i.i = zext i16 %.sroa.2.0.copyload.i.i.us.i.i to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %.sroa.05.0.copyload.i.i.us.i.i = load i8, ptr %i.f, align 1, !alias.scope !124, !noalias !129
  %.sroa.06.0.copyload.i.i.us.i.i = load i8, ptr %i.g, align 1, !alias.scope !124, !noalias !129
  %.sroa.27.0..sroa_idx.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.27.0.copyload.i.i.us.i.i = load i16, ptr %.sroa.27.0..sroa_idx.i.i.us.i.i, align 1, !alias.scope !124, !noalias !129
  %i.k = zext i16 %.sroa.27.0.copyload.i.i.us.i.i to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %.sroa.0.0.insert.ext.i.i.us.i.i = zext i8 %.sroa.05.0.copyload.i.i.us.i.i to i32
  %.sroa.0.0.insert.insert.i.i.us.i.i = or disjoint i32 %i.j, %.sroa.0.0.insert.ext.i.i.us.i.i
  %.sroa.01.0.insert.ext.i.i.us.i.i = zext i8 %.sroa.06.0.copyload.i.i.us.i.i to i32
  %.sroa.01.0.insert.insert.i.i.us.i.i = or disjoint i32 %i.l, %.sroa.01.0.insert.ext.i.i.us.i.i
  %.not.us.i.i = icmp samesign ult i32 %.sroa.0.0.insert.insert.i.i.us.i.i, %.sroa.01.0.insert.insert.i.i.us.i.i
  br i1 %.not.us.i.i, label %.split.us.i.i, label %_RNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv.exit.thread

_RNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv.exit: ; preds = %.split.us.i.i
  %i.m = getelementptr [3 x i8], ptr %1, i64 %2   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -3
  %.sroa.012.0.copyload.i = load i8, ptr %i.n, align 1
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.m, i64 -2
  %.sroa.2.0.copyload.i = load i16, ptr %.sroa.2.0..sroa_idx.i, align 1
  %i.o = zext i16 %.sroa.2.0.copyload.i to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  %.sroa.02.0.insert.ext.i = zext i8 %.sroa.012.0.copyload.i to i32
  %.sroa.02.0.insert.insert.i = or disjoint i32 %i.p, %.sroa.02.0.insert.ext.i
  %i.q = icmp samesign ult i32 %.sroa.02.0.insert.insert.i, 1114113
  br i1 %i.q, label %.lr.ph.i, label %_RNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv.exit.thread

_RNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_ENCNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv0E0B2g_.exit.us.i.i, %bb.b, %_RNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv.exit
  store ptr null, ptr %0, align 8
  br label %bb.d

.lr.ph.i:                                         ; preds = %_RNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv.exit, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EmmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1Y_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtNtB8_6traits5accummNtB42_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter6ChunksBW_EB1T_EE0E0B22_.exit.i
  %.sroa.0.014.i = phi i32 [ %i.ab, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EmmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1Y_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtNtB8_6traits5accummNtB42_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter6ChunksBW_EB1T_EE0E0B22_.exit.i ], [ 0, %_RNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv.exit ]
  %i.r = phi i64 [ %i.u, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EmmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1Y_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtNtB8_6traits5accummNtB42_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter6ChunksBW_EB1T_EE0E0B22_.exit.i ], [ %2, %_RNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv.exit ] ; 3 uses
  %i.s = phi ptr [ %i.v, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EmmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1Y_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtNtB8_6traits5accummNtB42_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter6ChunksBW_EB1T_EE0E0B22_.exit.i ], [ %1, %_RNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv.exit ] ; 5 uses
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.r, i64 2) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.t = icmp ugt i64 %i.r, 1
  br i1 %i.t, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EmmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1Y_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtNtB8_6traits5accummNtB42_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter6ChunksBW_EB1T_EE0E0B22_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef range(i64 0, 3074457345618258603) %..i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22, !noalias !138
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EmmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1Y_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtNtB8_6traits5accummNtB42_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter6ChunksBW_EB1T_EE0E0B22_.exit.i: ; preds = %.lr.ph.i
  %i.u = sub nuw nsw i64 %i.r, %..i.i.i           ; 2 uses
  %i.v = getelementptr inbounds nuw [3 x i8], ptr %i.s, i64 %..i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %.sroa.05.0.copyload.i.i.i = load i8, ptr %i.w, align 1, !alias.scope !141, !noalias !142
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.2.0.copyload.i.i.i = load i16, ptr %.sroa.2.0..sroa_idx.i.i.i, align 1, !alias.scope !141, !noalias !142
  %i.x = zext i16 %.sroa.2.0.copyload.i.i.i to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %.sroa.05.0.copyload.i.i.i to i32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %i.y, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.06.0.copyload.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !141, !noalias !142
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.27.0.copyload.i.i.i = load i16, ptr %.sroa.27.0..sroa_idx.i.i.i, align 1, !alias.scope !141, !noalias !142
  %i.z = zext i16 %.sroa.27.0.copyload.i.i.i to i32
  %.sroa.01.0.insert.ext.i.i.i = zext i8 %.sroa.06.0.copyload.i.i.i to i32
  %.neg8 = mul nsw i32 %i.z, -256
  %i.aa = add i32 %.sroa.0.0.insert.insert.i.i.i, %.sroa.0.014.i
  %.neg9 = sub nsw i32 %.neg8, %.sroa.01.0.insert.ext.i.i.i
  %i.ab = add i32 %i.aa, %.neg9                   ; 2 uses
  %i.ac = icmp eq i64 %i.u, 0
  br i1 %i.ac, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter6ChunksINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EENtNtNtNtBa_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRSBL_mmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB3d_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtB1L_5accummNtB5h_3Sum3sumINtB2x_3MapB3_B38_EE0E0EB3h_.exit, label %.lr.ph.i

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter6ChunksINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EENtNtNtNtBa_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRSBL_mmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB3d_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtB1L_5accummNtB5h_3Sum3sumINtB2x_3MapB3_B38_EE0E0EB3h_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EmmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1Y_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtNtB8_6traits5accummNtB42_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter6ChunksBW_EB1T_EE0E0B22_.exit.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ab, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EmmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1Y_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtNtB8_6traits5accummNtB42_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter6ChunksBW_EB1T_EE0E0B22_.exit.i ]
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0.0.lcssa.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter6ChunksINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EENtNtNtNtBa_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRSBL_mmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB3d_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtB1L_5accummNtB5h_3Sum3sumINtB2x_3MapB3_B38_EE0E0EB3h_.exit, %_RNvNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist5utils11is_valid_zv.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList24iter_ranges_complemented(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 33), (40, 49)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !25 ; 4 uses
  %.not55 = icmp eq i64 %i.c, 0
  br i1 %.not55, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.039.0.copyload = load i8, ptr %i.a, align 1
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.240.0.copyload = load i16, ptr %.sroa.240.0..sroa_idx, align 1
  %i.d = zext i16 %.sroa.240.0.copyload to i32
  %i.e = shl nuw nsw i32 %i.d, 8
  %.sroa.019.0.insert.ext = zext i8 %.sroa.039.0.copyload to i32
  %.sroa.019.0.insert.insert = or disjoint i32 %i.e, %.sroa.019.0.insert.ext ; 2 uses
  %i.f = icmp eq i32 %.sroa.019.0.insert.insert, 0 ; 2 uses
  %i.g = add nsw i32 %.sroa.019.0.insert.insert, -1
  %.sroa.010.4.insert.ext = zext nneg i32 %i.g to i64
  %.sroa.010.4.insert.shift = shl nuw nsw i64 %.sroa.010.4.insert.ext, 32
  %.sroa.2.1 = select i1 %i.f, i8 2, i8 0
  %.sroa.02.1 = select i1 %i.f, i64 undef, i64 %.sroa.010.4.insert.shift
  %i.h = getelementptr [3 x i8], ptr %i.a, i64 %i.c ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -3
  %.sroa.051.0.copyload = load i8, ptr %i.i, align 1
  %.sroa.252.0..sroa_idx = getelementptr i8, ptr %i.h, i64 -2
  %.sroa.252.0.copyload = load i16, ptr %.sroa.252.0..sroa_idx, align 1
  %i.j = zext i16 %.sroa.252.0.copyload to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %.sroa.023.0.insert.ext = zext i8 %.sroa.051.0.copyload to i32
  %.sroa.023.0.insert.insert = or disjoint i32 %i.k, %.sroa.023.0.insert.ext ; 2 uses
  %i.l = icmp eq i32 %.sroa.023.0.insert.insert, 1114111
  %spec.select = select i1 %i.l, i8 2, i8 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.02.070 = phi i64 [ %.sroa.02.1, %bb.b ], [ undef, %bb.a ]
  %.sroa.2.068 = phi i8 [ %.sroa.2.1, %bb.b ], [ 2, %bb.a ]
  %.sroa.3.065 = phi i8 [ %spec.select, %bb.b ], [ 2, %bb.a ]
  %.sroa.0.0 = phi i32 [ %.sroa.023.0.insert.insert, %bb.b ], [ undef, %bb.a ]
  %switch = icmp ult i64 %i.c, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.sroa.01.0 = select i1 %switch, ptr inttoptr (i64 1 to ptr), ptr %i.m
  %.sroa.3.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  store ptr %.sroa.01.0, ptr %0, align 8, !alias.scope !148, !noalias !146
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.459.0..sroa_idx, align 8, !alias.scope !148, !noalias !146
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %.sroa.560.0..sroa_idx, align 8, !alias.scope !148, !noalias !146
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.02.070, ptr %.sroa.661.0..sroa_idx, align 8, !alias.scope !148, !noalias !146
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.2.068, ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx, align 8, !alias.scope !148, !noalias !146
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.0.0, ptr %i.n, align 8, !alias.scope !150, !noalias !143
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1114111, ptr %.sroa.2.0..sroa_idx, align 4, !alias.scope !150, !noalias !143
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.3.065, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !150, !noalias !143
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef i64 @_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList4span(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 7 uses
  %.not.i19.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i19.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1E_22CodePointInversionList4span0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3g_5count0EB1I_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !alias.scope !151, !noalias !156, !nonnull !25, !noundef !25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !151, !noalias !156, !noundef !25 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.d, 1
  br i1 %i.e, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  br i1 %3, label %.lr.ph.split.us.split.us.i.i.i, label %.lr.ph.split.us.split.i.i.i

.lr.ph.split.us.split.us.i.i.i:                   ; preds = %.lr.ph.split.us.i.i.i
  %i.f = load i8, ptr %1, align 1, !noalias !165, !noundef !25 ; 3 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.us.i.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.us.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.us.i.i.i: ; preds = %.lr.ph.split.us.split.us.i.i.i
  %i.h = icmp samesign ne i64 %2, 1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ugt i8 %i.f, -33
  br i1 %i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.us.i.i.i, label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.us.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.us.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.us.i.i.i
  %4 = icmp samesign ne i64 %2, 2
  tail call void @llvm.assume(i1 %4)
  %5 = icmp samesign ugt i8 %i.f, -17
  br i1 %5, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.us.i.i.i.a, label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.us.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.us.i.i.i.a: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.us.i.i.i
  %i.j = icmp samesign ne i64 %2, 3
  tail call void @llvm.assume(i1 %i.j)
  br label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.us.i.i.i

_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.us.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.us.i.i.i.a, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.us.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.us.i.i.i, %.lr.ph.split.us.split.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1E_22CodePointInversionList4span0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3g_5count0EB1I_.exit

.lr.ph.split.us.split.i.i.i:                      ; preds = %.lr.ph.split.us.i.i.i, %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i
  %.sroa.01.020.us.i.i.i = phi i64 [ %i.u, %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i ]
  %i.k = phi ptr [ %i.t, %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i ], [ %1, %.lr.ph.split.us.i.i.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1, !noalias !165, !noundef !25 ; 3 uses
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.i.i.i: ; preds = %.lr.ph.split.us.split.i.i.i
  %i.o = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.q = icmp samesign ugt i8 %i.m, -33
  br i1 %i.q, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.i.i.i, label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.i.i.i
  %i.r = icmp ne ptr %i.p, %i.a
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ugt i8 %i.m, -17
  %spec.select28.v.i.i.i = select i1 %i.s, i64 4, i64 3
  %spec.select28.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select28.v.i.i.i
  br label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i

_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.i.i.i, %.lr.ph.split.us.split.i.i.i
  %i.t = phi ptr [ %spec.select28.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.i.i.i ], [ %i.l, %.lr.ph.split.us.split.i.i.i ], [ %i.p, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.u = add i64 %.sroa.01.020.us.i.i.i, 1        ; 2 uses
  %.not.i.us.i.i.i = icmp eq ptr %i.t, %i.a
  br i1 %.not.i.us.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1E_22CodePointInversionList4span0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3g_5count0EB1I_.exit, label %.lr.ph.split.us.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2V_22CodePointInversionList4span0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B2Z_.exit.i.i.i
  %.sroa.01.020.i.i.i = phi i64 [ %i.ca, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2V_22CodePointInversionList4span0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B2Z_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.be, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2V_22CodePointInversionList4span0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B2Z_.exit.i.i.i ], [ %1, %.lr.ph.i.i.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 3 uses
  %i.x = load i8, ptr %i.v, align 1, !noalias !165, !noundef !25 ; 5 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.b, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %i.z = and i8 %i.x, 31
  %i.aa = zext nneg i8 %i.z to i32                ; 3 uses
  %i.ab = icmp ne ptr %i.w, %i.a
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 3 uses
  %i.ad = load i8, ptr %i.w, align 1, !noalias !165, !noundef !25
  %i.ae = shl nuw nsw i32 %i.aa, 6
  %i.af = and i8 %i.ad, 63
  %i.ag = zext nneg i8 %i.af to i32               ; 2 uses
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = icmp samesign ugt i8 %i.x, -33
  br i1 %i.ai, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i
  %i.aj = zext nneg i8 %i.x to i32
  br label %.preheader.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.i.i.i
  %i.ak = icmp ne ptr %i.ac, %i.a
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 3 ; 3 uses
  %i.am = load i8, ptr %i.ac, align 1, !noalias !165, !noundef !25
  %i.an = shl nuw nsw i32 %i.ag, 6
  %i.ao = and i8 %i.am, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap            ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aa, 12
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = icmp samesign ugt i8 %i.x, -17
  br i1 %i.at, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.i.i.i
  %i.au = icmp ne ptr %i.al, %i.a
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aw = load i8, ptr %i.al, align 1, !noalias !165, !noundef !25
  %i.ax = shl nuw nsw i32 %i.aa, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.aq, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.i.i.i
  %i.be = phi ptr [ %i.al, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.i.i.i ], [ %i.av, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.i.i.i ], [ %i.w, %bb.b ] ; 2 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.as, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.i.i.i ], [ %i.bd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.i.i.i ], [ %i.ah, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.i.i.i ], [ %i.aj, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.bf = trunc i32 %spec.select.i.ph.i.i.i to i16
  %i.bg = lshr i16 %i.bf, 8
  %sh.diff.i.i.i.i.i.i.i = lshr i32 %spec.select.i.ph.i.i.i, 8
  %tr.sh.diff.i.i.i.i.i.i.i = trunc nuw nsw i32 %sh.diff.i.i.i.i.i.i.i to i16
  %.sroa.5.2.insert.shift.i.i.i.i.i.i.i = and i16 %tr.sh.diff.i.i.i.i.i.i.i, 7936
  %.sroa.5.2.insert.insert.i.i.i.i.i.i.i = or disjoint i16 %.sroa.5.2.insert.shift.i.i.i.i.i.i.i, %i.bg
  %.pre.i.i.i.i.i.i.i.i = zext nneg i16 %.sroa.5.2.insert.insert.i.i.i.i.i.i.i to i32
  %.pre24.i.i.i.i.i.i.i.i = shl nuw nsw i32 %.pre.i.i.i.i.i.i.i.i, 8
  %.pre26.i.i.i.i.i.i.i.i = and i32 %spec.select.i.ph.i.i.i, 255
  %.pre27.i.i.i.i.i.i.i.i = or disjoint i32 %.pre24.i.i.i.i.i.i.i.i, %.pre26.i.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [3 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i
  %.val14.i.i.i.i.i.i.i.i = load i24, ptr %i.bh, align 1, !alias.scope !172, !noalias !175
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i = zext i24 %.val14.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.bi = icmp eq i32 %.pre27.i.i.i.i.i.i.i.i, %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bi, label %bb.d, label %bb.c

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.01.022.i.i.i.i.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.d, %.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.05.021.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bj = lshr i64 %.sroa.01.022.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bk = add nuw i64 %i.bj, %.sroa.05.021.i.i.i.i.i.i.i.i ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %i.d
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [3 x i8], ptr %i.b, i64 %i.bk
  %.val12.i.i.i.i.i.i.i.i = load i24, ptr %i.bm, align 1, !alias.scope !172, !noalias !175
  %.sroa.0.0.insert.insert.i.i15.i.i.i.i.i.i.i.i = zext i24 %.val12.i.i.i.i.i.i.i.i to i32
  %i.bn = icmp samesign ult i32 %.pre27.i.i.i.i.i.i.i.i, %.sroa.0.0.insert.insert.i.i15.i.i.i.i.i.i.i.i
  %i.bo = select i1 %i.bn, i64 %.sroa.05.021.i.i.i.i.i.i.i.i, i64 %i.bk, !unpredictable !25 ; 2 uses
  %i.bp = sub i64 %.sroa.01.022.i.i.i.i.i.i.i.i, %i.bj ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.br = icmp samesign ugt i32 %.pre27.i.i.i.i.i.i.i.i, %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i
  %i.bs = zext i1 %i.br to i64
  %i.bt = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i, %i.bs ; 3 uses
  %i.bu = icmp ule i64 %i.bt, %i.d
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = trunc i64 %i.bt to i1
  %i.bw = icmp ult i64 %i.bt, %i.d
  %or.cond.i.i.i.i.i.i.i = and i1 %i.bw, %i.bv
  br label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bx = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i, 1
  %i.by = icmp eq i64 %i.bx, 0
  br label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.i.i.i

_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i.i.i.i.i.i = phi i1 [ %or.cond.i.i.i.i.i.i.i, %bb.c ], [ %i.by, %bb.d ]
  %i.bz = xor i1 %3, %.sroa.0.1.i.i.i.i.i.i.i
  br i1 %i.bz, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1E_22CodePointInversionList4span0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3g_5count0EB1I_.exit, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2V_22CodePointInversionList4span0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B2Z_.exit.i.i.i

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2V_22CodePointInversionList4span0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B2Z_.exit.i.i.i: ; preds = %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.i.i.i
  %i.ca = add i64 %.sroa.01.020.i.i.i, 1          ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.a
  br i1 %.not.i.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1E_22CodePointInversionList4span0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3g_5count0EB1I_.exit, label %.lr.ph.split.i.i.i

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1E_22CodePointInversionList4span0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3g_5count0EB1I_.exit: ; preds = %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2V_22CodePointInversionList4span0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B2Z_.exit.i.i.i, %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i, %bb.a, %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.us.i.i.i
  %.sroa.0.1.i.i = phi i64 [ 0, %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.us.i.i.i ], [ 0, %bb.a ], [ %i.u, %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i ], [ %.sroa.01.020.i.i.i, %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.i.i.i ], [ %i.ca, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2V_22CodePointInversionList4span0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B2Z_.exit.i.i.i ]
  ret i64 %.sroa.0.1.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList8contains(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !177, !nonnull !25, !noundef !25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !177, !noundef !25 ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.e = trunc i32 %1 to i16
  %i.f = lshr i16 %i.e, 8
  %sh.diff.i = lshr i32 %1, 8
  %tr.sh.diff.i = trunc nuw nsw i32 %sh.diff.i to i16
  %.sroa.5.2.insert.shift.i = and i16 %tr.sh.diff.i, 7936
  %.sroa.5.2.insert.insert.i = or disjoint i16 %.sroa.5.2.insert.shift.i, %i.f
  %.not.i.i = icmp eq i64 %i.c, 1
  %.pre.i.i = zext nneg i16 %.sroa.5.2.insert.insert.i to i32
  %.pre24.i.i = shl nuw nsw i32 %.pre.i.i, 8
  %.pre26.i.i = and i32 %1, 255
  %.pre27.i.i = or disjoint i32 %.pre24.i.i, %.pre26.i.i ; 3 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.n, %.lr.ph.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load i24, ptr %i.g, align 1, !alias.scope !180, !noalias !183
  %.sroa.0.0.insert.insert.i.i.i.i = zext i24 %.val14.i.i to i32 ; 2 uses
  %i.h = icmp eq i32 %.pre27.i.i, %.sroa.0.0.insert.insert.i.i.i.i
  br i1 %i.h, label %bb.d, label %bb.b

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.sroa.01.022.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.c, %.preheader.i.i ] ; 2 uses
  %.sroa.05.021.i.i = phi i64 [ %i.n, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.i = lshr i64 %.sroa.01.022.i.i, 1            ; 2 uses
  %i.j = add nuw i64 %i.i, %.sroa.05.021.i.i      ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.c
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.j
  %.val12.i.i = load i24, ptr %i.l, align 1, !alias.scope !180, !noalias !183
  %.sroa.0.0.insert.insert.i.i15.i.i = zext i24 %.val12.i.i to i32
  %i.m = icmp samesign ult i32 %.pre27.i.i, %.sroa.0.0.insert.insert.i.i15.i.i
  %i.n = select i1 %i.m, i64 %.sroa.05.021.i.i, i64 %i.j, !unpredictable !25 ; 2 uses
  %i.o = sub i64 %.sroa.01.022.i.i, %i.i          ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = icmp samesign ugt i32 %.pre27.i.i, %.sroa.0.0.insert.insert.i.i.i.i
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.r ; 2 uses
  %i.t = icmp ule i64 %i.s, %i.c
  tail call void @llvm.assume(i1 %i.t)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.i.ph.i = phi i64 [ %i.s, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.u = trunc i64 %.sroa.4.0.i.ph.i to i1
  %i.v = icmp ult i64 %.sroa.4.0.i.ph.i, %i.c
  %or.cond.i = and i1 %i.v, %i.u
  br label %_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList14contains_query.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.w = and i64 %.sroa.05.0.lcssa.i.i, 1
  %i.x = icmp eq i64 %i.w, 0
  br label %_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList14contains_query.exit

_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList14contains_query.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i1 [ %or.cond.i, %bb.c ], [ %i.x, %bb.d ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList9span_back(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1V_22CodePointInversionList9span_back0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3C_5count0EB1Z_.exit:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = zext i1 %3 to i8
  store i8 %i.c, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %1, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.h, align 8
  %i.i = call { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2e_9TakeWhileppEB1l_8try_fold5checkcjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB3Y_22CodePointInversionList9span_back0NCINvMB3d_B3a_10wrap_mut_2jcNCNvYIB2w_BM_B3T_EB1l_5count0E0E0INtNtB3f_12control_flow11ControlFlowB3a_jEEB42_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull dereferenceable(1) %i.f)
  %i.j = extractvalue { i64, i64 } %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = sub i64 %2, %i.j
  ret i64 %i.k
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtCs20C9KvGHlPa_15icu_collections26codepointinvliststringlistNtB4_38CodePointInversionListAndStringListULE11cp_inv_list(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMNtNtCsgTMNKkQstJd_7zerovec10varzerovec10lengthlessINtB2_22VarZeroLengthlessSliceShNtNtB4_10components7Index16E13get_uncheckedCs20C9KvGHlPa_15icu_collections(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef 2, i64 noundef 0) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 1
  %i.c = add i64 %i.b, -4
  %i.d = udiv i64 %i.c, 3
  %i.e = insertvalue { ptr, i64 } %i.a, i64 %i.d, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtCs20C9KvGHlPa_15icu_collections26codepointinvliststringlistNtB4_38CodePointInversionListAndStringListULE8str_list(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMNtNtCsgTMNKkQstJd_7zerovec10varzerovec10lengthlessINtB2_22VarZeroLengthlessSliceShNtNtB4_10components7Index16E13get_uncheckedCs20C9KvGHlPa_15icu_collections(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef 2, i64 noundef 1)
  ret { ptr, i64 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc { i32, i32 } @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections10char16trie4trieNtB4_18Char16TrieIterator12value_result(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %0, %.40.val
  br i1 %i.a, label %bb.b, label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections10char16trie4trieNtB4_18Char16TrieIterator9get_value.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.32.val) ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %.32.val, i64 %0
  %.sroa.010.0.copyload.i = load i16, ptr %i.b, align 1, !noalias !185 ; 6 uses
  %.not.i = icmp sgt i16 %.sroa.010.0.copyload.i, -1
  %i.c = add nuw i64 %0, 1                        ; 6 uses
  br i1 %.not.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i16 %.sroa.010.0.copyload.i, 32767   ; 4 uses
  %i.e = icmp samesign ult i16 %i.d, 16384
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i16 %i.d, 32767
  %i.f = icmp ult i64 %i.c, %.40.val              ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = zext nneg i16 %i.d to i32
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections10char16trie4trieNtB4_18Char16TrieIterator9get_value.exit

bb.f:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.h, label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections10char16trie4trieNtB4_18Char16TrieIterator9get_value.exit

bb.g:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.j, label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections10char16trie4trieNtB4_18Char16TrieIterator9get_value.exit

bb.h:                                             ; preds = %bb.f
  %i.h = add nuw i64 %0, 2                        ; 2 uses
  %i.i = icmp ult i64 %i.h, %.40.val
  br i1 %i.i, label %bb.i, label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections10char16trie4trieNtB4_18Char16TrieIterator9get_value.exit

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.32.val, i64 %i.c
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.j, align 1, !noalias !188
  %i.k = zext i16 %.sroa.015.0.copyload.i.i to i32
  %i.l = shl nuw i32 %i.k, 16
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.32.val, i64 %i.h
  %.sroa.017.0.copyload.i.i = load i16, ptr %i.m, align 1, !noalias !188
  %i.n = zext i16 %.sroa.017.0.copyload.i.i to i32
  %i.o = or disjoint i32 %i.l, %i.n
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections10char16trie4trieNtB4_18Char16TrieIterator9get_value.exit

bb.j:                                             ; preds = %bb.g
  %i.p = add nsw i16 %i.d, -16384
  %i.q = zext nneg i16 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 16
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %.32.val, i64 %i.c
  %.sroa.013.0.copyload.i.i = load i16, ptr %i.s, align 1, !noalias !188
  %i.t = zext i16 %.sroa.013.0.copyload.i.i to i32
  %i.u = or disjoint i32 %i.r, %i.t
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections10char16trie4trieNtB4_18Char16TrieIterator9get_value.exit

bb.k:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i16 %.sroa.010.0.copyload.i, 16448
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = icmp samesign ult i16 %.sroa.010.0.copyload.i, 32704
  %i.x = icmp ult i64 %i.c, %.40.val              ; 2 uses
  br i1 %i.w, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.y = lshr i16 %.sroa.010.0.copyload.i, 6
  %i.z = add nsw i16 %i.y, -1
  %i.aa = zext i16 %i.z to i32
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections10char16trie4trieNtB4_18Char16TrieIterator9get_value.exit

bb.n:                                             ; preds = %bb.l
  br i1 %i.x, label %bb.p, label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections10char16trie4trieNtB4_18Char16TrieIterator9get_value.exit

bb.o:                                             ; preds = %bb.l
  br i1 %i.x, label %bb.r, label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections10char16trie4trieNtB4_18Char16TrieIterator9get_value.exit

end_hunk_0

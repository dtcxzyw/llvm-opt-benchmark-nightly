Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_collections-1f1b138d0b71207f.icu_collections.17692de3dd664722-cgu.0?download=true
inline.NumInlined: 103
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList14contains_query:bb.a
  %.val12.i = load i24, ptr %i.m, align 1, !alias.scope !122
  %.sroa.0.0.insert.insert.i.i15.i = zext i24 %.val12.i to i32
  %i.n = icmp samesign ult i32 %.pre27.i, %.sroa.0.0.insert.insert.i.i15.i
  %i.o = select i1 %i.n, i64 %.sroa.05.021.i, i64 %i.k, !unpredictable !5 ; 2 uses
  %i.p = sub nuw nsw i64 %.sroa.01.022.i, %i.j    ; 2 uses
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.r = icmp samesign ugt i32 %.pre27.i, %.sroa.0.0.insert.insert.i.i.i
  %i.s = zext i1 %i.r to i64
  %i.t = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.s ; 2 uses
  %i.u = icmp ule i64 %i.t, %i.d
  tail call void @llvm.assume(i1 %i.u)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.4.0.i.ph = phi i64 [ %i.t, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.v = trunc i64 %.sroa.4.0.i.ph to i1
  %i.w = icmp ult i64 %.sroa.4.0.i.ph, %i.d
  %or.cond = and i1 %i.w, %i.v                    ; 2 uses
  %i.x = add nsw i64 %.sroa.4.0.i.ph, -1
  %spec.select = select i1 %or.cond, i64 %i.x, i64 undef
  %spec.select29 = zext i1 %or.cond to i64
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
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
define void @_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList23try_from_inversion_list(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !135 {
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
  %.sroa.2.0.copyload.i.i.us.i.i = load i16, ptr %i.h, align 1, !alias.scope !136, !noalias !137
  %i.i = zext i16 %.sroa.2.0.copyload.i.i.us.i.i to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %.sroa.05.0.copyload.i.i.us.i.i = load i8, ptr %i.f, align 1, !alias.scope !136, !noalias !137
  %.sroa.06.0.copyload.i.i.us.i.i = load i8, ptr %i.g, align 1, !alias.scope !136, !noalias !137
  %.sroa.27.0..sroa_idx.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.27.0.copyload.i.i.us.i.i = load i16, ptr %.sroa.27.0..sroa_idx.i.i.us.i.i, align 1, !alias.scope !136, !noalias !137
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.t = icmp ugt i64 %i.r, 1
  br i1 %i.t, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj3_EmmNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1Y_22CodePointInversionList23try_from_inversion_list0NCINvXsy_NtNtB8_6traits5accummNtB42_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter6ChunksBW_EB1T_EE0E0B22_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef range(i64 0, 3074457345618258603) %..i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22, !noalias !140
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
define void @_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList24iter_ranges_complemented(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 33), (40, 49)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !147 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  store ptr %.sroa.01.0, ptr %0, align 8, !alias.scope !150
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.459.0..sroa_idx, align 8, !alias.scope !150
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %.sroa.560.0..sroa_idx, align 8, !alias.scope !150
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.02.070, ptr %.sroa.661.0..sroa_idx, align 8, !alias.scope !150
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.2.068, ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx, align 8, !alias.scope !150
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.0.0, ptr %i.n, align 8, !alias.scope !151
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1114111, ptr %.sroa.2.0..sroa_idx, align 4, !alias.scope !151
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.3.065, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !151
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef i64 @_RNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2_22CodePointInversionList4span(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !170 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 7 uses
  %.not.i19.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i19.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1E_22CodePointInversionList4span0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3g_5count0EB1I_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !alias.scope !171, !noalias !172, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !171, !noalias !172, !noundef !5 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.d, 1
  br i1 %i.e, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  br i1 %3, label %.lr.ph.split.us.split.us.i.i.i, label %.lr.ph.split.us.split.i.i.i

.lr.ph.split.us.split.us.i.i.i:                   ; preds = %.lr.ph.split.us.i.i.i
  %i.f = load i8, ptr %1, align 1, !noalias !173, !noundef !5 ; 3 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.us.i.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.us.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.us.i.i.i: ; preds = %.lr.ph.split.us.split.us.i.i.i
  %i.h = icmp samesign ne i64 %2, 1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ugt i8 %i.f, -33
  br i1 %i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.us.i.i.i, label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.us.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.us.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.us.i.i.i
  %i.j = icmp samesign ne i64 %2, 2
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ugt i8 %i.f, -17
  br i1 %i.k, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.us.us.i.i.i, label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.us.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.us.us.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.us.i.i.i
  %i.l = icmp samesign ne i64 %2, 3
  tail call void @llvm.assume(i1 %i.l)
  br label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.us.i.i.i

_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.us.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.us.us.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.us.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.us.i.i.i, %.lr.ph.split.us.split.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1E_22CodePointInversionList4span0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3g_5count0EB1I_.exit

.lr.ph.split.us.split.i.i.i:                      ; preds = %.lr.ph.split.us.i.i.i, %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i
  %.sroa.01.020.us.i.i.i = phi i64 [ %i.w, %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i ]
  %i.m = phi ptr [ %i.v, %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i ], [ %1, %.lr.ph.split.us.i.i.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.m, align 1, !noalias !173, !noundef !5 ; 3 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.i.i.i: ; preds = %.lr.ph.split.us.split.i.i.i
  %i.q = icmp ne ptr %i.n, %i.a
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  %i.s = icmp samesign ugt i8 %i.o, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.i.i.i, label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.i.i.i
  %i.t = icmp ne ptr %i.r, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign ugt i8 %i.o, -17
  %spec.select.v.i = select i1 %i.u, i64 4, i64 3
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %spec.select.v.i
  br label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i

_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.i.i.i, %.lr.ph.split.us.split.i.i.i
  %i.v = phi ptr [ %spec.select.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.us.i.i.i ], [ %i.n, %.lr.ph.split.us.split.i.i.i ], [ %i.r, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.us.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.w = add i64 %.sroa.01.020.us.i.i.i, 1        ; 2 uses
  %.not.i.us.i.i.i = icmp eq ptr %i.v, %i.a
  br i1 %.not.i.us.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1E_22CodePointInversionList4span0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3g_5count0EB1I_.exit, label %.lr.ph.split.us.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2V_22CodePointInversionList4span0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B2Z_.exit.i.i.i
  %.sroa.01.020.i.i.i = phi i64 [ %i.cc, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2V_22CodePointInversionList4span0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B2Z_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.x = phi ptr [ %i.bg, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2V_22CodePointInversionList4span0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B2Z_.exit.i.i.i ], [ %1, %.lr.ph.i.i.i ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 3 uses
  %i.z = load i8, ptr %i.x, align 1, !noalias !173, !noundef !5 ; 5 uses
  %i.aa = icmp sgt i8 %i.z, -1
  br i1 %i.aa, label %bb.b, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %i.ab = and i8 %i.z, 31
  %i.ac = zext nneg i8 %i.ab to i32               ; 3 uses
  %i.ad = icmp ne ptr %i.y, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 3 uses
  %i.af = load i8, ptr %i.y, align 1, !noalias !173, !noundef !5
  %i.ag = shl nuw nsw i32 %i.ac, 6
  %i.ah = and i8 %i.af, 63
  %i.ai = zext nneg i8 %i.ah to i32               ; 2 uses
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = icmp samesign ugt i8 %i.z, -33
  br i1 %i.ak, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i
  %i.al = zext nneg i8 %i.z to i32
  br label %.preheader.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.i.i.i
  %i.am = icmp ne ptr %i.ae, %i.a
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 3 ; 3 uses
  %i.ao = load i8, ptr %i.ae, align 1, !noalias !173, !noundef !5
  %i.ap = shl nuw nsw i32 %i.ai, 6
  %i.aq = and i8 %i.ao, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar            ; 2 uses
  %i.at = shl nuw nsw i32 %i.ac, 12
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = icmp samesign ugt i8 %i.z, -17
  br i1 %i.av, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.i.i.i
  %i.aw = icmp ne ptr %i.an, %i.a
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ay = load i8, ptr %i.an, align 1, !noalias !173, !noundef !5
  %i.az = shl nuw nsw i32 %i.ac, 18
  %i.ba = and i32 %i.az, 1835008
  %i.bb = shl nuw nsw i32 %i.as, 6
  %i.bc = and i8 %i.ay, 63
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd
  %i.bf = or disjoint i32 %i.be, %i.ba
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.i.i.i
  %i.bg = phi ptr [ %i.an, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.i.i.i ], [ %i.ax, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.i.i.i ], [ %i.y, %bb.b ] ; 2 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.au, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit14.i.i.i.i.i ], [ %i.bf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit16.i.i.i.i.i ], [ %i.aj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs20C9KvGHlPa_15icu_collections.exit12.i.i.i.i.i ], [ %i.al, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.bh = trunc i32 %spec.select.i.ph.i.i.i to i16
  %i.bi = lshr i16 %i.bh, 8
  %sh.diff.i.i.i.i.i.i.i = lshr i32 %spec.select.i.ph.i.i.i, 8
  %tr.sh.diff.i.i.i.i.i.i.i = trunc nuw nsw i32 %sh.diff.i.i.i.i.i.i.i to i16
  %.sroa.5.2.insert.shift.i.i.i.i.i.i.i = and i16 %tr.sh.diff.i.i.i.i.i.i.i, 7936
  %.sroa.5.2.insert.insert.i.i.i.i.i.i.i = or disjoint i16 %.sroa.5.2.insert.shift.i.i.i.i.i.i.i, %i.bi
  %.pre.i.i.i.i.i.i.i.i = zext nneg i16 %.sroa.5.2.insert.insert.i.i.i.i.i.i.i to i32
  %.pre24.i.i.i.i.i.i.i.i = shl nuw nsw i32 %.pre.i.i.i.i.i.i.i.i, 8
  %.pre26.i.i.i.i.i.i.i.i = and i32 %spec.select.i.ph.i.i.i, 255
  %.pre27.i.i.i.i.i.i.i.i = or disjoint i32 %.pre24.i.i.i.i.i.i.i.i, %.pre26.i.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [3 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i
  %.val14.i.i.i.i.i.i.i.i = load i24, ptr %i.bj, align 1, !alias.scope !176, !noalias !177
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i = zext i24 %.val14.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.bk = icmp eq i32 %.pre27.i.i.i.i.i.i.i.i, %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bk, label %bb.d, label %bb.c

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.01.022.i.i.i.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.d, %.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.05.021.i.i.i.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bl = lshr i64 %.sroa.01.022.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, %.sroa.05.021.i.i.i.i.i.i.i.i ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %i.d
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [3 x i8], ptr %i.b, i64 %i.bm
  %.val12.i.i.i.i.i.i.i.i = load i24, ptr %i.bo, align 1, !alias.scope !176, !noalias !177
  %.sroa.0.0.insert.insert.i.i15.i.i.i.i.i.i.i.i = zext i24 %.val12.i.i.i.i.i.i.i.i to i32
  %i.bp = icmp samesign ult i32 %.pre27.i.i.i.i.i.i.i.i, %.sroa.0.0.insert.insert.i.i15.i.i.i.i.i.i.i.i
  %i.bq = select i1 %i.bp, i64 %.sroa.05.021.i.i.i.i.i.i.i.i, i64 %i.bm, !unpredictable !5 ; 2 uses
  %i.br = sub nuw nsw i64 %.sroa.01.022.i.i.i.i.i.i.i.i, %i.bl ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bt = icmp samesign ugt i32 %.pre27.i.i.i.i.i.i.i.i, %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i
  %i.bu = zext i1 %i.bt to i64
  %i.bv = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i, %i.bu ; 3 uses
  %i.bw = icmp ule i64 %i.bv, %i.d
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = trunc i64 %i.bv to i1
  %i.by = icmp ult i64 %i.bv, %i.d
  %or.cond.i.i.i.i.i.i.i = and i1 %i.by, %i.bx
  br label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bz = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i, 1
  %i.ca = icmp eq i64 %i.bz, 0
  br label %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.i.i.i

_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i.i.i.i.i.i = phi i1 [ %or.cond.i.i.i.i.i.i.i, %bb.c ], [ %i.ca, %bb.d ]
  %i.cb = xor i1 %3, %.sroa.0.1.i.i.i.i.i.i.i
  br i1 %i.cb, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB1E_22CodePointInversionList4span0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3g_5count0EB1I_.exit, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2V_22CodePointInversionList4span0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B2Z_.exit.i.i.i

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB2V_22CodePointInversionList4span0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B2Z_.exit.i.i.i: ; preds = %_RNCNvMNtNtCs20C9KvGHlPa_15icu_collections16codepointinvlist9cpinvlistNtB4_22CodePointInversionList4span0B8_.exit.i.i.i.i
  %i.cc = add i64 %.sroa.01.020.i.i.i, 1          ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.a
end_hunk_0

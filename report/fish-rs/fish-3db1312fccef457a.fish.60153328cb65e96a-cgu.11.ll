Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !noalias !88, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !88, !noundef !5
  %i.f = add i64 %i.c, 1
  store i64 %i.f, ptr %i.a, align 8, !noalias !88
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE4withNCNvBW_9thread_id0BU_EB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !inline_history !89 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !5
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtCs8n0tpEuULLm_5pcre24pool5innerINtB19_4PoolINtNtB1d_3ffi9MatchDataNtB1X_15CodeUnitWidth32EINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB1U_NtNtB3m_6marker4SendNtNtNtB3m_5panic11unwind_safe13RefUnwindSafeNtB4v_10UnwindSafeNtB4b_4SyncEL_EE3get0jECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !inline_history !90 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !5
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtCs8n0tpEuULLm_5pcre24pool5innerINtB19_4PoolINtNtB1d_3ffi9MatchDataNtB1X_15CodeUnitWidth32EINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB1U_NtNtB3m_6marker4SendNtNtNtB3m_5panic11unwind_safe13RefUnwindSafeNtB4v_10UnwindSafeNtB4b_4SyncEL_EE9put_value0jECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !inline_history !91 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !5
  ret i64 %.val.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEE12remove_entryBO_EB3i_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.c = tail call fastcc noundef ptr @_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2a_E0EB3k_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) #38 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !101, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.i = add nsw i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !103, !noundef !5
  %i.l = and i64 %i.i, %i.k                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i25.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !104
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i926.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !105
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.o, i1 false)
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.r, i1 false)
  %narrow.i.i = add nuw nsw i16 %i.t, %i.s
  %i.u = icmp samesign ugt i16 %narrow.i.i, 15
  br i1 %i.u, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !103, !noundef !5 ; 2 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = add nuw i64 %i.w, 1
  store i64 %i.y, ptr %i.v, align 8, !alias.scope !103
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2929) #37, !noalias !106
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ -1, %bb.d ], [ -128, %bb.b ] ; 2 uses
  %i.z = icmp ugt i64 %i.l, -17
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %.sroa.0.0.i.i, ptr %i.p, align 1, !noalias !106
  %i.aa = getelementptr i8, ptr %i.m, i64 16
  store i8 %.sroa.0.0.i.i, ptr %i.aa, align 1, !noalias !106
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !103, !noundef !5 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE6removeB3j_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #37, !noalias !106
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2930) #37, !noalias !106
  unreachable

_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE6removeB3j_.exit: ; preds = %bb.g
  %i.ae = add i64 %i.ac, -1
  store i64 %i.ae, ptr %i.ab, align 8, !alias.scope !103
  %i.af = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !107, !nonnull !5, !noundef !5
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE6removeB3j_.exit
  %.sroa.2.0 = phi ptr [ %i.ag, %_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE6removeB3j_.exit ], [ null, %bb.a ]
  ret ptr %.sroa.2.0
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !127, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !127, !noundef !5 ; 6 uses
  %i.k = icmp ult i64 %i.j, 8
  br i1 %i.k, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.az, label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit, !prof !7

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %i.j, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #37, !noalias !128
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = add nuw i64 %i.j, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.03.0.i = phi i64 [ %i.j, %bb.b ], [ %i.o, %bb.f ] ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.p
  br i1 %.not.i, label %bb.ah, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %.val7 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.q = add i64 %i.j, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = and i64 %i.q, 15
  %.not10.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.r, %i.t  ; 4 uses
  %i.u = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.u, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %.sroa.01.07.i = phi i64 [ 0, %.new ], [ %i.y, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.v, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.w = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.x = or <2 x i64> %i.w, splat (i64 -9187201950435737472)
  store <2 x i64> %i.x, ptr %i.v, align 16
  %i.y = add i64 %.sroa.01.07.i, 32               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.aa, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.ab = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.ac = or <2 x i64> %i.ab, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ac, ptr %i.aa, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, label %bb.i

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = trunc i64 %.sroa.05.0.i.i.i to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

.epil.preheader:                                  ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, %bb.h
  %.sroa.01.07.i.epil.init = phi i64 [ 0, %bb.h ], [ %i.y, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa ]
  %lcmp.mod291 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod291)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.ad, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.ae = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.af = or <2 x i64> %i.ae, splat (i64 -9187201950435737472)
  store <2 x i64> %i.af, ptr %i.ad, align 16
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, %.epil.preheader
  %i.ag = icmp ult i64 %i.j, 15                   ; 2 uses
  %spec.select.i = select i1 %i.ag, i64 16, i64 %i.q, !prof !7
  %spec.select10.i = select i1 %i.ag, i64 %i.q, i64 16, !prof !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val7, i64 %spec.select.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %.val7, i64 %spec.select10.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !130
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.ai, align 8, !noalias !130
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 16, ptr %i.aj, align 8, !noalias !130
  store ptr %0, ptr %i.a, align 8, !noalias !130
  %i.ak = load i64, ptr %i.i, align 8, !alias.scope !129, !noalias !131, !noundef !5 ; 2 uses
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %.invoke202, label %.lr.ph

.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit, %.invoke204, %.invoke202, %.invoke, %bb.n
  %lpad.loopexit.split-lp265 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %common.resume unwind label %bb.ag, !noalias !132

bb.j:                                             ; preds = %bb.n
  unreachable

._crit_edge:                                      ; preds = %bb.af
  %.pre = load i64, ptr %i.i, align 8, !noalias !132 ; 4 uses
  %i.am = icmp ult i64 %.pre, 8
  br i1 %i.am, label %bb.m, label %bb.k

.lr.ph:                                           ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.af
  %.sroa.04.0.i88 = phi i64 [ %i.an, %bb.af ], [ 0, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 11 uses
  %.neg.i = xor i64 %.sroa.04.0.i88, -1
  %i.an = add nuw i64 %.sroa.04.0.i88, 1
  %i.ao = load ptr, ptr %0, align 8, !noalias !132, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.04.0.i88
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !132, !noundef !5
  %.not.i1 = icmp eq i8 %i.aq, -128
  br i1 %.not.i1, label %bb.o, label %bb.af

bb.k:                                             ; preds = %._crit_edge
  %i.ar = icmp eq i64 %.pre, -1
  br i1 %i.ar, label %.invoke202, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add nuw i64 %.pre, 1
  %i.at = lshr i64 %i.as, 3
  %i.au = mul nuw i64 %i.at, 7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.sroa.01.0.i = phi i64 [ %.pre, %._crit_edge ], [ %i.au, %bb.l ] ; 2 uses
  %i.av = load i64, ptr %i.e, align 8, !noalias !132, !noundef !5 ; 2 uses
  %i.aw = icmp ult i64 %.sroa.01.0.i, %i.av
  br i1 %i.aw, label %bb.n, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2924) #36
          to label %bb.j unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !132

bb.o:                                             ; preds = %.lr.ph
  %i.ax = icmp ugt i64 %.sroa.04.0.i88, 1152921504606846974
  br i1 %i.ax, label %.invoke204, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.neg18.i = shl i64 %.neg.i, 4
  %i.ay = getelementptr inbounds i8, ptr %i.ao, i64 %.neg18.i ; 2 uses
  %i.az = sub nsw i64 0, %.sroa.04.0.i88
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.ac, %bb.p
  %i.ba = load ptr, ptr %0, align 8, !alias.scope !133, !noalias !132, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.az
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16
  %i.bd = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEEB2h_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc)
          to label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val11 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %.val12 = load i64, ptr %i.i, align 8, !noundef !5 ; 6 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit
  %.pn.i = phi i64 [ %i.bd, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit ], [ %i.bw, %bb.v ]
  %i.be = phi i64 [ 0, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit ], [ %i.bv, %bb.v ] ; 2 uses
  %.sroa.0.0.i16 = and i64 %.pn.i, %.val12        ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bf, align 1, !noalias !134
  %i.bg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i.i, label %bb.u, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.bi = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bh, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = add i64 %.sroa.0.0.i16, %i.bj           ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %.sroa.0.0.i16
  br i1 %i.bl, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = and i64 %i.bk, %.val12                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !5
  %i.bp = icmp sgt i8 %i.bo, -1
  br i1 %i.bp, label %bb.t, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.t:                                             ; preds = %bb.s
  %.val2.i.i = load <16 x i8>, ptr %.val11, align 16
  %i.bq = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i7.i = icmp ne i16 %i.br, 0
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.br, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  tail call void @llvm.assume(i1 %.not.i7.i)
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

bb.u:                                             ; preds = %bb.q
  %i.bu = icmp eq i64 %i.be, -16
  br i1 %i.bu, label %.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = add i64 %i.be, 16                       ; 2 uses
  %i.bw = add i64 %i.bv, %.sroa.0.0.i16           ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %.sroa.0.0.i16
  br i1 %i.bx, label %.invoke, label %bb.q

.invoke:                                          ; preds = %bb.r, %bb.v, %bb.u
  %i.by = phi ptr [ @2921, %bb.u ], [ @2922, %bb.v ], [ @2927, %bb.r ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by) #37
          to label %.cont unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.t, %bb.s
  %.sroa.0.0.i6.i = phi i64 [ %i.bt, %bb.t ], [ %i.bm, %bb.s ] ; 6 uses
  %i.bz = and i64 %.val12, %i.bd                  ; 2 uses
  %i.ca = sub i64 %.sroa.04.0.i88, %i.bz
  %i.cb = sub i64 %.sroa.0.0.i6.i, %i.bz
  %i.cc = xor i64 %i.cb, %i.ca
  %.unshifted.i = and i64 %i.cc, %.val12
  %i.cd = icmp ult i64 %.unshifted.i, 16
  br i1 %i.cd, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.ce = add nsw i64 %.sroa.04.0.i88, -16
  %i.cf = and i64 %.val12, %i.ce                  ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, -17
  br i1 %i.cg, label %.invoke202, label %bb.ae

bb.x:                                             ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.ch = icmp eq i64 %.sroa.0.0.i6.i, -1
  br i1 %i.ch, label %.invoke202, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = icmp ugt i64 %.sroa.0.0.i6.i, 1152921504606846974
  br i1 %i.ci, label %.invoke204, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.neg19.i = xor i64 %.sroa.0.0.i6.i, -1
  %.neg20.i = shl i64 %.neg19.i, 4
  %i.cj = getelementptr inbounds i8, ptr %.val11, i64 %.neg20.i ; 2 uses
  %i.ck = add nsw i64 %.sroa.0.0.i6.i, -16
  %i.cl = and i64 %i.ck, %.val12                  ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, -17
  br i1 %i.cm, label %.invoke202, label %bb.aa

.invoke204:                                       ; preds = %bb.o, %bb.y
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont205 unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !132

.cont205:                                         ; preds = %.invoke204
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cn = lshr i64 %i.bd, 57
  %i.co = trunc nuw nsw i64 %i.cn to i8           ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.0.0.i6.i ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !132, !noundef !5
  store i8 %i.co, ptr %i.cp, align 1, !noalias !132
  %i.cr = load ptr, ptr %0, align 8, !noalias !132, !nonnull !5, !noundef !5
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cl
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  store i8 %i.co, ptr %i.ct, align 1, !noalias !132
  %i.cu = icmp eq i8 %i.cq, -1
  br i1 %i.cu, label %bb.ab, label %bb.ac
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_:bb.a
  %i.eu = sub nuw i64 %i.du, %i.et
  store i64 %i.eu, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !136
  store i64 %i.et, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !136
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit unwind label %bb.am, !noalias !137

bb.am:                                            ; preds = %._crit_edge99.thread
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #34, !noalias !137
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit: ; preds = %._crit_edge99.thread
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalE0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c), !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !136
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit

bb.an:                                            ; preds = %._crit_edge99
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #36
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !137

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit25: ; preds = %bb.ak, %bb.as
  %.pn.i.i = phi i64 [ %i.fo, %bb.as ], [ %i.es, %bb.ak ]
  %i.ew = phi i64 [ %i.fn, %bb.as ], [ 0, %bb.ak ] ; 2 uses
  %.sroa.0.0.i.i26 = and i64 %.pn.i.i, %i.ds      ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.0.0.i.i26
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ex, align 1, !noalias !140
  %i.ey = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.ez = bitcast <16 x i1> %i.ey to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ez, 0
  br i1 %.not.i.i.i, label %bb.ar, label %bb.ao, !prof !7

bb.ao:                                            ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit25
  %i.fa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ez, i1 true)
  %i.fb = zext nneg i16 %i.fa to i64
  %i.fc = add i64 %.sroa.0.0.i.i26, %i.fb         ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %.sroa.0.0.i.i26
  br i1 %i.fd, label %.invoke206, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fe = and i64 %i.fc, %i.ds                    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !noundef !5
  %i.fh = icmp sgt i8 %i.fg, -1
  br i1 %i.fh, label %bb.aq, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !7

bb.aq:                                            ; preds = %bb.ap
  %.val2.i.i.i = load <16 x i8>, ptr %i.dp, align 16
  %i.fi = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fj = bitcast <16 x i1> %i.fi to i16          ; 2 uses
  %.not.i7.i.i = icmp ne i16 %i.fj, 0
  %i.fk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fj, i1 true)
  %i.fl = zext nneg i16 %i.fk to i64
  tail call void @llvm.assume(i1 %.not.i7.i.i)
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

bb.ar:                                            ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit25
  %i.fm = icmp eq i64 %i.ew, -16
  br i1 %i.fm, label %.invoke206, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fn = add i64 %i.ew, 16                       ; 2 uses
  %i.fo = add i64 %i.fn, %.sroa.0.0.i.i26         ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %.sroa.0.0.i.i26
  br i1 %i.fp, label %.invoke206, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_.exit25

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.aq, %bb.ap
  %.sroa.0.0.i6.i.i = phi i64 [ %i.fl, %bb.aq ], [ %i.fe, %bb.ap ] ; 5 uses
  %i.fq = add i64 %.sroa.0.0.i6.i.i, -16
  %i.fr = and i64 %i.fq, %i.ds                    ; 2 uses
  %i.fs = icmp ugt i64 %i.fr, -17
  br i1 %i.fs, label %.invoke206, label %bb.at

.invoke206:                                       ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, %bb.ao, %._crit_edge92, %.noexc3.preheader, %.noexc3, %bb.as, %bb.ar
  %i.ft = phi ptr [ @2922, %bb.as ], [ @2942, %.noexc3 ], [ @2921, %bb.ar ], [ @2927, %bb.ao ], [ @2941, %._crit_edge92 ], [ @2942, %.noexc3.preheader ], [ @23, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ft) #37
          to label %.cont207 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont207:                                         ; preds = %.invoke206
  unreachable

bb.at:                                            ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fu = lshr i64 %i.es, 57
  %i.fv = trunc nuw nsw i64 %i.fu to i8           ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.0.0.i6.i.i
  store i8 %i.fv, ptr %i.fw, align 1
  %i.fx = getelementptr i8, ptr %i.dp, i64 %i.fr
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 %i.fv, ptr %i.fy, align 1
  %i.fz = load ptr, ptr %0, align 8, !alias.scope !138, !nonnull !5, !noundef !5
  %i.ga = icmp eq i64 %i.ef, -1
  br i1 %i.ga, label %.invoke210, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gb = icmp ugt i64 %i.ef, 1152921504606846974
  br i1 %i.gb, label %.invoke208, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.neg.i.i = xor i64 %i.ef, -1
  %.neg63.i.i = shl i64 %.neg.i.i, 4
  %i.gc = getelementptr inbounds i8, ptr %i.fz, i64 %.neg63.i.i
  %i.gd = icmp eq i64 %.sroa.0.0.i6.i.i, -1
  br i1 %i.gd, label %.invoke210, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ge = icmp ugt i64 %.sroa.0.0.i6.i.i, 1152921504606846974
  br i1 %i.ge, label %.invoke208, label %bb.ax

.invoke210:                                       ; preds = %bb.av, %bb.at
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !137

.cont211:                                         ; preds = %.invoke210
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %.neg64.i.i = xor i64 %.sroa.0.0.i6.i.i, -1
  %.neg65.i.i = shl i64 %.neg64.i.i, 4
  %i.gf = getelementptr inbounds i8, ptr %i.dp, i64 %.neg65.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gf, ptr noundef nonnull align 1 dereferenceable(16) %i.gc, i64 16, i1 false), !noalias !137
  %i.gg = icmp eq i64 %i.en, 0
  br i1 %i.gg, label %._crit_edge99, label %.preheader

.invoke208:                                       ; preds = %bb.aw, %bb.au
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont209 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !137

.cont209:                                         ; preds = %.invoke208
  unreachable

bb.ay:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !137
  unreachable

bb.az:                                            ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #37, !noalias !128
  unreachable

_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %bb.ai, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit, %bb.c, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.du, %bb.ai ], [ undef, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.ds, %bb.ai ], [ -1, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit ]
  %i.gi = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gj = insertvalue { i64, i64 } %i.gi, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gj
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !160, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !160, !noundef !5 ; 6 uses
  %i.k = icmp ult i64 %i.j, 8
  br i1 %i.k, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.az, label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit, !prof !7

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %i.j, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #37, !noalias !161
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = add nuw i64 %i.j, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.03.0.i = phi i64 [ %i.j, %bb.b ], [ %i.o, %bb.f ] ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.p
  br i1 %.not.i, label %bb.ah, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %.val7 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.q = add i64 %i.j, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = and i64 %i.q, 15
  %.not10.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.r, %i.t  ; 4 uses
  %i.u = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.u, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %.sroa.01.07.i = phi i64 [ 0, %.new ], [ %i.y, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.v, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.w = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.x = or <2 x i64> %i.w, splat (i64 -9187201950435737472)
  store <2 x i64> %i.x, ptr %i.v, align 16
  %i.y = add i64 %.sroa.01.07.i, 32               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.aa, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.ab = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.ac = or <2 x i64> %i.ab, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ac, ptr %i.aa, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, label %bb.i

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = trunc i64 %.sroa.05.0.i.i.i to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

.epil.preheader:                                  ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, %bb.h
  %.sroa.01.07.i.epil.init = phi i64 [ 0, %bb.h ], [ %i.y, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa ]
  %lcmp.mod291 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod291)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.ad, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.ae = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.af = or <2 x i64> %i.ae, splat (i64 -9187201950435737472)
  store <2 x i64> %i.af, ptr %i.ad, align 16
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, %.epil.preheader
  %i.ag = icmp ult i64 %i.j, 15                   ; 2 uses
  %spec.select.i = select i1 %i.ag, i64 16, i64 %i.q, !prof !7
  %spec.select10.i = select i1 %i.ag, i64 %i.q, i64 16, !prof !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val7, i64 %spec.select.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %.val7, i64 %spec.select10.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !163
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.ai, align 8, !noalias !163
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 16, ptr %i.aj, align 8, !noalias !163
  store ptr %0, ptr %i.a, align 8, !noalias !163
  %i.ak = load i64, ptr %i.i, align 8, !alias.scope !162, !noalias !164, !noundef !5 ; 2 uses
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %.invoke202, label %.lr.ph

.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit, %.invoke204, %.invoke202, %.invoke, %bb.n
  %lpad.loopexit.split-lp265 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %common.resume unwind label %bb.ag, !noalias !165

bb.j:                                             ; preds = %bb.n
  unreachable

._crit_edge:                                      ; preds = %bb.af
  %.pre = load i64, ptr %i.i, align 8, !noalias !165 ; 4 uses
  %i.am = icmp ult i64 %.pre, 8
  br i1 %i.am, label %bb.m, label %bb.k

.lr.ph:                                           ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.af
  %.sroa.04.0.i88 = phi i64 [ %i.an, %bb.af ], [ 0, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 11 uses
  %.neg.i = xor i64 %.sroa.04.0.i88, -1
  %i.an = add nuw i64 %.sroa.04.0.i88, 1
  %i.ao = load ptr, ptr %0, align 8, !noalias !165, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.04.0.i88
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !165, !noundef !5
  %.not.i1 = icmp eq i8 %i.aq, -128
  br i1 %.not.i1, label %bb.o, label %bb.af

bb.k:                                             ; preds = %._crit_edge
  %i.ar = icmp eq i64 %.pre, -1
  br i1 %i.ar, label %.invoke202, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add nuw i64 %.pre, 1
  %i.at = lshr i64 %i.as, 3
  %i.au = mul nuw i64 %i.at, 7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.sroa.01.0.i = phi i64 [ %.pre, %._crit_edge ], [ %i.au, %bb.l ] ; 2 uses
  %i.av = load i64, ptr %i.e, align 8, !noalias !165, !noundef !5 ; 2 uses
  %i.aw = icmp ult i64 %.sroa.01.0.i, %i.av
  br i1 %i.aw, label %bb.n, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2924) #36
          to label %bb.j unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !165

bb.o:                                             ; preds = %.lr.ph
  %i.ax = icmp ugt i64 %.sroa.04.0.i88, 1152921504606846974
  br i1 %i.ax, label %.invoke204, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.neg18.i = shl i64 %.neg.i, 4
  %i.ay = getelementptr inbounds i8, ptr %i.ao, i64 %.neg18.i ; 2 uses
  %i.az = sub nsw i64 0, %.sroa.04.0.i88
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.ac, %bb.p
  %i.ba = load ptr, ptr %0, align 8, !alias.scope !166, !noalias !165, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.az
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16
  %i.bd = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc)
          to label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val11 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %.val12 = load i64, ptr %i.i, align 8, !noundef !5 ; 6 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit
  %.pn.i = phi i64 [ %i.bd, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit ], [ %i.bw, %bb.v ]
  %i.be = phi i64 [ 0, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit ], [ %i.bv, %bb.v ] ; 2 uses
  %.sroa.0.0.i16 = and i64 %.pn.i, %.val12        ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bf, align 1, !noalias !167
  %i.bg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i.i, label %bb.u, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.bi = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bh, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = add i64 %.sroa.0.0.i16, %i.bj           ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %.sroa.0.0.i16
  br i1 %i.bl, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = and i64 %i.bk, %.val12                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !5
  %i.bp = icmp sgt i8 %i.bo, -1
  br i1 %i.bp, label %bb.t, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.t:                                             ; preds = %bb.s
  %.val2.i.i = load <16 x i8>, ptr %.val11, align 16
  %i.bq = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i7.i = icmp ne i16 %i.br, 0
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.br, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  tail call void @llvm.assume(i1 %.not.i7.i)
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

bb.u:                                             ; preds = %bb.q
  %i.bu = icmp eq i64 %i.be, -16
  br i1 %i.bu, label %.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = add i64 %i.be, 16                       ; 2 uses
  %i.bw = add i64 %i.bv, %.sroa.0.0.i16           ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %.sroa.0.0.i16
  br i1 %i.bx, label %.invoke, label %bb.q

.invoke:                                          ; preds = %bb.r, %bb.v, %bb.u
  %i.by = phi ptr [ @2921, %bb.u ], [ @2922, %bb.v ], [ @2927, %bb.r ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by) #37
          to label %.cont unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.t, %bb.s
  %.sroa.0.0.i6.i = phi i64 [ %i.bt, %bb.t ], [ %i.bm, %bb.s ] ; 6 uses
  %i.bz = and i64 %.val12, %i.bd                  ; 2 uses
  %i.ca = sub i64 %.sroa.04.0.i88, %i.bz
  %i.cb = sub i64 %.sroa.0.0.i6.i, %i.bz
  %i.cc = xor i64 %i.cb, %i.ca
  %.unshifted.i = and i64 %i.cc, %.val12
  %i.cd = icmp ult i64 %.unshifted.i, 16
  br i1 %i.cd, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.ce = add nsw i64 %.sroa.04.0.i88, -16
  %i.cf = and i64 %.val12, %i.ce                  ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, -17
  br i1 %i.cg, label %.invoke202, label %bb.ae

bb.x:                                             ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.ch = icmp eq i64 %.sroa.0.0.i6.i, -1
  br i1 %i.ch, label %.invoke202, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = icmp ugt i64 %.sroa.0.0.i6.i, 1152921504606846974
  br i1 %i.ci, label %.invoke204, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.neg19.i = xor i64 %.sroa.0.0.i6.i, -1
  %.neg20.i = shl i64 %.neg19.i, 4
  %i.cj = getelementptr inbounds i8, ptr %.val11, i64 %.neg20.i ; 2 uses
  %i.ck = add nsw i64 %.sroa.0.0.i6.i, -16
  %i.cl = and i64 %i.ck, %.val12                  ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, -17
  br i1 %i.cm, label %.invoke202, label %bb.aa

.invoke204:                                       ; preds = %bb.o, %bb.y
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont205 unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !165

.cont205:                                         ; preds = %.invoke204
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cn = lshr i64 %i.bd, 57
  %i.co = trunc nuw nsw i64 %i.cn to i8           ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.0.0.i6.i ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !165, !noundef !5
  store i8 %i.co, ptr %i.cp, align 1, !noalias !165
  %i.cr = load ptr, ptr %0, align 8, !noalias !165, !nonnull !5, !noundef !5
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cl
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  store i8 %i.co, ptr %i.ct, align 1, !noalias !165
  %i.cu = icmp eq i8 %i.cq, -1
  br i1 %i.cu, label %bb.ab, label %bb.ac
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish:bb.a
  %i.eu = sub nuw i64 %i.du, %i.et
  store i64 %i.eu, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !169
  store i64 %i.et, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !169
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit unwind label %bb.am, !noalias !170

bb.am:                                            ; preds = %._crit_edge99.thread
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #34, !noalias !170
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit: ; preds = %._crit_edge99.thread
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalE0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c), !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !169
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit

bb.an:                                            ; preds = %._crit_edge99
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #36
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !170

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit25: ; preds = %bb.ak, %bb.as
  %.pn.i.i = phi i64 [ %i.fo, %bb.as ], [ %i.es, %bb.ak ]
  %i.ew = phi i64 [ %i.fn, %bb.as ], [ 0, %bb.ak ] ; 2 uses
  %.sroa.0.0.i.i26 = and i64 %.pn.i.i, %i.ds      ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.0.0.i.i26
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ex, align 1, !noalias !173
  %i.ey = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.ez = bitcast <16 x i1> %i.ey to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ez, 0
  br i1 %.not.i.i.i, label %bb.ar, label %bb.ao, !prof !7

bb.ao:                                            ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit25
  %i.fa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ez, i1 true)
  %i.fb = zext nneg i16 %i.fa to i64
  %i.fc = add i64 %.sroa.0.0.i.i26, %i.fb         ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %.sroa.0.0.i.i26
  br i1 %i.fd, label %.invoke206, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fe = and i64 %i.fc, %i.ds                    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !noundef !5
  %i.fh = icmp sgt i8 %i.fg, -1
  br i1 %i.fh, label %bb.aq, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !7

bb.aq:                                            ; preds = %bb.ap
  %.val2.i.i.i = load <16 x i8>, ptr %i.dp, align 16
  %i.fi = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fj = bitcast <16 x i1> %i.fi to i16          ; 2 uses
  %.not.i7.i.i = icmp ne i16 %i.fj, 0
  %i.fk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fj, i1 true)
  %i.fl = zext nneg i16 %i.fk to i64
  tail call void @llvm.assume(i1 %.not.i7.i.i)
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

bb.ar:                                            ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit25
  %i.fm = icmp eq i64 %i.ew, -16
  br i1 %i.fm, label %.invoke206, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fn = add i64 %i.ew, 16                       ; 2 uses
  %i.fo = add i64 %i.fn, %.sroa.0.0.i.i26         ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %.sroa.0.0.i.i26
  br i1 %i.fp, label %.invoke206, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish.exit25

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.aq, %bb.ap
  %.sroa.0.0.i6.i.i = phi i64 [ %i.fl, %bb.aq ], [ %i.fe, %bb.ap ] ; 5 uses
  %i.fq = add i64 %.sroa.0.0.i6.i.i, -16
  %i.fr = and i64 %i.fq, %i.ds                    ; 2 uses
  %i.fs = icmp ugt i64 %i.fr, -17
  br i1 %i.fs, label %.invoke206, label %bb.at

.invoke206:                                       ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, %bb.ao, %._crit_edge92, %.noexc3.preheader, %.noexc3, %bb.as, %bb.ar
  %i.ft = phi ptr [ @2922, %bb.as ], [ @2942, %.noexc3 ], [ @2921, %bb.ar ], [ @2927, %bb.ao ], [ @2941, %._crit_edge92 ], [ @2942, %.noexc3.preheader ], [ @23, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ft) #37
          to label %.cont207 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont207:                                         ; preds = %.invoke206
  unreachable

bb.at:                                            ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fu = lshr i64 %i.es, 57
  %i.fv = trunc nuw nsw i64 %i.fu to i8           ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.0.0.i6.i.i
  store i8 %i.fv, ptr %i.fw, align 1
  %i.fx = getelementptr i8, ptr %i.dp, i64 %i.fr
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 %i.fv, ptr %i.fy, align 1
  %i.fz = load ptr, ptr %0, align 8, !alias.scope !171, !nonnull !5, !noundef !5
  %i.ga = icmp eq i64 %i.ef, -1
  br i1 %i.ga, label %.invoke210, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gb = icmp ugt i64 %i.ef, 1152921504606846974
  br i1 %i.gb, label %.invoke208, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.neg.i.i = xor i64 %i.ef, -1
  %.neg63.i.i = shl i64 %.neg.i.i, 4
  %i.gc = getelementptr inbounds i8, ptr %i.fz, i64 %.neg63.i.i
  %i.gd = icmp eq i64 %.sroa.0.0.i6.i.i, -1
  br i1 %i.gd, label %.invoke210, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ge = icmp ugt i64 %.sroa.0.0.i6.i.i, 1152921504606846974
  br i1 %i.ge, label %.invoke208, label %bb.ax

.invoke210:                                       ; preds = %bb.av, %bb.at
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !170

.cont211:                                         ; preds = %.invoke210
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %.neg64.i.i = xor i64 %.sroa.0.0.i6.i.i, -1
  %.neg65.i.i = shl i64 %.neg64.i.i, 4
  %i.gf = getelementptr inbounds i8, ptr %i.dp, i64 %.neg65.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gf, ptr noundef nonnull align 1 dereferenceable(16) %i.gc, i64 16, i1 false), !noalias !170
  %i.gg = icmp eq i64 %i.en, 0
  br i1 %i.gg, label %._crit_edge99, label %.preheader

.invoke208:                                       ; preds = %bb.aw, %bb.au
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont209 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !170

.cont209:                                         ; preds = %.invoke208
  unreachable

bb.ay:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !170
  unreachable

bb.az:                                            ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #37, !noalias !161
  unreachable

_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %bb.ai, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit, %bb.c, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.du, %bb.ai ], [ undef, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.ds, %bb.ai ], [ -1, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs25YkazkrsH5_9hashbrown3raw13RawTableInnerECs8frGy5WneL6_4fish.exit ]
  %i.gi = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gj = insertvalue { i64, i64 } %i.gi, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gj
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0EB3k_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !193, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !193, !noundef !5 ; 6 uses
  %i.k = icmp ult i64 %i.j, 8
  br i1 %i.k, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.az, label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish.exit, !prof !7

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %i.j, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #37, !noalias !194
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = add nuw i64 %i.j, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.03.0.i = phi i64 [ %i.j, %bb.b ], [ %i.o, %bb.f ] ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.p
  br i1 %.not.i, label %bb.ah, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %.val7 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.q = add i64 %i.j, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = and i64 %i.q, 15
  %.not10.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.r, %i.t  ; 4 uses
  %i.u = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.u, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %.sroa.01.07.i = phi i64 [ 0, %.new ], [ %i.y, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.v, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.w = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.x = or <2 x i64> %i.w, splat (i64 -9187201950435737472)
  store <2 x i64> %i.x, ptr %i.v, align 16
  %i.y = add i64 %.sroa.01.07.i, 32               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.aa, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.ab = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.ac = or <2 x i64> %i.ab, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ac, ptr %i.aa, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, label %bb.i

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = trunc i64 %.sroa.05.0.i.i.i to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

.epil.preheader:                                  ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, %bb.h
  %.sroa.01.07.i.epil.init = phi i64 [ 0, %bb.h ], [ %i.y, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa ]
  %lcmp.mod291 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod291)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.01.07.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.ad, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.ae = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.af = or <2 x i64> %i.ae, splat (i64 -9187201950435737472)
  store <2 x i64> %i.af, ptr %i.ad, align 16
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.unr-lcssa, %.epil.preheader
  %i.ag = icmp ult i64 %i.j, 15                   ; 2 uses
  %spec.select.i = select i1 %i.ag, i64 16, i64 %i.q, !prof !7
  %spec.select10.i = select i1 %i.ag, i64 %i.q, i64 16, !prof !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val7, i64 %spec.select.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %.val7, i64 %spec.select10.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !196
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.ai, align 8, !noalias !196
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 16, ptr %i.aj, align 8, !noalias !196
  store ptr %0, ptr %i.a, align 8, !noalias !196
  %i.ak = load i64, ptr %i.i, align 8, !alias.scope !195, !noalias !197, !noundef !5 ; 2 uses
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %.invoke202, label %.lr.ph

.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit, %.invoke204, %.invoke202, %.invoke, %bb.n
  %lpad.loopexit.split-lp265 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %common.resume unwind label %bb.ag, !noalias !198

bb.j:                                             ; preds = %bb.n
  unreachable

._crit_edge:                                      ; preds = %bb.af
  %.pre = load i64, ptr %i.i, align 8, !noalias !198 ; 4 uses
  %i.am = icmp ult i64 %.pre, 8
  br i1 %i.am, label %bb.m, label %bb.k

.lr.ph:                                           ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.af
  %.sroa.04.0.i88 = phi i64 [ %i.an, %bb.af ], [ 0, %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 11 uses
  %.neg.i = xor i64 %.sroa.04.0.i88, -1
  %i.an = add nuw i64 %.sroa.04.0.i88, 1
  %i.ao = load ptr, ptr %0, align 8, !noalias !198, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.04.0.i88
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !198, !noundef !5
  %.not.i1 = icmp eq i8 %i.aq, -128
  br i1 %.not.i1, label %bb.o, label %bb.af

bb.k:                                             ; preds = %._crit_edge
  %i.ar = icmp eq i64 %.pre, -1
  br i1 %i.ar, label %.invoke202, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add nuw i64 %.pre, 1
  %i.at = lshr i64 %i.as, 3
  %i.au = mul nuw i64 %i.at, 7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.sroa.01.0.i = phi i64 [ %.pre, %._crit_edge ], [ %i.au, %bb.l ] ; 2 uses
  %i.av = load i64, ptr %i.e, align 8, !noalias !198, !noundef !5 ; 2 uses
  %i.aw = icmp ult i64 %.sroa.01.0.i, %i.av
  br i1 %i.aw, label %bb.n, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2924) #36
          to label %bb.j unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !198

bb.o:                                             ; preds = %.lr.ph
  %i.ax = icmp ugt i64 %.sroa.04.0.i88, 1152921504606846974
  br i1 %i.ax, label %.invoke204, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.neg18.i = shl i64 %.neg.i, 4
  %i.ay = getelementptr inbounds i8, ptr %i.ao, i64 %.neg18.i ; 2 uses
  %i.az = sub nsw i64 0, %.sroa.04.0.i88
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.ac, %bb.p
  %i.ba = load ptr, ptr %0, align 8, !alias.scope !199, !noalias !198, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.az
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16
  %i.bd = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc)
          to label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val11 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %.val12 = load i64, ptr %i.i, align 8, !noundef !5 ; 6 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit
  %.pn.i = phi i64 [ %i.bd, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit ], [ %i.bw, %bb.v ]
  %i.be = phi i64 [ 0, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0B3m_.exit ], [ %i.bv, %bb.v ] ; 2 uses
  %.sroa.0.0.i16 = and i64 %.pn.i, %.val12        ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bf, align 1, !noalias !200
  %i.bg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i.i, label %bb.u, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.bi = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bh, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = add i64 %.sroa.0.0.i16, %i.bj           ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %.sroa.0.0.i16
  br i1 %i.bl, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = and i64 %i.bk, %.val12                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !5
  %i.bp = icmp sgt i8 %i.bo, -1
  br i1 %i.bp, label %bb.t, label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.t:                                             ; preds = %bb.s
  %.val2.i.i = load <16 x i8>, ptr %.val11, align 16
  %i.bq = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i7.i = icmp ne i16 %i.br, 0
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.br, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  tail call void @llvm.assume(i1 %.not.i7.i)
  br label %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

bb.u:                                             ; preds = %bb.q
  %i.bu = icmp eq i64 %i.be, -16
  br i1 %i.bu, label %.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = add i64 %i.be, 16                       ; 2 uses
  %i.bw = add i64 %i.bv, %.sroa.0.0.i16           ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %.sroa.0.0.i16
  br i1 %i.bx, label %.invoke, label %bb.q

.invoke:                                          ; preds = %bb.r, %bb.v, %bb.u
  %i.by = phi ptr [ @2921, %bb.u ], [ @2922, %bb.v ], [ @2927, %bb.r ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by) #37
          to label %.cont unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.t, %bb.s
  %.sroa.0.0.i6.i = phi i64 [ %i.bt, %bb.t ], [ %i.bm, %bb.s ] ; 6 uses
  %i.bz = and i64 %.val12, %i.bd                  ; 2 uses
  %i.ca = sub i64 %.sroa.04.0.i88, %i.bz
  %i.cb = sub i64 %.sroa.0.0.i6.i, %i.bz
  %i.cc = xor i64 %i.cb, %i.ca
  %.unshifted.i = and i64 %i.cc, %.val12
  %i.cd = icmp ult i64 %.unshifted.i, 16
  br i1 %i.cd, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.ce = add nsw i64 %.sroa.04.0.i88, -16
  %i.cf = and i64 %.val12, %i.ce                  ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, -17
  br i1 %i.cg, label %.invoke202, label %bb.ae

bb.x:                                             ; preds = %_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.ch = icmp eq i64 %.sroa.0.0.i6.i, -1
  br i1 %i.ch, label %.invoke202, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = icmp ugt i64 %.sroa.0.0.i6.i, 1152921504606846974
  br i1 %i.ci, label %.invoke204, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.neg19.i = xor i64 %.sroa.0.0.i6.i, -1
  %.neg20.i = shl i64 %.neg19.i, 4
  %i.cj = getelementptr inbounds i8, ptr %.val11, i64 %.neg20.i ; 2 uses
  %i.ck = add nsw i64 %.sroa.0.0.i6.i, -16
  %i.cl = and i64 %i.ck, %.val12                  ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, -17
  br i1 %i.cm, label %.invoke202, label %bb.aa

.invoke204:                                       ; preds = %bb.o, %bb.y
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #36
          to label %.cont205 unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !198

.cont205:                                         ; preds = %.invoke204
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cn = lshr i64 %i.bd, 57
  %i.co = trunc nuw nsw i64 %i.cn to i8           ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.0.0.i6.i ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !198, !noundef !5
  store i8 %i.co, ptr %i.cp, align 1, !noalias !198
  %i.cr = load ptr, ptr %0, align 8, !noalias !198, !nonnull !5, !noundef !5
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cl
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  store i8 %i.co, ptr %i.ct, align 1, !noalias !198
  %i.cu = icmp eq i8 %i.cq, -1
  br i1 %i.cu, label %bb.ab, label %bb.ac
end_hunk_2
begin_hunk_3_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_:bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager13PageRenderingEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish6screen4LineENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen4LineEEB1c_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen4LineENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen4LineEEB1c_.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen4LineENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen10ScreenDataEBF_.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen4LineEEB1c_.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line12EditableLineEBF_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.e) #35
          to label %bb.f unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen10ScreenDataEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen4LineEEB1c_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line12EditableLineEBF_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.f)
  ret void

bb.e:                                             ; preds = %.body
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.f:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #35
          to label %.body4 unwind label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body4 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.h

.body4:                                           ; preds = %bb.h, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.h ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete10CompletionEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.h) #35
          to label %bb.i unwind label %bb.n

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete10CompletionEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.j, %.body4
  %.pn2 = phi { ptr, i32 } [ %i.l, %bb.j ], [ %.pn, %.body4 ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #35
          to label %common.resume unwind label %bb.n

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.l ], [ %.pn2, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  ret void

bb.n:                                             ; preds = %bb.i, %.body4, %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1j_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload14AutoloadResultEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !5 ; 2 uses
  %i.b = icmp samesign ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload12AutoloadPathEBF_.exit

bb.b:                                             ; preds = %bb.a
  %1 = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %1, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume.i:                                  ; preds = %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload12AutoloadPathEBF_.exit

bb.f:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload12AutoloadPathEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload12AutoloadPathEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.e, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete10CompletionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #35
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit3: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
end_hunk_3
begin_hunk_4_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager22rendering_needs_update:bb.a
  br i1 %i.ai, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp eq i64 %i.x, 0
  %i.ak = icmp eq i64 %i.z, 0
  %or.cond10.i = or i1 %i.aj, %i.ak
  br i1 %or.cond10.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not2.i.i = icmp ult i64 %i.ag, %i.ab
  br i1 %.not2.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.m
  %.sroa.0.03.i.i = phi i64 [ %i.am, %bb.m ], [ %i.ag, %bb.k ] ; 2 uses
  %.not6.i.i = icmp ult i64 %.sroa.0.03.i.i, %i.x
  br i1 %.not6.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.al = add nsw i64 %i.ab, -1
  br label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.am = sub nuw i64 %.sroa.0.03.i.i, %i.x       ; 3 uses
  %.not.i.i = icmp ult i64 %i.am, %i.ab
  br i1 %.not.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit, label %.lr.ph.i.i

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit: ; preds = %bb.m, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.7.0.i = phi i64 [ undef, %bb.j ], [ 0, %bb.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.al, %bb.l ], [ %i.ag, %bb.k ], [ %i.am, %bb.m ]
  %i.an = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ true, %bb.g ], [ true, %bb.h ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.m ]
  %.sroa.0.0.i = phi i1 [ false, %bb.j ], [ true, %bb.i ], [ false, %bb.g ], [ false, %bb.h ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.m ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !range !22, !noundef !5
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = icmp eq i64 %i.as, %.sroa.7.0.i
  %or.cond18 = select i1 %.sroa.0.0.i, i1 %i.at, i1 false
  br i1 %or.cond18, label %bb.p, label %.thread

bb.o:                                             ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit
  br i1 %i.an, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.av = load i8, ptr %i.au, align 8, !range !28, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 273
  %i.ax = load i8, ptr %i.aw, align 1, !range !28, !noundef !5
  %.not7 = icmp eq i8 %i.av, %i.ax
  br i1 %.not7, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.az = load i64, ptr %i.ay, align 8, !noundef !5 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !5
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !5, !noundef !5
  %i.bh = shl nuw i64 %i.az, 2
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.bg, ptr nonnull %i.be, i64 %i.bh)
  %.not8 = icmp eq i32 %bcmp, 0
  br i1 %.not8, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5
  %.not9 = icmp eq i64 %i.bj, %i.bl
  br i1 %.not9, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !5
  %.not10 = icmp eq i64 %i.bn, 0
  br i1 %.not10, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bp = load i8, ptr %i.bo, align 8, !range !28, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.t, %bb.o, %bb.n, %bb.e, %bb.f, %bb.r, %bb.d, %bb.p, %bb.q, %bb.s, %bb.a, %bb.u
  %.sroa.0.0 = phi i1 [ true, %bb.o ], [ true, %bb.a ], [ %i.k, %bb.c ], [ %i.bq, %bb.u ], [ true, %bb.s ], [ true, %bb.q ], [ true, %bb.p ], [ false, %bb.t ], [ true, %bb.d ], [ true, %bb.r ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.n ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager29set_selected_completion_index(ptr noalias nofree noundef align 8 captures(none) dereferenceable(280) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = trunc nuw i64 %1 to i1                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  br i1 %i.a, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %i.c, 64051194700380388
  tail call void @llvm.assume(i1 %i.d)
  %.not = icmp ugt i64 %2, %i.c
  br i1 %.not, label %bb.c, label %._crit_edge, !prof !7

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.e = icmp ult i64 %i.c, 64051194700380388
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2897, i64 noundef 92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2898) #37
  unreachable

bb.d:                                             ; preds = %._crit_edge
  %i.g = icmp eq i64 %2, %i.c
  %or.cond = select i1 %i.a, i1 %i.g, i1 false    ; 2 uses
  %i.h = add nsw i64 %i.c, -1
  %spec.select = select i1 %or.cond, i64 %i.h, i64 %2
  %spec.select11 = select i1 %or.cond, i64 1, i64 %1
  store i64 %spec.select11, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define { i64, i64 } @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(280) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = icmp ult i64 %i.b, 64051194700380388
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !22, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %1, 0
  %i.k = icmp eq i64 %2, 0
  %or.cond10 = or i1 %i.j, %i.k
  br i1 %or.cond10, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not2.i = icmp ult i64 %i.g, %i.b
  br i1 %.not2.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.sroa.0.03.i = phi i64 [ %i.m, %bb.g ], [ %i.g, %bb.e ] ; 2 uses
  %.not6.i = icmp ult i64 %.sroa.0.03.i, %1
  br i1 %.not6.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.l = add nsw i64 %i.b, -1
  br label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.m = sub nuw i64 %.sroa.0.03.i, %1            ; 3 uses
  %.not.i = icmp ult i64 %i.m, %i.b
  br i1 %.not.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit, label %.lr.ph.i

_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.b, %bb.d, %bb.a, %bb.c
  %.sroa.7.0 = phi i64 [ undef, %bb.d ], [ 0, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ], [ %i.l, %bb.f ], [ %i.g, %bb.e ], [ %i.m, %bb.g ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.g ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.7.0, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager35select_next_completion_in_direction(ptr noalias nofree noundef align 8 captures(none) dereferenceable(280) %0, i8 noundef range(i8 0, 9) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 9 uses
  %i.c = icmp ult i64 %i.b, 64051194700380388
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !22, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !noundef !5 ; 5 uses
  switch i8 %1, label %default.unreachable115 [
    i8 0, label %bb.h
    i8 1, label %bb.h
    i8 2, label %bb.h
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.h
    i8 8, label %6
    i8 6, label %bb.bz
    i8 7, label %bb.cc
  ]

bb.d:                                             ; preds = %bb.b
  switch i8 %1, label %default.unreachable115 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %3
    i8 3, label %bb.g
    i8 4, label %bb.g
    i8 5, label %3
    i8 6, label %3
    i8 7, label %bb.f
    i8 8, label %bb.g
  ]

default.unreachable115:                           ; preds = %bb.d, %bb.c
  unreachable

default.unreachable:                              ; preds = %bb.m
  unreachable

3:                                                ; preds = %bb.d, %bb.d, %bb.d
  store i64 1, ptr %0, align 8
  store i64 0, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %6, %bb.f, %3
  %4 = phi i64 [ %.sroa.6.1, %6 ], [ %i.o, %bb.f ], [ 0, %3 ]
  %5 = phi i1 [ %7, %6 ], [ true, %bb.f ], [ true, %3 ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 3 uses
  %i.m = sub nuw i64 %i.j, %i.l                   ; 3 uses
  %i.n = icmp ult i64 %i.j, %i.l
  br i1 %i.n, label %bb.cf, label %bb.ce

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.o = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 1, ptr %0, align 8
  store i64 %i.o, ptr %i.f, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.ck, %bb.cq, %bb.cp, %bb.ce, %bb.by, %bb.d, %bb.d, %bb.d, %bb.d, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.by ], [ true, %bb.ce ], [ true, %bb.ck ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ true, %bb.cp ], [ true, %bb.cq ]
  ret i1 %.sroa.0.0

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 14 uses
  %i.r = icmp ne i64 %i.q, 0                      ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i64, ptr %i.s, align 8, !range !22
  %i.u = trunc nuw i64 %i.t to i1
  %or.cond120 = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond120, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.j
  %.sroa.05.088 = phi i64 [ %i.aa, %bb.j ], [ -1, %bb.h ] ; 15 uses
  %.sroa.021.0 = phi i64 [ %i.ab, %bb.j ], [ -1, %bb.h ] ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !22, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.k, label %bb.l, !prof !8

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = urem i64 %i.z, %i.q
  %i.ab = udiv i64 %i.z, %i.q
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2899) #37
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = add i64 %i.ad, -1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.af, i64 1) ; 2 uses
  switch i8 %1, label %default.unreachable [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.t
  ]

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2900) #37
  unreachable

bb.o:                                             ; preds = %bb.m
  %.not80 = icmp eq i64 %.sroa.05.088, 0
  br i1 %.not80, label %bb.v, label %bb.ac

bb.p:                                             ; preds = %bb.m
  %i.ag = add i64 %.sroa.021.0, 1                 ; 3 uses
  %i.ah = icmp eq i64 %.sroa.021.0, -1
  br i1 %i.ah, label %bb.ae, label %bb.ad

bb.q:                                             ; preds = %bb.m
  %i.ai = add i64 %.sroa.05.088, 1                ; 2 uses
  %i.aj = icmp eq i64 %.sroa.05.088, -1
  br i1 %i.aj, label %bb.aq, label %bb.ap

bb.r:                                             ; preds = %bb.m
  %.not78 = icmp eq i64 %.sroa.021.0, 0
  br i1 %.not78, label %bb.bd, label %bb.bk

bb.s:                                             ; preds = %bb.m
  %spec.select85 = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.05.088, i64 %..i)
  br label %bb.u

bb.t:                                             ; preds = %bb.m
  %i.ak = add i64 %..i, %.sroa.05.088             ; 3 uses
  %i.al = icmp ult i64 %i.ak, %.sroa.05.088
  br i1 %i.al, label %bb.bm, label %bb.bl

bb.u:                                             ; preds = %bb.s, %bb.bl, %bb.ax, %bb.aj, %bb.bs, %bb.bu, %bb.bk, %bb.bj, %bb.bh, %bb.bb, %bb.an, %bb.ac, %bb.ab, %bb.z
  %.sroa.021.1 = phi i64 [ %.sroa.021.0, %bb.ac ], [ %i.at, %bb.ab ], [ %i.as, %bb.z ], [ %.sroa.021.0, %bb.bs ], [ 0, %bb.an ], [ %i.ag, %bb.aj ], [ %i.bv, %bb.bb ], [ %i.cc, %bb.bk ], [ %i.by, %bb.bj ], [ %i.by, %bb.bh ], [ %.sroa.021.0, %bb.bl ], [ %.sroa.021.0, %bb.ax ], [ %.sroa.021.0, %bb.s ], [ %.sroa.021.0, %bb.bu ]
  %.sroa.05.1 = phi i64 [ %i.au, %bb.ac ], [ %i.ao, %bb.ab ], [ %i.ao, %bb.z ], [ %i.ce, %bb.bs ], [ %i.bg, %bb.an ], [ %.sroa.05.088, %bb.aj ], [ 0, %bb.bb ], [ %.sroa.05.088, %bb.bk ], [ %i.cb, %bb.bj ], [ %i.ca, %bb.bh ], [ %i.ak, %bb.bl ], [ %i.ai, %bb.ax ], [ %spec.select85, %bb.s ], [ %i.cl, %bb.bu ]
  %i.am = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.021.1, i64 %i.q) ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.bw, label %bb.bv

bb.v:                                             ; preds = %bb.o
  %i.ao = add i64 %i.q, -1                        ; 2 uses
  br i1 %i.r, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not81 = icmp eq i64 %.sroa.021.0, 0
  br i1 %.not81, label %bb.y, label %bb.ab

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2901) #37
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.as = add i64 %i.aq, -1
  br label %bb.u

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2902) #37
  unreachable

bb.ab:                                            ; preds = %bb.w
  %i.at = add i64 %.sroa.021.0, -1
  br label %bb.u

bb.ac:                                            ; preds = %bb.o
  %i.au = add i64 %.sroa.05.088, -1
  br label %bb.u

bb.ad:                                            ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5
  %i.ax = icmp ult i64 %i.ag, %i.aw
  br i1 %i.ax, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.p
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2903) #37
  unreachable

bb.af:                                            ; preds = %bb.aj, %bb.ad
  %i.ay = add nuw i64 %.sroa.05.088, 1
  %i.az = icmp eq i64 %.sroa.05.088, -1
  br i1 %i.az, label %bb.am, label %bb.al

bb.ag:                                            ; preds = %bb.ad
  %i.ba = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ag, i64 %i.q) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
  br i1 %i.bb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bc = extractvalue { i64, i1 } %i.ba, 0       ; 2 uses
  %i.bd = add i64 %i.bc, %.sroa.05.088            ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  br i1 %i.be, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2904) #37
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.bf = icmp ult i64 %i.bd, %i.b
  br i1 %i.bf, label %bb.u, label %bb.af

bb.ak:                                            ; preds = %bb.ah
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2904) #37
  unreachable

bb.al:                                            ; preds = %bb.af
  br i1 %i.r, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.af
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2905) #37
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.bg = urem i64 %i.ay, %i.q
  br label %bb.u

bb.ao:                                            ; preds = %bb.al
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2905) #37
  unreachable

bb.ap:                                            ; preds = %bb.q
  %i.bh = icmp ult i64 %i.ai, %i.q
  br i1 %i.bh, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.q
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2906) #37
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.bi = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.021.0, i64 %i.q) ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  br i1 %i.bj, label %bb.au, label %bb.at

bb.as:                                            ; preds = %bb.ax, %bb.ap
  %i.bk = add nuw i64 %.sroa.021.0, 1
  %i.bl = icmp eq i64 %.sroa.021.0, -1
  br i1 %i.bl, label %bb.ba, label %bb.az

bb.at:                                            ; preds = %bb.ar
  %i.bm = extractvalue { i64, i1 } %i.bi, 0       ; 2 uses
  %i.bn = add i64 %i.bm, %.sroa.05.088            ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  br i1 %i.bo, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %bb.ar
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2907) #37
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.bp = icmp eq i64 %i.bn, -1
  br i1 %i.bp, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %bb.at
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2907) #37
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.bq = add nuw i64 %i.bn, 1
  %i.br = icmp ult i64 %i.bq, %i.b
  br i1 %i.br, label %bb.u, label %bb.as

bb.ay:                                            ; preds = %bb.av
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2907) #37
  unreachable

bb.az:                                            ; preds = %bb.as
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !5 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.as
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2908) #37
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.bv = urem i64 %i.bk, %i.bt
  br label %bb.u

bb.bc:                                            ; preds = %bb.az
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2908) #37
  unreachable

bb.bd:                                            ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 2 uses
  %i.by = add i64 %i.bx, -1                       ; 2 uses
  %i.bz = icmp eq i64 %i.bx, 0
  br i1 %i.bz, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not79 = icmp eq i64 %.sroa.05.088, 0
  br i1 %.not79, label %bb.bg, label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2909) #37
  unreachable

bb.bg:                                            ; preds = %bb.be
  br i1 %i.r, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ca = add i64 %i.q, -1
  br label %bb.u

bb.bi:                                            ; preds = %bb.bg
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2910) #37
  unreachable

bb.bj:                                            ; preds = %bb.be
  %i.cb = add i64 %.sroa.05.088, -1
  br label %bb.u

bb.bk:                                            ; preds = %bb.r
  %i.cc = add i64 %.sroa.021.0, -1
  br label %bb.u

bb.bl:                                            ; preds = %bb.t
  %i.cd = icmp ult i64 %i.ak, %i.q
  br i1 %i.cd, label %bb.u, label %bb.bn

bb.bm:                                            ; preds = %bb.t
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2911) #37
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.ce = add i64 %i.q, -1                        ; 2 uses
  br i1 %i.r, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.cf = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.021.0, i64 %i.q) ; 2 uses
  %i.cg = extractvalue { i64, i1 } %i.cf, 1
  br i1 %i.cg, label %bb.br, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2912) #37
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.ch = extractvalue { i64, i1 } %i.cf, 0       ; 2 uses
  %i.ci = add i64 %i.ch, %i.ce                    ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  br i1 %i.cj, label %bb.bt, label %bb.bs

bb.br:                                            ; preds = %bb.bo
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2913) #37
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %.not77 = icmp ult i64 %i.ci, %i.b
  br i1 %.not77, label %bb.u, label %bb.bu

bb.bt:                                            ; preds = %bb.bq
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2913) #37
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.ck = add nsw i64 %i.b, -1
  %i.cl = urem i64 %i.ck, %i.q
  br label %bb.u

bb.bv:                                            ; preds = %bb.u
  %i.cm = extractvalue { i64, i1 } %i.am, 0       ; 2 uses
  %i.cn = add i64 %i.cm, %.sroa.05.1              ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %bb.bx, label %bb.by

bb.bw:                                            ; preds = %bb.u
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2914) #37
  unreachable

bb.bx:                                            ; preds = %bb.bv
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2914) #37
  unreachable

bb.by:                                            ; preds = %bb.bv, %bb.cd, %bb.ca
  %.sroa.6.0 = phi i64 [ %i.cn, %bb.bv ], [ %spec.select, %bb.ca ], [ %i.ct, %bb.cd ] ; 2 uses
  %i.cp = icmp eq i64 %i.h, %.sroa.6.0
  br i1 %i.cp, label %bb.g, label %6

bb.bz:                                            ; preds = %bb.c
  %i.cq = icmp eq i64 %i.h, -1
  br i1 %i.cq, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.cr = add nuw i64 %i.h, 1                     ; 2 uses
  %.not76 = icmp ult i64 %i.cr, %i.b
  %spec.select = select i1 %.not76, i64 %i.cr, i64 0
  br label %bb.by

bb.cb:                                            ; preds = %bb.bz
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2915) #37
  unreachable

bb.cc:                                            ; preds = %bb.c
  %i.cs = icmp eq i64 %i.h, 0
  br i1 %i.cs, label %bb.cd, label %.thread89

bb.cd:                                            ; preds = %bb.cc
  %i.ct = add nsw i64 %i.b, -1
  br label %bb.by

.thread89:                                        ; preds = %bb.cc
  %i.cu = add i64 %i.h, -1
  br label %6

6:                                                ; preds = %.thread89, %bb.c, %bb.by
  %.sroa.6.1 = phi i64 [ %.sroa.6.0, %bb.by ], [ undef, %bb.c ], [ %i.cu, %.thread89 ] ; 2 uses
  %.sroa.036.1 = phi i64 [ 1, %bb.by ], [ 0, %bb.c ], [ 1, %.thread89 ] ; 2 uses
  store i64 %.sroa.036.1, ptr %0, align 8
  store i64 %.sroa.6.1, ptr %i.f, align 8
  %7 = trunc nuw i64 %.sroa.036.1 to i1
  br label %bb.e

bb.ce:                                            ; preds = %bb.e
  %8 = icmp ne i64 %i.j, %i.l
  %or.cond = select i1 %8, i1 %5, i1 false
  br i1 %or.cond, label %bb.cg, label %bb.g

bb.cf:                                            ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2916) #37
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !5 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.thread91, label %bb.ch

.thread91:                                        ; preds = %bb.cg
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.pre = load i64, ptr %i.cy, align 8
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.cz = urem i64 %4, %i.cw                      ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.db = load i64, ptr %i.da, align 8, !noundef !5 ; 2 uses
  %i.dc = icmp ugt i64 %i.db, %i.cz
  br i1 %i.dc, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i64 %i.cz, ptr %i.da, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %.thread91, %bb.ch, %bb.ci
  %i.dd = phi i64 [ %.pre, %.thread91 ], [ %i.db, %bb.ch ], [ %i.cz, %bb.ci ] ; 2 uses
  %i.de = phi ptr [ %i.cy, %.thread91 ], [ %i.da, %bb.ch ], [ %i.da, %bb.ci ]
  %.sroa.038.093 = phi i64 [ -1, %.thread91 ], [ %i.cz, %bb.ch ], [ %i.cz, %bb.ci ] ; 3 uses
  %i.df = add i64 %i.dd, %i.m                     ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.dd
  br i1 %i.dg, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.not83 = icmp ugt i64 %i.df, %.sroa.038.093
  br i1 %.not83, label %bb.g, label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2917) #37
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %.off = add nsw i8 %1, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 8, !range !28, !noundef !5
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = icmp eq i64 %i.dl, 0
  %or.cond.not = select i1 %i.dj, i1 true, i1 %i.dm
  br i1 %or.cond.not, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.dn = icmp ult i64 %.sroa.038.093, %i.m
  br i1 %i.dn, label %bb.cr, label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  store i8 1, ptr %i.dh, align 8
  br label %bb.g

bb.cq:                                            ; preds = %bb.co
  %reass.sub = sub nuw i64 %.sroa.038.093, %i.m
  %i.do = add nuw i64 %reass.sub, 1
  store i64 %i.do, ptr %i.de, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 1, ptr %i.dp, align 8
  br label %bb.g

bb.cr:                                            ; preds = %bb.co
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2918) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager5clear(ptr noalias nofree noundef align 8 dereferenceable(280) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i20 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.0.0.i20
  %i.h = add nuw nsw i64 %.sroa.0.0.i20, 1        ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph22
  %i.i = add i64 %.sroa.0.1.i21, 1                ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %common.resume, label %.lr.ph22

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %common.resume, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.1.i21 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.0.1.i21
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.m) #35
          to label %bb.c unwind label %bb.e

common.resume:                                    ; preds = %bb.c, %bb.g, %bb.d, %bb.h, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.y, %bb.h ], [ %i.k, %bb.d ], [ %i.y, %bb.g ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.lr.ph22
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit10, label %.lr.ph24

bb.f:                                             ; preds = %.lr.ph24
  %i.t = icmp eq i64 %i.v, %i.r
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit10, label %.lr.ph24

.lr.ph24:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit, %bb.f
  %.sroa.0.0.i823 = phi i64 [ %i.v, %bb.f ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %.sroa.0.0.i823
  %i.v = add nuw nsw i64 %.sroa.0.0.i823, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.u)
          to label %bb.f unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph26
  %i.w = add i64 %.sroa.0.1.i925, 1               ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.r
  br i1 %i.x, label %common.resume, label %.lr.ph26

bb.h:                                             ; preds = %.lr.ph24
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = icmp eq i64 %i.v, %i.r
  br i1 %i.z, label %common.resume, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.h, %bb.g
  %.sroa.0.1.i925 = phi i64 [ %i.w, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %.sroa.0.1.i925
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.aa) #35
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph26
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit10: ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !4, !alias.scope !2629, !noundef !5
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit10
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.af, %bb.k ]
  store i64 -1, ptr %i.ac, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish5pager9PagerCompEBG_.exit10, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  store i64 -1, ptr %i.ac, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 275
end_hunk_4
begin_hunk_5_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
  %.sroa.060.0.ph469.4.i1682 = phi i64 [ %i.aax, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ]
  %.sroa.025.0.ph470.4.i1681 = phi i64 [ %..i201.4.i, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ] ; 2 uses
  %.sroa.022.0.ph471.4.i1680 = phi i64 [ %..i200.4.i, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ] ; 2 uses
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gy
  %exitcond.4.not.i = icmp eq i64 %i.aax, %umax.4.i1683
  br i1 %exitcond.4.not.i, label %.split.4.i, label %bb.gx

bb.gx:                                            ; preds = %.lr.ph1674, %bb.gw
  %.sroa.060.0.4.i1673 = phi i64 [ %.sroa.060.0.ph469.4.i1682, %.lr.ph1674 ], [ %i.aax, %bb.gw ] ; 2 uses
  %i.aav = add i64 %.sroa.060.0.4.i1673, %i.aau   ; 3 uses
  %i.aaw = icmp ult i64 %i.aav, %i.aau
  br i1 %i.aaw, label %.split483.us.i.invoke, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aax = add i64 %.sroa.060.0.4.i1673, 1        ; 5 uses
  %.not133.4.i = icmp ult i64 %i.aav, %i.cf
  br i1 %.not133.4.i, label %bb.gz, label %bb.gw

bb.gz:                                            ; preds = %bb.gy
  %i.aay = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.aav ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 136
  %i.aba = load i64, ptr %i.aaz, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.abb = icmp eq i64 %i.aba, 0
  %..4.i = select i1 %i.abb, i64 0, i64 4
  %i.abc = add i64 %..4.i, %i.aba                 ; 2 uses
  %i.abd = icmp ult i64 %i.abc, %i.aba
  br i1 %i.abd, label %.split483.us.i.invoke, label %.outer.4.i

.outer.4.i:                                       ; preds = %bb.gz
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aay, i64 128
  %i.abf = load i64, ptr %i.abe, align 8, !alias.scope !2751, !noundef !5
  %..i200.4.i = call noundef i64 @llvm.umax.i64(i64 %i.abf, i64 %.sroa.022.0.ph471.4.i1680) ; 2 uses
  %..i201.4.i = call noundef i64 @llvm.umax.i64(i64 %i.abc, i64 %.sroa.025.0.ph470.4.i1681) ; 2 uses
  %umax.4.i = call i64 @llvm.umax.i64(i64 %i.aax, i64 %.sroa.0.0.i207.fr810.i1052106710741084)
  %exitcond.4.not.i1672.not = icmp ult i64 %i.aax, %.sroa.0.0.i207.fr810.i1052106710741084
  br i1 %exitcond.4.not.i1672.not, label %.lr.ph1674, label %.split.4.i

.split.4.i:                                       ; preds = %.outer.4.i, %bb.gw, %.outer.split.4.i.preheader
  %.sroa.022.0.ph471.4.i.lcssa = phi i64 [ %.sroa.022.0.ph471.4.i1680, %bb.gw ], [ 0, %.outer.split.4.i.preheader ], [ %..i200.4.i, %.outer.4.i ] ; 4 uses
  %.sroa.025.0.ph470.4.i.lcssa = phi i64 [ %.sroa.025.0.ph470.4.i1681, %bb.gw ], [ 0, %.outer.split.4.i.preheader ], [ %..i201.4.i, %.outer.4.i ]
  %i.abg = add i64 %.sroa.025.0.ph470.4.i.lcssa, %.sroa.022.0.ph471.4.i.lcssa ; 2 uses
  %i.abh = icmp ult i64 %i.abg, %.sroa.022.0.ph471.4.i.lcssa
  br i1 %i.abh, label %.split483.us.i.invoke, label %bb.ha

bb.ha:                                            ; preds = %.split.4.i
  %i.abi = icmp ugt i64 %.sroa.022.0.ph471.4.i.lcssa, -3
  br i1 %i.abi, label %.split483.us.i.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i: ; preds = %bb.ha
  %..i199.4.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.abg) ; 2 uses
  %i.abj = add nuw i64 %.sroa.022.0.ph471.4.i.lcssa, 2
  %i.abk = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i207.fr810.i1052106710741084, i64 5) ; 2 uses
  %i.abl = extractvalue { i64, i1 } %i.abk, 1
  %i.abm = extractvalue { i64, i1 } %i.abk, 0     ; 2 uses
  br i1 %i.abl, label %.split459.us.i.invoke, label %.outer.split.5.i.preheader

.outer.split.5.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i
  %exitcond.5.not.i16861693 = icmp eq i64 %.sroa.0.0.i207.fr810.i1052106710741084, 0
  br i1 %exitcond.5.not.i16861693, label %.split.5.i, label %.lr.ph1688

.lr.ph1688:                                       ; preds = %.outer.split.5.i.preheader, %.outer.5.i
  %umax.5.i1697 = phi i64 [ %umax.5.i, %.outer.5.i ], [ %.sroa.0.0.i207.fr810.i1052106710741084, %.outer.split.5.i.preheader ]
  %.sroa.060.0.ph469.5.i1696 = phi i64 [ %i.abp, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ]
  %.sroa.025.0.ph470.5.i1695 = phi i64 [ %..i201.5.i, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ] ; 2 uses
  %.sroa.022.0.ph471.5.i1694 = phi i64 [ %..i200.5.i, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ] ; 2 uses
  br label %bb.hc

bb.hb:                                            ; preds = %bb.hd
  %exitcond.5.not.i = icmp eq i64 %i.abp, %umax.5.i1697
  br i1 %exitcond.5.not.i, label %.split.5.i, label %bb.hc

bb.hc:                                            ; preds = %.lr.ph1688, %bb.hb
  %.sroa.060.0.5.i1687 = phi i64 [ %.sroa.060.0.ph469.5.i1696, %.lr.ph1688 ], [ %i.abp, %bb.hb ] ; 2 uses
  %i.abn = add i64 %.sroa.060.0.5.i1687, %i.abm   ; 3 uses
  %i.abo = icmp ult i64 %i.abn, %i.abm
  br i1 %i.abo, label %.split483.us.i.invoke, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.abp = add i64 %.sroa.060.0.5.i1687, 1        ; 5 uses
  %.not133.5.i = icmp ult i64 %i.abn, %i.cf
  br i1 %.not133.5.i, label %bb.he, label %bb.hb

bb.he:                                            ; preds = %bb.hd
  %i.abq = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.abn ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 136
  %i.abs = load i64, ptr %i.abr, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.abt = icmp eq i64 %i.abs, 0
  %..5.i = select i1 %i.abt, i64 0, i64 4
  %i.abu = add i64 %..5.i, %i.abs                 ; 2 uses
  %i.abv = icmp ult i64 %i.abu, %i.abs
  br i1 %i.abv, label %.split483.us.i.invoke, label %.outer.5.i

.outer.5.i:                                       ; preds = %bb.he
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abq, i64 128
  %i.abx = load i64, ptr %i.abw, align 8, !alias.scope !2751, !noundef !5
  %..i200.5.i = call noundef i64 @llvm.umax.i64(i64 %i.abx, i64 %.sroa.022.0.ph471.5.i1694) ; 2 uses
  %..i201.5.i = call noundef i64 @llvm.umax.i64(i64 %i.abu, i64 %.sroa.025.0.ph470.5.i1695) ; 2 uses
  %umax.5.i = call i64 @llvm.umax.i64(i64 %i.abp, i64 %.sroa.0.0.i207.fr810.i1052106710741084)
  %exitcond.5.not.i1686.not = icmp ult i64 %i.abp, %.sroa.0.0.i207.fr810.i1052106710741084
  br i1 %exitcond.5.not.i1686.not, label %.lr.ph1688, label %.split.5.i

.split.5.i:                                       ; preds = %.outer.5.i, %bb.hb, %.outer.split.5.i.preheader
  %.sroa.022.0.ph471.5.i.lcssa = phi i64 [ %.sroa.022.0.ph471.5.i1694, %bb.hb ], [ 0, %.outer.split.5.i.preheader ], [ %..i200.5.i, %.outer.5.i ] ; 4 uses
  %.sroa.025.0.ph470.5.i.lcssa = phi i64 [ %.sroa.025.0.ph470.5.i1695, %bb.hb ], [ 0, %.outer.split.5.i.preheader ], [ %..i201.5.i, %.outer.5.i ]
  %i.aby = add i64 %.sroa.025.0.ph470.5.i.lcssa, %.sroa.022.0.ph471.5.i.lcssa ; 2 uses
  %i.abz = icmp ult i64 %i.aby, %.sroa.022.0.ph471.5.i.lcssa
  br i1 %i.abz, label %.split483.us.i.invoke, label %bb.hf

bb.hf:                                            ; preds = %.split.5.i
  %i.aca = icmp ugt i64 %.sroa.022.0.ph471.5.i.lcssa, -3
  br i1 %i.aca, label %.split483.us.i.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i

.outer.i:                                         ; preds = %.split.us
  %i.acb = add i64 %.sroa.060.0.ph469.i606, 1     ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acf, i64 128
  %i.acd = load i64, ptr %i.acc, align 8, !alias.scope !2751, !noundef !5
  %..i200.i = call noundef i64 @llvm.umax.i64(i64 %i.acd, i64 %.sroa.022.0.ph471.i604) ; 2 uses
  %..i201.i = call noundef i64 @llvm.umax.i64(i64 %i.acj, i64 %.sroa.025.0.ph470.i605) ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.acb, i64 %.sroa.0.0.i207.fr809.i)
  %.not133.i = icmp ult i64 %i.acb, %i.cf
  %.not133.i.fr = freeze i1 %.not133.i
  br i1 %.not133.i.fr, label %.outer.split.i.split.us, label %.split.i

.split459.us.i.invoke:                            ; preds = %.outer.split.us.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i, %bb.af
  %i.ace = phi ptr [ @2856, %bb.af ], [ @2859, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ @2876, %.outer.split.us.1.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ace) #37
          to label %.split459.us.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split459.us.i.cont:                              ; preds = %.split459.us.i.invoke
  unreachable

.outer.split.i.split.us:                          ; preds = %.outer.split.i.split.us.preheader, %.outer.i
  %umax.i607 = phi i64 [ %umax.i, %.outer.i ], [ %.sroa.0.0.i207.fr809.i, %.outer.split.i.split.us.preheader ]
  %.sroa.060.0.ph469.i606 = phi i64 [ %i.acb, %.outer.i ], [ 0, %.outer.split.i.split.us.preheader ] ; 3 uses
  %.sroa.025.0.ph470.i605 = phi i64 [ %..i201.i, %.outer.i ], [ 0, %.outer.split.i.split.us.preheader ] ; 2 uses
  %.sroa.022.0.ph471.i604 = phi i64 [ %..i200.i, %.outer.i ], [ 0, %.outer.split.i.split.us.preheader ] ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %.sroa.060.0.ph469.i606, %umax.i607
  br i1 %exitcond.not.i.us, label %.split.i, label %.split.us

.split.us:                                        ; preds = %.outer.split.i.split.us
  %i.acf = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %.sroa.060.0.ph469.i606 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 136
  %i.ach = load i64, ptr %i.acg, align 8, !alias.scope !2751, !noundef !5 ; 3 uses
  %i.aci = icmp eq i64 %i.ach, 0
  %..i53 = select i1 %i.aci, i64 0, i64 4
  %i.acj = add i64 %..i53, %i.ach                 ; 2 uses
  %i.ack = icmp ult i64 %i.acj, %i.ach
  br i1 %i.ack, label %.split483.us.i.invoke, label %.outer.i

.split483.us.i.invoke:                            ; preds = %bb.gg, %bb.gl, %bb.gq, %bb.gv, %bb.ha, %bb.hf, %.split.i, %.split.1.i, %.split.2.i, %.split.3.i, %.split.4.i, %.split.5.i, %bb.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i, %.split.us, %bb.gk, %bb.gp, %bb.gu, %bb.gz, %bb.he, %bb.gi, %bb.gn, %bb.gs, %bb.gx, %bb.hc, %bb.ag, %bb.ae
  %i.acl = phi ptr [ @2877, %bb.gp ], [ @2876, %bb.hc ], [ @2856, %bb.ag ], [ @2876, %bb.gs ], [ @2876, %bb.gx ], [ @2877, %.split.us ], [ @2877, %bb.gk ], [ @2877, %bb.gz ], [ @2877, %bb.he ], [ @2876, %bb.gi ], [ @2876, %bb.gn ], [ @2877, %bb.gu ], [ @3129, %bb.ae ], [ @2860, %bb.u ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i ], [ @2874, %.split.5.i ], [ @2874, %.split.4.i ], [ @2874, %.split.3.i ], [ @2874, %.split.2.i ], [ @2874, %.split.1.i ], [ @2875, %bb.hf ], [ @2875, %bb.ha ], [ @2875, %bb.gv ], [ @2875, %bb.gq ], [ @2875, %bb.gl ], [ @2875, %bb.gg ], [ @2874, %.split.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acl) #37
          to label %.split483.us.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split483.us.i.cont:                              ; preds = %.split483.us.i.invoke
  unreachable

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit: ; preds = %bb.x, %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2753
  %.not.i = icmp eq i64 %i.eo, 0
  %or.cond = select i1 %.not.i55.not, i1 true, i1 %.not.i
  br i1 %or.cond, label %.thread, label %.backedge782.backedge

bb.hg:                                            ; preds = %.body
  %i.acm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.hh:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 8, 121) %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = trunc i64 %.sroa.05.0.i.i.i to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge.i

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val15, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val15, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !2799
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !12

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !5
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.g:                                             ; preds = %._crit_edge.i17
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !2799
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !13

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg13 = mul i64 %2, %.neg12
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !5
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val14
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val14, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !5
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  invoke fastcc void @_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
          to label %bb.d unwind label %bb.e

bb.l:                                             ; preds = %bb.i, %bb.j, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val16
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

end_hunk_5
begin_hunk_6_@_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE3newCs8frGy5WneL6_4fish:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBY_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE3newCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNtBW_13FdMonitorItemEE3newBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBU_EE3newCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBU_EEE3newCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEE3newB2n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE3newB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdEE3newB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE3newCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEE3newB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 8, 121) %2) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 7                            ; 2 uses
  %i.b = lshr i64 %2, 3
  tail call void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.b)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %2, 120                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 4 uses
  %i.f = icmp samesign ult i64 %i.a, 4
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 1, !alias.scope !2809
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.e, align 1, !alias.scope !2810
  store i32 %.sroa.02.0.copyload.i.i, ptr %i.d, align 1, !alias.scope !2809
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.e, align 1, !alias.scope !2810
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.g = and i64 %2, 2
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2812)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.i, align 1, !alias.scope !2811
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.j, align 1, !alias.scope !2812
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.i, align 1, !alias.scope !2811
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.j, align 1, !alias.scope !2812
  %i.k = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %3 = trunc i64 %2 to i1
  br i1 %3, label %bb.g, label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2814)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.l, align 1, !alias.scope !2813
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.m, align 1, !alias.scope !2814
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.l, align 1, !alias.scope !2813
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.m, align 1, !alias.scope !2814
  br label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish8autoload9has_asset(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs8frGy5WneL6_4fish8autoloadNtB5_5Asset3get(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.b = load i64, ptr %i.a, align 8, !range !30, !noundef !5
  %i.c = icmp ne i64 %i.b, 2                      ; 2 uses
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9DVVTwq977Y_16rust_embed_utils12EmbeddedFileEECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !range !4, !alias.scope !2821, !noundef !5
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9DVVTwq977Y_16rust_embed_utils12EmbeddedFileEECs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.c
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9DVVTwq977Y_16rust_embed_utils12EmbeddedFileEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9DVVTwq977Y_16rust_embed_utils12EmbeddedFileEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend11replace_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.b, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.h = insertelement <2 x ptr> %i.g, ptr %i.e, i64 1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4IterhEEEECs8frGy5WneL6_4fish.exit
  %i.i = add nuw i64 %i.t, 2                      ; 3 uses
  %i.j = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %i.d, %bb.a ], [ %i.j, %bb.b ]
  %.sroa.0.020 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.b ] ; 4 uses
  %i.m = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.n = sub nuw i64 %i.l, %.sroa.0.020
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.020
  %i.p = call { i64, i64 } @_RINvCskr4qsHYS30i_15fish_widestring17subslice_positionhRShBR_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 1) ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.j, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2958) #37
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = extractvalue { i64, i64 } %i.p, 1
  %i.t = add i64 %i.s, %.sroa.0.020               ; 6 uses
  %i.u = icmp ult i64 %i.t, %.sroa.0.020
  br i1 %i.u, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  ret void

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = icmp eq i64 %i.t, -1
  br i1 %i.v, label %bb.l, label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2955) #37
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.w = add nuw i64 %i.t, 1
  call void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.t, i64 noundef %i.w)
  store <2 x ptr> %i.h, ptr %i.f, align 8, !alias.scope !2824
  invoke void @_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB10_5slice4iter4IterhEEENtNtNtB10_3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4IterhEEEECs8frGy5WneL6_4fish.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainhENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhEECs8frGy5WneL6_4fish.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.j
  resume { ptr, i32 } %i.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4IterhEEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.i
  call void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainhENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = icmp eq i64 %i.t, -2
  br i1 %i.z, label %bb.m, label %bb.b

bb.l:                                             ; preds = %bb.g
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2956) #37
  unreachable

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4IterhEEEECs8frGy5WneL6_4fish.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2957) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend20decode_item_fish_2_0(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 14 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.7244.sroa.0 = alloca [16 x i8], align 8  ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.r = icmp samesign eq i64 %2, 0
  br i1 %i.r, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.02.07.i.i = phi i64 [ %i.v, %bb.b ], [ 0, %bb.a ] ; 11 uses
  %i.s = phi ptr [ %i.u, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %.val.i.i = load i8, ptr %i.s, align 1, !alias.scope !2948, !noalias !2949, !noundef !5
  %i.t = icmp eq i8 %.val.i.i, 10
  br i1 %i.t, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.02.07.i.i, 1
  %i.w = icmp eq ptr %i.u, %i.q
  br i1 %i.w, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, label %.lr.ph.i.i

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit: ; preds = %.lr.ph.i.i
  %i.x = icmp samesign ult i64 %.sroa.02.07.i.i, %2
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %.sroa.02.07.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2950)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.02.07.i.i
  %i.aa = icmp samesign eq i64 %.sroa.02.07.i.i, 0
  br i1 %i.aa, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.ae, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ] ; 4 uses
  %i.ab = phi ptr [ %i.ad, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ %1, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ] ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !2951, !noalias !2952, !noundef !5
end_hunk_6
begin_hunk_7_@_RNvNtNtCs8frGy5WneL6_4fish8builtins4read4read:bb.a
bb.jw:                                            ; preds = %bb.jz, %.noexc326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3298
  invoke void @_RINvMs5_NtCs8frGy5WneL6_4fish6parserNtB6_6Parser10push_scopeNCNvNtNtB8_8builtins4read16read_interactives_0EB8_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(432) %0)
          to label %bb.ka unwind label %bb.jx, !noalias !3299

.body.i319:                                       ; preds = %.body28.i, %bb.kd, %bb.kb, %bb.jx
  %.pn.i320 = phi { ptr, i32 } [ %i.acj, %bb.kb ], [ %eh.lpad-body29.i, %.body28.i ], [ %i.aci, %bb.jx ], [ %i.ack, %bb.kd ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_B10_INtB10_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNCNvNtNtB2e_8builtins4read16read_interactive00E0EEEB2e_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r) #35
          to label %.body296 unwind label %bb.kw, !noalias !3304

bb.jx:                                            ; preds = %bb.ko, %bb.kn, %bb.kg, %bb.jy, %bb.jw, %bb.jv
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %.body.i319

bb.jy:                                            ; preds = %bb.jv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3298
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader22commandline_set_buffer(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, i64 noundef 0, i64 undef)
          to label %bb.jz unwind label %bb.jx, !noalias !3299

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3298
  br label %bb.jw

bb.ka:                                            ; preds = %bb.jw
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader15reader_readline(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.u, i64 noundef %i.aba)
          to label %bb.kc unwind label %bb.kb, !noalias !3299

bb.kb:                                            ; preds = %bb.ka
  %i.acj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvNtNtB1Q_8builtins4read16read_interactives_0E0EEB1Q_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.p) #35
          to label %.body.i319 unwind label %bb.kw, !noalias !3299

bb.kc:                                            ; preds = %bb.ka
  invoke void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuarduNCINvMs4_B5_INtB5_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvNtNtB1n_8builtins4read16read_interactives_0E0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %bb.ke unwind label %bb.kd, !noalias !3299

bb.kd:                                            ; preds = %bb.kc
  %i.ack = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTuNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB18_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvNtNtB1W_8builtins4read16read_interactives_0E0EEEB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p) #35
          to label %.body.i319 unwind label %bb.kh, !noalias !3299

bb.ke:                                            ; preds = %bb.kc
  call void @llvm.experimental.noalias.scope.decl(metadata !3305)
  %i.acl = load i8, ptr %i.yu, align 1, !range !17, !alias.scope !3306, !noalias !3298, !noundef !5
  %i.acm = icmp eq i8 %i.acl, 2
  br i1 %i.acm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvNtNtB1Q_8builtins4read16read_interactives_0E0EEB1Q_.exit.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.experimental.noalias.scope.decl(metadata !3307)
  call void @llvm.experimental.noalias.scope.decl(metadata !3308)
  call void @llvm.experimental.noalias.scope.decl(metadata !3309)
  call void @llvm.experimental.noalias.scope.decl(metadata !3310)
  %i.acn = load ptr, ptr %i.p, align 8, !alias.scope !3311, !noalias !3298, !nonnull !5, !noundef !5 ; 2 uses
  %i.aco = load i64, ptr %i.acn, align 8, !noalias !3312, !noundef !5
  %i.acp = add i64 %i.aco, -1                     ; 2 uses
  store i64 %i.acp, ptr %i.acn, align 8, !noalias !3312
  %i.acq = icmp eq i64 %i.acp, 0
  br i1 %i.acq, label %bb.kg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvNtNtB1Q_8builtins4read16read_interactives_0E0EEB1Q_.exit.i

bb.kg:                                            ; preds = %bb.kf
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p) #39
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvNtNtB1Q_8builtins4read16read_interactives_0E0EEB1Q_.exit.i unwind label %bb.jx, !noalias !3299

bb.kh:                                            ; preds = %bb.kd
  %i.acr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3299
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvNtNtB1Q_8builtins4read16read_interactives_0E0EEB1Q_.exit.i: ; preds = %bb.kg, %bb.kf, %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3298
  %i.acs = load i64, ptr %i.o, align 8, !range !4, !noalias !3298, !noundef !5
  %.not20.i = icmp eq i64 %i.acs, -1
  br i1 %.not20.i, label %bb.ko, label %bb.ki

bb.ki:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvNtNtB1Q_8builtins4read16read_interactives_0E0EEB1Q_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ew)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i321 unwind label %bb.kj, !noalias !3304

bb.kj:                                            ; preds = %bb.ki
  %i.act = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ew)
          to label %.body28.i unwind label %bb.kk, !noalias !3304

bb.kk:                                            ; preds = %bb.kj
  %i.acu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3304
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i321: ; preds = %bb.ki
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ew)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i322 unwind label %bb.kl, !noalias !3304

bb.kl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i321
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i

.body28.i:                                        ; preds = %bb.kl, %bb.kj
  %eh.lpad-body29.i = phi { ptr, i32 } [ %i.acv, %bb.kl ], [ %i.act, %bb.kj ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !3313
  br label %.body.i319

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i322: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !3313
  %.not21.i = icmp eq i64 %i.aba, 0
  br i1 %.not21.i, label %bb.ko, label %bb.km

bb.km:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i322
  %i.acw = load i64, ptr %.sroa.5126.0..sroa_idx, align 8, !alias.scope !3297, !noundef !5 ; 2 uses
  %i.acx = icmp ult i64 %i.acw, 2305843009213693952
  call void @llvm.assume(i1 %i.acx)
  %i.acy = icmp ult i64 %i.aba, %i.acw
  br i1 %i.acy, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE8truncateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ew, i64 noundef %i.aba)
          to label %bb.ko unwind label %bb.jx, !noalias !3304

bb.ko:                                            ; preds = %bb.kn, %bb.km, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i322, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvNtNtB1Q_8builtins4read16read_interactives_0E0EEB1Q_.exit.i
  %.sroa.05.0.i = phi i64 [ 4294967297, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuarduNCINvMs4_BE_INtBE_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvNtNtB1Q_8builtins4read16read_interactives_0E0EEB1Q_.exit.i ], [ 4294967296, %bb.km ], [ 4294967296, %bb.kn ], [ 4294967296, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i322 ]
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader10reader_pop()
          to label %bb.kp unwind label %bb.jx, !noalias !3304

bb.kp:                                            ; preds = %bb.ko
  %i.acz = load i8, ptr %i.yt, align 1, !range !18, !alias.scope !3314, !noalias !3298, !noundef !5
  %i.ada = icmp eq i8 %i.acz, -1
  br i1 %i.ada, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read16read_interactive.exit, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  invoke void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuarduNCINvMs4_B5_INtB5_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNCNvNtNtB1n_8builtins4read16read_interactive00E0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %bb.ks unwind label %bb.kr, !noalias !3304

bb.kr:                                            ; preds = %bb.kq
  %i.adb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTuNCINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB18_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNCNvNtNtB1W_8builtins4read16read_interactive00E0EEEB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r) #35
          to label %.body296 unwind label %bb.kv, !noalias !3304

bb.ks:                                            ; preds = %bb.kq
  call void @llvm.experimental.noalias.scope.decl(metadata !3315)
  %i.adc = load i8, ptr %i.yt, align 1, !range !17, !alias.scope !3316, !noalias !3298, !noundef !5
  %i.add = icmp eq i8 %i.adc, 2
  br i1 %i.add, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read16read_interactive.exit, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  call void @llvm.experimental.noalias.scope.decl(metadata !3317)
  call void @llvm.experimental.noalias.scope.decl(metadata !3318)
  call void @llvm.experimental.noalias.scope.decl(metadata !3319)
  call void @llvm.experimental.noalias.scope.decl(metadata !3320)
  %i.ade = load ptr, ptr %i.r, align 8, !alias.scope !3321, !noalias !3298, !nonnull !5, !noundef !5 ; 2 uses
  %i.adf = load i64, ptr %i.ade, align 8, !noalias !3322, !noundef !5
  %i.adg = add i64 %i.adf, -1                     ; 2 uses
  store i64 %i.adg, ptr %i.ade, align 8, !noalias !3322
  %i.adh = icmp eq i64 %i.adg, 0
  br i1 %i.adh, label %bb.ku, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read16read_interactive.exit

bb.ku:                                            ; preds = %bb.kt
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r) #39
          to label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read16read_interactive.exit unwind label %.body362.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kv:                                            ; preds = %bb.kr
  %i.adi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3304
  unreachable

bb.kw:                                            ; preds = %bb.kx, %bb.kb, %.body.i319, %.loopexit.split-lp578.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.adj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3304
  unreachable

bb.kx:                                            ; preds = %bb.js, %bb.jr
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader12ReaderConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.x) #35
          to label %.body296 unwind label %bb.kw, !noalias !3299

bb.ky:                                            ; preds = %bb.jo
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish8builtins4read16read_interactive.exit: ; preds = %bb.ku, %bb.kp, %bb.ks, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.kz

bb.kz:                                            ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read16read_interactive.exit, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read14read_in_chunks.exit, %bb.nf
  %.sroa.1020.0 = phi i32 [ %.sroa.6180.0.extract.trunc, %bb.nf ], [ %.sroa.6176.0.extract.trunc, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read14read_in_chunks.exit ], [ 1, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read16read_interactive.exit ] ; 2 uses
  %.sroa.10.0 = phi i16 [ 0, %bb.nf ], [ %.sroa.5175.0.extract.trunc, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read14read_in_chunks.exit ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read16read_interactive.exit ] ; 2 uses
  %.sroa.9.0 = phi i8 [ 0, %bb.nf ], [ %.sroa.4174.0.extract.trunc, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read14read_in_chunks.exit ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read16read_interactive.exit ] ; 2 uses
  %.sroa.0.0.in = phi i64 [ %.sroa.55.0.i, %bb.nf ], [ %.sroa.0.0.insert.insert.i, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read14read_in_chunks.exit ], [ %.sroa.05.0.i, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4read16read_interactive.exit ] ; 3 uses
  %4 = trunc i64 %.sroa.0.0.in to i1
  br i1 %4, label %bb.nh, label %bb.ng

bb.la:                                            ; preds = %bb.le, %bb.jc
  %i.adk = invoke noundef i32 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams8stdin_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.mh unwind label %.body362.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lb:                                            ; preds = %bb.jc
  %i.adl = load i8, ptr %i.yv, align 4, !range !28, !noundef !5
  %i.adm = trunc nuw i8 %i.adl to i1
  br i1 %i.adm, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.adn = invoke noundef i32 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams8stdin_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.le unwind label %.body362.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ld:                                            ; preds = %bb.le, %bb.lb
  %i.ado = invoke noundef i32 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams8stdin_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.lf unwind label %.body362.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.le:                                            ; preds = %bb.lc
  %i.adp = call noundef i64 @lseek(i32 noundef %i.adn, i64 noundef 0, i32 noundef 1) #40
  %i.adq = icmp eq i64 %i.adp, -1
  br i1 %i.adq, label %bb.la, label %bb.ld

bb.lf:                                            ; preds = %bb.ld
  %i.adr = load i8, ptr %i.ok, align 8, !range !28, !noundef !5
  %i.ads = trunc nuw i8 %i.adr to i1
  %i.adt = load i8, ptr %i.yv, align 4, !range !28, !noundef !5
  %i.adu = trunc nuw i8 %i.adt to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3323
  store i64 0, ptr %i.k, align 8, !noalias !3323
  store ptr inttoptr (i64 1 to ptr), ptr %i.yw, align 8, !noalias !3323
  store i64 0, ptr %i.yx, align 8, !noalias !3323
  %..i.i.i = select i1 %i.ads, i8 0, i8 10        ; 4 uses
  br i1 %i.adu, label %.split.i.preheader, label %.split.us.i.preheader

.split.us.i.preheader:                            ; preds = %bb.lf
  %broadcast.splatinsert2617 = insertelement <16 x i8> poison, i8 %..i.i.i, i64 0
  %broadcast.splat2618 = shufflevector <16 x i8> %broadcast.splatinsert2617, <16 x i8> poison, <16 x i32> zeroinitializer ; 8 uses
  br label %.split.us.i

.split.i.preheader:                               ; preds = %bb.lf
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %..i.i.i, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 8 uses
  br label %.split.i

.split.us.i:                                      ; preds = %.split.us.i.preheader, %bb.lm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3323
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.j, i8 0, i64 128, i1 false), !noalias !3323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3323
  invoke void @_RNvCs5UXtnEuoeIl_11fish_common12read_blocked(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, i32 noundef %i.ado, ptr noalias nofree noundef nonnull %i.j, i64 noundef 128)
          to label %bb.lg unwind label %.loopexit42.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3323

bb.lg:                                            ; preds = %.split.us.i
  %i.adv = load i32, ptr %i.i, align 8, !range !37, !noalias !3323, !noundef !5
  %i.adw = trunc nuw i32 %i.adv to i1
  %i.adx = load i64, ptr %i.yy, align 8, !noalias !3323 ; 12 uses
  %i.ady = icmp eq i64 %i.adx, 0
  %or.cond.us.i = select i1 %i.adw, i1 true, i1 %i.ady
  br i1 %or.cond.us.i, label %.split65.us.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3323
  %i.adz = icmp ult i64 %i.adx, 129
  br i1 %i.adz, label %.lr.ph.i.us.i, label %.split69.us.i, !prof !3324

.lr.ph.i.us.i:                                    ; preds = %bb.lh
  %i.aea = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.adx
  %min.iters.check2614 = icmp ult i64 %i.adx, 16
  br i1 %min.iters.check2614, label %scalar.ph2613.preheader, label %vector.ph2615

vector.ph2615:                                    ; preds = %.lr.ph.i.us.i
  %n.vec2616 = and i64 %i.adx, 240                ; 10 uses
  %i.aeb = getelementptr i8, ptr %i.j, i64 %n.vec2616
  %wide.load2622 = load <16 x i8>, ptr %i.j, align 16, !noalias !3325
  %i.aec = icmp eq <16 x i8> %wide.load2622, %broadcast.splat2618
  %i.aed = freeze <16 x i1> %i.aec                ; 2 uses
  %i.aee = bitcast <16 x i1> %i.aed to i16
  %.not2631.a = icmp eq i16 %i.aee, 0
  br i1 %.not2631.a, label %vector.body.interim2624, label %vector.early.exit2627

vector.body.interim2624:                          ; preds = %vector.ph2615
  %i.aef = icmp eq i64 %n.vec2616, 16
  br i1 %i.aef, label %middle.block2625, label %vector.body2619.1

vector.body2619.1:                                ; preds = %vector.body.interim2624
  %wide.load2622.1 = load <16 x i8>, ptr %next.gep2621.1, align 16, !noalias !3325
  %i.aeg = icmp eq <16 x i8> %wide.load2622.1, %broadcast.splat2618
  %i.aeh = freeze <16 x i1> %i.aeg                ; 2 uses
  %i.aei = bitcast <16 x i1> %i.aeh to i16
  %.not2631.1.a = icmp eq i16 %i.aei, 0
  br i1 %.not2631.1.a, label %vector.body.interim2624.1, label %vector.early.exit2627

vector.body.interim2624.1:                        ; preds = %vector.body2619.1
  %i.aej = icmp eq i64 %n.vec2616, 32
  br i1 %i.aej, label %middle.block2625, label %vector.body2619.2

vector.body2619.2:                                ; preds = %vector.body.interim2624.1
  %wide.load2622.2 = load <16 x i8>, ptr %next.gep2621.2, align 16, !noalias !3325
  %i.aek = icmp eq <16 x i8> %wide.load2622.2, %broadcast.splat2618
  %i.ael = freeze <16 x i1> %i.aek                ; 2 uses
  %i.aem = bitcast <16 x i1> %i.ael to i16
  %.not2631.2.a = icmp eq i16 %i.aem, 0
  br i1 %.not2631.2.a, label %vector.body.interim2624.2, label %vector.early.exit2627

vector.body.interim2624.2:                        ; preds = %vector.body2619.2
  %i.aen = icmp eq i64 %n.vec2616, 48
  br i1 %i.aen, label %middle.block2625, label %vector.body2619.3

vector.body2619.3:                                ; preds = %vector.body.interim2624.2
  %wide.load2622.3 = load <16 x i8>, ptr %next.gep2621.3, align 16, !noalias !3325
  %i.aeo = icmp eq <16 x i8> %wide.load2622.3, %broadcast.splat2618
  %i.aep = freeze <16 x i1> %i.aeo                ; 2 uses
  %i.aeq = bitcast <16 x i1> %i.aep to i16
  %.not2631.3.a = icmp eq i16 %i.aeq, 0
  br i1 %.not2631.3.a, label %vector.body.interim2624.3, label %vector.early.exit2627

vector.body.interim2624.3:                        ; preds = %vector.body2619.3
  %i.aer = icmp eq i64 %n.vec2616, 64
  br i1 %i.aer, label %middle.block2625, label %vector.body2619.4

vector.body2619.4:                                ; preds = %vector.body.interim2624.3
  %wide.load2622.4 = load <16 x i8>, ptr %next.gep2621.4, align 16, !noalias !3325
  %i.aes = icmp eq <16 x i8> %wide.load2622.4, %broadcast.splat2618
  %i.aet = freeze <16 x i1> %i.aes                ; 2 uses
  %i.aeu = bitcast <16 x i1> %i.aet to i16
  %.not2631.4.a = icmp eq i16 %i.aeu, 0
  br i1 %.not2631.4.a, label %vector.body.interim2624.4, label %vector.early.exit2627

vector.body.interim2624.4:                        ; preds = %vector.body2619.4
  %i.aev = icmp eq i64 %n.vec2616, 80
  br i1 %i.aev, label %middle.block2625, label %vector.body2619.5

vector.body2619.5:                                ; preds = %vector.body.interim2624.4
  %wide.load2622.5 = load <16 x i8>, ptr %next.gep2621.5, align 16, !noalias !3325
  %i.aew = icmp eq <16 x i8> %wide.load2622.5, %broadcast.splat2618
  %i.aex = freeze <16 x i1> %i.aew                ; 2 uses
  %i.aey = bitcast <16 x i1> %i.aex to i16
  %.not2631.5.a = icmp eq i16 %i.aey, 0
  br i1 %.not2631.5.a, label %vector.body.interim2624.5, label %vector.early.exit2627

vector.body.interim2624.5:                        ; preds = %vector.body2619.5
  %i.aez = icmp eq i64 %n.vec2616, 96
  br i1 %i.aez, label %middle.block2625, label %vector.body2619.6

vector.body2619.6:                                ; preds = %vector.body.interim2624.5
  %wide.load2622.6 = load <16 x i8>, ptr %next.gep2621.6, align 16, !noalias !3325
  %i.afa = icmp eq <16 x i8> %wide.load2622.6, %broadcast.splat2618
  %i.afb = freeze <16 x i1> %i.afa                ; 2 uses
  %i.afc = bitcast <16 x i1> %i.afb to i16
  %.not2631.6.a = icmp eq i16 %i.afc, 0
  br i1 %.not2631.6.a, label %vector.body.interim2624.6, label %vector.early.exit2627

vector.body.interim2624.6:                        ; preds = %vector.body2619.6
  %i.afd = icmp eq i64 %n.vec2616, 112
  br i1 %i.afd, label %middle.block2625, label %vector.body2619.7

vector.body2619.7:                                ; preds = %vector.body.interim2624.6
  %wide.load2622.7 = load <16 x i8>, ptr %next.gep2621.7, align 16, !noalias !3325
  %i.afe = icmp eq <16 x i8> %wide.load2622.7, %broadcast.splat2618
  %i.aff = freeze <16 x i1> %i.afe                ; 2 uses
  %i.afg = bitcast <16 x i1> %i.aff to i16
  %.not2631.7.a = icmp eq i16 %i.afg, 0
  br i1 %.not2631.7.a, label %middle.block2625, label %vector.early.exit2627

middle.block2625:                                 ; preds = %vector.body2619.7, %vector.body.interim2624.6, %vector.body.interim2624.5, %vector.body.interim2624.4, %vector.body.interim2624.3, %vector.body.interim2624.2, %vector.body.interim2624.1, %vector.body.interim2624
  %cmp.n2626 = icmp eq i64 %i.adx, %n.vec2616
  br i1 %cmp.n2626, label %.loopexit.us.i, label %scalar.ph2613.preheader

scalar.ph2613.preheader:                          ; preds = %.lr.ph.i.us.i, %middle.block2625
  %.sroa.02.08.i.us.i.ph = phi i64 [ 0, %.lr.ph.i.us.i ], [ %n.vec2616, %middle.block2625 ]
  %.ph2642 = phi ptr [ %i.j, %.lr.ph.i.us.i ], [ %i.aeb, %middle.block2625 ]
  br label %scalar.ph2613

vector.early.exit2627:                            ; preds = %vector.body2619.7, %vector.body2619.6, %vector.body2619.5, %vector.body2619.4, %vector.body2619.3, %vector.body2619.2, %vector.body2619.1, %vector.ph2615
  %index2620.lcssa = phi i64 [ 0, %vector.ph2615 ], [ 16, %vector.body2619.1 ], [ 32, %vector.body2619.2 ], [ 48, %vector.body2619.3 ], [ 64, %vector.body2619.4 ], [ 80, %vector.body2619.5 ], [ 96, %vector.body2619.6 ], [ 112, %vector.body2619.7 ]
  %.lcssa2691 = phi <16 x i1> [ %i.aed, %vector.ph2615 ], [ %i.aeh, %vector.body2619.1 ], [ %i.ael, %vector.body2619.2 ], [ %i.aep, %vector.body2619.3 ], [ %i.aet, %vector.body2619.4 ], [ %i.aex, %vector.body2619.5 ], [ %i.afb, %vector.body2619.6 ], [ %i.aff, %vector.body2619.7 ]
  %i.afh = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %.lcssa2691, i1 false)
  %i.afi = add i64 %index2620.lcssa, %i.afh
  br label %.loopexit2630

scalar.ph2613:                                    ; preds = %scalar.ph2613.preheader, %bb.li
  %.sroa.02.08.i.us.i = phi i64 [ %i.afm, %bb.li ], [ %.sroa.02.08.i.us.i.ph, %scalar.ph2613.preheader ] ; 2 uses
  %i.afj = phi ptr [ %i.afl, %bb.li ], [ %.ph2642, %scalar.ph2613.preheader ] ; 2 uses
  %.val6.i.us.i = load i8, ptr %i.afj, align 1, !noalias !3325, !noundef !5
  %i.afk = icmp eq i8 %.val6.i.us.i, %..i.i.i
  br i1 %i.afk, label %.loopexit2630, label %bb.li

bb.li:                                            ; preds = %scalar.ph2613
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 1 ; 2 uses
  %i.afm = add nuw nsw i64 %.sroa.02.08.i.us.i, 1
  %i.afn = icmp eq ptr %i.afl, %i.aea
  br i1 %i.afn, label %.loopexit.us.i, label %scalar.ph2613, !llvm.loop !3198

.loopexit2630:                                    ; preds = %scalar.ph2613, %vector.early.exit2627
  %.sroa.02.08.i.us.i.lcssa = phi i64 [ %i.afi, %vector.early.exit2627 ], [ %.sroa.02.08.i.us.i, %scalar.ph2613 ] ; 2 uses
  %i.afo = icmp ult i64 %.sroa.02.08.i.us.i.lcssa, %i.adx
  call void @llvm.assume(i1 %i.afo)
  br label %.loopexit.us.i

end_hunk_7

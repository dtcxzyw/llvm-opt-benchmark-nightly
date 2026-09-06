Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.14?download=true
inline.NumInlined: 819
inline.NumDeleted: 185
begin_hunk_0_@_RNvXs5_NtNtCs7SkU8gPisFf_4redb10tree_store5btreeINtB5_5BtreeNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashBW_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs7SkU8gPisFf_4redb10tree_store5btreeINtB5_5BtreeNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashNtBY_12FileShardRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !2864, !noundef !6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplEECsiAynQAjgDuT_10xet_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !2865
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplEECsiAynQAjgDuT_10xet_client.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 16
  resume { ptr, i32 } %i.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr null, ptr %i.a, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs7SkU8gPisFf_4redb10tree_store5btreeINtB5_5BtreeReNtNtB7_15table_tree_base23InternalTableDefinitionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2874)
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !2874, !noundef !6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplEECsiAynQAjgDuT_10xet_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !2875
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplEECsiAynQAjgDuT_10xet_client.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 16
  resume { ptr, i32 } %i.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr null, ptr %i.a, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCskKLDkoKarTP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk10cache_itemNtB5_9CacheItemNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsiAynQAjgDuT_10xet_client9cas_typesINtB5_5RangemNtB5_2__CENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !align !8, !noundef !6
  %i.i = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @105, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs94TQx44N27d_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCsfaw33hLWA9J_12futures_util3fnsNCNCINvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format17deserialize_async40deserialize_chunks_to_writer_from_streamNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtNtCsiAynQAjgDuT_10xet_client10cas_client24progress_tracked_streams22DownloadProgressStreamINtNtNtB6_6stream10try_stream6MapErrINtNtCs5jFM9WxmFav_14http_body_util6stream14BodyDataStreamINtNtNtB6j_11combinators7map_err6MapErrINtNtB7f_8box_body7BoxBodyB2T_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB3z_5error5ErrorNtNtB3z_6marker4SendNtB9d_4SyncEL_EEINvNtCsfaKIfeYzQZw_7reqwest5error6decodeB8h_EEEINvMNtNtB8m_2io5errorB3t_5otherNtB9O_5ErrorEEEINtNtB3x_6cursor6CursorQINtNtB8m_3vec3VechEEE00INtB4_6FnMut1B3t_E8call_mutB4e_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr nofree noundef nonnull readnone returned captures(ret: address, provenance) %1) unnamed_addr #8 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSINtNtNtB8_3mem12maybe_uninit11MaybeUninithEINtB4_8SpecFillBK_E9spec_fillCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i8 %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 %2, i64 %1, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsd_NtNtCskKLDkoKarTP_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i8 noundef %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign eq i64 %1, 0
  br i1 %i.a, label %_RINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE9fill_withNCNvXsd_By_Bu_INtBy_8SpecFillhE9spec_fill0ECsiAynQAjgDuT_10xet_client.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 %2, i64 range(i64 0, -9223372036854775808) %1, i1 false), !alias.scope !2879, !noalias !2880
  br label %_RINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE9fill_withNCNvXsd_By_Bu_INtBy_8SpecFillhE9spec_fill0ECsiAynQAjgDuT_10xet_client.exit

_RINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE9fill_withNCNvXsd_By_Bu_INtBy_8SpecFillhE9spec_fill0ECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.a, %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCs7SkU8gPisFf_4redb5tableINtB5_5RangeNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashBI_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBQ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef align 8 dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [64 x i8], align 8                ; 9 uses
  %i.j = alloca [88 x i8], align 8                ; 11 uses
  %i.k = alloca [88 x i8], align 8                ; 7 uses
  %i.l = alloca [64 x i8], align 8                ; 11 uses
  %.sroa.5 = alloca [160 x i8], align 8           ; 3 uses
  %.sroa.56.sroa.5 = alloca [12 x i8], align 8    ; 6 uses
  %.sroa.15 = alloca [12 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2911)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.n = load i64, ptr %1, align 8, !range !15, !alias.scope !2911, !noalias !2912, !noundef !6 ; 3 uses
  %.not38.i = icmp eq i64 %i.n, 2
  br i1 %.not38.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.m, align 8, !range !15, !alias.scope !2911, !noalias !2912, !noundef !6
  %2 = or i64 %i.o, %i.n
  %or.cond.not.i = icmp eq i64 %2, 0
  br i1 %or.cond.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.01.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !alias.scope !2911, !noalias !2912, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aj = load i8, ptr %i.ai, align 8, !alias.scope !2911, !noalias !2912, !noundef !6
  %i.ak = load i64, ptr %i.ae, align 8, !alias.scope !2911, !noalias !2912
  %i.al = load i64, ptr %i.ah, align 8, !alias.scope !2911, !noalias !2912
  %or.cond4.i = icmp eq i64 %i.ak, %i.al
  %i.am = icmp eq i8 %i.ag, %i.aj
  %or.cond5.i = and i1 %or.cond4.i, %i.am
  br i1 %or.cond5.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !2911, !noalias !2912, !noundef !6 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !2911, !noalias !2912, !noundef !6 ; 2 uses
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = icmp eq i64 %i.ao, %i.aq
  br i1 %i.as, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.au = load i8, ptr %i.at, align 8, !range !9, !alias.scope !2911, !noalias !2912, !noundef !6
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.ax = load i8, ptr %i.aw, align 1, !range !9, !alias.scope !2911, !noalias !2912
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond8.i = select i1 %i.av, i1 %i.ay, i1 false
  br i1 %or.cond8.i, label %bb.c, label %.loopexit

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashB1Y_EEEB26_.exit.i, %bb.c
  %.pre93.pre.i48 = phi i64 [ %.pre93.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashB1Y_EEEB26_.exit.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.az = load i8, ptr %i.p, align 8, !range !9, !alias.scope !2911, !noalias !2912, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 2, ptr %1, align 8, !alias.scope !2911, !noalias !2912
  %.not.i = icmp eq i64 %.pre93.pre.i48, 2
  br i1 %.not.i, label %.loopexit, label %bb.k

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters14RangeIterStateEECsiAynQAjgDuT_10xet_client.exit.i, %bb.h
  %.pre93.pre.i47 = phi i64 [ %.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters14RangeIterStateEECsiAynQAjgDuT_10xet_client.exit.i ], [ %.pre93.pre.i48, %bb.h ] ; 3 uses
  %.not40.i = icmp eq i64 %.pre93.pre.i47, 2
  br i1 %.not40.i, label %.loopexit, label %bb.o

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.531.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx.i, i64 80, i1 false), !noalias !2912
  store i64 %.pre93.pre.i48, ptr %i.k, align 8, !noalias !2913
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !2911, !noalias !2912, !nonnull !6, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @_RNvMNtNtCs7SkU8gPisFf_4redb10tree_store11btree_itersNtB2_14RangeIterState4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.k, i1 noundef zeroext false, ptr noundef nonnull align 16 %i.bc), !noalias !2912
  %i.bd = load i64, ptr %i.j, align 8, !range !13, !noalias !2913, !noundef !6
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %bb.ag, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i64, ptr %1, align 8, !range !15, !alias.scope !2914, !noalias !2912, !noundef !6
  %i.bg = icmp eq i64 %i.bf, 2
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters14RangeIterStateEECsiAynQAjgDuT_10xet_client.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters14RangeIterStateECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters14RangeIterStateEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.n, !noalias !2912

common.resume:                                    ; preds = %bb.al, %bb.an, %bb.ao, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.dj, %bb.al ], [ %i.dl, %bb.ao ], [ %i.dl, %bb.an ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 88, i1 false), !noalias !2912
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters14RangeIterStateEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 88, i1 false), !noalias !2912
  %.pre.i = load i64, ptr %1, align 8, !alias.scope !2911, !noalias !2912
  br label %bb.j

bb.o:                                             ; preds = %bb.j
  %i.bi = load i64, ptr %i.m, align 8, !range !15, !alias.scope !2911, !noalias !2912, !noundef !6
  %i.bj = trunc i64 %.pre93.pre.i47 to i1         ; 2 uses
  %i.bk = icmp ne i64 %i.bi, 0
  %or.cond49.i = or i1 %i.bk, %i.bj
  br i1 %or.cond49.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = load i8, ptr %i.s, align 8, !alias.scope !2911, !noalias !2912, !noundef !6
  %i.bm = load i8, ptr %i.u, align 8, !alias.scope !2911, !noalias !2912, !noundef !6
  %i.bn = load i64, ptr %i.r, align 8, !alias.scope !2911, !noalias !2912
  %i.bo = load i64, ptr %i.t, align 8, !alias.scope !2911, !noalias !2912
  %or.cond14.i = icmp eq i64 %i.bn, %i.bo
  %i.bp = icmp eq i8 %i.bl, %i.bm
  %or.cond15.i = and i1 %or.cond14.i, %i.bp
  br i1 %or.cond15.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bq = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2911, !noalias !2912, !noundef !6 ; 2 uses
  %i.br = load i64, ptr %i.v, align 8, !alias.scope !2911, !noalias !2912, !noundef !6 ; 2 uses
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = icmp ne i64 %i.bq, %i.br
  %i.bu = load i8, ptr %i.w, align 1, !range !9, !alias.scope !2911, !noalias !2912
  %i.bv = trunc nuw i8 %i.bu to i1
  %or.cond18.i = select i1 %i.bt, i1 true, i1 %i.bv
  br i1 %or.cond18.i, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o
  store i8 0, ptr %i.p, align 8, !alias.scope !2911, !noalias !2912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2913
  call void @llvm.experimental.noalias.scope.decl(metadata !2915)
  call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashB1Y_EEEB26_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2917
  %i.bw = load ptr, ptr %i.x, align 8, !alias.scope !2918, !noalias !2919, !nonnull !6, !noundef !6 ; 4 uses
  %i.bx = load i64, ptr %i.y, align 8, !alias.scope !2918, !noalias !2919, !noundef !6 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.bz = load i64, ptr %i.z, align 8, !range !7, !alias.scope !2918, !noalias !2919, !noundef !6
  %i.ca = load i64, ptr %i.aa, align 8, !alias.scope !2918, !noalias !2919
  %i.cb = load i64, ptr %i.ab, align 8, !range !7, !alias.scope !2918, !noalias !2919, !noundef !6
  %i.cc = load i64, ptr %i.ac, align 8, !alias.scope !2918, !noalias !2919
  call void @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef %i.bx, i64 noundef %i.bz, i64 %i.ca, i64 noundef %i.cb, i64 %i.cc), !noalias !2920
  %i.cd = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2918, !noalias !2919, !noundef !6
  call void @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor12entry_ranges(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, i64 noundef %i.cd), !noalias !2920
  %i.ce = load i64, ptr %i.h, align 8, !range !7, !noalias !2917, !noundef !6
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cg = load <2 x i64>, ptr %i.ad, align 8, !noalias !2917
  %i.ch = load <2 x i64>, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !2917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2917
  %i.ci = atomicrmw add ptr %i.bw, i64 1 monotonic, align 8, !noalias !2920
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2917
  %.pre93.pre.i.pre = load i64, ptr %1, align 8, !alias.scope !2911, !noalias !2912
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashB1Y_EEEB26_.exit.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashB1Y_EEEB26_.exit.i: ; preds = %bb.v, %bb.s
  %.pre93.pre.i = phi i64 [ %.pre93.pre.i.pre, %bb.v ], [ %.pre93.pre.i47, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2913
  br label %bb.h

bb.x:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.01.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.r, i64 12, i1 false), !alias.scope !2921, !noalias !2912
  store ptr %i.bw, ptr %i.i, align 8, !alias.scope !2915, !noalias !2922
  store i64 %i.bx, ptr %.sroa.01.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2915, !noalias !2922
  store <2 x i64> %i.cg, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !2915, !noalias !2922
  store <2 x i64> %i.ch, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !alias.scope !2915, !noalias !2922
  %i.ck = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !2923
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashB1Y_EEEB26_.exit50.i

end_hunk_0
begin_hunk_1_@_RNvXsk_NtCs7SkU8gPisFf_4redb5tableINtB5_5RangeNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashBI_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBQ_:bb.a
  %i.cp = load i64, ptr %i.y, align 8, !alias.scope !2926, !noalias !2927, !noundef !6 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load i64, ptr %i.z, align 8, !range !7, !alias.scope !2926, !noalias !2927, !noundef !6
  %i.cs = load i64, ptr %i.aa, align 8, !alias.scope !2926, !noalias !2927
  %i.ct = load i64, ptr %i.ab, align 8, !range !7, !alias.scope !2926, !noalias !2927, !noundef !6
  %i.cu = load i64, ptr %i.ac, align 8, !alias.scope !2926, !noalias !2927
  call void @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, i64 noundef %i.cr, i64 %i.cs, i64 noundef %i.ct, i64 %i.cu), !noalias !2928
  %i.cv = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2926, !noalias !2927, !noundef !6
  call void @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor12entry_ranges(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, i64 noundef %i.cv), !noalias !2928
  %i.cw = load i64, ptr %i.f, align 8, !range !7, !noalias !2925, !noundef !6
  %i.cx = trunc nuw i64 %i.cw to i1
  br i1 %i.cx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.09.0.copyload.i51.i = load i64, ptr %i.cy, align 8, !noalias !2925 ; 2 uses
  %.sroa.410.0..sroa_idx.i52.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.410.0.copyload.i53.i = load i64, ptr %.sroa.410.0..sroa_idx.i52.i, align 8, !noalias !2925 ; 2 uses
  %.sroa.511.0..sroa_idx.i54.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.511.0.copyload.i55.i = load i64, ptr %.sroa.511.0..sroa_idx.i54.i, align 8, !noalias !2925 ; 2 uses
  %.sroa.612.0..sroa_idx.i56.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.612.0.copyload.i57.i = load i64, ptr %.sroa.612.0..sroa_idx.i56.i, align 8, !noalias !2925 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2925
  %i.cz = atomicrmw add ptr %i.co, i64 1 monotonic, align 8, !noalias !2928
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %bb.ad, label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2925
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac, %bb.z
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #27, !noalias !2912
  unreachable

.loopexit:                                        ; preds = %bb.i, %bb.q, %bb.j, %bb.r, %bb.e, %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashB1Y_EEEB26_.exit50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 -2, ptr %0, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ap, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  ret void

bb.ag:                                            ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.12.16.copyload12 = load i64, ptr %i.db, align 8, !noalias !2911
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.15.16..sroa_idx, i64 12, i1 false), !noalias !2911
  %.sroa.16.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %.sroa.16.16.copyload13 = load i32, ptr %.sroa.16.16..sroa_idx, align 4, !noalias !2911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.56.sroa.5, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.15, i64 12, i1 false)
  br label %bb.ap

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56.sroa.5)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.r, i64 12, i1 false)
  store ptr %i.co, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.cp, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.09.0.copyload.i51.i, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %.sroa.410.0.copyload.i53.i, ptr %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %.sroa.511.0.copyload.i55.i, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.sroa.612.0.copyload.i57.i, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.l, i64 32, i1 false), !noalias !2930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2929
  %i.dc = load ptr, ptr %i.d, align 8, !noalias !2929, !nonnull !6, !noundef !6 ; 3 uses
  %i.dd = atomicrmw add ptr %i.dc, i64 1 monotonic, align 8, !noalias !2929
  %i.de = icmp slt i64 %i.dd, 0
  br i1 %i.de, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !noalias !2929, !noundef !6
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(12) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, i64 12, i1 false), !noalias !2930
  store ptr %i.dc, ptr %i.b, align 8, !noalias !2929
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.dg, ptr %i.di, align 8, !noalias !2929
  invoke void @_RNvMs0_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB5_11AccessGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashE9with_pageB1h_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %.sroa.09.0.copyload.i51.i, i64 noundef %.sroa.410.0.copyload.i53.i)
          to label %bb.ak unwind label %bb.an, !noalias !2929

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2929
  invoke void @_RNvMs0_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB5_11AccessGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashE9with_pageB1h_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.l, i64 noundef %.sroa.511.0.copyload.i55.i, i64 noundef %.sroa.612.0.copyload.i57.i)
          to label %_RNCNCNvXsk_NtCs7SkU8gPisFf_4redb5tableINtB9_5RangeNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashBM_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next00BU_.exit unwind label %bb.al, !noalias !2930

bb.al:                                            ; preds = %bb.ak
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store10btree_base11AccessGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashEEB1K_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #30
          to label %common.resume unwind label %bb.am, !noalias !2929

bb.am:                                            ; preds = %bb.ao, %bb.al
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2929
  unreachable

bb.an:                                            ; preds = %bb.ai
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !2931
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.ao, label %common.resume

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #31
          to label %common.resume unwind label %bb.am, !noalias !2929

_RNCNCNvXsk_NtCs7SkU8gPisFf_4redb5tableINtB9_5RangeNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashBM_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next00BU_.exit: ; preds = %bb.ak
  %.sroa.017.0.copyload = load i64, ptr %i.c, align 8, !noalias !2932
  %.sroa.4.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.sroa.024.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx18, align 8, !noalias !2932
  %.sroa.4.sroa.425.0..sroa.4.0..sroa_idx18.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.56.sroa.5, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4.sroa.425.0..sroa.4.0..sroa_idx18.sroa_idx, i64 12, i1 false)
  %.sroa.4.sroa.526.0..sroa.4.0..sroa_idx18.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.sroa.4.sroa.526.0.copyload = load i32, ptr %.sroa.4.sroa.526.0..sroa.4.0..sroa_idx18.sroa_idx, align 4, !noalias !2932
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, i64 64, i1 false)
  %.sroa.5.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ap

bb.ap:                                            ; preds = %_RNCNCNvXsk_NtCs7SkU8gPisFf_4redb5tableINtB9_5RangeNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashBM_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next00BU_.exit, %bb.ag
  %.sroa.56.sroa.6.0 = phi i32 [ %.sroa.16.16.copyload13, %bb.ag ], [ %.sroa.4.sroa.526.0.copyload, %_RNCNCNvXsk_NtCs7SkU8gPisFf_4redb5tableINtB9_5RangeNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashBM_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next00BU_.exit ]
  %.sroa.56.sroa.0.0 = phi i64 [ %.sroa.12.16.copyload12, %bb.ag ], [ %.sroa.4.sroa.024.0.copyload, %_RNCNCNvXsk_NtCs7SkU8gPisFf_4redb5tableINtB9_5RangeNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashBM_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next00BU_.exit ]
  %.sroa.04.0 = phi i64 [ -1, %bb.ag ], [ %.sroa.017.0.copyload, %_RNCNCNvXsk_NtCs7SkU8gPisFf_4redb5tableINtB9_5RangeNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashBM_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next00BU_.exit ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.56.sroa.0.0, ptr %.sroa.56.0..sroa_idx7, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.56.sroa.5, i64 12, i1 false)
  %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.56.sroa.6.0, ptr %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx7.sroa_idx, align 4
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.68.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.sroa.5)
  br label %bb.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCs7SkU8gPisFf_4redb5tableINtB5_5RangeNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashNtBK_12FileShardRefENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBQ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef align 8 dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [64 x i8], align 8                ; 9 uses
  %i.j = alloca [88 x i8], align 8                ; 11 uses
  %i.k = alloca [88 x i8], align 8                ; 7 uses
  %i.l = alloca [64 x i8], align 8                ; 11 uses
  %.sroa.5 = alloca [160 x i8], align 8           ; 3 uses
  %.sroa.56.sroa.5 = alloca [12 x i8], align 8    ; 6 uses
  %.sroa.15 = alloca [12 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2963)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.n = load i64, ptr %1, align 8, !range !15, !alias.scope !2963, !noalias !2964, !noundef !6 ; 3 uses
  %.not38.i = icmp eq i64 %i.n, 2
  br i1 %.not38.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.m, align 8, !range !15, !alias.scope !2963, !noalias !2964, !noundef !6
  %2 = or i64 %i.o, %i.n
  %or.cond.not.i = icmp eq i64 %2, 0
  br i1 %or.cond.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.01.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !alias.scope !2963, !noalias !2964, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aj = load i8, ptr %i.ai, align 8, !alias.scope !2963, !noalias !2964, !noundef !6
  %i.ak = load i64, ptr %i.ae, align 8, !alias.scope !2963, !noalias !2964
  %i.al = load i64, ptr %i.ah, align 8, !alias.scope !2963, !noalias !2964
  %or.cond4.i = icmp eq i64 %i.ak, %i.al
  %i.am = icmp eq i8 %i.ag, %i.aj
  %or.cond5.i = and i1 %or.cond4.i, %i.am
  br i1 %or.cond5.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !2963, !noalias !2964, !noundef !6 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !2963, !noalias !2964, !noundef !6 ; 2 uses
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = icmp eq i64 %i.ao, %i.aq
  br i1 %i.as, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.au = load i8, ptr %i.at, align 8, !range !9, !alias.scope !2963, !noalias !2964, !noundef !6
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.ax = load i8, ptr %i.aw, align 1, !range !9, !alias.scope !2963, !noalias !2964
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond8.i = select i1 %i.av, i1 %i.ay, i1 false
  br i1 %or.cond8.i, label %bb.c, label %.loopexit

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashNtB20_12FileShardRefEEEB26_.exit.i, %bb.c
  %.pre93.pre.i48 = phi i64 [ %.pre93.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashNtB20_12FileShardRefEEEB26_.exit.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.az = load i8, ptr %i.p, align 8, !range !9, !alias.scope !2963, !noalias !2964, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 2, ptr %1, align 8, !alias.scope !2963, !noalias !2964
  %.not.i = icmp eq i64 %.pre93.pre.i48, 2
  br i1 %.not.i, label %.loopexit, label %bb.k

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters14RangeIterStateEECsiAynQAjgDuT_10xet_client.exit.i, %bb.h
  %.pre93.pre.i47 = phi i64 [ %.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters14RangeIterStateEECsiAynQAjgDuT_10xet_client.exit.i ], [ %.pre93.pre.i48, %bb.h ] ; 3 uses
  %.not40.i = icmp eq i64 %.pre93.pre.i47, 2
  br i1 %.not40.i, label %.loopexit, label %bb.o

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.531.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx.i, i64 80, i1 false), !noalias !2964
  store i64 %.pre93.pre.i48, ptr %i.k, align 8, !noalias !2965
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !2963, !noalias !2964, !nonnull !6, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @_RNvMNtNtCs7SkU8gPisFf_4redb10tree_store11btree_itersNtB2_14RangeIterState4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.k, i1 noundef zeroext false, ptr noundef nonnull align 16 %i.bc), !noalias !2964
  %i.bd = load i64, ptr %i.j, align 8, !range !13, !noalias !2965, !noundef !6
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %bb.ag, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i64, ptr %1, align 8, !range !15, !alias.scope !2966, !noalias !2964, !noundef !6
  %i.bg = icmp eq i64 %i.bf, 2
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters14RangeIterStateEECsiAynQAjgDuT_10xet_client.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters14RangeIterStateECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters14RangeIterStateEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.n, !noalias !2964

common.resume:                                    ; preds = %bb.al, %bb.an, %bb.ao, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.dj, %bb.al ], [ %i.dl, %bb.ao ], [ %i.dl, %bb.an ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 88, i1 false), !noalias !2964
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters14RangeIterStateEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 88, i1 false), !noalias !2964
  %.pre.i = load i64, ptr %1, align 8, !alias.scope !2963, !noalias !2964
  br label %bb.j

bb.o:                                             ; preds = %bb.j
  %i.bi = load i64, ptr %i.m, align 8, !range !15, !alias.scope !2963, !noalias !2964, !noundef !6
  %i.bj = trunc i64 %.pre93.pre.i47 to i1         ; 2 uses
  %i.bk = icmp ne i64 %i.bi, 0
  %or.cond49.i = or i1 %i.bk, %i.bj
  br i1 %or.cond49.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = load i8, ptr %i.s, align 8, !alias.scope !2963, !noalias !2964, !noundef !6
  %i.bm = load i8, ptr %i.u, align 8, !alias.scope !2963, !noalias !2964, !noundef !6
  %i.bn = load i64, ptr %i.r, align 8, !alias.scope !2963, !noalias !2964
  %i.bo = load i64, ptr %i.t, align 8, !alias.scope !2963, !noalias !2964
  %or.cond14.i = icmp eq i64 %i.bn, %i.bo
  %i.bp = icmp eq i8 %i.bl, %i.bm
  %or.cond15.i = and i1 %or.cond14.i, %i.bp
  br i1 %or.cond15.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bq = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2963, !noalias !2964, !noundef !6 ; 2 uses
  %i.br = load i64, ptr %i.v, align 8, !alias.scope !2963, !noalias !2964, !noundef !6 ; 2 uses
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = icmp ne i64 %i.bq, %i.br
  %i.bu = load i8, ptr %i.w, align 1, !range !9, !alias.scope !2963, !noalias !2964
  %i.bv = trunc nuw i8 %i.bu to i1
  %or.cond18.i = select i1 %i.bt, i1 true, i1 %i.bv
  br i1 %or.cond18.i, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o
  store i8 0, ptr %i.p, align 8, !alias.scope !2963, !noalias !2964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2965
  call void @llvm.experimental.noalias.scope.decl(metadata !2967)
  call void @llvm.experimental.noalias.scope.decl(metadata !2968)
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashNtB20_12FileShardRefEEEB26_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2969
  %i.bw = load ptr, ptr %i.x, align 8, !alias.scope !2970, !noalias !2971, !nonnull !6, !noundef !6 ; 4 uses
  %i.bx = load i64, ptr %i.y, align 8, !alias.scope !2970, !noalias !2971, !noundef !6 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.bz = load i64, ptr %i.z, align 8, !range !7, !alias.scope !2970, !noalias !2971, !noundef !6
  %i.ca = load i64, ptr %i.aa, align 8, !alias.scope !2970, !noalias !2971
  %i.cb = load i64, ptr %i.ab, align 8, !range !7, !alias.scope !2970, !noalias !2971, !noundef !6
  %i.cc = load i64, ptr %i.ac, align 8, !alias.scope !2970, !noalias !2971
  call void @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef %i.bx, i64 noundef %i.bz, i64 %i.ca, i64 noundef %i.cb, i64 %i.cc), !noalias !2972
  %i.cd = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2970, !noalias !2971, !noundef !6
  call void @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor12entry_ranges(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, i64 noundef %i.cd), !noalias !2972
  %i.ce = load i64, ptr %i.h, align 8, !range !7, !noalias !2969, !noundef !6
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cg = load <2 x i64>, ptr %i.ad, align 8, !noalias !2969
  %i.ch = load <2 x i64>, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !2969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2969
  %i.ci = atomicrmw add ptr %i.bw, i64 1 monotonic, align 8, !noalias !2972
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2969
  %.pre93.pre.i.pre = load i64, ptr %1, align 8, !alias.scope !2963, !noalias !2964
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashNtB20_12FileShardRefEEEB26_.exit.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashNtB20_12FileShardRefEEEB26_.exit.i: ; preds = %bb.v, %bb.s
  %.pre93.pre.i = phi i64 [ %.pre93.pre.i.pre, %bb.v ], [ %.pre93.pre.i47, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2965
  br label %bb.h

bb.x:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.01.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.r, i64 12, i1 false), !alias.scope !2973, !noalias !2964
  store ptr %i.bw, ptr %i.i, align 8, !alias.scope !2967, !noalias !2974
  store i64 %i.bx, ptr %.sroa.01.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2967, !noalias !2974
  store <2 x i64> %i.cg, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !2967, !noalias !2974
  store <2 x i64> %i.ch, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !alias.scope !2967, !noalias !2974
  %i.ck = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !2975
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store11btree_iters10EntryGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashNtB20_12FileShardRefEEEB26_.exit50.i

end_hunk_1

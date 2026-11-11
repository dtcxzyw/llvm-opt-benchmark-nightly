Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff-e768ae2d72824186.ruff.64ca6932328cfb18-cgu.04?download=true
inline.NumInlined: 760
inline.NumDeleted: 461
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXse_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB8_11Deserialize11deserializeINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content19ContentDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECs8EvorvD8vmS_4ruff:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB8_11Deserialize11deserializeNtNtCsd1Od0hvlDsw_4toml5value5ValueECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 !guid !1721 {
bb.a:
  tail call void @_RINvXsh_NtCsd1Od0hvlDsw_4toml5valueNtB6_5ValueNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtBK_5impls13OptionVisitorjEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB8_11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 !guid !1722 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB1i_5impls13OptionVisitorjEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvXsj_Csht2POEgrkhf_6rancorNtB6_5ErrorNtB6_5Trace5traceNtCsfPFYAtJtK7K_9bytecheck18StructCheckContextECs8EvorvD8vmS_4ruff(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #8 !guid !1723 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvXsk_Csht2POEgrkhf_6rancorNtB6_5ErrorNtB6_6Source3newNtCsfPFYAtJtK7K_9bytecheck14BoolCheckErrorECs8EvorvD8vmS_4ruff(i8 noundef %0) unnamed_addr #8 !guid !1724 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvXsk_Csht2POEgrkhf_6rancorNtB6_5ErrorNtB6_6Source3newNtNtNtCs4NRVxsYgnAr_4core5alloc6layout11LayoutErrorECs8EvorvD8vmS_4ruff() unnamed_addr #8 !guid !1725 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvXsk_Csht2POEgrkhf_6rancorNtB6_5ErrorNtB6_6Source3newNtNtNtCsgYAxyi3ZRSt_4rkyv11collections4util22IteratorLengthMismatchECs8EvorvD8vmS_4ruff(i64 noundef %0, i64 noundef %1) unnamed_addr #8 !guid !1726 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvXsk_Csht2POEgrkhf_6rancorNtB6_5ErrorNtB6_6Source3newNtNtNtNtCsgYAxyi3ZRSt_4rkyv10validation7archive9validator16UnalignedPointerECs8EvorvD8vmS_4ruff(i64 noundef %0, i64 noundef %1) unnamed_addr #8 !guid !1727 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvXsk_Csht2POEgrkhf_6rancorNtB6_5ErrorNtB6_6Source3newNtNtNtNtCsgYAxyi3ZRSt_4rkyv10validation7archive9validator21InvalidSubtreePointerECs8EvorvD8vmS_4ruff(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #8 !guid !1728 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvXsk_Csht2POEgrkhf_6rancorNtB6_5ErrorNtB6_6Source3newNtNtNtNtCsgYAxyi3ZRSt_4rkyv10validation7archive9validator21RangePoppedOutOfOrderECs8EvorvD8vmS_4ruff() unnamed_addr #8 !guid !1729 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvXsk_Csht2POEgrkhf_6rancorNtB6_5ErrorNtB6_6Source3newNtNtNtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5table6verify13InvalidLengthECs8EvorvD8vmS_4ruff(i64 noundef %0, i64 noundef %1) unnamed_addr #8 !guid !1730 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvXsk_Csht2POEgrkhf_6rancorNtB6_5ErrorNtB6_6Source3newNtNvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtBZ_17ArchivedHashTablepE19serialize_from_iter17InvalidLoadFactorECs8EvorvD8vmS_4ruff(i64 noundef %0, i64 noundef %1) unnamed_addr #8 !guid !1731 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsr_NtNtCs6nZeqdiIoCH_10serde_core2de5implsNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB8_11Deserialize11deserializeINtNtB8_5value23BorrowedStrDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !guid !1732 {
bb.a:
  tail call void @_RINvXsq_NtNtCs6nZeqdiIoCH_10serde_core2de5implsNtB6_14PathBufVisitorNtB8_7Visitor9visit_strNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsr_NtNtCs6nZeqdiIoCH_10serde_core2de5implsNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB8_11Deserialize11deserializeNtNtCsd1Od0hvlDsw_4toml5value5ValueECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 !guid !1733 {
bb.a:
  tail call void @_RINvXsh_NtCsd1Od0hvlDsw_4toml5valueNtB6_5ValueNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNtBK_5impls14PathBufVisitorECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsr_NtNtCs6nZeqdiIoCH_10serde_core2de5implsNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB8_11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer3key15KeyDeserializerECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 !guid !1734 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RINvXsz_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18CowStrDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer15deserialize_anyNtNtB8_5impls14PathBufVisitorECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvYINtCsht2POEgrkhf_6rancor8StrategyINtNtCsgYAxyi3ZRSt_4rkyv3ser10SerializerNtNtNtNtBF_4util5alloc11aligned_vec10AlignedVecNtNtNtBD_9allocator5alloc11ArenaHandleNtNtNtBD_7sharing5alloc5ShareENtB6_5ErrorEINtNtBD_6writer9WriterExtB35_E15resolve_alignedINtNtNtBF_11collections4util12EntryAdapterINtNtNtNtBF_5impls4core4with10RefWrapperNtNtBF_4with8AsStringNtNtCs2AWtUsOyxgP_3std4path7PathBufEIB4J_NtB5o_8IdentityNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEB4I_B6h_EEB6F_(ptr noalias noundef align 8 dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1735 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = tail call noundef i64 @_RNvXs_NtCsgYAxyi3ZRSt_4rkyv3serINtB4_10SerializerNtNtNtNtB6_4util5alloc11aligned_vec10AlignedVecNtNtNtB4_9allocator5alloc11ArenaHandleNtNtNtB4_7sharing5alloc5ShareENtNtB4_6writer10Positional3posCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvXs_NtNtCsgYAxyi3ZRSt_4rkyv11collections4utilINtB4_12EntryAdapterINtNtNtNtB8_5impls4core4with10RefWrapperNtNtB8_4with8AsStringNtNtCs2AWtUsOyxgP_3std4path7PathBufEIB14_NtB1J_8IdentityNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEB13_B2C_ENtNtB8_6traits7Archive7resolveB30_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull %i.b, i64 noundef %i.c)
  %i.e = call { ptr, i64 } @_RNvMs0_NtCsgYAxyi3ZRSt_4rkyv5placeINtB5_5PlaceINtNtNtB7_11collections4util5EntryNtNtB7_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE8as_sliceB1O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = call noundef zeroext i1 @_RNvXs0_NtCsgYAxyi3ZRSt_4rkyv3serINtB5_10SerializerNtNtNtNtB7_4util5alloc11aligned_vec10AlignedVecNtNtNtB5_9allocator5alloc11ArenaHandleNtNtNtB5_7sharing5alloc5ShareEINtNtB5_6writer6WriterNtCsht2POEgrkhf_6rancor5ErrorE5writeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %. = zext i1 %i.h to i64
  %i.i = insertvalue { i64, i64 } poison, i64 %., 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %i.c, 1
  ret { i64, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvYINtCsht2POEgrkhf_6rancor8StrategyINtNtCsgYAxyi3ZRSt_4rkyv3ser10SerializerNtNtNtNtBF_4util5alloc11aligned_vec10AlignedVecNtNtNtBD_9allocator5alloc11ArenaHandleNtNtNtBD_7sharing5alloc5ShareENtB6_5ErrorEINtNtBD_6writer9WriterExtB35_E15resolve_alignedNtNtCs8EvorvD8vmS_4ruff5cache12PackageCacheEB46_(ptr noalias noundef align 8 dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1736 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [20 x i8], align 4                ; 5 uses
  %i.c = tail call noundef i64 @_RNvXs_NtCsgYAxyi3ZRSt_4rkyv3serINtB4_10SerializerNtNtNtNtB6_4util5alloc11aligned_vec10AlignedVecNtNtNtB4_9allocator5alloc11ArenaHandleNtNtNtB4_7sharing5alloc5ShareENtNtB4_6writer10Positional3posCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvXs7_NtCs8EvorvD8vmS_4ruff5cacheNtB5_12PackageCacheNtNtCsgYAxyi3ZRSt_4rkyv6traits7Archive7resolve(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.b, i64 noundef %i.c)
  %i.e = call { ptr, i64 } @_RNvMs0_NtCsgYAxyi3ZRSt_4rkyv5placeINtB5_5PlaceNtNtCs8EvorvD8vmS_4ruff5cache20ArchivedPackageCacheE8as_sliceBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = call noundef zeroext i1 @_RNvXs0_NtCsgYAxyi3ZRSt_4rkyv3serINtB5_10SerializerNtNtNtNtB7_4util5alloc11aligned_vec10AlignedVecNtNtNtB5_9allocator5alloc11ArenaHandleNtNtNtB5_7sharing5alloc5ShareEINtNtB5_6writer6WriterNtCsht2POEgrkhf_6rancor5ErrorE5writeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %. = zext i1 %i.h to i64
  %i.i = insertvalue { i64, i64 } poison, i64 %., 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %i.c, 1
  ret { i64, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvYINtCsht2POEgrkhf_6rancor8StrategyINtNtCsgYAxyi3ZRSt_4rkyv3ser10SerializerNtNtNtNtBF_4util5alloc11aligned_vec10AlignedVecNtNtNtBD_9allocator5alloc11ArenaHandleNtNtNtBD_7sharing5alloc5ShareENtB6_5ErrorEINtNtBD_6writer9WriterExtB35_E9align_forINtNtNtBF_11collections4util5EntryNtNtBF_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEEB51_(ptr noalias noundef align 8 dereferenceable(80) %0) unnamed_addr #0 !guid !1737 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NtCsgYAxyi3ZRSt_4rkyv3serINtB4_10SerializerNtNtNtNtB6_4util5alloc11aligned_vec10AlignedVecNtNtNtB4_9allocator5alloc11ArenaHandleNtNtNtB4_7sharing5alloc5ShareENtNtB4_6writer10Positional3posCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  %i.b = sub i64 0, %i.a
  %i.c = and i64 %i.b, 7
  %i.d = tail call noundef zeroext i1 @_RNvXs0_NtCsgYAxyi3ZRSt_4rkyv3serINtB5_10SerializerNtNtNtNtB7_4util5alloc11aligned_vec10AlignedVecNtNtNtB5_9allocator5alloc11ArenaHandleNtNtNtB5_7sharing5alloc5ShareEINtNtB5_6writer6WriterNtCsht2POEgrkhf_6rancor5ErrorE5writeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef range(i64 0, 8) %i.c)
  br i1 %i.d, label %_RNvYINtCsht2POEgrkhf_6rancor8StrategyINtNtCsgYAxyi3ZRSt_4rkyv3ser10SerializerNtNtNtNtBE_4util5alloc11aligned_vec10AlignedVecNtNtNtBC_9allocator5alloc11ArenaHandleNtNtNtBC_7sharing5alloc5ShareENtB5_5ErrorEINtNtBC_6writer9WriterExtB34_E5alignCs8EvorvD8vmS_4ruff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvXs_NtCsgYAxyi3ZRSt_4rkyv3serINtB4_10SerializerNtNtNtNtB6_4util5alloc11aligned_vec10AlignedVecNtNtNtB4_9allocator5alloc11ArenaHandleNtNtNtB4_7sharing5alloc5ShareENtNtB4_6writer10Positional3posCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  br label %_RNvYINtCsht2POEgrkhf_6rancor8StrategyINtNtCsgYAxyi3ZRSt_4rkyv3ser10SerializerNtNtNtNtBE_4util5alloc11aligned_vec10AlignedVecNtNtNtBC_9allocator5alloc11ArenaHandleNtNtNtBC_7sharing5alloc5ShareENtB5_5ErrorEINtNtBC_6writer9WriterExtB34_E5alignCs8EvorvD8vmS_4ruff.exit

_RNvYINtCsht2POEgrkhf_6rancor8StrategyINtNtCsgYAxyi3ZRSt_4rkyv3ser10SerializerNtNtNtNtBE_4util5alloc11aligned_vec10AlignedVecNtNtNtBC_9allocator5alloc11ArenaHandleNtNtNtBC_7sharing5alloc5ShareENtB5_5ErrorEINtNtBC_6writer9WriterExtB34_E5alignCs8EvorvD8vmS_4ruff.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvYINtCsht2POEgrkhf_6rancor8StrategyINtNtCsgYAxyi3ZRSt_4rkyv3ser10SerializerNtNtNtNtBF_4util5alloc11aligned_vec10AlignedVecNtNtNtBD_9allocator5alloc11ArenaHandleNtNtNtBD_7sharing5alloc5ShareENtB6_5ErrorEINtNtBD_6writer9WriterExtB35_E9align_forNtNtCs8EvorvD8vmS_4ruff5cache20ArchivedPackageCacheEB3Z_(ptr noalias noundef align 8 dereferenceable(80) %0) unnamed_addr #0 !guid !1738 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NtCsgYAxyi3ZRSt_4rkyv3serINtB4_10SerializerNtNtNtNtB6_4util5alloc11aligned_vec10AlignedVecNtNtNtB4_9allocator5alloc11ArenaHandleNtNtNtB4_7sharing5alloc5ShareENtNtB4_6writer10Positional3posCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  %i.b = sub i64 0, %i.a
  %i.c = and i64 %i.b, 3
  %i.d = tail call noundef zeroext i1 @_RNvXs0_NtCsgYAxyi3ZRSt_4rkyv3serINtB5_10SerializerNtNtNtNtB7_4util5alloc11aligned_vec10AlignedVecNtNtNtB5_9allocator5alloc11ArenaHandleNtNtNtB5_7sharing5alloc5ShareEINtNtB5_6writer6WriterNtCsht2POEgrkhf_6rancor5ErrorE5writeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef range(i64 0, 8) %i.c)
  br i1 %i.d, label %_RNvYINtCsht2POEgrkhf_6rancor8StrategyINtNtCsgYAxyi3ZRSt_4rkyv3ser10SerializerNtNtNtNtBE_4util5alloc11aligned_vec10AlignedVecNtNtNtBC_9allocator5alloc11ArenaHandleNtNtNtBC_7sharing5alloc5ShareENtB5_5ErrorEINtNtBC_6writer9WriterExtB34_E5alignCs8EvorvD8vmS_4ruff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvXs_NtCsgYAxyi3ZRSt_4rkyv3serINtB4_10SerializerNtNtNtNtB6_4util5alloc11aligned_vec10AlignedVecNtNtNtB4_9allocator5alloc11ArenaHandleNtNtNtB4_7sharing5alloc5ShareENtNtB4_6writer10Positional3posCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  br label %_RNvYINtCsht2POEgrkhf_6rancor8StrategyINtNtCsgYAxyi3ZRSt_4rkyv3ser10SerializerNtNtNtNtBE_4util5alloc11aligned_vec10AlignedVecNtNtNtBC_9allocator5alloc11ArenaHandleNtNtNtBC_7sharing5alloc5ShareENtB5_5ErrorEINtNtBC_6writer9WriterExtB34_E5alignCs8EvorvD8vmS_4ruff.exit

_RNvYINtCsht2POEgrkhf_6rancor8StrategyINtNtCsgYAxyi3ZRSt_4rkyv3ser10SerializerNtNtNtNtBE_4util5alloc11aligned_vec10AlignedVecNtNtNtBC_9allocator5alloc11ArenaHandleNtNtNtBC_7sharing5alloc5ShareENtB5_5ErrorEINtNtBC_6writer9WriterExtB34_E5alignCs8EvorvD8vmS_4ruff.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsg7jhnslYu1x_5rayon3vec13DrainProducerTRNtNtCs2AWtUsOyxgP_3std4path4PathNtNtCs8EvorvD8vmS_4ruff5cache5CacheEENtNtNtB8_4iter8plumbing8Producer9fold_withINtNtB1Y_3map9MapFolderINtNtB1Y_10try_reduce15TryReduceFolderINvNvNtB1Y_16ParallelIterator12try_for_each2okINtNtCs4NRVxsYgnAr_4core6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEEB4j_ENCNvXs3_B1l_NtB1l_15PackageCacheMapNtB1l_13PackageCaches7persist0EEB1n_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1739 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw [136 x i8], ptr %1, i64 %2
  call void @_RINvXs6_NtNtCsg7jhnslYu1x_5rayon4iter3mapINtB6_9MapFolderINtNtB8_10try_reduce15TryReduceFolderINvNvNtB8_16ParallelIterator12try_for_each2okINtNtCs4NRVxsYgnAr_4core6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEEB2d_ENCNvXs3_NtCs8EvorvD8vmS_4ruff5cacheNtB3y_15PackageCacheMapNtB3y_13PackageCaches7persist0EINtNtB8_8plumbing6FolderTRNtNtCs2AWtUsOyxgP_3std4path4PathNtB3y_5CacheEE12consume_iterINtNtBa_3vec10SliceDrainB5f_EEB3A_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRRNtNtB9_4path4PathECs8EvorvD8vmS_4ruff(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality !guid !1756 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !1757
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !1757
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !1757
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !1757
  %.val.i = load ptr, ptr %1, align 8, !noalias !1758, !nonnull !4, !noundef !4 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.h, align 8, !noalias !1758, !noundef !4 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  switch i64 %.val1.i, label %.lr.ph.preheader.split.i.split.i.i [
    i64 0, label %._crit_edge.i.i.i
    i64 1, label %._crit_edge.loopexit.peel.begin.thread.i.i.i
    i64 2, label %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i
  ]

.lr.ph.preheader.split.i.split.i.i:               ; preds = %bb.a
  %i.i = add i64 %.val1.i, -3                     ; 2 uses
  br label %.lr.ph.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.i.i: ; preds = %bb.e
  %2 = add i64 %.val1.i, -1                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.r
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !1759, !noalias !1760, !noundef !4
  %i.l = icmp eq i8 %i.k, 47
  br i1 %i.l, label %bb.b, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i: ; preds = %bb.a
  %3 = load i8, ptr %.val.i, align 1, !alias.scope !1759, !noalias !1760, !noundef !4
  %4 = icmp eq i8 %3, 47
  br i1 %4, label %.thread.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i: ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i
  %5 = phi i64 [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ], [ %2, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i ] ; 2 uses
  %6 = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ], [ %i.r, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i ]
  %7 = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ], [ %.sroa.012.2.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i ]
  %8 = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ], [ %.sroa.0.1.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i ]
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %5
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !alias.scope !1759, !noalias !1760
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i

bb.b:                                             ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i
  %.not.i.i = icmp ult i64 %i.i, %.sroa.0.1.i.i.i
  br i1 %.not.i.i, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i64 %i.r, %.sroa.0.1.i.i.i       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.1.i.i.i
  %i.o = add i64 %i.m, %.sroa.012.2.i.i.i         ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.m)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c, %bb.b, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i
  %9 = phi i64 [ %i.r, %bb.c ], [ %i.r, %bb.b ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ]
  %i.q = phi i64 [ %2, %bb.c ], [ %2, %bb.b ], [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ] ; 4 uses
  %.sroa.012.3.i.peel.i.i = phi i64 [ %i.p, %bb.c ], [ %.sroa.012.2.i.i.i, %bb.b ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i ]
  %10 = sub nuw i64 %.val1.i, %i.q
  %11 = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.q ; 2 uses
  %12 = icmp eq i64 %10, 1
  %13 = load i8, ptr %11, align 1, !alias.scope !1759, !noalias !1760, !noundef !4 ; 2 uses
  %14 = icmp eq i8 %13, 46                        ; 2 uses
  br i1 %12, label %20, label %15

15:                                               ; preds = %.thread.i.i
  br i1 %14, label %16, label %21

16:                                               ; preds = %15
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 1
  %18 = load i8, ptr %17, align 1, !alias.scope !1759, !noalias !1760, !noundef !4
  %19 = icmp eq i8 %18, 47
  br i1 %19, label %22, label %21

20:                                               ; preds = %.thread.i.i
  br i1 %14, label %22, label %21

21:                                               ; preds = %20, %16, %15
  br label %22

22:                                               ; preds = %21, %20, %16
  %.sroa.024.0.i.peel.i.i = phi i64 [ 1, %20 ], [ 0, %21 ], [ 1, %16 ]
  %23 = add i64 %.sroa.024.0.i.peel.i.i, %i.q
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i

._crit_edge.loopexit.peel.begin.i.peel.next.i.i:  ; preds = %22, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i
  %24 = phi i64 [ %i.q, %22 ], [ %5, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i ]
  %25 = phi i64 [ %9, %22 ], [ %6, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i ] ; 2 uses
  %26 = phi i8 [ %13, %22 ], [ %.pre.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i ]
  %.sroa.012.2.i.peel.i.i = phi i64 [ %.sroa.012.3.i.peel.i.i, %22 ], [ %7, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i ] ; 3 uses
  %.sroa.0.1.i.peel.i.i = phi i64 [ %23, %22 ], [ %8, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i ] ; 4 uses
  %27 = add nuw i64 %25, 2                        ; 8 uses
  %28 = icmp eq i8 %26, 47
  br i1 %28, label %31, label %._crit_edge.i.i.i

._crit_edge.loopexit.peel.begin.thread.i.i.i:     ; preds = %bb.a
  %29 = load i8, ptr %.val.i, align 1, !alias.scope !1759, !noalias !1760, !noundef !4
  %30 = icmp eq i8 %29, 47
  br i1 %30, label %.thread50.i.i.i, label %._crit_edge.i.i.i

31:                                               ; preds = %._crit_edge.loopexit.peel.begin.i.peel.next.i.i
  %.not.i.i.i = icmp ult i64 %25, %.sroa.0.1.i.peel.i.i
  br i1 %.not.i.i.i, label %37, label %32

32:                                               ; preds = %31
  %33 = sub nuw i64 %24, %.sroa.0.1.i.peel.i.i    ; 2 uses
  %34 = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.1.i.peel.i.i
  %35 = add i64 %33, %.sroa.012.2.i.peel.i.i      ; 2 uses
  %36 = tail call noundef i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %34, i64 noundef %33)
  br label %37

37:                                               ; preds = %32, %31
  %.sroa.012.3.peel.i.i.i = phi i64 [ %36, %32 ], [ %.sroa.012.2.i.peel.i.i, %31 ] ; 6 uses
  %38 = sub nuw i64 %.val1.i, %27
  %39 = getelementptr inbounds nuw i8, ptr %.val.i, i64 %27 ; 3 uses
  %40 = icmp eq i64 %38, 1
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %.not29.peel.i.i.i = icmp eq i64 %.val1.i, %27
  br i1 %.not29.peel.i.i.i, label %.thread50.i.i.i, label %42

42:                                               ; preds = %41
  %43 = load i8, ptr %39, align 1, !alias.scope !1759, !noalias !1760, !noundef !4
  %44 = icmp eq i8 %43, 46
  br i1 %44, label %45, label %.thread50.i.i.i

45:                                               ; preds = %42
  %46 = getelementptr inbounds nuw i8, ptr %39, i64 1
  %47 = load i8, ptr %46, align 1, !alias.scope !1759, !noalias !1760, !noundef !4
  %48 = icmp eq i8 %47, 47
  br i1 %48, label %53, label %.thread50.i.i.i

49:                                               ; preds = %37
  %50 = load i8, ptr %39, align 1, !alias.scope !1759, !noalias !1760, !noundef !4
  %51 = icmp eq i8 %50, 46
  br i1 %51, label %53, label %.thread50.i.i.i

.thread50.i.i.i:                                  ; preds = %49, %45, %42, %41, %._crit_edge.loopexit.peel.begin.thread.i.i.i
  %.sroa.012.3.peel47.i.i.i = phi i64 [ %.sroa.012.3.peel.i.i.i, %49 ], [ %.sroa.012.3.peel.i.i.i, %45 ], [ %.sroa.012.3.peel.i.i.i, %42 ], [ %.sroa.012.3.peel.i.i.i, %41 ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i ]
  %52 = phi i64 [ %27, %49 ], [ %27, %45 ], [ %27, %42 ], [ %.val1.i, %41 ], [ 1, %._crit_edge.loopexit.peel.begin.thread.i.i.i ]
  br label %53

53:                                               ; preds = %.thread50.i.i.i, %49, %45
  %.sroa.012.3.peel46.i.i.i = phi i64 [ %.sroa.012.3.peel.i.i.i, %49 ], [ %.sroa.012.3.peel47.i.i.i, %.thread50.i.i.i ], [ %.sroa.012.3.peel.i.i.i, %45 ]
  %54 = phi i64 [ %27, %49 ], [ %52, %.thread50.i.i.i ], [ %27, %45 ]
  %.sroa.024.0.peel.i.i.i = phi i64 [ 1, %49 ], [ 0, %.thread50.i.i.i ], [ 1, %45 ]
  %55 = add i64 %.sroa.024.0.peel.i.i.i, %54
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %53, %._crit_edge.loopexit.peel.begin.thread.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i, %bb.a
  %.sroa.012.0.lcssa.i.i.i = phi i64 [ %.val1.i, %bb.a ], [ %.sroa.012.3.peel46.i.i.i, %53 ], [ %.sroa.012.2.i.peel.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.val1.i, %bb.a ], [ %55, %53 ], [ %.sroa.0.1.i.peel.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i ] ; 3 uses
  %56 = icmp ult i64 %.sroa.0.0.lcssa.i.i.i, %.val1.i
  br i1 %56, label %bb.d, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRRNtNtCs2AWtUsOyxgP_3std4path4PathNtB8_4Hash4hashNtNtNtBK_4hash6random13DefaultHasherECs8EvorvD8vmS_4ruff.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.preheader.split.i.split.i.i
  %.sroa.0.034.i.i.i = phi i64 [ %.sroa.0.1.i.i.i, %bb.e ], [ 0, %.lr.ph.preheader.split.i.split.i.i ] ; 4 uses
  %.sroa.012.033.i.i.i = phi i64 [ %.sroa.012.2.i.i.i, %bb.e ], [ 0, %.lr.ph.preheader.split.i.split.i.i ] ; 3 uses
  %.sroa.019.032.i.i.i = phi i64 [ %i.r, %bb.e ], [ 0, %.lr.ph.preheader.split.i.split.i.i ] ; 5 uses
  %i.r = add nuw i64 %.sroa.019.032.i.i.i, 1      ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.019.032.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !1759, !noalias !1760, !noundef !4
  %i.u = icmp eq i8 %i.t, 47
  br i1 %i.u, label %bb.f, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.v = sub nuw i64 %.val1.i, %.sroa.0.0.lcssa.i.i.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.lcssa.i.i.i
  %i.x = add i64 %i.v, %.sroa.012.0.lcssa.i.i.i   ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.v)
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRRNtNtCs2AWtUsOyxgP_3std4path4PathNtB8_4Hash4hashNtNtNtBK_4hash6random13DefaultHasherECs8EvorvD8vmS_4ruff.exit

bb.e:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %.sroa.012.2.i.i.i = phi i64 [ %.sroa.012.3.i.i.i, %bb.k ], [ %.sroa.012.033.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i = phi i64 [ %i.aj, %bb.k ], [ %.sroa.0.034.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.019.032.i.i.i, %i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i, label %.lr.ph.i.i.i, !llvm.loop !1748

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.z = icmp ugt i64 %.sroa.019.032.i.i.i, %.sroa.0.034.i.i.i
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.012.3.i.i.i = phi i64 [ %i.ai, %bb.h ], [ %.sroa.012.033.i.i.i, %bb.f ]
  %i.aa = sub nuw i64 %.val1.i, %i.r
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.r ; 2 uses
  %i.ac = icmp eq i64 %i.aa, 1
  %i.ad = load i8, ptr %i.ab, align 1, !alias.scope !1759, !noalias !1760, !noundef !4
  %i.ae = icmp eq i8 %i.ad, 46                    ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.af = sub nuw i64 %.sroa.019.032.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.034.i.i.i
  %i.ah = add i64 %i.af, %.sroa.012.033.i.i.i     ; 2 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.af)
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.l, %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j, %bb.i
  %.sroa.024.0.i.i.i = phi i64 [ 1, %bb.i ], [ 0, %bb.j ], [ 1, %bb.m ]
  %i.aj = add i64 %.sroa.024.0.i.i.i, %i.r
  br label %bb.e

bb.l:                                             ; preds = %bb.g
  br i1 %i.ae, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !1759, !noalias !1760, !noundef !4
  %i.am = icmp eq i8 %i.al, 47
  br i1 %i.am, label %bb.k, label %bb.j

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRRNtNtCs2AWtUsOyxgP_3std4path4PathNtB8_4Hash4hashNtNtNtBK_4hash6random13DefaultHasherECs8EvorvD8vmS_4ruff.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %.sroa.012.1.i.i.i = phi i64 [ %i.y, %bb.d ], [ %.sroa.012.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1762
  store i64 %.sroa.012.1.i.i.i, ptr %i.a, align 8, !noalias !1762
  call fastcc void @_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !1759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1762
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !1763
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1763
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !1763 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1763
  %i.an = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !1763, !noundef !4
  %i.ao = shl i64 %i.an, 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1763, !noundef !4
  %i.ar = or i64 %i.ao, %i.aq                     ; 2 uses
  %i.as = xor i64 %i.ar, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.at = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.au = add i64 %i.as, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.aw = xor i64 %i.av, %i.at                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 16)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.au, %i.aw                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 17)
  %i.bd = xor i64 %i.ba, %i.bc                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 21)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = xor i64 %i.bb, %i.ar
  %i.bi = xor i64 %i.bg, 255
  %i.bj = add i64 %i.bh, %i.bd                    ; 3 uses
  %i.bk = add i64 %i.bf, %i.bi                    ; 2 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 13)
  %i.bm = xor i64 %i.bj, %i.bl                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 16)
  %i.bo = xor i64 %i.bn, %i.bk                    ; 3 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32)
  %i.bq = add i64 %i.bm, %i.bk                    ; 3 uses
  %i.br = add i64 %i.bo, %i.bp                    ; 2 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 17)
  %i.bt = xor i64 %i.bq, %i.bs                    ; 3 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 21)
  %i.bv = xor i64 %i.bu, %i.br                    ; 3 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bx = add i64 %i.bt, %i.br                    ; 3 uses
  %i.by = add i64 %i.bv, %i.bw                    ; 2 uses
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 13)
  %i.ca = xor i64 %i.bz, %i.bx                    ; 3 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 16)
  %i.cc = xor i64 %i.cb, %i.by                    ; 3 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 32)
  %i.ce = add i64 %i.ca, %i.by                    ; 3 uses
  %i.cf = add i64 %i.cc, %i.cd                    ; 2 uses
  %i.cg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 17)
  %i.ch = xor i64 %i.cg, %i.ce                    ; 3 uses
  %i.ci = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 21)
  %i.cj = xor i64 %i.ci, %i.cf                    ; 3 uses
  %i.ck = tail call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 32)
  %i.cl = add i64 %i.ch, %i.cf
  %i.cm = add i64 %i.cj, %i.ck                    ; 2 uses
  %i.cn = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.co = xor i64 %i.cn, %i.cl                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 16)
  %i.cq = xor i64 %i.cp, %i.cm                    ; 2 uses
  %i.cr = add i64 %i.co, %i.cm                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 17)
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 21)
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 32)
  %i.cv = xor i64 %i.ct, %i.cs
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = xor i64 %i.cw, %i.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.cx
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss12_1__NtBa_12IsortOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1g_7Visitor10visit_boolNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i1 noundef zeroext %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1764 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = zext i1 %1 to i8
  store i8 %i.d, ptr %i.c, align 1
  store i8 0, ptr %i.b, align 8
  call void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @274)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss12_1__NtBa_12IsortOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1g_7Visitor14visit_byte_bufNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1765 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  invoke void @_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss12_1__NtB8_12IsortOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1e_7Visitor11visit_bytesNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(24) %1) #28
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss12_1__NtBa_12IsortOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1g_7Visitor8visit_u8NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i8 noundef %1) unnamed_addr #0 !guid !1766 {
bb.a:
  %i.a = zext i8 %1 to i64
  tail call void @_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss12_1__NtB8_12IsortOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1e_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i64 noundef %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss12_1__NtBa_12IsortOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1g_7Visitor9visit_f64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, double noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1767 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %1, ptr %i.c, align 8
  store i8 3, ptr %i.b, align 8
  call void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @274)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss12_1__NtBa_12IsortOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1g_7Visitor9visit_i64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1768 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  store i8 2, ptr %i.b, align 8
  call void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @274)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss12_1__NtBa_12IsortOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1g_7Visitor9visit_mapQNtNtCsd1Od0hvlDsw_4toml5value15MapDeserializerECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(128) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1769 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 11, ptr %i.b, align 8
  call void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @274)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss12_1__NtBa_12IsortOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1g_7Visitor9visit_seqQNtNtCsd1Od0hvlDsw_4toml5value15SeqDeserializerECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1770 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 8
  call void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @274)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!1561 = !{i64 8543403355473802788}
!1562 = !{i64 -4273902308318465013}
!1563 = !{i64 -4204323564288318970}
!1564 = distinct !{!1564, i1 true, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types19ParametrizeNameTypeEECs8EvorvD8vmS_4ruff"}
!1565 = distinct !{!1565, !1564, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types19ParametrizeNameTypeEECs8EvorvD8vmS_4ruff: argument 1"}
!1566 = distinct !{!1566, !1564, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types19ParametrizeNameTypeEECs8EvorvD8vmS_4ruff: argument 0"}
!1567 = distinct !{!1567, i1 true, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types19ParametrizeNameTypeENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1568 = distinct !{!1568, !1567, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types19ParametrizeNameTypeENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 1"}
!1569 = distinct !{!1569, !1567, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types19ParametrizeNameTypeENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1570 = !{i64 4597347852344498628}
!1571 = !{!1566, !1565}
!1572 = !{!1566}
!1573 = !{!1568}
!1574 = !{!1568, !1565}
!1575 = !{!1569, !1566, !1565}
!1576 = !{i64 -2152336947259691416}
!1577 = !{i64 -4513653797346578948}
!1578 = !{i64 4061513335957521058}
!1579 = !{i64 -5944809554651412764}
!1580 = distinct !{!1580, i1 true, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types21ParametrizeValuesTypeEECs8EvorvD8vmS_4ruff"}
!1581 = distinct !{!1581, !1580, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types21ParametrizeValuesTypeEECs8EvorvD8vmS_4ruff: argument 1"}
!1582 = distinct !{!1582, !1580, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types21ParametrizeValuesTypeEECs8EvorvD8vmS_4ruff: argument 0"}
!1583 = distinct !{!1583, i1 true, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types21ParametrizeValuesTypeENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1584 = distinct !{!1584, !1583, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types21ParametrizeValuesTypeENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 1"}
!1585 = distinct !{!1585, !1583, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types21ParametrizeValuesTypeENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1586 = !{i64 4995200581635516663}
!1587 = !{!1582, !1581}
!1588 = !{!1582}
!1589 = !{!1584}
!1590 = !{!1584, !1581}
!1591 = !{!1585, !1582, !1581}
!1592 = !{i64 -3566764474783364408}
!1593 = !{i64 -6848354581416593120}
!1594 = !{i64 -6437154727348384487}
!1595 = !{i64 -870869729602059313}
!1596 = distinct !{!1596, i1 true, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types24ParametrizeValuesRowTypeEECs8EvorvD8vmS_4ruff"}
!1597 = distinct !{!1597, !1596, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types24ParametrizeValuesRowTypeEECs8EvorvD8vmS_4ruff: argument 1"}
!1598 = distinct !{!1598, !1596, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types24ParametrizeValuesRowTypeEECs8EvorvD8vmS_4ruff: argument 0"}
!1599 = distinct !{!1599, i1 true, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types24ParametrizeValuesRowTypeENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1600 = distinct !{!1600, !1599, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types24ParametrizeValuesRowTypeENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 1"}
!1601 = distinct !{!1601, !1599, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types24ParametrizeValuesRowTypeENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1602 = !{i64 -1794787880319070006}
!1603 = !{!1598, !1597}
!1604 = !{!1598}
!1605 = !{!1600}
!1606 = !{!1600, !1597}
!1607 = !{!1601, !1598, !1597}
!1608 = !{i64 -269024911533964571}
!1609 = !{i64 -7344321211315431878}
!1610 = !{i64 -5866654249257167567}
!1611 = !{i64 3959519850160383980}
!1612 = distinct !{!1612, i1 true, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings10StrictnessEECs8EvorvD8vmS_4ruff"}
!1613 = distinct !{!1613, !1612, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings10StrictnessEECs8EvorvD8vmS_4ruff: argument 1"}
!1614 = distinct !{!1614, !1612, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings10StrictnessEECs8EvorvD8vmS_4ruff: argument 0"}
!1615 = distinct !{!1615, i1 true, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings10StrictnessENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1616 = distinct !{!1616, !1615, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings10StrictnessENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 1"}
!1617 = distinct !{!1617, !1615, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings10StrictnessENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1618 = !{i64 -3970570414761296725}
!1619 = !{!1614, !1613}
!1620 = !{!1614}
!1621 = !{!1616}
!1622 = !{!1616, !1613}
!1623 = !{!1617, !1614, !1613}
!1624 = !{i64 8327214884108896349}
!1625 = !{i64 -1644484877507911356}
!1626 = !{i64 784603921940041143}
!1627 = !{i64 -2230433006499664951}
!1628 = distinct !{!1628, i1 true, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorEECs8EvorvD8vmS_4ruff"}
!1629 = distinct !{!1629, !1628, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorEECs8EvorvD8vmS_4ruff: argument 1"}
!1630 = distinct !{!1630, !1628, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorEECs8EvorvD8vmS_4ruff: argument 0"}
!1631 = distinct !{!1631, i1 true, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1632 = distinct !{!1632, !1631, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 1"}
!1633 = distinct !{!1633, !1631, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1634 = !{i64 5446006845566421418}
!1635 = !{!1630, !1629}
!1636 = !{!1630}
!1637 = !{!1632}
!1638 = !{!1632, !1629}
!1639 = !{!1633, !1630, !1629}
!1640 = !{i64 -144089380379220560}
!1641 = !{i64 7980661368620493327}
!1642 = !{i64 3541517299686832028}
!1643 = !{i64 3408179212936730287}
!1644 = distinct !{!1644, i1 true, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionEECs8EvorvD8vmS_4ruff"}
!1645 = distinct !{!1645, !1644, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionEECs8EvorvD8vmS_4ruff: argument 1"}
!1646 = distinct !{!1646, !1644, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionEECs8EvorvD8vmS_4ruff: argument 0"}
!1647 = distinct !{!1647, i1 true, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1648 = distinct !{!1648, !1647, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 1"}
!1649 = distinct !{!1649, !1647, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1650 = !{i64 -7316523706075478588}
!1651 = !{!1646, !1645}
!1652 = !{!1646}
!1653 = !{!1648}
!1654 = !{!1648, !1645}
!1655 = !{!1649, !1646, !1645}
!1656 = !{i64 -8341702740507819737}
!1657 = !{i64 -4756624971782330081}
!1658 = !{i64 -2086214545567504617}
!1659 = !{i64 1339669655276496955}
!1660 = distinct !{!1660, i1 true, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settings20RelativeImportsOrderEECs8EvorvD8vmS_4ruff"}
!1661 = distinct !{!1661, !1660, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settings20RelativeImportsOrderEECs8EvorvD8vmS_4ruff: argument 1"}
!1662 = distinct !{!1662, !1660, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settings20RelativeImportsOrderEECs8EvorvD8vmS_4ruff: argument 0"}
!1663 = distinct !{!1663, i1 true, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settings20RelativeImportsOrderENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1664 = distinct !{!1664, !1663, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settings20RelativeImportsOrderENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 1"}
!1665 = distinct !{!1665, !1663, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settings20RelativeImportsOrderENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1666 = !{i64 9049043608525126020}
!1667 = !{!1662, !1661}
!1668 = !{!1662}
!1669 = !{!1664}
!1670 = !{!1664, !1661}
!1671 = !{!1665, !1662, !1661}
!1672 = !{i64 -2471137624416583487}
!1673 = !{i64 6083298020045294087}
!1674 = !{i64 -6353502888312361780}
!1675 = !{i64 -5906320616248049096}
!1676 = distinct !{!1676, i1 true, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorbEECs8EvorvD8vmS_4ruff"}
!1677 = distinct !{!1677, !1676, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorbEECs8EvorvD8vmS_4ruff: argument 1"}
!1678 = distinct !{!1678, !1676, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorbEECs8EvorvD8vmS_4ruff: argument 0"}
!1679 = distinct !{!1679, i1 true, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorbENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1680 = distinct !{!1680, !1679, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorbENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 1"}
!1681 = distinct !{!1681, !1679, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorbENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1682 = !{i64 4351187565132902408}
!1683 = !{!1678, !1677}
!1684 = !{!1678}
!1685 = !{!1680}
!1686 = !{!1680, !1677}
!1687 = !{!1681, !1678, !1677}
!1688 = !{i64 5562881727742222159}
!1689 = !{i64 5012117072613172122}
!1690 = !{i64 6086831567470904774}
!1691 = !{i64 5732824905733256475}
!1692 = distinct !{!1692, i1 true, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitoriEECs8EvorvD8vmS_4ruff"}
!1693 = distinct !{!1693, !1692, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitoriEECs8EvorvD8vmS_4ruff: argument 1"}
!1694 = distinct !{!1694, !1692, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitoriEECs8EvorvD8vmS_4ruff: argument 0"}
!1695 = distinct !{!1695, i1 true, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitoriENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1696 = distinct !{!1696, !1695, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitoriENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 1"}
!1697 = distinct !{!1697, !1695, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitoriENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1698 = !{i64 -442638285805369050}
!1699 = !{!1694, !1693}
!1700 = !{!1694}
!1701 = !{!1696}
!1702 = !{!1696, !1693}
!1703 = !{!1697, !1694, !1693}
!1704 = !{i64 -8560167341063077093}
!1705 = !{i64 -6624044960554473485}
!1706 = !{i64 4065557946639391528}
!1707 = !{i64 8576868961528735188}
!1708 = distinct !{!1708, i1 true, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorjEECs8EvorvD8vmS_4ruff"}
!1709 = distinct !{!1709, !1708, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorjEECs8EvorvD8vmS_4ruff: argument 1"}
!1710 = distinct !{!1710, !1708, !"_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer18deserialize_optionINtNtB8_5impls13OptionVisitorjEECs8EvorvD8vmS_4ruff: argument 0"}
!1711 = distinct !{!1711, i1 true, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorjENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1712 = distinct !{!1712, !1711, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorjENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 1"}
!1713 = distinct !{!1713, !1711, !"_RINvYINtNtNtCs6nZeqdiIoCH_10serde_core2de5impls13OptionVisitorjENtB8_7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1714 = !{i64 8402249289556724679}
!1715 = !{!1710, !1709}
!1716 = !{!1710}
!1717 = !{!1712}
!1718 = !{!1712, !1709}
!1719 = !{!1713, !1710, !1709}
!1720 = !{i64 -1566919796673256697}
!1721 = !{i64 -2498333146087464108}
!1722 = !{i64 1064150872765775541}
!1723 = !{i64 8347503041701404125}
!1724 = !{i64 -2902393080494907732}
!1725 = !{i64 149508527166999532}
!1726 = !{i64 -7830905094895570070}
!1727 = !{i64 447038196081146691}
!1728 = !{i64 2646836736134321788}
!1729 = !{i64 -4698328073409551769}
!1730 = !{i64 -8473569700392514377}
!1731 = !{i64 3174457749384377902}
!1732 = !{i64 5108623397408912404}
!1733 = !{i64 -3820363622725091213}
!1734 = !{i64 -5507287391631984251}
!1735 = !{i64 -1161404984541909505}
!1736 = !{i64 8007635907868068481}
!1737 = !{i64 4363270371755310372}
!1738 = !{i64 -429391894687212086}
!1739 = !{i64 3865261744387858424}
!1740 = distinct !{!1740, i1 true, !"_RNvXs_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB4_11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher12build_hasher"}
!1741 = distinct !{!1741, !1740, !"_RNvXs_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB4_11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher12build_hasher: argument 0"}
!1742 = distinct !{!1742, i1 true, !"_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRRNtNtCs2AWtUsOyxgP_3std4path4PathNtB8_4Hash4hashNtNtNtBK_4hash6random13DefaultHasherECs8EvorvD8vmS_4ruff"}
!1743 = distinct !{!1743, !1742, !"_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRRNtNtCs2AWtUsOyxgP_3std4path4PathNtB8_4Hash4hashNtNtNtBK_4hash6random13DefaultHasherECs8EvorvD8vmS_4ruff: argument 0"}
!1744 = distinct !{!1744, i1 true, !"_RINvXs1h_NtCs2AWtUsOyxgP_3std4pathNtB7_4PathNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECs8EvorvD8vmS_4ruff"}
!1745 = distinct !{!1745, !1744, !"_RINvXs1h_NtCs2AWtUsOyxgP_3std4pathNtB7_4PathNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECs8EvorvD8vmS_4ruff: argument 0"}
!1746 = distinct !{!1746, i1 true, !"_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCs2AWtUsOyxgP_3std4path4PathNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECs8EvorvD8vmS_4ruff"}
!1747 = distinct !{!1747, !1746, !"_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtCs2AWtUsOyxgP_3std4path4PathNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECs8EvorvD8vmS_4ruff: argument 0"}
!1748 = distinct !{!1748, !1761}
!1749 = distinct !{!1749, !1744, !"_RINvXs1h_NtCs2AWtUsOyxgP_3std4pathNtB7_4PathNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECs8EvorvD8vmS_4ruff: argument 1"}
!1750 = distinct !{!1750, i1 true, !"_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher11write_usizeCs8EvorvD8vmS_4ruff"}
!1751 = distinct !{!1751, !1750, !"_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher11write_usizeCs8EvorvD8vmS_4ruff: argument 0"}
!1752 = distinct !{!1752, i1 true, !"_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher6finish"}
!1753 = distinct !{!1753, !1752, !"_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher6finish: argument 0"}
!1754 = distinct !{!1754, i1 true, !"_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs8EvorvD8vmS_4ruff"}
!1755 = distinct !{!1755, !1754, !"_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs8EvorvD8vmS_4ruff: argument 0"}
!1756 = !{i64 8572466397922810523}
!1757 = !{!1741}
!1758 = !{!1743}
!1759 = !{!1745}
!1760 = !{!1747, !1743}
!1761 = !{!"llvm.loop.peeled.count", i32 2}
!1762 = !{!1751, !1745, !1749, !1747, !1743}
!1763 = !{!1755, !1753}
!1764 = !{i64 -3330290713668054152}
!1765 = !{i64 -2386986440534728338}
!1766 = !{i64 77260872671207015}
!1767 = !{i64 989540466513504884}
!1768 = !{i64 -3041125357613016709}
!1769 = !{i64 2514642725241610089}
!1770 = !{i64 -359380143087181491}
!1771 = !{i64 8972886972491687027}
!1772 = !{i64 -7960837853832305788}
!1773 = !{i64 8713164970481449756}
!1774 = !{i64 3456623403244882536}
!1775 = !{i64 3347245861625283054}
!1776 = !{i64 -8496826378905855195}
!1777 = !{i64 -6497305037411169678}
!1778 = !{i64 -2354696065199317730}
!1779 = !{i64 -6018387886763157050}
!1780 = distinct !{!1780, i1 true, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss15_1__NtB8_13McCabeOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1781 = distinct !{!1781, !1780, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss15_1__NtB8_13McCabeOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1782 = !{i64 -3444163258468141959}
!1783 = !{!1781}
!1784 = !{i64 3314802302209175538}
!1785 = !{i64 -1018083670421299457}
!1786 = !{i64 -2990178288102256233}
!1787 = !{i64 6663796019184941399}
!1788 = !{i64 -3570905160344521416}
!1789 = !{i64 3813536306423555818}
!1790 = !{i64 -2267573529442618107}
!1791 = !{i64 -7638657587759162390}
!1792 = !{i64 2106448840590617197}
!1793 = !{i64 -600547935285272086}
!1794 = !{i64 -5390522435653869264}
!1795 = !{i64 -1865421250886401766}
!1796 = !{i64 -2101321927139340519}
!1797 = distinct !{!1797, i1 true, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss18_1__NtB8_17Pep8NamingOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1j_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1798 = distinct !{!1798, !1797, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss18_1__NtB8_17Pep8NamingOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1j_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1799 = !{i64 2073299576854647116}
!1800 = !{!1798}
!1801 = !{i64 4209893712683889058}
!1802 = !{i64 -4861672479122963260}
!1803 = !{i64 -7841462725330937914}
!1804 = !{i64 -5098566178628283627}
!1805 = !{i64 5895149566351641111}
!1806 = !{i64 7108997200102680853}
!1807 = !{i64 -8647231098746653762}
!1808 = !{i64 1950084814375359368}
!1809 = !{i64 8176924690284679842}
!1810 = !{i64 -5519880027873690246}
!1811 = !{i64 -1100481623128143858}
!1812 = !{i64 -6463415138224891642}
!1813 = !{i64 4046043939836149944}
!1814 = !{i64 3118688985290868467}
!1815 = !{i64 4749544685429245154}
!1816 = !{i64 -3825702184156543707}
!1817 = !{i64 -7902207142002328062}
!1818 = !{i64 5198039772890627030}
!1819 = !{i64 4312459164977312042}
!1820 = !{i64 -5849039663624792091}
!1821 = !{i64 3312267360680206493}
!1822 = !{i64 3877990521634694129}
!1823 = !{i64 -5134567345753122752}
!1824 = !{i64 1716194884261590080}
!1825 = !{i64 -845930713311601456}
!1826 = distinct !{!1826, i1 true, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB8_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1k_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1827 = distinct !{!1827, !1826, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB8_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1k_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1828 = !{i64 4478124437467314051}
!1829 = !{!1827}
!1830 = !{i64 1671123507364270587}
!1831 = !{i64 -5550702583520012494}
!1832 = !{i64 8653365582686448680}
!1833 = !{i64 1752203331546801932}
!1834 = !{i64 8139909316259148882}
!1835 = !{i64 -2418798942179898283}
!1836 = !{i64 -8109879221253550557}
!1837 = !{i64 -3140593547244676781}
!1838 = !{i64 5277808760562383828}
!1839 = !{i64 8676934751760359801}
!1840 = !{i64 5484930575162742964}
!1841 = !{i64 5364237392413707572}
!1842 = !{i64 6711992167049943132}
!1843 = distinct !{!1843, i1 true, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1e_1__NtB8_17PydocstyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1j_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1844 = distinct !{!1844, !1843, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1e_1__NtB8_17PydocstyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1j_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1845 = !{i64 -7373166895466327982}
!1846 = !{!1844}
!1847 = !{i64 2556196994634544360}
!1848 = !{i64 6287370211184533944}
!1849 = !{i64 -1023121383704246143}
!1850 = !{i64 -3448301116870728622}
!1851 = !{i64 5767142549748800819}
!1852 = !{i64 -2273879689022722667}
!1853 = !{i64 -219298492105415574}
!1854 = !{i64 856181589707596321}
!1855 = !{i64 -3162714232330714180}
!1856 = !{i64 3092072146533031968}
!1857 = !{i64 5240852570744745603}
!1858 = !{i64 -986758957776819719}
!1859 = !{i64 -1345639851691173235}
!1860 = !{i64 -1641005816482663024}
!1861 = !{i64 7386029830255736900}
!1862 = !{i64 5953173324443165133}
!1863 = !{i64 -811600125801162263}
!1864 = !{i64 -5787004547253265214}
!1865 = !{i64 4208476790427445472}
!1866 = !{i64 -8595354607863495679}
!1867 = !{i64 732957935077343225}
!1868 = !{i64 -6802188542954733178}
!1869 = !{i64 109413561883634085}
!1870 = !{i64 3850077185880196248}
!1871 = !{i64 8901484719284828189}
!1872 = distinct !{!1872, i1 true, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1k_1__NtB8_15PyflakesOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1873 = distinct !{!1873, !1872, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1k_1__NtB8_15PyflakesOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1874 = !{i64 -6226095957196930141}
!1875 = !{!1873}
!1876 = !{i64 436278832244014524}
!1877 = !{i64 6984779053160334353}
!1878 = !{i64 7300981282489602569}
!1879 = !{i64 3943570950327512844}
!1880 = !{i64 3272439004200455378}
!1881 = !{i64 -884686714352583122}
!1882 = !{i64 -3863565198373018029}
!1883 = !{i64 -5811585000347328208}
!1884 = !{i64 6612881589469623041}
!1885 = !{i64 -3735323374460059411}
!1886 = !{i64 705888900408382845}
!1887 = !{i64 -2210539323030700101}
!1888 = !{i64 4353032204696950366}
!1889 = distinct !{!1889, i1 true, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1n_1__NtB8_13PylintOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1890 = distinct !{!1890, !1889, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1n_1__NtB8_13PylintOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1f_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1891 = !{i64 -8693562031234578998}
!1892 = !{!1890}
!1893 = !{i64 -1668658423281430504}
!1894 = !{i64 -6041307940216752244}
!1895 = !{i64 4075736455857311484}
!1896 = !{i64 -7203746312364048195}
!1897 = !{i64 -3929799036811213972}
!1898 = !{i64 -7420244310287614637}
!1899 = !{i64 -1577861257282176595}
!1900 = !{i64 3488627331716107358}
!1901 = !{i64 7395415590041845271}
!1902 = !{i64 -4379696531188748255}
!1903 = !{i64 7355463460139116620}
!1904 = !{i64 -5690776997301643488}
!1905 = !{i64 -8477162679123647533}
!1906 = distinct !{!1906, i1 true, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1q_1__NtB8_16PyUpgradeOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1i_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
!1907 = distinct !{!1907, !1906, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1q_1__NtB8_16PyUpgradeOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1i_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff: argument 0"}
!1908 = !{i64 6031060935893230293}
!1909 = !{!1907}
!1910 = !{i64 -6100698283998286505}
!1911 = !{i64 8031853789437992177}
!1912 = !{i64 1703201446408042281}
!1913 = !{i64 -7011678229436663437}
!1914 = !{i64 3411725829439180495}
!1915 = !{i64 -8585775753046380292}
!1916 = !{i64 -5295494658293216398}
!1917 = !{i64 -5030305531897994353}
!1918 = !{i64 2743035484527049787}
!1919 = !{i64 8899476118706350208}
!1920 = !{i64 4200450632838839247}
!1921 = !{i64 -5543175007783770197}
!1922 = !{i64 -2734707344333280749}
!1923 = !{i64 622255316792520452}
!1924 = !{i64 -2936092244317196289}
!1925 = !{i64 5708832730256092673}
!1926 = !{i64 7183626359512279352}
!1927 = !{i64 -5034895466958871516}
!1928 = !{i64 -2290890080878487450}
!1929 = !{i64 -1455060406306135301}
!1930 = !{i64 -2127320823792571267}
!1931 = !{i64 7443637134982406933}
!1932 = !{i64 -4672447171995437633}
!1933 = !{i64 401545871437632729}
!1934 = !{i64 5677114702770054369}
!1935 = !{i64 -7199671368562831394}
!1936 = !{i64 -524131313340346350}
!1937 = !{i64 -891032447328131948}
!1938 = !{i64 7681879673794987424}
!1939 = !{i64 -2067921064346965604}
!1940 = !{i64 5417445584591731849}
!1941 = !{i64 5930477623589610157}
!1942 = !{i64 3510827799773348000}
!1943 = !{i64 5861924769604706453}
!1944 = !{i64 3332481327365855961}
!1945 = !{i64 -1710782966703271704}
!1946 = !{i64 -1955355493600966542}
!1947 = !{i64 4648590589115669914}
!1948 = !{i64 -3560222919348920502}
!1949 = !{i64 -3368467606433359627}
!1950 = !{i64 6838997401160126411}
!1951 = !{i64 7884493521331116646}
!1952 = !{i64 -2398585821527634278}
!1953 = !{i64 -1258168716150574796}
!1954 = !{i64 -2217818637990268991}
!1955 = !{i64 -1433025046690552418}
!1956 = !{i64 -9144203123555924823}
!1957 = !{i64 -1910679329224374894}
!1958 = !{i64 9037057790028259513}
!1959 = !{i64 8063272990675114315}
!1960 = !{i64 -7233635194084301351}
!1961 = distinct !{!1961, i1 true, !"_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssA_1__NtB8_30Flake8ImplicitStrConcatOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1v_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff"}
end_hunk_1

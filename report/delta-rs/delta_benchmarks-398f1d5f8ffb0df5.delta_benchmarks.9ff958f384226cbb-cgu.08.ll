inline.NumInlined: 2863
inline.NumDeleted: 638
begin_hunk_0_@_RINvXs5F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10CastFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  store i64 %i.d, ptr %i.a, align 8, !noalias !1943
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1943
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(72) %1) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi i64 [ 48, %bb.b ], [ 8, %bb.a ]
  %.sink = getelementptr inbounds nuw i8, ptr %0, i64 %.pn
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sink, ptr noalias noundef align 8 dereferenceable(72) %1) #33
  ret void
}
end_hunk_0

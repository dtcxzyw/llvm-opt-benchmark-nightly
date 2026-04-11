inline.NumInlined: 12000
inline.NumDeleted: 3498
begin_hunk_0_@_RINvXs5F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10CastFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %storemerge.i.i = phi i8 [ 64, %bb.c ], [ %i.k, %bb.b ]
  store i128 %.sink, ptr %1, align 16, !alias.scope !10399
  store i8 %storemerge.i.i, ptr %i.c, align 16, !alias.scope !10399
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, %bb.d
  %.pn = phi i64 [ 48, %bb.d ], [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit ]
  %.sink1 = getelementptr inbounds nuw i8, ptr %0, i64 %.pn
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sink1, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  ret void
}
end_hunk_0
begin_hunk_1_@_RINvXs5F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10CastFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  store i64 %i.d, ptr %i.a, align 8, !noalias !10400
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10400
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(72) %1) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi i64 [ 48, %bb.b ], [ 8, %bb.a ]
  %.sink = getelementptr inbounds nuw i8, ptr %0, i64 %.pn
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sink, ptr noalias noundef align 8 dereferenceable(72) %1) #57
  ret void
}
end_hunk_1
begin_hunk_2_@_RINvXs5F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10CastFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBU_6HasherEL_ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.b = icmp ne i64 %i.a, -9223372036854775787   ; 2 uses
  %i.c = zext i1 %i.b to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.c)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBV_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(16) %1) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi i64 [ 48, %bb.b ], [ 8, %bb.a ]
  %.sink = getelementptr inbounds nuw i8, ptr %0, i64 %.pn
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBV_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sink, ptr noalias noundef align 8 dereferenceable(16) %1) #57
  ret void
}
end_hunk_2

inline.NumInlined: 10989
inline.NumDeleted: 2487
begin_hunk_0_@_RINvXs5F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10CastFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %storemerge.i.i = phi i8 [ 64, %bb.c ], [ %i.k, %bb.b ]
  store i128 %.sink, ptr %1, align 16, !alias.scope !6851
  store i8 %storemerge.i.i, ptr %i.c, align 16, !alias.scope !6851
  br i1 %i.b, label %bb.d, label %3

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 16 dereferenceable(48) %1) #61
  br label %bb.e

3:                                                ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %3, %bb.d
  %.sink1 = phi ptr [ %4, %3 ], [ %2, %bb.d ]
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sink1, ptr noalias noundef align 16 dereferenceable(48) %1) #61
  ret void
}
end_hunk_0
begin_hunk_1_@_RINvXs5F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10CastFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  store i64 %i.d, ptr %i.a, align 8, !noalias !6852
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6852
  br i1 %i.c, label %bb.b, label %3

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(72) %1) #61
  br label %bb.c

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %3, %bb.b
  %.sink = phi ptr [ %4, %3 ], [ %2, %bb.b ]
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sink, ptr noalias noundef align 8 dereferenceable(72) %1) #61
  ret void
}
end_hunk_1
begin_hunk_2_@_RINvXs5F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10CastFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBU_6HasherEL_ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.b = icmp ne i64 %i.a, -9223372036854775787   ; 2 uses
  %i.c = zext i1 %i.b to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.c)
  br i1 %i.b, label %bb.b, label %3

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBV_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(16) %1) #61
  br label %bb.c

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %3, %bb.b
  %.sink = phi ptr [ %4, %3 ], [ %2, %bb.b ]
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBV_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sink, ptr noalias noundef align 8 dereferenceable(16) %1) #61
  ret void
}
end_hunk_2
begin_hunk_3_@_RINvXsuU_NtCs4lawaffTVVK_9sqlparser3astNtB7_10SchemaNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  store i8 %storemerge.i.i, ptr %i.e, align 16, !alias.scope !32848
  switch i64 %i.d, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %2
    i64 2, label %bb.h
  ]

end_hunk_3
begin_hunk_4_@_RINvXsuU_NtCs4lawaffTVVK_9sqlparser3astNtB7_10SchemaNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bi = icmp eq ptr %i.bh, %i.bf
  br i1 %i.bi, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph8

2:                                                ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.h:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32868)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_4
begin_hunk_5_@_RINvXsuU_NtCs4lawaffTVVK_9sqlparser3astNtB7_10SchemaNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cl = icmp eq ptr %i.ck, %i.ci
  br i1 %i.cl, label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split, label %.lr.ph

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.sink.split: ; preds = %.lr.ph, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i1, %2
  %.sink = phi ptr [ %3, %2 ], [ %4, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i1 ], [ %4, %.lr.ph ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sink, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

end_hunk_5
begin_hunk_6_@_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  %i.pd = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast10UnionFieldINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2G_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ow, i64 noundef %i.oy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.pa, i64 noundef %i.pc) #61
  br label %_RNvXs1E_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_12BinaryLengthNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

tailrecurse.backedge:                             ; preds = %.lr.ph, %bb.bf, %.lr.ph
  %.sink527 = phi i64 [ 16, %bb.bf ], [ 8, %.lr.ph ], [ 8, %.lr.ph ] ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.tr253, i64 %.sink527
  %2 = getelementptr inbounds nuw i8, ptr %.tr119254, i64 %.sink527
  %.tr119.be = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.tr.be = load ptr, ptr %i.pe, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.pf = load i8, ptr %.tr.be, align 8, !range !1588, !noundef !3 ; 3 uses
  %i.pg = load i8, ptr %.tr119.be, align 8, !range !1588, !noundef !3 ; 2 uses
  %i.ph = icmp eq i8 %i.pf, %i.pg
end_hunk_6

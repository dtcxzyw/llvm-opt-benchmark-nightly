inline.NumInlined: 7791
inline.NumDeleted: 3011
begin_hunk_0_@_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryeIBN_NtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14119)
  %.idx.i.i.i = mul nuw nsw i64 %.val5, 96
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 %.idx.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14122)
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !14125, !noalias !14126, !nonnull !16, !align !134, !noundef !16 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core:bb.a

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.g
  %i.ay = getelementptr i8, ptr %i.am, i64 -16
  %.val6.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !17327, !nonnull !16, !noundef !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i) ]
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %.val6.i.i.i.i, i64 %.val8.i), !noalias !17327
  %.not10.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
end_hunk_1

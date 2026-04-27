inline.NumInlined: 6907
inline.NumDeleted: 2175
begin_hunk_0_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods4callTReRBC_EECs7p2uQeJxui2_9deltalake:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val7 = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtBa_8instance5BoundNtB6_5PyAnyENtB6_12PyAnyMethods7getattr5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %.val7)
  ret void
}
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtCs7p2uQeJxui2_9deltalake13PyTransactionEB1P_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 11), !noalias !20116 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_1
begin_hunk_2_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEB1P_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 13), !noalias !20124 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_2
begin_hunk_3_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtCs7p2uQeJxui2_9deltalake21RawDeltaTableMetaDataEB1P_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 21), !noalias !20132 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_3
begin_hunk_4_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileEB1R_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 15), !noalias !20140 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_4
begin_hunk_5_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamEB1R_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 18), !noalias !20148 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_5
begin_hunk_6_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEB1R_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 22), !noalias !20156 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_6
begin_hunk_7_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEB1R_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 14), !noalias !20164 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_7
begin_hunk_8_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEB1R_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 14), !noalias !20172 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_8
begin_hunk_9_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeEB1R_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 10), !noalias !20180 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_9
begin_hunk_10_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtNtCs7p2uQeJxui2_9deltalake6schema13PrimitiveTypeEB1R_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 13), !noalias !20188 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_10
begin_hunk_11_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtNtCs7p2uQeJxui2_9deltalake6schema5FieldEB1R_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 5), !noalias !20196 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_11
begin_hunk_12_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtNtCs7p2uQeJxui2_9deltalake6schema7MapTypeEB1R_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7), !noalias !20204 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_12
begin_hunk_13_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaEB1R_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 6), !noalias !20212 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_13
begin_hunk_14_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtNtCs7p2uQeJxui2_9deltalake6schema9ArrayTypeEB1R_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 9), !noalias !20220 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_14
begin_hunk_15_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods9add_classNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesEB1R_:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !144, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 13), !noalias !20228 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods3add5inner(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.j, ptr noundef nonnull %.val)
end_hunk_15

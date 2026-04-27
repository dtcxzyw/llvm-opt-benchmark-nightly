inline.NumInlined: 189
inline.NumDeleted: 131
begin_hunk_0_@_ZN4LIEF3ELF23SymbolVersionDefinitionC2ERKS1_:bb.a
  br i1 %.not24, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #16 ; 3 uses
  store ptr %3, ptr %i.n, align 8
  store ptr %3, ptr %2, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.u
  store ptr %i.x, ptr %i.w, align 8
  %.pre = load ptr, ptr %i.o, align 8
  %.pre17 = load ptr, ptr %i.p, align 8
end_hunk_0

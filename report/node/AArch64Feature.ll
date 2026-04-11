inline.NumInlined: 282
inline.NumDeleted: 213
begin_hunk_0_@_ZN4LIEF3ELF14AArch64Feature6createERNS_12BinaryStreamE:bb.a
.lr.ph:                                           ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit
  %.064 = phi i32 [ %i.q, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit ], [ %i.m, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ] ; 4 uses
  %.sroa.032.063 = phi ptr [ %.sroa.032.1, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit ], [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ] ; 15 uses
  %.sroa.12.062 = phi ptr [ %.sroa.12.1.a, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit ], [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ] ; 10 uses
  %.sroa.25.061 = phi ptr [ %.sroa.25.1, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit ], [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ] ; 4 uses
  %i.o = sub i32 0, %.064
  %i.p = and i32 %.064, %i.o                      ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4LIEF3ELF14AArch64Feature6createERNS_12BinaryStreamE:bb.a

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %.sroa.12.062, align 4
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.12.062, i64 4
  br label %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_ZN4LIEF3ELF14AArch64Feature6createERNS_12BinaryStreamE:bb.a
  br label %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %3 = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.not.i17.i.i.i = icmp eq ptr %.sroa.032.063, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

end_hunk_2
begin_hunk_3_@_ZN4LIEF3ELF14AArch64Feature6createERNS_12BinaryStreamE:bb.a

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %.sroa.12.062, align 4
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.12.062, i64 4
  br label %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit

bb.l:                                             ; preds = %bb.j
end_hunk_3
begin_hunk_4_@_ZN4LIEF3ELF14AArch64Feature6createERNS_12BinaryStreamE:bb.a
  br label %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i11

_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i11: ; preds = %bb.n, %_ZNKSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i8
  %5 = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.not.i17.i.i.i12 = icmp eq ptr %.sroa.032.063, null
  br i1 %.not.i17.i.i.i12, label %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i13, label %bb.o

end_hunk_4
begin_hunk_5_@_ZN4LIEF3ELF14AArch64Feature6createERNS_12BinaryStreamE:bb.a

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %.sroa.12.062, align 4
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.12.062, i64 4
  br label %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit

bb.r:                                             ; preds = %bb.p
end_hunk_5
begin_hunk_6_@_ZN4LIEF3ELF14AArch64Feature6createERNS_12BinaryStreamE:bb.a
  br label %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i19

_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i19: ; preds = %bb.t, %_ZNKSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i16
  %7 = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.not.i17.i.i.i20 = icmp eq ptr %.sroa.032.063, null
  br i1 %.not.i17.i.i.i20, label %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21, label %bb.u

end_hunk_6
begin_hunk_7_@_ZN4LIEF3ELF14AArch64Feature6createERNS_12BinaryStreamE:bb.a

_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21, %bb.q, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i13, %bb.k, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.e
  %.sroa.25.1 = phi ptr [ %.sroa.25.061, %bb.k ], [ %.sroa.25.061, %bb.e ], [ %i.ae, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.as, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i13 ], [ %i.bg, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21 ], [ %.sroa.25.061, %bb.q ] ; 2 uses
  %.sroa.12.1.a = phi ptr [ %4, %bb.k ], [ %2, %bb.e ], [ %3, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %5, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i13 ], [ %7, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21 ], [ %6, %bb.q ] ; 2 uses
  %.sroa.032.1 = phi ptr [ %.sroa.032.063, %bb.k ], [ %.sroa.032.063, %bb.e ], [ %i.ab, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ap, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i13 ], [ %i.bd, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21 ], [ %.sroa.032.063, %bb.q ] ; 2 uses
  %.not = icmp eq i32 %i.p, %.064
  br i1 %.not, label %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EED2Ev.exit24, label %.lr.ph, !llvm.loop !7

_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EED2Ev.exit24: ; preds = %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %.sroa.25.0.lcssa = phi ptr [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ], [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ %.sroa.25.1, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.12.0.lcssa = phi ptr [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ], [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ %.sroa.12.1.a, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.032.0.lcssa = phi ptr [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ], [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ %.sroa.032.1, %_ZNSt6vectorIN4LIEF3ELF14AArch64Feature7FEATUREESaIS3_EE9push_backEOS3_.exit ]
  %i.bh = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
end_hunk_7

inline.NumInlined: 716
inline.NumDeleted: 392
begin_hunk_0_@_ZN7libfsst10makeSampleEPhPS0_PmmRN6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS7_ELb1EEE:bb.a
  br label %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i.i.i.i.i, %bb.h
  %i.aq = tail call noundef ptr @_ZNK6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) ; 4 uses
  %i.ar = add i64 %4, 64                          ; 4 uses
  %i.as = icmp ugt i64 %i.ar, 1152921504606846975
  br i1 %i.as, label %.noexc54, label %bb.k
end_hunk_0
begin_hunk_1_@_ZN7libfsst10makeSampleEPhPS0_PmmRN6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS7_ELb1EEE:bb.a
bb.k:                                             ; preds = %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !96
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !93 ; 4 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
end_hunk_1
begin_hunk_2_@_ZN7libfsst10makeSampleEPhPS0_PmmRN6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS7_ELb1EEE:bb.a
  br i1 %i.ba, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !97
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ax                    ; 3 uses
  %i.bf = shl nuw nsw i64 %i.ar, 3
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21 ; 4 uses
  %i.bh = icmp sgt i64 %i.be, 0
  br i1 %i.bh, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %i.av, i64 %i.be, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.l, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.av, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.av) #23
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
end_hunk_2

inline.NumInlined: 1873
inline.NumDeleted: 1202
begin_hunk_0_@_ZN6duckdb7roaring16RoaringScanStateC2ERNS_13ColumnSegmentE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !439
end_hunk_0
begin_hunk_1_@_ZN6duckdb7roaring16RoaringScanStateC2ERNS_13ColumnSegmentE:bb.a
bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !453
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !190
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay
end_hunk_1
begin_hunk_2_@_ZN6duckdb7roaring16RoaringScanStateC2ERNS_13ColumnSegmentE:bb.a
  br i1 %i.bb, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !454
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ay
  %i.bg = shl nuw nsw i64 %spec.select, 3
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #29
          to label %.noexc66 unwind label %bb.ac  ; 4 uses

.noexc66:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %8 = load ptr, ptr %i.f, align 8, !tbaa !190    ; 4 uses
  %9 = load ptr, ptr %i.bc, align 8, !tbaa !454
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %8 to i64
  %12 = sub i64 %10, %11                          ; 2 uses
  %i.bi = icmp sgt i64 %12, 0
  br i1 %i.bi, label %bb.z, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.z:                                             ; preds = %.noexc66
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %8, i64 %12, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.z, %.noexc66
  %.not.i8.i = icmp eq ptr %8, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %8) #28
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.aa, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
end_hunk_2

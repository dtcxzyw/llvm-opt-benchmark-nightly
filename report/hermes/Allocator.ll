inline.NumInlined: 142
inline.NumDeleted: 110
begin_hunk_0_@_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm:bb.a
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %3 = sub i64 %i.z, %i.aa
  %4 = add i64 %3, -8                             ; 2 uses
  %i.an = lshr i64 %4, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ap = sub i64 %i.z, %i.aa
  %i.aq = and i64 %i.ap, -8                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.aq
  %scevgep32 = getelementptr i8, ptr %i.y, i64 %i.aq
  %bound0 = icmp ult ptr %i.al, %scevgep32
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_0
begin_hunk_1_@_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm:bb.a
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.bj = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bl = add i64 %2, %i.bj
  %i.bm = add i64 %i.bl, %i.be
  %i.bn = add i64 %i.bm, -1                       ; 2 uses
  %i.bo = urem i64 %i.bn, %2
  %i.bp = add i64 %i.bo, %i.bj
  %i.bq = sub i64 %i.bn, %i.bp                    ; 3 uses
end_hunk_1

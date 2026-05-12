inline.NumInlined: 233
inline.NumDeleted: 129
begin_hunk_0_@_ZN2v88internal23MaterializedObjectStore3SetEmNS0_12DirectHandleINS0_10FixedArrayEEE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 9 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal23MaterializedObjectStore3SetEmNS0_12DirectHandleINS0_10FixedArrayEEE:bb.a
_ZN2v88internal23MaterializedObjectStore14StackIdToIndexEm.exit.thread: ; preds = %._crit_edge.i.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.i, %_ZN2v88internal23MaterializedObjectStore14StackIdToIndexEm.exit
  %i.aq = ashr exact i64 %i.g, 3                  ; 4 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %.not.i = icmp eq ptr %i.d, %i.at
  br i1 %.not.i, label %bb.k, label %bb.j
end_hunk_1
begin_hunk_2_@_ZN2v88internal23MaterializedObjectStore3SetEmNS0_12DirectHandleINS0_10FixedArrayEEE:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #12
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
end_hunk_2

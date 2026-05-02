inline.NumInlined: 2914
inline.NumDeleted: 1522
begin_hunk_0_@"_ZNSt17_Function_handlerIFbPN8facebook5velox6memory10MemoryPoolEEZNKS2_15MemoryReclaimer16reclaimableBytesERKS3_RmE3$_0E9_M_invokeERKSt9_Any_dataOS4_":bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !834, !nonnull !77 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !74, !range !76, !noundef !77
  %i.j = and i8 %i.f, 1
  %i.k = or i8 %i.i, %i.j
  store i8 %i.k, ptr %i.h, align 1, !tbaa !74
  %.0.i.i.i.i = select i1 %i.g, i64 %i.e, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0

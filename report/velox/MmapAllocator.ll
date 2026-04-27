inline.NumInlined: 3478
inline.NumDeleted: 1648
begin_hunk_0_@_ZN8facebook5velox6memory13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationE:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.ex = and i64 %i.ek, 4503599627370495         ; 3 uses
  %i.ey = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ex, i1 true)
  %i.ez = xor i64 %i.ey, 63                       ; 2 uses
  %19 = shl nuw nsw i64 1, %i.ez
  %i.fa = icmp eq i64 %19, %i.ex
  %i.fb = shl nuw nsw i64 2, %i.ez
  %.0.i.i.i.peel = select i1 %i.fa, i64 %i.ex, i64 %i.fb
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationE:bb.a

bb.ar:                                            ; preds = %bb.aq
  %i.gx = and i64 %i.gp, 4503599627370495         ; 3 uses
  %i.gy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gx, i1 true)
  %i.gz = xor i64 %i.gy, 63                       ; 2 uses
  %20 = shl nuw nsw i64 1, %i.gz
  %i.ha = icmp eq i64 %20, %i.gx
  %i.hb = shl nuw nsw i64 2, %i.gz
  %.0.i.i.i = select i1 %i.ha, i64 %i.gx, i64 %i.hb
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6memory13MmapAllocator25freeNonContiguousInternalERNS1_10AllocationE:bb.a
  br i1 %i.z, label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.mask, i1 true)
  %i.ab = xor i64 %i.aa, 63                       ; 2 uses
  %2 = shl nuw nsw i64 1, %i.ab
  %i.ac = icmp eq i64 %2, %.mask
  %i.ad = shl nuw nsw i64 2, %i.ab
  %.0.i.i = select i1 %i.ac, i64 %.mask, i64 %i.ad
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox6memory13MmapAllocator30allocateContiguousWithoutRetryEmPNS1_10AllocationERNS1_20ContiguousAllocationEm:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %1, 4503599627370495             ; 3 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = xor i64 %i.g, 63                         ; 2 uses
  %5 = shl nuw nsw i64 1, %i.h
  %i.i = icmp eq i64 %5, %i.f
  %i.j = shl nuw nsw i64 2, %i.h
  %.0.i.i.i = select i1 %i.i, i64 %i.f, i64 %i.j
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox6memory13MmapAllocator14freeContiguousERNS1_20ContiguousAllocationE:bb.a
  br i1 %i.g, label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.i = xor i64 %i.h, 63                         ; 2 uses
  %2 = shl nuw nsw i64 1, %i.i
  %i.j = icmp eq i64 %2, %i.f
  %i.k = shl nuw nsw i64 2, %i.i
  %.0.i.i.i = select i1 %i.j, i64 %i.f, i64 %i.k
end_hunk_4

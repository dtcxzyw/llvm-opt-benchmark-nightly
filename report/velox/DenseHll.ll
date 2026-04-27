inline.NumInlined: 935
inline.NumDeleted: 340
begin_hunk_0_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE6insertEia:bb.a
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %.tr.i.i = trunc i32 %1 to i8
  %i.l = shl i8 %.tr.i.i, 2
  %i.m = and i8 %i.l, 4                           ; 2 uses
  %i.n = xor i8 %i.m, 4                           ; 2 uses
  %i.o = ashr i8 %i.k, %i.n
  %i.p = and i8 %i.o, 15                          ; 3 uses
  %i.q = zext nneg i8 %i.p to i32
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE6insertEia:bb.a
bb.r:                                             ; preds = %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit, %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit, %bb.f
  %.0 = phi i32 [ %i.e, %bb.f ], [ 15, %_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE11addOverflowEia.exit ], [ 15, %_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE17findOverflowEntryEi.exit ]
  %i.ci = trunc nuw nsw i32 %.0 to i8
  %3 = lshr exact i8 -16, %i.m
  %i.cj = xor i8 %3, -1
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.g ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE8setDeltaEia:bb.a
  %i.a = ashr i32 %1, 1
  %.tr.i = trunc i32 %1 to i8
  %i.b = shl i8 %.tr.i, 2
  %i.c = and i8 %i.b, 4                           ; 2 uses
  %i.d = xor i8 %i.c, 4
  %3 = lshr exact i8 -16, %i.c
  %i.e = xor i8 %3, -1
  %i.f = sext i32 %i.a to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE22adjustBaselineIfNeededEv:bb.a
  %i.r = load i8, ptr %i.q, align 1, !tbaa !30    ; 2 uses
  %.tr.i.i.us = trunc i32 %.038.us to i8
  %i.s = shl i8 %.tr.i.i.us, 2
  %i.t = and i8 %i.s, 4                           ; 2 uses
  %i.u = xor i8 %i.t, 4                           ; 2 uses
  %i.v = ashr i8 %i.r, %i.u
  %i.w = and i8 %i.v, 15                          ; 2 uses
  %i.x = zext nneg i8 %i.w to i32
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE22adjustBaselineIfNeededEv:bb.a
.critedge.us:                                     ; preds = %bb.e, %.preheader.us, %bb.b
  %i.z = add nsw i32 %i.x, -1                     ; 2 uses
  %i.aa = trunc nsw i32 %i.z to i8
  %1 = lshr exact i8 -16, %i.t
  %i.ab = xor i8 %1, -1
  %i.ac = and i8 %i.r, %i.ab
  store i8 %i.ac, ptr %i.q, align 1, !tbaa !30
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE6insertEia:bb.a
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %.tr.i.i = trunc i32 %1 to i8
  %i.l = shl i8 %.tr.i.i, 2
  %i.m = and i8 %i.l, 4                           ; 2 uses
  %i.n = xor i8 %i.m, 4                           ; 2 uses
  %i.o = ashr i8 %i.k, %i.n
  %i.p = and i8 %i.o, 15                          ; 3 uses
  %i.q = zext nneg i8 %i.p to i32
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE6insertEia:bb.a
bb.n:                                             ; preds = %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit, %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit, %bb.f
  %.0 = phi i32 [ %i.e, %bb.f ], [ 15, %_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE11addOverflowEia.exit ], [ 15, %_ZNK8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE17findOverflowEntryEi.exit ]
  %i.ca = trunc nuw nsw i32 %.0 to i8
  %3 = lshr exact i8 -16, %i.m
  %i.cb = xor i8 %3, -1
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !272
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.g ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE8setDeltaEia:bb.a
  %i.a = ashr i32 %1, 1
  %.tr.i = trunc i32 %1 to i8
  %i.b = shl i8 %.tr.i, 2
  %i.c = and i8 %i.b, 4                           ; 2 uses
  %i.d = xor i8 %i.c, 4
  %3 = lshr exact i8 -16, %i.c
  %i.e = xor i8 %3, -1
  %i.f = sext i32 %i.a to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE22adjustBaselineIfNeededEv:bb.a
  %i.r = load i8, ptr %i.q, align 1, !tbaa !30    ; 2 uses
  %.tr.i.i.us = trunc i32 %.038.us to i8
  %i.s = shl i8 %.tr.i.i.us, 2
  %i.t = and i8 %i.s, 4                           ; 2 uses
  %i.u = xor i8 %i.t, 4                           ; 2 uses
  %i.v = ashr i8 %i.r, %i.u
  %i.w = and i8 %i.v, 15                          ; 2 uses
  %i.x = zext nneg i8 %i.w to i32
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox6common3hll8DenseHllINS0_6memory10MemoryPoolEE22adjustBaselineIfNeededEv:bb.a
.critedge.us:                                     ; preds = %bb.e, %.preheader.us, %bb.b
  %i.z = add nsw i32 %i.x, -1                     ; 2 uses
  %i.aa = trunc nsw i32 %i.z to i8
  %1 = lshr exact i8 -16, %i.t
  %i.ab = xor i8 %1, -1
  %i.ac = and i8 %i.r, %i.ab
  store i8 %i.ac, ptr %i.q, align 1, !tbaa !30
end_hunk_9

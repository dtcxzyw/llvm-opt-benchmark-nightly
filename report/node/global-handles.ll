inline.NumInlined: 969
inline.NumDeleted: 547
begin_hunk_0_@_ZN2v88internal13GlobalHandles25IterateAllRootsForTestingEPNS_23PersistentHandleVisitorE:bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit
  %.sroa.7.012 = phi i64 [ %.sroa.7.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.06.011 = phi ptr [ %.sroa.06.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ %i.e, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.011, i64 %.sroa.7.012 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 3
  %i.j = add nsw i8 %i.i, -1
  %spec.select.i = icmp ult i8 %i.j, 2
  br i1 %spec.select.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %i.f, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i16, ptr %i.k, align 8
  %i.m = load ptr, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i16 noundef zeroext %i.l) #21, !inline_history !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.p = add i64 %.sroa.7.012, 1                  ; 2 uses
  %i.q = icmp ult i64 %i.p, 256
  br i1 %i.q, label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 8216
  %i.s = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit

_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.06.1 = phi ptr [ %.sroa.06.011, %bb.c ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.7.1 = phi i64 [ %i.p, %bb.c ], [ 0, %bb.d ]
  %.not = icmp eq ptr %.sroa.06.1, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal13GlobalHandles11RecordStatsEPNS0_9HeapStatsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef writeonly captures(none) initializes((104, 144)) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noalias !51 ; 2 uses
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit
  %i.i = phi i64 [ %i.u, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 4 uses
  %i.j = phi i64 [ %i.v, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 4 uses
  %i.k = phi i64 [ %i.w, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 4 uses
  %i.l = phi i64 [ %i.n, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ]
  %.sroa.7.021 = phi i64 [ %.sroa.7.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.015.020 = phi ptr [ %.sroa.015.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ %i.h, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.sroa.015.020, i64 %.sroa.7.021
  %i.n = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.n, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 11
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 3
  switch i8 %i.q, label %default.unreachable [
    i8 2, label %bb.b
    i8 3, label %bb.c
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.r = add i64 %i.i, 1                          ; 2 uses
  store i64 %i.r, ptr %i.b, align 8
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.s = add i64 %i.j, 1                          ; 2 uses
  store i64 %i.s, ptr %i.c, align 8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.t = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.t, ptr %i.d, align 8
  br label %bb.e

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.e:                                             ; preds = %.lr.ph, %bb.c, %bb.d, %bb.b
  %i.u = phi i64 [ %i.i, %.lr.ph ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.r, %bb.b ]
  %i.v = phi i64 [ %i.j, %.lr.ph ], [ %i.s, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %bb.b ]
  %i.w = phi i64 [ %i.k, %.lr.ph ], [ %i.k, %bb.c ], [ %i.t, %bb.d ], [ %i.k, %bb.b ]
  %i.x = add i64 %.sroa.7.021, 1                  ; 2 uses
  %i.y = icmp ult i64 %i.x, 256
  br i1 %i.y, label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 8216
  %i.aa = load ptr, ptr %i.z, align 8
  br label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit

_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit: ; preds = %bb.e, %bb.f
  %.sroa.015.1 = phi ptr [ %.sroa.015.020, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %.sroa.7.1 = phi i64 [ %i.x, %bb.e ], [ 0, %bb.f ]
  %.not = icmp eq ptr %.sroa.015.1, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14EternalHandlesD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.b
  %i.m = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPmSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #20
  br label %_ZNSt6vectorIPmSaIS0_EED2Ev.exit

_ZNSt6vectorIPmSaIS0_EED2Ev.exit:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.05.08 = phi ptr [ %i.u, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.05.08, align 8      ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 8 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14EternalHandles15IterateAllRootsEPNS0_11RootVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8
  br label %.lr.ph.i.i

._crit_edge:                                      ; preds = %.lr.ph.i.i, %bb.a
  ret void

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.015 = phi i32 [ %i.f, %.lr.ph ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %.sroa.09.014 = phi ptr [ %i.b, %.lr.ph ], [ %i.o, %.lr.ph.i.i ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.09.014, align 8     ; 2 uses
  %2 = tail call i32 @llvm.smin.i32(i32 %.015, i32 256)
  %3 = ptrtoint ptr %i.g to i64
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = load ptr, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 7, ptr noundef null, i64 %3, i64 %i.j) #21
  %i.n = add nsw i32 %.015, -256
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14EternalHandles17IterateYoungRootsEPNS0_11RootVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.05.08 = phi ptr [ %i.b, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.g = load i32, ptr %.sroa.05.08, align 4      ; 2 uses
  %i.h = ashr i32 %i.g, 8
  %i.i = sext i32 %i.h to i64
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = and i32 %i.g, 255
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 7, ptr noundef null, i64 %i.p) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 4 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14EternalHandles31PostGarbageCollectionProcessingEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.pre = load ptr, ptr %i.c, align 8             ; 2 uses
  %.pre17 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.g = ptrtoint ptr %.pre to i64
  %i.h = ptrtoint ptr %.pre17 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp ugt i64 %.1, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.l = sub nuw i64 %.1, %i.j
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.l)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.m = icmp ult i64 %.1, %i.j
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.pre17, i64 %.1 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.n, ptr %i.c, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.016 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 4 uses
  %.sroa.07.015 = phi ptr [ %i.b, %.lr.ph ], [ %i.ag, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 2 uses
  %i.o = load i32, ptr %.sroa.07.015, align 4     ; 3 uses
  %i.p = ashr i32 %i.o, 8
  %i.q = sext i32 %i.p to i64
  %i.r = load ptr, ptr %i.f, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = and i32 %i.o, 255
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = and i64 %i.x, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f
  %i.aa = and i64 %i.x, -262144
  %i.ab = inttoptr i64 %i.aa to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 262144
  %i.ac = and i64 %.sroa.0.0.copyload.i, 24
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ad = add i64 %.016, 1
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.016
  store i32 %i.o, ptr %i.af, align 4
  br label %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.f, %bb.g, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit
  %.1 = phi i64 [ %i.ad, %bb.g ], [ %.016, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.016, %bb.f ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 4 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.d
  br i1 %i.ah, label %._crit_edge, label %bb.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14EternalHandles6CreateEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEEPi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8                ; 2 uses
  %i.c = ashr i32 %i.b, 8
  %i.d = and i32 %i.b, 255                        ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt6vectorIPmSaIS0_EE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #19 ; 3 uses
  %i.i = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.g, i64 256, ptr nonnull %i.h) #21, !srcloc !54 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.l, align 8
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %i.k, align 8
  br label %_ZNSt6vectorIPmSaIS0_EE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIPmSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIPmSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #19 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  store ptr %i.h, ptr %i.ac, align 8
  %i.ad = icmp sgt i64 %i.t, 0
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorIPmSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPmSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIPmSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPmSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPmSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPmSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPmSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.t) #20
end_hunk_0

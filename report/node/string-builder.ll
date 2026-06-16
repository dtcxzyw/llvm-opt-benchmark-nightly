inline.NumInlined: 323
inline.NumDeleted: 175
begin_hunk_0_@_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_6ObjectEEE:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.j, i64 %i.k, i64 %1) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.t = load i32, ptr %i.d, align 8
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.v, align 4
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_3SmiEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(13) %0, i64 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %i.a = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  store atomic volatile i64 %1, ptr %i.h monotonic, align 8
  %i.i = load i32, ptr %i.d, align 8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN2v88internal17FixedArrayBuilder8capacityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(13) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %i.a = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ReplacementStringBuilderC2EPNS0_4HeapENS0_12DirectHandleINS0_6StringEEEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(37) initializes((0, 21), (24, 37)) %0, ptr noundef %1, ptr %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  %i.c = add i64 %i.b, -55464
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i32 noundef %3, i8 noundef zeroext 0) #13
  store ptr %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = ptrtoint ptr %2 to i64
  store i64 %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load i64, ptr %2, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = trunc i16 %i.r to i8
  %i.t = lshr i8 %i.s, 3
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %i.k, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(37) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, -55464
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8
  %i.f = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 32                        ; 2 uses
  %i.l = trunc nuw i64 %i.k to i32                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add nsw i32 %i.n, %1                     ; 2 uses
  %i.p = icmp sgt i32 %i.o, %i.l
  br i1 %i.p, label %bb.b, label %_ZN2v88internal17FixedArrayBuilder14EnsureCapacityEPNS0_7IsolateEi.exit

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %i.k, 0
  br i1 %i.q, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %1, i32 16)
  %i.r = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i32 noundef %.sroa.speculated.i, i8 noundef zeroext 0) #13
  br label %.sink.split.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.0.i = phi i32 [ %i.s, %.preheader.i ], [ %i.l, %bb.b ]
  %i.s = shl nsw i32 %.0.i, 1                     ; 3 uses
  %i.t = icmp slt i32 %i.s, %i.o
  br i1 %i.t, label %.preheader.i, label %bb.d, !llvm.loop !11

bb.d:                                             ; preds = %.preheader.i
  %i.u = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i32 noundef %i.s, i8 noundef zeroext 0) #13 ; 3 uses
  %i.v = load i32, ptr %i.m, align 8              ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = load i64, ptr %i.u, align 8              ; 2 uses
  %i.aa = add i64 %i.z, 15
  %i.ab = add i64 %i.y, 15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.ac, i64 %i.z, i64 %i.aa, i64 %i.ab, i32 noundef %i.v, i32 noundef 4) #13
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  %.sink31.i = phi ptr [ %i.r, %bb.c ], [ %i.u, %bb.d ], [ %i.u, %bb.e ]
  %i.ad = ptrtoint ptr %.sink31.i to i64
  store i64 %i.ad, ptr %i.a, align 8
  br label %_ZN2v88internal17FixedArrayBuilder14EnsureCapacityEPNS0_7IsolateEi.exit

_ZN2v88internal17FixedArrayBuilder14EnsureCapacityEPNS0_7IsolateEi.exit: ; preds = %bb.a, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ReplacementStringBuilder9AddStringENS0_12DirectHandleINS0_6StringEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(37) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  tail call void @_ZN2v88internal24ReplacementStringBuilder10AddElementENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr nonnull %1)
  %i.f = load i64, ptr %1, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = and i16 %i.l, 8
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.n, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = sub i32 536870888, %i.e
  %i.r = icmp ugt i32 %i.p, %i.q
  %i.s = add i32 %i.p, %i.e
  %storemerge.i = select i1 %i.r, i32 2147483647, i32 %i.s
  store i32 %storemerge.i, ptr %i.o, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ReplacementStringBuilder10AddElementENS0_12DirectHandleINS0_6ObjectEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(37) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, -55464
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  %i.f = load i64, ptr %.sroa.0.0.copyload.i.i.i, align 8
  %i.g = add i64 %i.f, -1                         ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 32                        ; 2 uses
  %i.l = trunc nuw i64 %i.k to i32                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load i32, ptr %i.m, align 8              ; 3 uses
  %.not = icmp slt i32 %i.n, %i.l
  br i1 %.not, label %_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %bb.c, label %.preheader.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i32 noundef 16, i8 noundef zeroext 0) #13
  br label %.sink.split.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.q, %.preheader.i.i ], [ %i.l, %bb.b ]
  %i.q = shl nsw i32 %.0.i.i, 1                   ; 3 uses
  %.not3 = icmp sgt i32 %i.q, %i.n
  br i1 %.not3, label %bb.d, label %.preheader.i.i, !llvm.loop !11

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE22NewFixedArrayWithHolesEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i32 noundef %i.q, i8 noundef zeroext 0) #13 ; 3 uses
  %i.s = load i32, ptr %i.m, align 8              ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.sink.split.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = load i64, ptr %i.r, align 8              ; 2 uses
  %i.x = add i64 %i.w, 15
  %i.y = add i64 %i.v, 15
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.z, i64 %i.w, i64 %i.x, i64 %i.y, i32 noundef %i.s, i32 noundef 4) #13
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.e, %bb.d, %bb.c
  %.sink31.i.i = phi ptr [ %i.p, %bb.c ], [ %i.r, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = ptrtoint ptr %.sink31.i.i to i64
  store i64 %i.aa, ptr %i.a, align 8
  %.pre = load i64, ptr %.sink31.i.i, align 8
  %.pre5.a = load i32, ptr %i.m, align 8
  %.pre6.a = add i64 %.pre, -1                    ; 2 uses
  %.pre7 = inttoptr i64 %.pre6.a to ptr
  br label %_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi.exit

_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi.exit: ; preds = %bb.a, %.sink.split.i.i
  %.pre-phi8 = phi ptr [ %i.h, %bb.a ], [ %.pre7, %.sink.split.i.i ]
  %.pre-phi = phi i64 [ %i.g, %bb.a ], [ %.pre6.a, %.sink.split.i.i ] ; 2 uses
  %i.ab = phi i32 [ %i.n, %bb.a ], [ %.pre5.a, %.sink.split.i.i ]
  %i.ac = load i64, ptr %1, align 8               ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre-phi8, i64 16
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  store atomic volatile i64 %i.ac, ptr %i.af monotonic, align 8
  %i.ag = trunc i64 %i.ac to i1
  br i1 %i.ag, label %bb.f, label %_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi.exit
  %i.ah = or disjoint i64 %.pre-phi, 1            ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.aj = and i64 %.pre-phi, -262144
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 262144       ; 2 uses
  %i.am = and i64 %i.al, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  %i.an = and i64 %i.al, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ao = and i64 %i.ac, -262144
  %i.ap = inttoptr i64 %i.ao to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.ap, align 262144
  %i.aq = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ah, i64 noundef %i.ai, i64 %i.ac) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ah, i64 %i.ai, i64 %i.ac) #13
  br label %_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal17FixedArrayBuilder3AddENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal24ReplacementStringBuilder14EnsureCapacityEi.exit, %bb.i, %bb.j
  %i.ar = load i32, ptr %i.m, align 8
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.m, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.at, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal24ReplacementStringBuilder8ToStringEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(37) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = add i64 %i.b, -55464
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 688
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i8, ptr %i.j, align 4, !range !8, !noundef !9
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i32 noundef %i.n, i8 noundef zeroext 0, i8 0) #13 ; 4 uses
  %.not73 = icmp eq ptr %i.o, null
  br i1 %.not73, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = load i32, ptr %i.f, align 8              ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.0.0.copyload.i20 = load ptr, ptr %i.e, align 8
  %i.y = load i64, ptr %.sroa.0.0.copyload.i20, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.i
  %.042.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.l ] ; 3 uses
  %.03041.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bc, %bb.l ] ; 4 uses
  %i.ac = sext i32 %.03041.i to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8 ; 4 uses
  %i.af = and i64 %i.ae, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ah = lshr i64 %i.ae, 32
  %i.ai = trunc nuw i64 %i.ah to i32              ; 4 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = lshr i32 %i.ai, 11
  %i.al = and i32 %i.ak, 524287
  %i.am = and i32 %i.ai, 2047
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.an = add nsw i32 %.03041.i, 1                ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ao
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = lshr i64 %i.aq, 32
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = sub nsw i32 0, %i.ai
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.033.i = phi i32 [ %i.am, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %.032.i = phi i32 [ %i.al, %bb.h ], [ %i.as, %bb.i ]
  %.131.i = phi i32 [ %.03041.i, %bb.h ], [ %i.an, %bb.i ]
  %i.au = sext i32 %.042.i to i64
  %i.av = getelementptr inbounds i8, ptr %i.s, i64 %i.au
  tail call void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.v, ptr noundef nonnull %i.av, i32 noundef %.032.i, i32 noundef %.033.i) #13
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.aw = add nsw i64 %i.ae, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = sext i32 %.042.i to i64
  %i.bb = getelementptr inbounds i8, ptr %i.s, i64 %i.ba
  tail call void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.ae, ptr noundef nonnull %i.bb, i32 noundef 0, i32 noundef %i.az) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.i = phi i32 [ %.131.i, %bb.j ], [ %.03041.i, %bb.k ]
  %.033.pn.i = phi i32 [ %.033.i, %bb.j ], [ %i.az, %bb.k ]
  %.1.i = add nsw i32 %.033.pn.i, %.042.i
  %i.bc = add nsw i32 %.2.i, 1                    ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.w
  br i1 %i.bd, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65, !llvm.loop !5

bb.m:                                             ; preds = %bb.c
  %i.be = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i32 noundef %i.n, i8 noundef zeroext 0, i8 0) #13 ; 4 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread65, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = add i64 %i.bf, -1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
end_hunk_0

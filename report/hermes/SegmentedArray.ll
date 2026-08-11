inline.NumInlined: 913
inline.NumDeleted: 300
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12decreaseSizeERNS0_7RuntimeEj:bb.a
  %i.al = load atomic i32, ptr %i.ak monotonic, align 4 ; 4 uses
  %.not = icmp ult i32 %i.ai, %i.al
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.01320.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.ao, %bb.d ] ; 2 uses
  store i64 -1970324836974592, ptr %.01320.i.i, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.aq
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !18

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %i.aj, %i.al
  br i1 %i.as, label %bb.f, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.au = shl nuw nsw i32 %i.aj, 3
  %.idx14.i = zext nneg i32 %i.au to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx14.i ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = and i64 %i.aw, 1125899902648320
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = icmp ne ptr %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.bd = load i8, ptr %i.bc, align 1, !range !21
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond.i.i.i = select i1 %i.bb, i1 %i.be, i1 false, !prof !22
  br i1 %or.cond.i.i.i, label %bb.g, label %.sink.split.i, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.bg = sub i32 %i.al, %i.aj
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bf, ptr noundef nonnull %i.av, i32 noundef %i.bg) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %bb.g, %bb.f
  store atomic i32 %i.aj, ptr %i.ak release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit: ; preds = %.sink.split.i, %bb.e, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = zext i32 %.0.i13 to i64
  %.idx14 = shl nuw nsw i64 %i.bi, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx14 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.bn = and i64 %i.bk, -4194304
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = icmp ne ptr %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.br = load i8, ptr %i.bq, align 1, !range !21
  %i.bs = trunc nuw i8 %i.br to i1
  %or.cond.i.i = select i1 %i.bp, i1 %i.bs, i1 false, !prof !22
  br i1 %or.cond.i.i, label %bb.h, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit, !prof !22

bb.h:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.bu = sub i32 %i.p, %.0.i13
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bt, ptr noundef nonnull %i.bj, i32 noundef %i.bu) #7
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit, %bb.h
  store atomic i32 %.0.i13, ptr %i.a release, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE29maxNumSegmentsWithoutOverflowEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 4194299
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 4104) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4100) %i.i, i8 0, i64 4100, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i
  %index = phi i64 [ 0, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.j = shl nuw nsw i64 %index, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store <4 x i32> splat (i32 14), ptr %i.l, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.m, align 4, !tbaa !3
  %index.next = shl i64 %index, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %index.next ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store <4 x i32> splat (i32 14), ptr %i.o, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.p, align 4, !tbaa !3
  %index.next.1 = shl i64 %index, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %index.next.1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store <4 x i32> splat (i32 14), ptr %i.r, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.s, align 4, !tbaa !3
  %index.next.2 = shl i64 %index, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %index.next.2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  store <4 x i32> splat (i32 14), ptr %i.u, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.v, align 4, !tbaa !3
  %index.next.3 = add nuw nsw i64 %index, 32      ; 2 uses
  %i.w = icmp eq i64 %index.next.3, 1024
  br i1 %i.w, label %_ZN6hermes2vm7Runtime10makeAFixedINS0_18SegmentedArrayBaseINS0_13HermesValue32EE7SegmentELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_DpOT2_.exit, label %vector.body, !llvm.loop !133

_ZN6hermes2vm7Runtime10makeAFixedINS0_18SegmentedArrayBaseINS0_13HermesValue32EE7SegmentELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_DpOT2_.exit: ; preds = %vector.body
  store i32 318771208, ptr %i.h, align 4, !tbaa !17
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment11getCellKindEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 19
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 318767104
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment2atEj(ptr noundef nonnull align 4 dereferenceable(4104) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment2atEj(ptr noundef nonnull align 4 dereferenceable(4104) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6lengthEv(ptr noundef nonnull align 4 dereferenceable(4104) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(4104) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 4 uses
  %i.c = icmp ugt i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = zext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %3 = shl nuw nsw i64 %i.g, 2
  %i.i = add nsw i64 %3, -4
  %4 = shl nuw nsw i64 %i.e, 2
  %5 = sub nsw i64 %i.i, %4                       ; 2 uses
  %6 = lshr exact i64 %5, 2
  %i.j = add nuw nsw i64 %6, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %i.k = shl i64 %n.vec, 2
  %i.l = getelementptr i8, ptr %i.f, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.n, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.sink.split, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b, %middle.block
  %.01320.i.ph = phi ptr [ %i.f, %bb.b ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i = phi ptr [ %i.p, %.lr.ph.i ], [ %.01320.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %.01320.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.h
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i, !llvm.loop !137

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i32 %2, %i.b
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = zext i32 %2 to i64
  %.idx14 = shl nuw nsw i64 %i.s, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx14 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.x = and i64 %i.u, -4194304
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = icmp ne ptr %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.ab = load i8, ptr %i.aa, align 1, !range !21
  %i.ac = trunc nuw i8 %i.ab to i1
  %or.cond.i.i = select i1 %i.z, i1 %i.ac, i1 false, !prof !22
  br i1 %or.cond.i.i, label %bb.e, label %.sink.split, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ae = sub i32 %i.b, %2
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ad, ptr noundef nonnull %i.t, i32 noundef %i.ae) #7
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.i, %middle.block, %bb.e, %bb.d
  store atomic i32 %2, ptr %i.a release, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE29slotCapacityForAllocationSizeEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i32 %0, -8
  %i.b = lshr i32 %i.a, 2
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE22allocationSizeForSlotsEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i32 %0, 2
  %i.b = add i32 %i.a, 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12slotCapacityEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = and i32 %i.a, 16777212
  %i.c = add nsw i32 %i.b, -8
  %i.d = lshr exact i32 %i.c, 2
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC2EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat($_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC5EPS3_jRNS0_11PointerBaseE) align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !141
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratoraSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.c, align 8, !tbaa !141
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratoreqERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !141
  %i.e = icmp eq i32 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorneERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !141
  %i.e = icmp ne i32 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorplEj(ptr dead_on_unwind noalias writable sret(%"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !138
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !141
  %i.d = add i32 %i.c, %2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142, !nonnull !30
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratormiEj(ptr dead_on_unwind noalias writable sret(%"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !138
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !141
  %i.d = sub i32 %i.c, %2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142, !nonnull !30
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorpLEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = load ptr, ptr %0, align 8, !tbaa !138, !noalias !143
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !141, !noalias !143
  %i.d = add i32 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142, !noalias !143, !nonnull !30
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !141
  store i32 %i.h, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratormIEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = load ptr, ptr %0, align 8, !tbaa !138, !noalias !146
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !141, !noalias !146
  %i.d = sub i32 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142, !noalias !146, !nonnull !30
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !141
  store i32 %i.h, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %0
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15createLongLivedERNS0_7RuntimeEj:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 1047529472
  br i1 %i.a, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread, label %bb.b, !prof !14

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread: ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) ; 0 uses
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 4097
  %i.d = add nsw i32 %1, -4096
  %i.e = zext i32 %i.d to i64
  %i.f = add nuw nsw i64 %i.e, 1023
  %i.g = lshr i64 %i.f, 10
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = add nuw nsw i32 %i.h, 4096
  %.0.i.i.i = select i1 %i.c, i32 %1, i32 %i.i
  %i.j = shl nuw nsw i32 %.0.i.i.i, 2
  %i.k = add nuw nsw i32 %i.j, 15                 ; 2 uses
  %i.l = and i32 %i.k, 2147483640                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !7    ; 2 uses
  %i.o = zext nneg i32 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.p, %i.r
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.t = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.s, i32 noundef %i.l) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit

bb.d:                                             ; preds = %bb.b
  store ptr %i.p, ptr %i.m, align 8, !tbaa !7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit: ; preds = %bb.c, %bb.d
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.n, %bb.d ] ; 4 uses
  store i64 0, ptr %i.u, align 4
  %i.v = and i32 %i.k, 16777208
  %i.w = or disjoint i32 %i.v, 285212672
  store i32 %i.w, ptr %i.u, align 4, !tbaa !17
  %.not = icmp eq ptr %i.u, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.f, label %bb.e, !prof !71

bb.e:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit
  %i.x = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.u, i32 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, %bb.e
  %.sroa.05.0 = phi ptr [ %i.x, %bb.e ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16392
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !155  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  %i.k = ptrtoint ptr %0 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.s = add i32 %.0.i, %2                        ; 6 uses
  %i.t = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %i.u = icmp ult i32 %i.t, 4097
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.v = load i32, ptr %1, align 4
  %i.w = and i32 %i.v, 16777212
  %i.x = add nsw i32 %i.w, -8
  %i.y = lshr exact i32 %i.x, 2
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.y, i32 4096)
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv.exit

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.z = shl i32 %i.t, 10
  %i.aa = add i32 %i.z, -4190208
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv.exit: ; preds = %bb.c, %bb.d
  %.0.i52 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %i.aa, %bb.d ]
  %.not = icmp ugt i32 %i.s, %.0.i52
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv.exit
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE26increaseSizeWithinCapacityERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %2)
  br label %bb.z

bb.f:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv.exit
  %i.ab = icmp ult i32 %.0.i, 4097
  br i1 %i.ab, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ac = shl nuw nsw i32 %.0.i, 2
  %narrow = add nuw nsw i32 %i.ac, 8              ; 2 uses
  %.not1421.i = icmp eq i32 %narrow, 16392
  br i1 %.not1421.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ad = zext nneg i32 %narrow to i64            ; 4 uses
  %i.ae = sub nsw i64 16388, %i.ad                ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader142, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 3 uses
  %i.ah = shl i64 %n.vec, 2
  %i.ai = add i64 %i.ah, %i.ad
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl nuw i64 %index, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.aj ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> splat (i32 7), ptr %gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.ak, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader142

.lr.ph.i.preheader142:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.01320.i.idx.ph = phi i64 [ %i.ad, %.lr.ph.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader142, %.lr.ph.i
  %.01320.i.idx = phi i64 [ %.01320.i.add, %.lr.ph.i ], [ %.01320.i.idx.ph, %.lr.ph.i.preheader142 ] ; 2 uses
  %.01320.i.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  store i32 7, ptr %.01320.i.ptr, align 4, !tbaa !3
  %.01320.i.add = add nuw nsw i64 %.01320.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.01320.i.add, 16392
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i, !llvm.loop !173

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i, %middle.block, %bb.g
  store atomic i32 4096, ptr %i.a release, align 4
  br label %bb.h

.critedge:                                        ; preds = %bb.f
  %i.am = add i32 %.0.i, -4097
  %i.an = lshr i32 %i.am, 10
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, %.critedge
  %i.ao = phi i32 [ %i.an, %.critedge ], [ 0, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit ] ; 5 uses
  %i.ap = add i32 %i.s, 1023
  %i.aq = add i32 %i.s, -4097
  %i.ar = lshr i32 %i.aq, 10                      ; 5 uses
  %i.as = icmp ult i32 %i.s, 4097
  %i.at = add i32 %i.s, -4096
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %i.au, 1023
  %i.aw = lshr i64 %i.av, 10
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ax, 4096
  %.0.i53 = select i1 %i.as, i32 %i.s, i32 %i.ay  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %i.bb = zext i32 %.0.i53 to i64                 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bb
  %.not1421.i54 = icmp eq i32 %i.ba, %.0.i53
  br i1 %.not1421.i54, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %bb.h
  %i.bd = zext i32 %i.ba to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bd ; 3 uses
  %3 = shl nuw nsw i64 %i.bb, 2
  %i.bf = add nsw i64 %3, -4
  %4 = shl nuw nsw i64 %i.bd, 2
  %5 = sub nsw i64 %i.bf, %4                      ; 2 uses
  %6 = lshr exact i64 %5, 2
  %i.bg = add nuw nsw i64 %6, 1                   ; 2 uses
  %min.iters.check109 = icmp ult i64 %5, 28
  br i1 %min.iters.check109, label %.lr.ph.i55.preheader141, label %vector.ph110

vector.ph110:                                     ; preds = %.lr.ph.i55.preheader
  %n.vec111 = and i64 %i.bg, 9223372036854775800  ; 3 uses
  %i.bh = shl i64 %n.vec111, 2
  %i.bi = getelementptr i8, ptr %i.be, i64 %i.bh
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next114, %vector.body112 ] ; 2 uses
  %i.bj = shl i64 %index113, 2
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.bk, align 4, !tbaa !3
  %index.next114 = add nuw i64 %index113, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next114, %n.vec111
  br i1 %i.bl, label %middle.block115, label %vector.body112, !llvm.loop !174

middle.block115:                                  ; preds = %vector.body112
  %cmp.n116 = icmp eq i64 %i.bg, %n.vec111
  br i1 %cmp.n116, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55.preheader141

.lr.ph.i55.preheader141:                          ; preds = %.lr.ph.i55.preheader, %middle.block115
  %.01320.i56.ph = phi ptr [ %i.be, %.lr.ph.i55.preheader ], [ %i.bi, %middle.block115 ]
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader141, %.lr.ph.i55
  %.01320.i56 = phi ptr [ %i.bm, %.lr.ph.i55 ], [ %.01320.i56.ph, %.lr.ph.i55.preheader141 ] ; 2 uses
  store i32 7, ptr %.01320.i56, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320.i56, i64 4 ; 2 uses
  %.not.i57 = icmp eq ptr %i.bm, %i.bc
  br i1 %.not.i57, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55, !llvm.loop !175

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58: ; preds = %.lr.ph.i55, %middle.block115, %bb.h
  store atomic i32 %.0.i53, ptr %i.a release, align 4
  %i.bn = ptrtoint ptr %1 to i64
  %i.bo = or i64 %i.bn, -281474976710656          ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 192 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !77 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 200
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !87
  %i.bv = icmp ult ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.i, label %bb.j, !prof !43

bb.i:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !77
  store i64 %i.bo, ptr %i.bs, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.j:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58
  %i.bx = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bq, i64 %i.bo) #7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i.i = phi ptr [ %i.bs, %bb.i ], [ %i.bx, %bb.j ] ; 5 uses
  %.not49 = icmp samesign ugt i32 %i.ao, %i.ar    ; 2 uses
  br i1 %.not49, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %.sroa.0.0.copyload.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.by = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16392
  %i.cb = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !155
  %i.ce = icmp eq i32 %i.cd, 7
  br i1 %i.ce, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !7  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4104 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.ch, %i.cj
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cl = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ck, i32 noundef 4104) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.cm = phi ptr [ %i.cl, %bb.m ], [ %i.cg, %bb.n ] ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4100) %i.cn, i8 0, i64 4100, i1 false)
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i
  %index121 = phi i64 [ 0, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i ], [ %index.next122.3, %vector.body120 ] ; 5 uses
  %i.co = shl nuw nsw i64 %index121, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store <4 x i32> splat (i32 14), ptr %i.cq, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.cr, align 4, !tbaa !3
  %index.next122 = shl i64 %index121, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index.next122 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  store <4 x i32> splat (i32 14), ptr %i.ct, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.cu, align 4, !tbaa !3
  %index.next122.1 = shl i64 %index121, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index.next122.1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  store <4 x i32> splat (i32 14), ptr %i.cw, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.cx, align 4, !tbaa !3
  %index.next122.2 = shl i64 %index121, 2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index.next122.2 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 120
  store <4 x i32> splat (i32 14), ptr %i.cz, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.da, align 4, !tbaa !3
  %index.next122.3 = add nuw nsw i64 %index121, 32 ; 2 uses
  %i.db = icmp eq i64 %index.next122.3, 1024
  br i1 %i.db, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i, label %vector.body120, !llvm.loop !176

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i: ; preds = %vector.body120
  store i32 318771208, ptr %i.cm, align 4, !tbaa !17
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.dc = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16392
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cb ; 3 uses
  %i.dg = ptrtoint ptr %i.cm to i64
  %i.dh = ptrtoint ptr %0 to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !20
  %i.dm = ptrtoint ptr %i.df to i64
  %i.dn = and i64 %i.dm, 1125899902648320
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = icmp eq ptr %i.dl, %i.do
  br i1 %i.dp, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit, label %bb.o, !prof !43

bb.o:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.dq, ptr noundef nonnull align 4 dereferenceable(4) %i.df, i32 %i.dj) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i, %bb.o
  store i32 %i.dj, ptr %i.df, align 4, !tbaa !155
  br label %bb.p

bb.p:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit, %bb.k, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %.not5083.not = icmp samesign ult i32 %i.ao, %i.ar
  br i1 %.not5083.not, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.du = ptrtoint ptr %0 to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %narrow107 = add nuw nsw i32 %i.ao, 1
  %i.dw = zext nneg i32 %narrow107 to i64
  %i.dx = add nuw nsw i32 %i.ar, 1
  %wide.trip.count = zext nneg i32 %i.dx to i64
  br label %bb.q

.preheader:                                       ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66, %bb.p
  br i1 %.not49, label %._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader
  %i.dy = and i32 %i.ap, 1023
  %i.dz = add nuw nsw i32 %i.dy, 1
  %i.ea = ptrtoint ptr %0 to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8489
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ee = zext nneg i32 %i.ao to i64
  %i.ef = zext nneg i32 %i.ar to i64
  %i.eg = add nuw nsw i32 %i.ar, 1
  %wide.trip.count92 = zext nneg i32 %i.eg to i64
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66
  %indvars.iv = phi i64 [ %i.dw, %.lr.ph ], [ %indvars.iv.next, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66 ] ; 2 uses
  %i.eh = load ptr, ptr %i.dr, align 8, !tbaa !7  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4104 ; 2 uses
  %i.ej = load ptr, ptr %i.ds, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i.i59 = icmp ugt ptr %i.ei, %i.ej
  br i1 %.not.i.not.i.i.i.i.i.i.i59, label %bb.r, label %bb.s, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.ek = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dt, i32 noundef 4104) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60

bb.s:                                             ; preds = %bb.q
  store ptr %i.ei, ptr %i.dr, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60: ; preds = %bb.s, %bb.r
  %i.el = phi ptr [ %i.ek, %bb.r ], [ %i.eh, %bb.s ] ; 7 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4100) %i.em, i8 0, i64 4100, i1 false)
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60
  %index127 = phi i64 [ 0, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60 ], [ %index.next128.3, %vector.body126 ] ; 5 uses
  %i.en = shl nuw nsw i64 %index127, 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store <4 x i32> splat (i32 14), ptr %i.ep, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.eq, align 4, !tbaa !3
  %index.next128 = shl i64 %index127, 2
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 %index.next128 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  store <4 x i32> splat (i32 14), ptr %i.es, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.et, align 4, !tbaa !3
  %index.next128.1 = shl i64 %index127, 2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 %index.next128.1 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 88
  store <4 x i32> splat (i32 14), ptr %i.ev, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.ew, align 4, !tbaa !3
  %index.next128.2 = shl i64 %index127, 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 %index.next128.2 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 104
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 120
  store <4 x i32> splat (i32 14), ptr %i.ey, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.ez, align 4, !tbaa !3
  %index.next128.3 = add nuw nsw i64 %index127, 32 ; 2 uses
  %i.fa = icmp eq i64 %index.next128.3, 1024
  br i1 %i.fa, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64, label %vector.body126, !llvm.loop !177

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64: ; preds = %vector.body126
  store i32 318771208, ptr %i.el, align 4, !tbaa !17
  %.sroa.0.0.copyload.i.i.i65 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.fb = and i64 %.sroa.0.0.copyload.i.i.i65, 281474976710655
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16392
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv ; 3 uses
  %i.ff = ptrtoint ptr %i.el to i64
  %i.fg = sub i64 %i.ff, %i.du
  %i.fh = trunc i64 %i.fg to i32                  ; 2 uses
  %i.fi = load ptr, ptr %i.dv, align 8, !tbaa !20
  %i.fj = ptrtoint ptr %i.fe to i64
  %i.fk = and i64 %i.fj, 1125899902648320
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = icmp eq ptr %i.fi, %i.fl
  br i1 %i.fm, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66, label %bb.t, !prof !43

bb.t:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.dt, ptr noundef nonnull align 4 dereferenceable(4) %i.fe, i32 %i.fh) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64, %bb.t
  store i32 %i.fh, ptr %i.fe, align 4, !tbaa !155
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.preheader, label %bb.q, !llvm.loop !178

._crit_edge:                                      ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit, %.preheader
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.fn = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.fo = inttoptr i64 %i.fn to ptr
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph87, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit
  %indvars.iv89 = phi i64 [ %i.ee, %.lr.ph87 ], [ %indvars.iv.next90, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit ] ; 3 uses
  %i.fp = icmp eq i64 %indvars.iv89, %i.ef
  %i.fq = select i1 %i.fp, i32 %i.dz, i32 1024    ; 6 uses
  %.sroa.0.0.copyload.i.i67 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.fr = and i64 %.sroa.0.0.copyload.i.i67, 281474976710655
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16392
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv89
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !155 ; 2 uses
  %.not.i.i.i.i.i.i68 = icmp eq i32 %i.fv, 0
  %i.fw = zext i32 %i.fv to i64
  %i.fx = add i64 %i.fw, %i.ea
  %i.fy = inttoptr i64 %i.fx to ptr
  %i.fz = select i1 %.not.i.i.i.i.i.i68, ptr null, ptr %i.fy ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  %i.gb = load atomic i32, ptr %i.ga monotonic, align 4 ; 4 uses
  %i.gc = icmp ugt i32 %i.fq, %i.gb
  br i1 %i.gc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.ge = zext i32 %i.gb to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.ge ; 3 uses
  %i.gg = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gg
  %7 = shl nuw nsw i64 %i.gg, 2
  %i.gi = add nsw i64 %7, -4
  %8 = shl nuw nsw i64 %i.ge, 2
  %9 = sub nsw i64 %i.gi, %8                      ; 2 uses
  %10 = lshr exact i64 %9, 2
  %i.gj = add nuw nsw i64 %10, 1                  ; 2 uses
  %min.iters.check131 = icmp ult i64 %9, 28
  br i1 %min.iters.check131, label %.lr.ph.i.i.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %bb.v
  %n.vec133 = and i64 %i.gj, 9223372036854775800  ; 3 uses
  %i.gk = shl i64 %n.vec133, 2
  %i.gl = getelementptr i8, ptr %i.gf, i64 %i.gk
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next137, %vector.body134 ] ; 2 uses
  %i.gm = shl i64 %index135, 2
  %next.gep136 = getelementptr i8, ptr %i.gf, i64 %i.gm ; 2 uses
  %i.gn = getelementptr i8, ptr %next.gep136, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep136, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.gn, align 4, !tbaa !3
  %index.next137 = add nuw i64 %index135, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next137, %n.vec133
  br i1 %i.go, label %middle.block138, label %vector.body134, !llvm.loop !179

middle.block138:                                  ; preds = %vector.body134
  %cmp.n139 = icmp eq i64 %i.gj, %n.vec133
  br i1 %cmp.n139, label %.sink.split.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.v, %middle.block138
  %.01320.i.i.ph = phi ptr [ %i.gf, %bb.v ], [ %i.gl, %middle.block138 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.01320.i.i = phi ptr [ %i.gp, %.lr.ph.i.i ], [ %.01320.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i.i, align 4, !tbaa !3
  %i.gp = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gp, %i.gh
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !180

bb.w:                                             ; preds = %bb.u
  %i.gq = icmp ult i32 %i.fq, %i.gb
  br i1 %i.gq, label %bb.x, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.x:                                             ; preds = %bb.w
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gs = shl nuw nsw i32 %i.fq, 2
  %.idx14.i = zext nneg i32 %i.gs to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx14.i ; 2 uses
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = load ptr, ptr %i.eb, align 8, !tbaa !20
  %i.gw = and i64 %i.gu, -4194304
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = icmp ne ptr %i.gv, %i.gx
  %i.gz = load i8, ptr %i.ec, align 1, !range !21
  %i.ha = trunc nuw i8 %i.gz to i1
  %or.cond.i.i.i = select i1 %i.gy, i1 %i.ha, i1 false, !prof !22
  br i1 %or.cond.i.i.i, label %bb.y, label %.sink.split.i, !prof !22

bb.y:                                             ; preds = %bb.x
  %i.hb = sub i32 %i.gb, %i.fq
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ed, ptr noundef nonnull %i.gt, i32 noundef %i.hb) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %middle.block138, %bb.y, %bb.x
  store atomic i32 %i.fq, ptr %i.ga release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit: ; preds = %bb.w, %.sink.split.i
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93 = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93, label %._crit_edge, label %bb.u, !llvm.loop !181

bb.z:                                             ; preds = %._crit_edge, %bb.e
  %.sroa.042.0 = phi ptr [ %1, %bb.e ], [ %i.fo, %._crit_edge ]
  ret ptr %.sroa.042.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %bb.c, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !155  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.j, 0
  %i.k = ptrtoint ptr %1 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE9segmentAtERNS0_11PointerBaseEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !155  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  %i.e = ptrtoint ptr %1 to i64
  %i.f = zext i32 %i.d to i64
  %i.g = add i64 %i.f, %i.e
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.h
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4
  %i.e = and i32 %i.d, 16777212
  %i.f = add nsw i32 %i.e, -8
  %i.g = lshr exact i32 %i.f, 2
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.g, i32 4096)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = shl i32 %i.b, 10
  %i.i = add i32 %i.h, -4190208
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %.sroa.speculated, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE20totalCapacityOfSpineEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = and i32 %i.a, 16777212
  %i.c = add nsw i32 %i.b, -8                     ; 3 uses
  %i.d = lshr exact i32 %i.c, 2
  %i.e = icmp ult i32 %i.c, 16388
  %i.f = shl i32 %i.c, 8
  %i.g = add i32 %i.f, -4190208
  %.0 = select i1 %i.e, i32 %i.d, i32 %i.g
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE19numSlotsForCapacityEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 4097
  %i.b = add i32 %0, -4096
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1023
  %i.e = lshr i64 %i.d, 10
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 4096
  %.0 = select i1 %i.a, i32 %0, i32 %i.g
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 6 uses
  %4 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.f = icmp ult i32 %i.e, 4097
  br i1 %i.f, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -4097                      ; 2 uses
  %i.h = shl i32 %i.g, 10
  %i.i = add i32 %i.h, 4096
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !155  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  %i.n = ptrtoint ptr %1 to i64
  %i.o = zext i32 %i.m to i64
  %i.p = add i64 %i.o, %i.n
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE10shrinkLeftERNS0_7RuntimeEj:bb.a
  %.0.i.i = phi i32 [ %i.x, %bb.b ], [ %i.h, %bb.a ]
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %1) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1) #7
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.sroa.010.0.copyload11 = load ptr, ptr %8, align 8 ; 3 uses
  %.sroa.717.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.717.0.copyload19 = load ptr, ptr %.sroa.717.0..sroa_idx18, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.57.0.copyload = load ptr, ptr %.sroa.57.0..sroa_idx, align 8 ; 2 uses
  %.not1.i = icmp eq i32 %.sroa.4.0.copyload, %.sroa.3.0.copyload
  br i1 %.not1.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.512.0.copyload14 = load i32, ptr %.sroa.512.0..sroa_idx13, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload11, i64 16392
  %i.aa = ptrtoint ptr %.sroa.717.0.copyload19 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16392
  %i.ac = ptrtoint ptr %.sroa.57.0.copyload to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %.lr.ph.i
  %i.ag = phi i32 [ %.sroa.512.0.copyload14, %.lr.ph.i ], [ %i.bq, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 5 uses
  %i.ah = phi i32 [ %.sroa.4.0.copyload, %.lr.ph.i ], [ %i.bo, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 5 uses
  %i.ai = icmp ult i32 %i.ag, 4096
  br i1 %i.ai, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.aj = add i32 %i.ag, -4096
  %i.ak = lshr i32 %i.aj, 10
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !155, !noalias !205
  %i.ao = zext i32 %i.an to i64
  %i.ap = add i64 %i.ao, %i.aa
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = and i32 %i.ag, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i: ; preds = %bb.d, %bb.c
  %.sink6.i.i.i = phi ptr [ %i.aq, %bb.d ], [ %.sroa.010.0.copyload11, %bb.c ]
  %.sink5.i.i.i = phi i32 [ %i.ar, %bb.d ], [ %i.ag, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %i.at = zext nneg i32 %.sink5.i.i.i to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at ; 3 uses
  %i.av = icmp ult i32 %i.ah, 4096
  br i1 %i.av, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i, label %bb.e, !prof !43

bb.e:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i
  %i.aw = add i32 %i.ah, -4096
  %i.ax = lshr i32 %i.aw, 10
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !155, !noalias !205
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add i64 %i.bb, %i.ac
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = and i32 %i.ah, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i: ; preds = %bb.e, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i
  %.sink6.i.i = phi ptr [ %i.bd, %bb.e ], [ %.sroa.0.0.copyload, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i ]
  %.sink5.i.i = phi i32 [ %i.be, %bb.e ], [ %i.ah, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %i.bg = zext nneg i32 %.sink5.i.i to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  %.sroa.0.0.copyload.i = load i32, ptr %i.bh, align 4, !tbaa !3, !noalias !205 ; 2 uses
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !20, !noalias !205
  %i.bj = ptrtoint ptr %i.au to i64
  %i.bk = and i64 %i.bj, -4194304
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = icmp eq ptr %i.bi, %i.bl
  br i1 %i.bm, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.f, !prof !43

bb.f:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.au, i32 %.sroa.0.0.copyload.i) #7, !noalias !205
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.f, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i
  store i32 %.sroa.0.0.copyload.i, ptr %i.au, align 4, !tbaa !155, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7, !noalias !205
  %i.bn = add i32 %i.ah, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %.sroa.0.0.copyload, i32 noundef %i.bn, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.57.0.copyload) #7, !noalias !205
  %i.bo = load i32, ptr %i.ae, align 8, !tbaa !141, !noalias !205 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7, !noalias !205
  %i.bp = add i32 %i.ag, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %.sroa.010.0.copyload11, i32 noundef %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.717.0.copyload19) #7, !noalias !205
  %i.bq = load i32, ptr %i.af, align 8, !tbaa !141, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7, !noalias !205
  %.not.i = icmp eq i32 %i.bo, %.sroa.3.0.copyload
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %bb.c, !llvm.loop !198

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !155  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  %i.k = ptrtoint ptr %1 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.s = icmp ugt i32 %2, %.0.i
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.t = sub nuw i32 %2, %.0.i
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE26increaseSizeWithinCapacityERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.t)
  br label %bb.f

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.u = icmp ult i32 %2, %.0.i
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = sub nuw i32 %.0.i, %2
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.v)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE26increaseSizeWithinCapacityERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !155  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  %i.k = ptrtoint ptr %1 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.s = add i32 %.0.i, %2                        ; 5 uses
  %i.t = icmp ult i32 %i.s, 4097
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = zext nneg i32 %i.s to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v
  %.not1421.i = icmp eq i32 %2, 0
  br i1 %.not1421.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.x = zext i32 %.0.i to i64                    ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.x ; 3 uses
  %3 = shl nuw nsw i64 %i.v, 2
  %i.z = add nsw i64 %3, -4
  %4 = shl nuw nsw i64 %i.x, 2
  %5 = sub nsw i64 %i.z, %4                       ; 2 uses
  %6 = lshr exact i64 %5, 2
  %i.aa = add nuw nsw i64 %6, 1                   ; 2 uses
  %min.iters.check41 = icmp ult i64 %5, 28
  br i1 %min.iters.check41, label %.lr.ph.i.preheader51, label %vector.ph42

vector.ph42:                                      ; preds = %.lr.ph.i.preheader
  %n.vec43 = and i64 %i.aa, 9223372036854775800   ; 3 uses
  %i.ab = shl i64 %n.vec43, 2
  %i.ac = getelementptr i8, ptr %i.y, i64 %i.ab
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph42
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.ad = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.y, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep46, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.ae, align 4, !tbaa !3
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.af = icmp eq i64 %index.next47, %n.vec43
  br i1 %i.af, label %middle.block48, label %vector.body44, !llvm.loop !208

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.aa, %n.vec43
  br i1 %cmp.n49, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader51

.lr.ph.i.preheader51:                             ; preds = %.lr.ph.i.preheader, %middle.block48
  %.01320.i.ph = phi ptr [ %i.y, %.lr.ph.i.preheader ], [ %i.ac, %middle.block48 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader51, %.lr.ph.i
  %.01320.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.01320.i.ph, %.lr.ph.i.preheader51 ] ; 2 uses
  store i32 7, ptr %.01320.i, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.01320.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.w
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i, !llvm.loop !209

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i, %middle.block48, %bb.c
  store atomic i32 %i.s, ptr %i.a release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.ah = add i32 %i.s, 1023                      ; 2 uses
  %i.ai = add i32 %i.s, -4097
  %i.aj = lshr i32 %i.ai, 10
  %i.ak = and i32 %i.ah, 1023                     ; 2 uses
  %i.al = add nuw nsw i32 %i.ak, 1                ; 5 uses
  %i.am = icmp ult i32 %.0.i, 4096
  br i1 %i.am, label %.lr.ph.i20.preheader, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23

.lr.ph.i20.preheader:                             ; preds = %bb.d
  %i.an = shl nuw nsw i32 %.0.i, 2
  %narrow = add nuw nsw i32 %i.an, 8
  %i.ao = zext nneg i32 %narrow to i64            ; 4 uses
  %i.ap = sub nsw i64 16388, %i.ao                ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 28
  br i1 %min.iters.check, label %.lr.ph.i20.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i20.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.as = shl i64 %n.vec, 2
  %i.at = add i64 %i.as, %i.ao
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl nuw i64 %index, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.au ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> splat (i32 7), ptr %gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.av, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23, label %.lr.ph.i20.preheader52

.lr.ph.i20.preheader52:                           ; preds = %.lr.ph.i20.preheader, %middle.block
  %.01320.i21.idx.ph = phi i64 [ %i.ao, %.lr.ph.i20.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader52, %.lr.ph.i20
  %.01320.i21.idx = phi i64 [ %.01320.i21.add, %.lr.ph.i20 ], [ %.01320.i21.idx.ph, %.lr.ph.i20.preheader52 ] ; 2 uses
  %.01320.i21.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.01320.i21.idx
  store i32 7, ptr %.01320.i21.ptr, align 4, !tbaa !3
  %.01320.i21.add = add nuw nsw i64 %.01320.i21.idx, 4 ; 2 uses
  %.not.i22 = icmp eq i64 %.01320.i21.add, 16392
  br i1 %.not.i22, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23, label %.lr.ph.i20, !llvm.loop !211

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23: ; preds = %.lr.ph.i20, %middle.block, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.ay = zext nneg i32 %i.aj to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !155 ; 2 uses
  %.not.i.i.i.i.i.i24 = icmp eq i32 %i.ba, 0
  %i.bb = ptrtoint ptr %1 to i64
  %i.bc = zext i32 %i.ba to i64
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = select i1 %.not.i.i.i.i.i.i24, ptr null, ptr %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bh = load atomic i32, ptr %i.bg monotonic, align 4 ; 4 uses
  %.not = icmp ult i32 %i.ak, %i.bh
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bj = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bj ; 3 uses
  %i.bl = zext nneg i32 %i.al to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bl
  %i.bn = shl i32 %i.ah, 2
  %i.bo = and i32 %i.bn, 4092
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bj, 2
  %i.br = sub nsw i64 %i.bp, %i.bq                ; 2 uses
  %i.bs = lshr exact i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check31 = icmp ult i64 %i.br, 28
  br i1 %min.iters.check31, label %.lr.ph.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %bb.e
  %n.vec33 = and i64 %i.bt, 9223372036854775800   ; 3 uses
  %i.bu = shl i64 %n.vec33, 2
  %i.bv = getelementptr i8, ptr %i.bk, i64 %i.bu
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next36, %vector.body34 ] ; 2 uses
  %i.bw = shl i64 %index35, 2
  %next.gep = getelementptr i8, ptr %i.bk, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.bx, align 4, !tbaa !3
  %index.next36 = add nuw i64 %index35, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next36, %n.vec33
  br i1 %i.by, label %middle.block37, label %vector.body34, !llvm.loop !212

middle.block37:                                   ; preds = %vector.body34
  %cmp.n38 = icmp eq i64 %i.bt, %n.vec33
  br i1 %cmp.n38, label %.sink.split.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e, %middle.block37
  %.01320.i.i.ph = phi ptr [ %i.bk, %bb.e ], [ %i.bv, %middle.block37 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.01320.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.01320.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i.i, align 4, !tbaa !3
  %i.bz = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, %i.bm
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !213

bb.f:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23
  %i.ca = icmp ult i32 %i.al, %i.bh
  br i1 %i.ca, label %bb.g, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cc = shl nuw nsw i32 %i.al, 2
  %.idx14.i = zext nneg i32 %i.cc to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx14.i ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !20
  %i.ch = and i64 %i.ce, -4194304
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = icmp ne ptr %i.cg, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.cl = load i8, ptr %i.ck, align 1, !range !21
  %i.cm = trunc nuw i8 %i.cl to i1
  %or.cond.i.i.i = select i1 %i.cj, i1 %i.cm, i1 false, !prof !22
  br i1 %or.cond.i.i.i, label %bb.h, label %.sink.split.i, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.co = sub i32 %i.bh, %i.al
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cn, ptr noundef nonnull %i.cd, i32 noundef %i.co) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %middle.block37, %bb.h, %bb.g
  store atomic i32 %i.al, ptr %i.bg release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit: ; preds = %.sink.split.i, %bb.f, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5clearERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
end_hunk_2

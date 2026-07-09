inline.NumInlined: 913
inline.NumDeleted: 300
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE22growLeftWithinCapacityERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj:bb.a

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit5.i: ; preds = %bb.i, %bb.h
  %.sink6.i.i3.i = phi ptr [ %i.cq, %bb.i ], [ %.sroa.038.0.copyload, %bb.h ]
  %.sink5.i.i4.i = phi i32 [ %i.cr, %bb.i ], [ %.sroa.5.024.i, %bb.h ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.sink6.i.i3.i, i64 8
  %i.ct = zext nneg i32 %.sink5.i.i4.i to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ct ; 3 uses
  %i.cv = load ptr, ptr %i.cg, align 8, !tbaa !20
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = and i64 %i.cw, -4194304
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = icmp ne ptr %i.cv, %i.cy
  %i.da = load i8, ptr %i.ch, align 1, !range !21
  %i.db = trunc nuw i8 %i.da to i1
  %or.cond.i.i.i = select i1 %i.cz, i1 %i.db, i1 false, !prof !22
  br i1 %or.cond.i.i.i, label %bb.j, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit.i, !prof !22

bb.j:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit5.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cu, align 8, !tbaa !15
  call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ak, i64 %.sroa.0.0.copyload.i.i.i) #7
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit.i: ; preds = %bb.j, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit5.i
  store i64 -1970324836974592, ptr %i.cu, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.dc = add i32 %.sroa.5.024.i, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %.sroa.038.0.copyload, i32 noundef %i.dc, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.541.0.copyload) #7
  %i.dd = load i32, ptr %i.ci, align 8, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.not.i15 = icmp eq i32 %i.dd, %.sroa.343.0.copyload
  br i1 %.not.i15, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4fillINS0_18SegmentedArrayBaseIS2_E8iteratorEEEvT_S8_S2_RNS0_7HadesGCE.exit, label %bb.h, !llvm.loop !132

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4fillINS0_18SegmentedArrayBaseIS2_E8iteratorEEEvT_S8_S2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE13copy_backwardINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32776
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44
  %i.k = and i64 %i.j, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load atomic i32, ptr %i.m monotonic, align 4
  %i.o = add i32 %i.f, %i.n
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.o, %bb.b ], [ %i.b, %bb.a ]
  %i.p = load atomic i32, ptr %i.a monotonic, align 4
  %i.q = sub i32 %.0.i, %2                        ; 6 uses
  %i.r = icmp ult i32 %i.q, 4097
  %i.s = add i32 %i.q, -4096
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1023
  %i.v = lshr i64 %i.u, 10
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = add nuw nsw i32 %i.w, 4096
  %.0.i13 = select i1 %i.r, i32 %i.q, i32 %i.x    ; 3 uses
  %i.y = icmp ugt i32 %i.q, 4096
  br i1 %i.y, label %bb.c, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.z = add i32 %i.q, 1023
  %i.aa = add i32 %i.q, -4097
  %i.ab = lshr i32 %i.aa, 10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32776
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !44
  %i.ag = and i64 %i.af, 281474976710655
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %i.ai = and i32 %i.z, 1023                      ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, 1                ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
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
  %i.j = shl i64 %index, 2
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
  %i.i = sub nsw i64 %i.g, %i.e
  %i.j = add nsw i64 %i.i, 4611686018427387903
  %i.k = and i64 %i.j, 4611686018427387903        ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.k, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.l, 9223372036854775800      ; 3 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %i.f, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.p, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.sink.split, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b, %middle.block
  %.01320.i.ph = phi ptr [ %i.f, %bb.b ], [ %i.n, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.01320.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %.01320.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.h
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i, !llvm.loop !137

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i32 %2, %i.b
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = zext i32 %2 to i64
  %.idx14 = shl nuw nsw i64 %i.u, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx14 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.z = and i64 %i.w, -4194304
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = icmp ne ptr %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.ad = load i8, ptr %i.ac, align 1, !range !21
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i.i = select i1 %i.ab, i1 %i.ae, i1 false, !prof !22
  br i1 %or.cond.i.i, label %bb.e, label %.sink.split, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ag = sub i32 %i.b, %2
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.af, ptr noundef nonnull %i.v, i32 noundef %i.ag) #7
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
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj:bb.a
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
  br i1 %min.iters.check, label %.lr.ph.i.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 3 uses
  %i.ah = shl i64 %n.vec, 2
  %i.ai = add i64 %i.ah, %i.ad
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.aj ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> splat (i32 7), ptr %gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.ak, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader144

.lr.ph.i.preheader144:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.01320.i.idx.ph = phi i64 [ %i.ad, %.lr.ph.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader144, %.lr.ph.i
  %.01320.i.idx = phi i64 [ %.01320.i.add, %.lr.ph.i ], [ %.01320.i.idx.ph, %.lr.ph.i.preheader144 ] ; 2 uses
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
  %i.bf = sub nsw i64 %i.bb, %i.bd
  %i.bg = add nsw i64 %i.bf, 4611686018427387903
  %i.bh = and i64 %i.bg, 4611686018427387903      ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check109 = icmp samesign ult i64 %i.bh, 7
  br i1 %min.iters.check109, label %.lr.ph.i55.preheader143, label %vector.ph110

vector.ph110:                                     ; preds = %.lr.ph.i55.preheader
  %n.vec112 = and i64 %i.bi, 9223372036854775800  ; 3 uses
  %i.bj = shl i64 %n.vec112, 2
  %i.bk = getelementptr i8, ptr %i.be, i64 %i.bj
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph110
  %index114 = phi i64 [ 0, %vector.ph110 ], [ %index.next115, %vector.body113 ] ; 2 uses
  %i.bl = shl i64 %index114, 2
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.bm, align 4, !tbaa !3
  %index.next115 = add nuw i64 %index114, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next115, %n.vec112
  br i1 %i.bn, label %middle.block116, label %vector.body113, !llvm.loop !174

middle.block116:                                  ; preds = %vector.body113
  %cmp.n117 = icmp eq i64 %i.bi, %n.vec112
  br i1 %cmp.n117, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55.preheader143

.lr.ph.i55.preheader143:                          ; preds = %.lr.ph.i55.preheader, %middle.block116
  %.01320.i56.ph = phi ptr [ %i.be, %.lr.ph.i55.preheader ], [ %i.bk, %middle.block116 ]
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader143, %.lr.ph.i55
  %.01320.i56 = phi ptr [ %i.bo, %.lr.ph.i55 ], [ %.01320.i56.ph, %.lr.ph.i55.preheader143 ] ; 2 uses
  store i32 7, ptr %.01320.i56, align 4, !tbaa !3
  %i.bo = getelementptr inbounds nuw i8, ptr %.01320.i56, i64 4 ; 2 uses
  %.not.i57 = icmp eq ptr %i.bo, %i.bc
  br i1 %.not.i57, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55, !llvm.loop !175

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58: ; preds = %.lr.ph.i55, %middle.block116, %bb.h
  store atomic i32 %.0.i53, ptr %i.a release, align 4
  %i.bp = ptrtoint ptr %1 to i64
  %i.bq = or i64 %i.bp, -281474976710656          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !74 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 192 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !77 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 200
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !87
  %i.bx = icmp ult ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.i, label %bb.j, !prof !43

bb.i:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !77
  store i64 %i.bq, ptr %i.bu, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.j:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58
  %i.bz = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bs, i64 %i.bq) #7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i.i = phi ptr [ %i.bu, %bb.i ], [ %i.bz, %bb.j ] ; 5 uses
  %.not49 = icmp samesign ugt i32 %i.ao, %i.ar    ; 2 uses
  br i1 %.not49, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %.sroa.0.0.copyload.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.ca = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16392
  %i.cd = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !155
  %i.cg = icmp eq i32 %i.cf, 7
  br i1 %i.cg, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !7  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4104 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.cj, %i.cl
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cn = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cm, i32 noundef 4104) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.co = phi ptr [ %i.cn, %bb.m ], [ %i.ci, %bb.n ] ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4100) %i.cp, i8 0, i64 4100, i1 false)
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i
  %index122 = phi i64 [ 0, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i ], [ %index.next123.3, %vector.body121 ] ; 5 uses
  %i.cq = shl i64 %index122, 2
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store <4 x i32> splat (i32 14), ptr %i.cs, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.ct, align 4, !tbaa !3
  %index.next123 = shl i64 %index122, 2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %index.next123 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  store <4 x i32> splat (i32 14), ptr %i.cv, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.cw, align 4, !tbaa !3
  %index.next123.1 = shl i64 %index122, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 %index.next123.1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  store <4 x i32> splat (i32 14), ptr %i.cy, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.cz, align 4, !tbaa !3
  %index.next123.2 = shl i64 %index122, 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 %index.next123.2 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 120
  store <4 x i32> splat (i32 14), ptr %i.db, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.dc, align 4, !tbaa !3
  %index.next123.3 = add nuw nsw i64 %index122, 32 ; 2 uses
  %i.dd = icmp eq i64 %index.next123.3, 1024
  br i1 %i.dd, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i, label %vector.body121, !llvm.loop !176

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i: ; preds = %vector.body121
  store i32 318771208, ptr %i.co, align 4, !tbaa !17
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.de = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16392
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.cd ; 3 uses
  %i.di = ptrtoint ptr %i.co to i64
  %i.dj = ptrtoint ptr %0 to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !20
  %i.do = ptrtoint ptr %i.dh to i64
  %i.dp = and i64 %i.do, 1125899902648320
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = icmp eq ptr %i.dn, %i.dq
  br i1 %i.dr, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit, label %bb.o, !prof !43

bb.o:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %i.dh, i32 %i.dl) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i, %bb.o
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !155
  br label %bb.p

bb.p:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit, %bb.k, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %.not5083.not = icmp samesign ult i32 %i.ao, %i.ar
  br i1 %.not5083.not, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.p
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.dw = ptrtoint ptr %0 to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %narrow107 = add nuw nsw i32 %i.ao, 1
  %i.dy = zext nneg i32 %narrow107 to i64
  %i.dz = add nuw nsw i32 %i.ar, 1
  %wide.trip.count = zext nneg i32 %i.dz to i64
  br label %bb.q

.preheader:                                       ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66, %bb.p
  br i1 %.not49, label %._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader
  %i.ea = and i32 %i.ap, 1023
  %i.eb = add nuw nsw i32 %i.ea, 1
  %i.ec = ptrtoint ptr %0 to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8489
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.eg = zext nneg i32 %i.ao to i64
  %i.eh = zext nneg i32 %i.ar to i64
  %i.ei = add nuw nsw i32 %i.ar, 1
  %wide.trip.count92 = zext nneg i32 %i.ei to i64
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66
  %indvars.iv = phi i64 [ %i.dy, %.lr.ph ], [ %indvars.iv.next, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66 ] ; 2 uses
  %i.ej = load ptr, ptr %i.dt, align 8, !tbaa !7  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4104 ; 2 uses
  %i.el = load ptr, ptr %i.du, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i.i59 = icmp ugt ptr %i.ek, %i.el
  br i1 %.not.i.not.i.i.i.i.i.i.i59, label %bb.r, label %bb.s, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.em = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dv, i32 noundef 4104) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60

bb.s:                                             ; preds = %bb.q
  store ptr %i.ek, ptr %i.dt, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60: ; preds = %bb.s, %bb.r
  %i.en = phi ptr [ %i.em, %bb.r ], [ %i.ej, %bb.s ] ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4100) %i.eo, i8 0, i64 4100, i1 false)
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60
  %index128 = phi i64 [ 0, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60 ], [ %index.next129.3, %vector.body127 ] ; 5 uses
  %i.ep = shl i64 %index128, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store <4 x i32> splat (i32 14), ptr %i.er, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.es, align 4, !tbaa !3
  %index.next129 = shl i64 %index128, 2
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 %index.next129 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  store <4 x i32> splat (i32 14), ptr %i.eu, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.ev, align 4, !tbaa !3
  %index.next129.1 = shl i64 %index128, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 %index.next129.1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  store <4 x i32> splat (i32 14), ptr %i.ex, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.ey, align 4, !tbaa !3
  %index.next129.2 = shl i64 %index128, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 %index.next129.2 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 104
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 120
  store <4 x i32> splat (i32 14), ptr %i.fa, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.fb, align 4, !tbaa !3
  %index.next129.3 = add nuw nsw i64 %index128, 32 ; 2 uses
  %i.fc = icmp eq i64 %index.next129.3, 1024
  br i1 %i.fc, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64, label %vector.body127, !llvm.loop !177

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64: ; preds = %vector.body127
  store i32 318771208, ptr %i.en, align 4, !tbaa !17
  %.sroa.0.0.copyload.i.i.i65 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.fd = and i64 %.sroa.0.0.copyload.i.i.i65, 281474976710655
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16392
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv ; 3 uses
  %i.fh = ptrtoint ptr %i.en to i64
  %i.fi = sub i64 %i.fh, %i.dw
  %i.fj = trunc i64 %i.fi to i32                  ; 2 uses
  %i.fk = load ptr, ptr %i.dx, align 8, !tbaa !20
  %i.fl = ptrtoint ptr %i.fg to i64
  %i.fm = and i64 %i.fl, 1125899902648320
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = icmp eq ptr %i.fk, %i.fn
  br i1 %i.fo, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66, label %bb.t, !prof !43

bb.t:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.dv, ptr noundef nonnull align 4 dereferenceable(4) %i.fg, i32 %i.fj) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64, %bb.t
  store i32 %i.fj, ptr %i.fg, align 4, !tbaa !155
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.preheader, label %bb.q, !llvm.loop !178

._crit_edge:                                      ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit, %.preheader
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.fp = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.fq = inttoptr i64 %i.fp to ptr
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph87, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit
  %indvars.iv89 = phi i64 [ %i.eg, %.lr.ph87 ], [ %indvars.iv.next90, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit ] ; 3 uses
  %i.fr = icmp eq i64 %indvars.iv89, %i.eh
  %i.fs = select i1 %i.fr, i32 %i.eb, i32 1024    ; 6 uses
  %.sroa.0.0.copyload.i.i67 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.ft = and i64 %.sroa.0.0.copyload.i.i67, 281474976710655
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16392
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv89
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !155 ; 2 uses
  %.not.i.i.i.i.i.i68 = icmp eq i32 %i.fx, 0
  %i.fy = zext i32 %i.fx to i64
  %i.fz = add i64 %i.fy, %i.ec
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = select i1 %.not.i.i.i.i.i.i68, ptr null, ptr %i.ga ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  %i.gd = load atomic i32, ptr %i.gc monotonic, align 4 ; 4 uses
  %i.ge = icmp ugt i32 %i.fs, %i.gd
  br i1 %i.ge, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  %i.gg = zext i32 %i.gd to i64                   ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gg ; 3 uses
  %i.gi = zext nneg i32 %i.fs to i64              ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gi
  %i.gk = sub nsw i64 %i.gi, %i.gg
  %i.gl = add nsw i64 %i.gk, 4611686018427387903
  %i.gm = and i64 %i.gl, 4611686018427387903      ; 2 uses
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check132 = icmp samesign ult i64 %i.gm, 7
  br i1 %min.iters.check132, label %.lr.ph.i.i.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %bb.v
  %n.vec135 = and i64 %i.gn, 9223372036854775800  ; 3 uses
  %i.go = shl i64 %n.vec135, 2
  %i.gp = getelementptr i8, ptr %i.gh, i64 %i.go
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph133
  %index137 = phi i64 [ 0, %vector.ph133 ], [ %index.next139, %vector.body136 ] ; 2 uses
  %i.gq = shl i64 %index137, 2
  %next.gep138 = getelementptr i8, ptr %i.gh, i64 %i.gq ; 2 uses
  %i.gr = getelementptr i8, ptr %next.gep138, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep138, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.gr, align 4, !tbaa !3
  %index.next139 = add nuw i64 %index137, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next139, %n.vec135
  br i1 %i.gs, label %middle.block140, label %vector.body136, !llvm.loop !179

middle.block140:                                  ; preds = %vector.body136
  %cmp.n141 = icmp eq i64 %i.gn, %n.vec135
  br i1 %cmp.n141, label %.sink.split.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.v, %middle.block140
  %.01320.i.i.ph = phi ptr [ %i.gh, %bb.v ], [ %i.gp, %middle.block140 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.01320.i.i = phi ptr [ %i.gt, %.lr.ph.i.i ], [ %.01320.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i.i, align 4, !tbaa !3
  %i.gt = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gt, %i.gj
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !180

bb.w:                                             ; preds = %bb.u
  %i.gu = icmp ult i32 %i.fs, %i.gd
  br i1 %i.gu, label %bb.x, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.x:                                             ; preds = %bb.w
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gw = shl nuw nsw i32 %i.fs, 2
  %.idx14.i = zext nneg i32 %i.gw to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.idx14.i ; 2 uses
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = load ptr, ptr %i.ed, align 8, !tbaa !20
  %i.ha = and i64 %i.gy, -4194304
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = icmp ne ptr %i.gz, %i.hb
  %i.hd = load i8, ptr %i.ee, align 1, !range !21
  %i.he = trunc nuw i8 %i.hd to i1
  %or.cond.i.i.i = select i1 %i.hc, i1 %i.he, i1 false, !prof !22
  br i1 %or.cond.i.i.i, label %bb.y, label %.sink.split.i, !prof !22

bb.y:                                             ; preds = %bb.x
  %i.hf = sub i32 %i.gd, %i.fs
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ef, ptr noundef nonnull %i.gx, i32 noundef %i.hf) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %middle.block140, %bb.y, %bb.x
  store atomic i32 %i.fs, ptr %i.gc release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit: ; preds = %bb.w, %.sink.split.i
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93 = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93, label %._crit_edge, label %bb.u, !llvm.loop !181

bb.z:                                             ; preds = %._crit_edge, %bb.e
  %.sroa.042.0 = phi ptr [ %1, %bb.e ], [ %i.fq, %._crit_edge ]
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
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE26increaseSizeWithinCapacityERNS0_7RuntimeEj:bb.a

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ce = shl nuw nsw i32 %i.an, 2
  %.idx14.i = zext nneg i32 %i.ce to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx14.i ; 2 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20
  %i.cj = and i64 %i.cg, -4194304
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = icmp ne ptr %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.cn = load i8, ptr %i.cm, align 1, !range !21
  %i.co = trunc nuw i8 %i.cn to i1
  %or.cond.i.i.i = select i1 %i.cl, i1 %i.co, i1 false, !prof !22
  br i1 %or.cond.i.i.i, label %bb.h, label %.sink.split.i, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.cq = sub i32 %i.bj, %i.an
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cp, ptr noundef nonnull %i.cf, i32 noundef %i.cq) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %middle.block38, %bb.h, %bb.g
  store atomic i32 %i.an, ptr %i.bi release, align 4
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
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ]
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.0.i)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE11getCellKindEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 17
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 285212672
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE17_trimSizeCallbackEPKNS0_6GCCellE(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = shl i32 %i.b, 2
  %i.d = add i32 %i.c, 8
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5beginERNS0_11PointerBaseE(ptr dead_on_unwind noalias writable sret(%"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE(ptr dead_on_unwind noalias writable sret(%"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
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
  %i.k = ptrtoint ptr %2 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ]
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef %.0.i, ptr noundef nonnull align 1 dereferenceable(1) %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE16inlineStorageEndERNS0_11PointerBaseE(ptr dead_on_unwind noalias writable sret(%"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
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
  %i.k = ptrtoint ptr %2 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ]
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 4096)
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef %.sroa.speculated, ptr noundef nonnull align 1 dereferenceable(1) %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE20calculateNewCapacityEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i32 %0, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.a, i32 %1)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 4104) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4100) %i.i, i8 0, i64 4100, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i
  %index = phi i64 [ 0, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.j = shl i64 %index, 2
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
  br i1 %i.w, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit, label %vector.body, !llvm.loop !214

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit: ; preds = %vector.body
  store i32 318771208, ptr %i.h, align 4, !tbaa !17
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !15
  %i.x = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16392
  %i.aa = zext i32 %2 to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %i.ac = ptrtoint ptr %i.h to i64
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = and i64 %i.ai, 1125899902648320
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = icmp eq ptr %i.ah, %i.ak
  br i1 %i.al, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit, label %bb.d, !prof !43

bb.d:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, i32 %i.af) #7
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit, %bb.d
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE28segmentAtPossiblyUnallocatedEj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE28segmentAtPossiblyUnallocatedEj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8segmentsEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16392
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE13inlineStorageEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8segmentsEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16392
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE11numSegmentsEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = and i32 %i.a, 16777212
  %i.c = add nsw i32 %i.b, -8
  %i.d = lshr exact i32 %i.c, 2
  %i.e = tail call i32 @llvm.usub.sat.i32(i32 %i.d, i32 4096)
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15numUsedSegmentsEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = tail call i32 @llvm.usub.sat.i32(i32 %i.b, i32 4096)
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE22growLeftWithinCapacityERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  %4 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  %5 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  %6 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 2 uses
  %7 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  %8 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 6 uses
  %9 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  %10 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  %11 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 2 uses
  %12 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 6 uses
  %i.a = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 noundef %2) ; 8 uses
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4, !noalias !215 ; 3 uses
  %i.d = icmp ult i32 %i.c, 4097
  br i1 %i.d, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.c, -4097                      ; 2 uses
  %i.f = shl i32 %i.e, 10
  %i.g = add i32 %i.f, 4096
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16392
  %i.i = zext i32 %i.e to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !155, !noalias !215 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  %i.l = ptrtoint ptr %0 to i64
  %i.m = zext i32 %i.k to i64
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = select i1 %.not.i.i.i.i.i.i.i, ptr null, ptr %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load atomic i32, ptr %i.q monotonic, align 4, !noalias !215
  %i.s = add i32 %i.g, %i.r
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.s, %bb.b ], [ %i.c, %bb.a ]
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  %i.t = load ptr, ptr %8, align 8, !tbaa !138, !noalias !218
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !141, !noalias !218
  %i.w = sub i32 %i.v, %2
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !142, !noalias !218, !nonnull !30
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.t, i32 noundef %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.y) #7
  %i.z = load atomic i32, ptr %i.b monotonic, align 4, !noalias !221 ; 3 uses
  %i.aa = icmp ult i32 %i.z, 4097
  br i1 %i.aa, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit14, label %bb.c, !prof !43

bb.c:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit
  %i.ab = add i32 %i.z, -4097                     ; 2 uses
  %i.ac = shl i32 %i.ab, 10
  %i.ad = add i32 %i.ac, 4096
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16392
  %i.af = zext i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !155, !noalias !221 ; 2 uses
  %.not.i.i.i.i.i.i.i12 = icmp eq i32 %i.ah, 0
  %i.ai = ptrtoint ptr %0 to i64
  %i.aj = zext i32 %i.ah to i64
  %i.ak = add i64 %i.aj, %i.ai
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = select i1 %.not.i.i.i.i.i.i.i12, ptr null, ptr %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load atomic i32, ptr %i.an monotonic, align 4, !noalias !221
  %i.ap = add i32 %i.ad, %i.ao
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit14

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit14: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit, %bb.c
  %.0.i.i13 = phi i32 [ %i.ap, %bb.c ], [ %i.z, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit ]
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef %.0.i.i13, ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %.sroa.025.0.copyload26 = load ptr, ptr %9, align 8 ; 3 uses
  %.sroa.732.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.732.0.copyload34 = load ptr, ptr %.sroa.732.0..sroa_idx33, align 8 ; 2 uses
  %.sroa.022.0.copyload = load ptr, ptr %7, align 8 ; 3 uses
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.423.0.copyload = load i32, ptr %.sroa.423.0..sroa_idx, align 8 ; 2 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
end_hunk_2

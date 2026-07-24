inline.NumInlined: 913
inline.NumDeleted: 300
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj:_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit16
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE25allocationSizeForCapacityEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 4097
  %i.b = add i32 %0, -4096
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1023
  %i.e = lshr i64 %i.d, 10
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 4096
  %.0.i = select i1 %i.a, i32 %0, i32 %i.g
  %i.h = shl nuw nsw i32 %.0.i, 2
  %i.i = add nuw nsw i32 %i.h, 8
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15createLongLivedERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::lock_guard", align 8   ; 4 uses
  %i.a = icmp ugt i32 %1, 1047529472
  br i1 %i.a, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 4097
  %i.d = add nsw i32 %1, -4096
  %i.e = zext i32 %i.d to i64
  %i.f = add nuw nsw i64 %i.e, 1023
  %i.g = lshr i64 %i.f, 10
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = add nuw nsw i32 %i.h, 4096
  %.0.i.i = select i1 %i.c, i32 %1, i32 %i.i
  %i.j = shl nuw nsw i32 %.0.i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.l = add nuw nsw i32 %i.j, 15                 ; 2 uses
  %i.m = and i32 %i.l, 2147483640
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN6hermes2vm7HadesGC19pauseBackgroundTaskEv(ptr dead_on_unwind nonnull writable sret(%"class.std::lock_guard") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8112) %i.k) #7
  %i.n = call noundef ptr @_ZN6hermes2vm7HadesGC14allocLongLivedEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.k, i32 noundef %i.m) #7 ; 3 uses
  store i64 0, ptr %i.n, align 4
  %i.o = and i32 %i.l, 16777208
  %i.p = or disjoint i32 %i.o, 285212672
  store i32 %i.p, ptr %i.n, align 4, !tbaa !17
  %i.q = load ptr, ptr %2, align 8, !tbaa !67, !nonnull !30, !align !70
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.05.0 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.b ], [ %i.n, %bb.c ]
  ret ptr %.sroa.05.0
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
  br i1 %min.iters.check, label %.lr.ph.i.preheader144, label %vector.ph

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
  %i.cq = shl nuw nsw i64 %index122, 2
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
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE10shrinkLeftERNS0_7RuntimeEj:bb.a
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
  %i.z = sub nsw i64 %i.v, %i.x
  %i.aa = add nsw i64 %i.z, 4611686018427387903
  %i.ab = and i64 %i.aa, 4611686018427387903      ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check42 = icmp samesign ult i64 %i.ab, 7
  br i1 %min.iters.check42, label %.lr.ph.i.preheader53, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.i.preheader
  %n.vec45 = and i64 %i.ac, 9223372036854775800   ; 3 uses
  %i.ad = shl i64 %n.vec45, 2
  %i.ae = getelementptr i8, ptr %i.y, i64 %i.ad
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph43
  %index47 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body46 ] ; 2 uses
  %i.af = shl i64 %index47, 2
  %next.gep48 = getelementptr i8, ptr %i.y, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep48, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep48, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.ag, align 4, !tbaa !3
  %index.next49 = add nuw i64 %index47, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next49, %n.vec45
  br i1 %i.ah, label %middle.block50, label %vector.body46, !llvm.loop !208

middle.block50:                                   ; preds = %vector.body46
  %cmp.n51 = icmp eq i64 %i.ac, %n.vec45
  br i1 %cmp.n51, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader53

.lr.ph.i.preheader53:                             ; preds = %.lr.ph.i.preheader, %middle.block50
  %.01320.i.ph = phi ptr [ %i.y, %.lr.ph.i.preheader ], [ %i.ae, %middle.block50 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader53, %.lr.ph.i
  %.01320.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01320.i.ph, %.lr.ph.i.preheader53 ] ; 2 uses
  store i32 7, ptr %.01320.i, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.01320.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.w
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i, !llvm.loop !209

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i, %middle.block50, %bb.c
  store atomic i32 %i.s, ptr %i.a release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.aj = add i32 %i.s, 1023                      ; 2 uses
  %i.ak = add i32 %i.s, -4097
  %i.al = lshr i32 %i.ak, 10
  %i.am = and i32 %i.aj, 1023                     ; 2 uses
  %i.an = add nuw nsw i32 %i.am, 1                ; 5 uses
  %i.ao = icmp ult i32 %.0.i, 4096
  br i1 %i.ao, label %.lr.ph.i20.preheader, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23

.lr.ph.i20.preheader:                             ; preds = %bb.d
  %i.ap = shl nuw nsw i32 %.0.i, 2
  %narrow = add nuw nsw i32 %i.ap, 8
  %i.aq = zext nneg i32 %narrow to i64            ; 4 uses
  %i.ar = sub nsw i64 16388, %i.aq                ; 2 uses
  %i.as = lshr exact i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  br i1 %min.iters.check, label %.lr.ph.i20.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i20.preheader
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2
  %i.av = add i64 %i.au, %i.aq
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl nuw i64 %index, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.aw ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> splat (i32 7), ptr %gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.ax, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23, label %.lr.ph.i20.preheader54

.lr.ph.i20.preheader54:                           ; preds = %.lr.ph.i20.preheader, %middle.block
  %.01320.i21.idx.ph = phi i64 [ %i.aq, %.lr.ph.i20.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader54, %.lr.ph.i20
  %.01320.i21.idx = phi i64 [ %.01320.i21.add, %.lr.ph.i20 ], [ %.01320.i21.idx.ph, %.lr.ph.i20.preheader54 ] ; 2 uses
  %.01320.i21.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.01320.i21.idx
  store i32 7, ptr %.01320.i21.ptr, align 4, !tbaa !3
  %.01320.i21.add = add nuw nsw i64 %.01320.i21.idx, 4 ; 2 uses
  %.not.i22 = icmp eq i64 %.01320.i21.add, 16392
  br i1 %.not.i22, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23, label %.lr.ph.i20, !llvm.loop !211

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23: ; preds = %.lr.ph.i20, %middle.block, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.ba = zext nneg i32 %i.al to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !155 ; 2 uses
  %.not.i.i.i.i.i.i24 = icmp eq i32 %i.bc, 0
  %i.bd = ptrtoint ptr %1 to i64
  %i.be = zext i32 %i.bc to i64
  %i.bf = add i64 %i.be, %i.bd
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = select i1 %.not.i.i.i.i.i.i24, ptr null, ptr %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load atomic i32, ptr %i.bi monotonic, align 4 ; 4 uses
  %.not = icmp ult i32 %i.am, %i.bj
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bl = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  %i.bn = zext nneg i32 %i.an to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bn
  %i.bp = shl i32 %i.aj, 2
  %i.bq = and i32 %i.bp, 4092
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.bl, 2
  %i.bt = sub nsw i64 %i.br, %i.bs                ; 2 uses
  %i.bu = lshr exact i64 %i.bt, 2
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check31 = icmp ult i64 %i.bt, 28
  br i1 %min.iters.check31, label %.lr.ph.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %bb.e
  %n.vec34 = and i64 %i.bv, 9223372036854775800   ; 3 uses
  %i.bw = shl i64 %n.vec34, 2
  %i.bx = getelementptr i8, ptr %i.bm, i64 %i.bw
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph32
  %index36 = phi i64 [ 0, %vector.ph32 ], [ %index.next37, %vector.body35 ] ; 2 uses
  %i.by = shl i64 %index36, 2
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.bz, align 4, !tbaa !3
  %index.next37 = add nuw i64 %index36, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next37, %n.vec34
  br i1 %i.ca, label %middle.block38, label %vector.body35, !llvm.loop !212

middle.block38:                                   ; preds = %vector.body35
  %cmp.n39 = icmp eq i64 %i.bv, %n.vec34
  br i1 %cmp.n39, label %.sink.split.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e, %middle.block38
  %.01320.i.i.ph = phi ptr [ %i.bm, %bb.e ], [ %i.bx, %middle.block38 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.01320.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %.01320.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i.i, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, %i.bo
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !213

bb.f:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23
  %i.cc = icmp ult i32 %i.an, %i.bj
  br i1 %i.cc, label %bb.g, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

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
end_hunk_1

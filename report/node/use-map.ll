inline.NumInlined: 150
inline.NumDeleted: 107
begin_hunk_0_@_ZNK2v88internal8compiler10turboshaft6UseMap4usesENS2_7OpIndexE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE12emplace_backIJRS4_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE21EnsureOneMoreCapacityEv.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2
  %i.l = add nsw i64 %i.k, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE21EnsureOneMoreCapacityEv.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE21EnsureOneMoreCapacityEv.exit: ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store ptr %i.n, ptr %i.a, align 8
  %i.o = load i32, ptr %1, align 4
  store i32 %i.o, ptr %i.m, align 4
  ret ptr %i.m
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 2
  %i.s = add nuw i64 %i.r, 4
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #8
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 4
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 576460752303423487
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 5                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #8
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp ne ptr %i.b, null
  %i.ac = icmp ult ptr %i.b, %i.d
  %or.cond = select i1 %.not, i1 %i.ac, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit, %.lr.ph
  %.0.i10 = phi ptr [ %i.an, %.lr.ph ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit ] ; 6 uses
  %.08.i9 = phi ptr [ %i.ao, %.lr.ph ], [ %i.b, %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i10, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i10, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i10, i8 0, i64 32, i1 false)
  %i.ag = load ptr, ptr %.08.i9, align 8
  store ptr %i.ag, ptr %.0.i10, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i9, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i9, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr %i.ak, ptr %i.ae, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i9, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  store ptr %i.am, ptr %i.af, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i10, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i9, i64 32 ; 2 uses
  %i.ap = icmp ult ptr %i.ao, %i.d
  br i1 %i.ap, label %.lr.ph, label %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit, !llvm.loop !13

_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit

_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit
  %i.aq = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit ]
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.o
  store ptr %i.ar, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #8
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 6 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp ne ptr %i.b, null
  %i.ac = icmp ult ptr %i.b, %i.d
  %or.cond = select i1 %.not, i1 %i.ac, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit
  %2 = ptrtoint ptr %i.d to i64
  %3 = ptrtoint ptr %i.b to i64                   ; 2 uses
  %i.ad = add i64 %3, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.ad)
  %i.ae = xor i64 %3, -1
  %i.af = add i64 %umax, %i.ae                    ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 72
  %i.ai = sub i64 %i.f, %i.y
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond17 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond17, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.z, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.b, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.am ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.b, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 4
  %wide.load15 = load <2 x i64>, ptr %i.an, align 4
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load15, ptr %i.ao, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.0.i10.ph = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %.07.i9.ph = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.0.i10 = phi ptr [ %i.ar, %.lr.ph ], [ %.0.i10.ph, %.lr.ph.preheader18 ] ; 2 uses
  %.07.i9 = phi ptr [ %i.as, %.lr.ph ], [ %.07.i9.ph, %.lr.ph.preheader18 ] ; 2 uses
  %i.aq = load i64, ptr %.07.i9, align 4
  store i64 %i.aq, ptr %.0.i10, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.07.i9, i64 8 ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.d
  br i1 %i.at, label %.lr.ph, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit, !llvm.loop !17

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit: ; preds = %.lr.ph, %middle.block
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit: ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit
  %i.au = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.o
  store ptr %i.av, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE: argument 0"}
!11 = distinct !{!11, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE"}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !7, !15}
end_hunk_0

inline.NumInlined: 3052
inline.NumDeleted: 1336
begin_hunk_0_@_ZN6hermes2vm7HadesGC20creditExternalMemoryEPNS0_6GCCellEj:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes2vm7HadesGC10inYoungGenEPKv(ptr noundef nonnull align 8 dereferenceable(8112) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = ptrtoint ptr %1 to i64
  %i.d = and i64 %i.c, -4194304
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp eq ptr %i.b, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6hermes2vm7HadesGC24setYoungGenExternalBytesEm(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8112) initializes((8040, 8048)) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8040
  store i64 %1, ptr %i.a, align 8, !tbaa !267
  ret void
}

declare void @_ZN6hermes2vm18AlignedHeapSegment15setEffectiveEndEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC19debitExternalMemoryEPNS0_6GCCellEj(ptr noundef nonnull align 8 dereferenceable(8112) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = ptrtoint ptr %1 to i64
  %i.d = and i64 %i.c, -4194304
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp eq ptr %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8040 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !267
  %i.i = zext i32 %2 to i64
  %i.j = sub i64 %i.h, %i.i
  store i64 %i.j, ptr %i.g, align 8, !tbaa !267
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7520 ; 2 uses
  %i.l = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #35 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.l) #37
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.c
  %i.m = zext i32 %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !112
  %i.p = sub i64 %i.o, %i.m
  store i64 %i.p, ptr %i.n, align 8, !tbaa !112
  %i.q = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #35 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, ptr noundef %1, i64 %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7633
  %i.b = load i8, ptr %i.a, align 1, !tbaa !249, !range !257, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !51
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112) %0, i64 %.sroa.0.0.copyload)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp ugt i64 %2, -844424930131969
  br i1 %i.d, label %bb.d, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.e = and i64 %2, 281474972516352              ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.g = xor i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 4194304
  br i1 %i.h, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.k = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8048
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, %i.k
  %or.cond.i = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond.i, label %bb.f, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

bb.f:                                             ; preds = %bb.e
  %i.p = and i64 %i.f, -4194304
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = lshr i64 %i.f, 9
  %i.s = and i64 %i.r, 8191
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  store atomic i8 1, ptr %i.t monotonic, align 1
  br label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, i64 %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, -844424930131969
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.d = and i64 %1, 281474972516352
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalEPNS0_6GCCellE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %1, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7640
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !294  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1120 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !422  ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !422
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n
  store ptr %i.h, ptr %i.p, align 8, !tbaa !350
  %i.q = icmp eq i64 %i.o, 128
  br i1 %i.q, label %bb.d, label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalEPNS0_6GCCellE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(1088) %i.k) #35 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.r) #37
  unreachable

_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1128 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !297
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 1136
  %i.v = load i32, ptr %i.u, align 8, !tbaa !425
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !422
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.y
  %i.aa = tail call noundef ptr @_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6insertIPS4_vEES7_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.z) ; 0 uses
  store i64 0, ptr %i.m, align 8, !tbaa !422
  %i.ab = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(1088) %i.k) #35 ; 0 uses
  br label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalEPNS0_6GCCellE.exit

bb.f:                                             ; preds = %bb.a
  %.mask.i = and i64 %1, -140737488355328
  %i.ac = icmp eq i64 %.mask.i, -1266637395197952
  br i1 %i.ac, label %bb.g, label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalEPNS0_6GCCellE.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = trunc i64 %1 to i32                     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 7640
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !294 ; 2 uses
  %i.ag = and i32 %i.ad, 268435455                ; 2 uses
  %i.ah = icmp ult i32 %i.ad, 536870910
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1184
  %i.aj = load i32, ptr %i.ai, align 8
  %.not.i.i = icmp ult i32 %i.ag, %i.aj
  %or.cond.i.i = select i1 %i.ah, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalEPNS0_6GCCellE.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 1168
  %i.al = lshr i32 %i.ag, 6
  %i.am = zext nneg i32 %i.al to i64
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !295
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am ; 2 uses
  %i.ap = and i64 %1, 63
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !51
  %i.as = or i64 %i.ar, %i.aq
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalEPNS0_6GCCellE.exit

_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalEPNS0_6GCCellE.exit: ; preds = %bb.h, %bb.g, %_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i.i, %bb.c, %bb.b, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = xor i64 %i.b, %i.a
  %i.d = icmp ult i64 %i.c, 4194304
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.g = and i64 %i.b, -4194304
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8048
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, %i.h
  %or.cond = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %i.a, -4194304
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = lshr i64 %i.a, 9
  %i.p = and i64 %i.o, 8191
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store atomic i8 1, ptr %i.q monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, ptr noundef %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7633
  %i.b = load i8, ptr %i.a, align 1, !tbaa !249, !range !257, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %1, align 4, !tbaa !3
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 %.sroa.0.0.copyload)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i32 %2, 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63, !nonnull !61
  %i.h = and i32 %2, -8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = zext i32 %i.h to i64
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.m = xor i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, 4194304
  br i1 %i.n, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.q = and i64 %i.k, -4194304
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8048
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.u, %i.r
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond.i, label %bb.f, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = and i64 %i.l, -4194304
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = lshr i64 %i.l, 9
  %i.z = and i64 %i.y, 8191
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  store atomic i8 1, ptr %i.aa monotonic, align 1
  br label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, i32 %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = and i32 %1, 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, -4194304
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 808
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 8, !tbaa !3
  %i.e = icmp eq i32 %i.c, %.sroa.0.0.copyload.i.i.i
  br i1 %i.e, label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %1, -8                           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63, !nonnull !61
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = zext i32 %i.f to i64
  %i.k = add i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = select i1 %.not.i.i.i.i, ptr null, ptr %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7640
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !294  ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 96 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1120 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !422  ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !422
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  store ptr %i.m, ptr %i.u, align 8, !tbaa !350
  %i.v = icmp eq i64 %i.t, 128
  br i1 %i.v, label %bb.d, label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(1088) %i.p) #35 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.w) #37
  unreachable

_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i.i: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 1128 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !297
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1136
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !425
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !422
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ad
  %i.af = tail call noundef ptr @_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6insertIPS4_vEES7_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef %i.ac, ptr noundef nonnull %i.q, ptr noundef nonnull %i.ae) ; 0 uses
  store i64 0, ptr %i.r, align 8, !tbaa !422
  %i.ag = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(1088) %i.p) #35 ; 0 uses
  br label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit

bb.f:                                             ; preds = %bb.a
  %i.ah = and i32 %1, 7
  %i.ai = icmp eq i32 %i.ah, 5
  br i1 %i.ai, label %bb.g, label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = lshr i32 %1, 3                          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 7640
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !294 ; 2 uses
  %i.am = and i32 %i.aj, 268435455                ; 2 uses
  %i.an = icmp ult i32 %1, -16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1184
  %i.ap = load i32, ptr %i.ao, align 8
  %.not.i.i = icmp ult i32 %i.am, %i.ap
  %or.cond.i.i = select i1 %i.an, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 1168
  %i.ar = lshr i32 %i.am, 6
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !295
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %i.av = and i32 %i.aj, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = load i64, ptr %i.au, align 8, !tbaa !51
  %i.az = or i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.au, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit

_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit: ; preds = %bb.h, %bb.g, %_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i.i, %bb.c, %bb.b, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !107    ; 3 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7633
  %i.d = load i8, ptr %i.c, align 1, !range !257
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %i.b, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.a, -4194304
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 808
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.g, align 8, !tbaa !3
  %i.h = icmp eq i32 %i.f, %.sroa.0.0.copyload.i.i.i
  br i1 %i.h, label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63, !nonnull !61
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = zext i32 %i.a to i64
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7640
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !294  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1120 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !422  ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !422
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  store ptr %i.n, ptr %i.v, align 8, !tbaa !350
  %i.w = icmp eq i64 %i.u, 128
  br i1 %i.w, label %bb.d, label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit

bb.d:                                             ; preds = %bb.c
  %i.x = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(1088) %i.q) #35 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.x) #37
  unreachable

_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i.i: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 1128 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !297
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 1136
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !425
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ac
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !422
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ae
  %i.ag = tail call noundef ptr @_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6insertIPS4_vEES7_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef %i.ad, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af) ; 0 uses
  store i64 0, ptr %i.s, align 8, !tbaa !422
  %i.ah = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(1088) %i.q) #35 ; 0 uses
  br label %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit

_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit: ; preds = %_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i.i, %bb.c, %bb.b, %bb.a
  %i.ai = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.aj = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = icmp ult i64 %i.ak, 4194304
  br i1 %i.al, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !108
  %i.ao = and i64 %i.aj, -4194304
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = icmp eq ptr %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8048
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = icmp eq ptr %i.as, %i.ap
  %or.cond.i = select i1 %i.aq, i1 true, i1 %i.at
  br i1 %or.cond.i, label %bb.g, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

bb.g:                                             ; preds = %bb.f
  %i.au = and i64 %i.ai, -4194304
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = lshr i64 %i.ai, 9
  %i.ax = and i64 %i.aw, 8191
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store atomic i8 1, ptr %i.ay monotonic, align 1
  br label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit: ; preds = %_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, i32 %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = and i32 %1, -4194304
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 808
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.b, align 8, !tbaa !3
  %i.c = icmp eq i32 %i.a, %.sroa.0.0.copyload.i.i
  br i1 %i.c, label %_ZN6hermes2vm12MarkWorklist7enqueueEPNS0_6GCCellE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63, !nonnull !61
  %.not.i.i.i = icmp eq i32 %1, 0
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = zext i32 %1 to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = select i1 %.not.i.i.i, ptr null, ptr %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7640
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !294  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1120 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !422  ; 2 uses
  %i.q = add i64 %i.p, 1                          ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !422
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  store ptr %i.j, ptr %i.r, align 8, !tbaa !350
  %i.s = icmp eq i64 %i.q, 128
  br i1 %i.s, label %bb.c, label %_ZN6hermes2vm12MarkWorklist7enqueueEPNS0_6GCCellE.exit

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(1088) %i.m) #35 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.t) #37
  unreachable

_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 1128 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !297
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 1136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !425
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !422
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aa
  %i.ac = tail call noundef ptr @_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6insertIPS4_vEES7_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef %i.z, ptr noundef nonnull %i.n, ptr noundef nonnull %i.ab) ; 0 uses
  store i64 0, ptr %i.o, align 8, !tbaa !422
  %i.ad = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(1088) %i.m) #35 ; 0 uses
  br label %_ZN6hermes2vm12MarkWorklist7enqueueEPNS0_6GCCellE.exit

_ZN6hermes2vm12MarkWorklist7enqueueEPNS0_6GCCellE.exit: ; preds = %_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, ptr noundef %1, i64 %2) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, -844424930131969
  br i1 %i.a, label %bb.b, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 281474972516352              ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = xor i64 %i.b, %i.c
  %i.e = icmp ult i64 %i.d, 4194304
  br i1 %i.e, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8048
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, %i.h
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %bb.d, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = and i64 %i.c, -4194304
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = lshr i64 %i.c, 9
  %i.p = and i64 %i.o, 8191
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store atomic i8 1, ptr %i.q monotonic, align 1
  br label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, ptr noundef %1, i32 %2) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = and i32 %2, 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63, !nonnull !61
  %i.e = and i32 %2, -8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = zext i32 %i.e to i64
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.j = xor i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 4194304
  br i1 %i.k, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.n = and i64 %i.h, -4194304
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8048
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, %i.o
  %or.cond.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i, label %bb.d, label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = and i64 %i.i, -4194304
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = lshr i64 %i.i, 9
  %i.w = and i64 %i.v, 8191
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  store atomic i8 1, ptr %i.x monotonic, align 1
  br label %_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit

_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC32constructorWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8112) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, -4194304
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.d
  tail call void @_ZN6hermes2vm9CardTable25dirtyCardsForAddressRangeEPKvS3_(ptr noundef nonnull align 1 dereferenceable(16384) %i.c, ptr noundef %1, ptr noundef %i.e) #35
  ret void
}

declare void @_ZN6hermes2vm9CardTable25dirtyCardsForAddressRangeEPKvS3_(ptr noundef nonnull align 1 dereferenceable(16384), ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC32constructorWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8112) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, -4194304
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.d
  tail call void @_ZN6hermes2vm9CardTable25dirtyCardsForAddressRangeEPKvS3_(ptr noundef nonnull align 1 dereferenceable(16384) %i.c, ptr noundef %1, ptr noundef %i.e) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !51
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112) %0, i64 %.sroa.0.0.copyload)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !527
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 4, !tbaa !3
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 %.sroa.0.0.copyload)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !528
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalEPNS0_6GCCellE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = ptrtoint ptr %1 to i64
  %i.d = and i64 %i.c, -4194304
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp eq ptr %i.b, %i.e
  br i1 %i.f, label %_ZN6hermes2vm12MarkWorklist7enqueueEPNS0_6GCCellE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7640
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !294  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1120 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !422  ; 2 uses
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !422
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  store ptr %1, ptr %i.n, align 8, !tbaa !350
  %i.o = icmp eq i64 %i.m, 128
  br i1 %i.o, label %bb.c, label %_ZN6hermes2vm12MarkWorklist7enqueueEPNS0_6GCCellE.exit

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(1088) %i.i) #35 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.p) #37
  unreachable

_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 1128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !297
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 1136
  %i.t = load i32, ptr %i.s, align 8, !tbaa !425
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  %i.w = load i64, ptr %i.k, align 8, !tbaa !422
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.w
  %i.y = tail call noundef ptr @_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6insertIPS4_vEES7_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef %i.v, ptr noundef nonnull %i.j, ptr noundef nonnull %i.x) ; 0 uses
  store i64 0, ptr %i.k, align 8, !tbaa !422
  %i.z = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(1088) %i.i) #35 ; 0 uses
  br label %_ZN6hermes2vm12MarkWorklist7enqueueEPNS0_6GCCellE.exit

_ZN6hermes2vm12MarkWorklist7enqueueEPNS0_6GCCellE.exit: ; preds = %_ZN6hermes2vm12MarkWorklist14flushPushChunkEv.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_8SymbolIDE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, i32 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7640
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294  ; 2 uses
  %i.c = and i32 %1, 268435455                    ; 2 uses
  %i.d = icmp ult i32 %1, 536870910
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1184
  %i.f = load i32, ptr %i.e, align 8
  %.not.i = icmp ult i32 %i.c, %i.f
  %or.cond.i = select i1 %i.d, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN6hermes2vm7HadesGC12MarkAcceptor10markSymbolENS0_8SymbolIDE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.h = lshr i32 %i.c, 6
  %i.i = zext nneg i32 %i.h to i64
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !295
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = and i32 %1, 63
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m
  %i.o = load i64, ptr %i.k, align 8, !tbaa !51
  %i.p = or i64 %i.o, %i.n
  store i64 %i.p, ptr %i.k, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor10markSymbolENS0_8SymbolIDE.exit

_ZN6hermes2vm7HadesGC12MarkAcceptor10markSymbolENS0_8SymbolIDE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierENS0_11HermesValueE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, i64 %1) local_unnamed_addr #5 align 2 {
end_hunk_0
begin_hunk_1_@_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE16_M_push_back_auxIJEEEvDpOT_:bb.a
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !119 ; 3 uses
  store ptr %i.au, ptr %i.n, align 8, !tbaa !117
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 6408
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !206
  store ptr %i.au, ptr %i.a, align 8, !tbaa !215
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !212  ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !213
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !136

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !119
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !119
  br label %_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !136

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !119
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !119
  br label %_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE15_M_allocate_mapEm.exit, !prof !137

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #36 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !136

bb.o:                                             ; preds = %_ZNSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !119
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !119
  br label %_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit24

_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !213
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #38
  store ptr %i.aq, ptr %0, align 8, !tbaa !213
  store i64 %i.am, ptr %i.k, align 8, !tbaa !212
  br label %_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit

_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EES8_ET0_T_SA_S9_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !118
  %i.be = load ptr, ptr %.0, align 8, !tbaa !119  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !117
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 6408
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !206
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !118
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !119 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !117
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 6408
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !206
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { nounwind }
attributes #36 = { builtin nounwind allocsize(0) }
attributes #37 = { noreturn nounwind }
attributes #38 = { builtin nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { nounwind allocsize(0) }
attributes #41 = { nounwind allocsize(1) }
attributes #42 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !26, i64 216}
!8 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !9, i64 0, !11, i64 8, !11, i64 56, !11, i64 104, !11, i64 152, !21, i64 200, !25, i64 208, !26, i64 216}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !12, i64 0}
!12 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !13, i64 0}
!13 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !14, i64 0, !16, i64 8}
!14 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !15, i64 0}
!15 = !{!"_ZTSSt4lessIhE"}
!16 = !{!"_ZTSSt15_Rb_tree_header", !17, i64 0, !20, i64 32}
!17 = !{!"_ZTSSt18_Rb_tree_node_base", !18, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!18 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!19 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !22, i64 0, !24, i64 4}
!22 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !23, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!23 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !5, i64 0}
!24 = !{!"bool", !5, i64 0}
!25 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !24, i64 4}
!26 = !{!"p1 _ZTSN6hermes2vm6VTableE", !10, i64 0}
!27 = !{!28, !20, i64 104}
!28 = !{!"_ZTSN6hermes2vm7HadesGC6OldGenE", !29, i64 0, !30, i64 8, !38, i64 88, !20, i64 104, !20, i64 112, !40, i64 120, !42, i64 160, !49, i64 240, !50, i64 6648}
!29 = !{!"p1 _ZTSN6hermes2vm7HadesGCE", !10, i64 0}
!30 = !{!"_ZTSSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE", !31, i64 0}
!31 = !{!"_ZTSSt11_Deque_baseIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE", !32, i64 0}
!32 = !{!"_ZTSNSt11_Deque_baseIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE11_Deque_implE", !33, i64 0}
!33 = !{!"_ZTSNSt11_Deque_baseIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE16_Deque_impl_dataE", !34, i64 0, !20, i64 8, !36, i64 16, !36, i64 48}
!34 = !{!"p2 _ZTSN6hermes2vm7HadesGC11HeapSegmentE", !35, i64 0}
!35 = !{!"any p2 pointer", !10, i64 0}
!36 = !{!"_ZTSSt15_Deque_iteratorIN6hermes2vm7HadesGC11HeapSegmentERS3_PS3_E", !37, i64 0, !37, i64 8, !37, i64 16, !34, i64 24}
!37 = !{!"p1 _ZTSN6hermes2vm7HadesGC11HeapSegmentE", !10, i64 0}
!38 = !{!"_ZTSN6hermes24ExponentialMovingAverageE", !39, i64 0, !39, i64 8}
!39 = !{!"double", !5, i64 0}
!40 = !{!"_ZTSN6hermes8BitArrayILm267ELm8EEE", !41, i64 0}
!41 = !{!"_ZTSSt5arrayImLm5EE", !5, i64 0}
!42 = !{!"_ZTSSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE", !43, i64 0}
!43 = !{!"_ZTSSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE", !44, i64 0}
!44 = !{!"_ZTSNSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE11_Deque_implE", !45, i64 0}
!45 = !{!"_ZTSNSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE16_Deque_impl_dataE", !46, i64 0, !20, i64 8, !47, i64 16, !47, i64 48}
!46 = !{!"p2 _ZTSSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EE", !35, i64 0}
!47 = !{!"_ZTSSt15_Deque_iteratorISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EERS6_PS6_E", !48, i64 0, !48, i64 8, !48, i64 16, !46, i64 24}
!48 = !{!"p1 _ZTSSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EE", !10, i64 0}
!49 = !{!"_ZTSSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EE", !5, i64 0}
!50 = !{!"_ZTSN6hermes2vm7HadesGC6OldGen13SweepIteratorE", !20, i64 0, !20, i64 8, !20, i64 16}
!51 = !{!20, !20, i64 0}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSN6hermes2vm7HadesGC6OldGen13SegmentBucketE", !54, i64 0, !54, i64 8, !55, i64 16}
!54 = !{!"p1 _ZTSN6hermes2vm7HadesGC6OldGen13SegmentBucketE", !10, i64 0}
!55 = !{!"_ZTSN6hermes2vm27AssignableCompressedPointerE", !56, i64 0}
!56 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !57, i64 0}
!57 = !{!"_ZTSN6hermes2vm12BasedPointerE", !4, i64 0}
!58 = !{!53, !54, i64 8}
!59 = !{!5, !5, i64 0}
!60 = !{!28, !29, i64 0}
!61 = !{}
!62 = !{i64 8}
!63 = !{!64, !67, i64 40}
!64 = !{!"_ZTSN6hermes2vm6GCBaseE", !4, i64 8, !20, i64 16, !65, i64 24, !66, i64 32, !67, i64 40, !68, i64 48, !73, i64 64, !74, i64 72, !76, i64 104, !24, i64 128, !24, i64 129, !24, i64 130, !24, i64 131, !81, i64 136, !83, i64 144, !20, i64 152, !20, i64 160, !84, i64 168, !87, i64 328, !89, i64 360, !92, i64 408, !95, i64 456, !5, i64 656, !106, i64 680, !4, i64 712, !24, i64 716}
!65 = !{!"_ZTSN6hermes2vm11GCExecTraceE"}
!66 = !{!"p1 _ZTSN6hermes2vm6GCBase11GCCallbacksE", !10, i64 0}
!67 = !{!"p1 _ZTSN6hermes2vm11PointerBaseE", !10, i64 0}
!68 = !{!"_ZTSSt10shared_ptrIN6hermes2vm12CrashManagerEE", !69, i64 0}
!69 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !71, i64 8}
!70 = !{!"p1 _ZTSN6hermes2vm12CrashManagerE", !10, i64 0}
!71 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0}
!72 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!73 = !{!"_ZTSN6hermes2vm6GCBase8HeapKindE", !5, i64 0}
!74 = !{!"_ZTSSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEE", !75, i64 0, !10, i64 24}
!75 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!76 = !{!"_ZTSSt6vectorIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !77, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE12_Vector_implE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!80 = !{!"p1 _ZTSN6hermes2vm16GCAnalyticsEventE", !10, i64 0}
!81 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !82, i64 0}
!82 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !20, i64 0}
!83 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !20, i64 0}
!84 = !{!"_ZTSN6hermes2vm6GCBase19CumulativeHeapStatsE", !4, i64 0, !85, i64 8, !85, i64 48, !4, i64 88, !86, i64 96, !86, i64 128}
!85 = !{!"_ZTSN6hermes16StatsAccumulatorIddEE", !4, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32}
!86 = !{!"_ZTSN6hermes16StatsAccumulatorIjmEE", !4, i64 0, !20, i64 8, !4, i64 16, !4, i64 20, !39, i64 24}
!87 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !88, i64 0, !20, i64 8, !5, i64 16}
!88 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!89 = !{!"_ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EEE", !90, i64 0, !20, i64 8, !38, i64 16, !91, i64 32, !39, i64 40}
!90 = !{!"p1 _ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EE5ChunkE", !10, i64 0}
!91 = !{!"p1 _ZTSN6hermes2vm11WeakRefSlotE", !10, i64 0}
!92 = !{!"_ZTSN6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EEE", !93, i64 0, !20, i64 8, !38, i64 16, !94, i64 32, !39, i64 40}
!93 = !{!"p1 _ZTSN6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE5ChunkE", !10, i64 0}
!94 = !{!"p1 _ZTSN6hermes2vm16WeakMapEntrySlotE", !10, i64 0}
!95 = !{!"_ZTSN6hermes2vm6GCBase9IDTrackerE", !96, i64 0, !4, i64 40, !98, i64 48, !98, i64 72, !100, i64 96, !102, i64 120, !98, i64 144, !104, i64 168, !24, i64 192}
!96 = !{!"_ZTSSt15recursive_mutex", !97, i64 0}
!97 = !{!"_ZTSSt22__recursive_mutex_base", !5, i64 0}
!98 = !{!"_ZTSN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEE", !99, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!99 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjjEE", !10, i64 0}
!100 = !{!"_ZTSN4llvh8DenseMapIPKvjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEE", !101, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!101 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPKvjEE", !10, i64 0}
!102 = !{!"_ZTSN4llvh8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS2_EEEE", !103, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!103 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjNS_11SmallVectorIjLj1EEEEE", !10, i64 0}
!104 = !{!"_ZTSN4llvh8DenseMapIdjN6hermes2vm6GCBase9IDTracker16DoubleComparatorENS_6detail12DenseMapPairIdjEEEE", !105, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!105 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIdjEE", !10, i64 0}
!106 = !{!"_ZTSSt8functionIFvRN6hermes2vm17GCTripwireContextEEE", !75, i64 0, !10, i64 24}
!107 = !{!57, !4, i64 0}
!108 = !{!109, !9, i64 0}
!109 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !9, i64 0, !110, i64 8}
!110 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !10, i64 0}
!111 = !{!28, !20, i64 6648}
!112 = !{!28, !20, i64 112}
!113 = !{!47, !48, i64 0}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZStplRKSt15_Deque_iteratorISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EERS6_PS6_El: argument 0"}
!116 = distinct !{!116, !"_ZStplRKSt15_Deque_iteratorISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EERS6_PS6_El"}
!117 = !{!47, !48, i64 8}
!118 = !{!47, !46, i64 24}
!119 = !{!48, !48, i64 0}
!120 = !{!36, !37, i64 0}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZStplRKSt15_Deque_iteratorIN6hermes2vm7HadesGC11HeapSegmentERS3_PS3_El: argument 0"}
!123 = distinct !{!123, !"_ZStplRKSt15_Deque_iteratorIN6hermes2vm7HadesGC11HeapSegmentERS3_PS3_El"}
!124 = !{!36, !37, i64 8}
!125 = !{!36, !34, i64 24}
!126 = !{!37, !37, i64 0}
!127 = !{!128, !9, i64 16}
!128 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !109, i64 0, !9, i64 16, !9, i64 24}
!129 = distinct !{!129, !130}
!130 = !{!"llvm.loop.mustprogress"}
!131 = !{!26, !26, i64 0}
!132 = !{!133, !10, i64 32}
!133 = !{!"_ZTSN6hermes2vm6VTableE", !20, i64 0, !134, i64 8, !4, i64 12, !10, i64 16, !10, i64 24, !10, i64 32}
!134 = !{!"_ZTSN6hermes2vm8CellKindE", !5, i64 0}
!135 = distinct !{null}
!136 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!137 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!138 = !{!133, !10, i64 16}
!139 = distinct !{null}
!140 = !{!28, !20, i64 6656}
!141 = !{!28, !20, i64 6664}
!142 = distinct !{!142, !130}
!143 = !{!144, !144, i64 0}
!144 = !{!"p1 _ZTSN6hermes2vm7HadesGC15CollectionStatsE", !10, i64 0}
!145 = !{!146, !20, i64 128}
!146 = !{!"_ZTSN6hermes2vm7HadesGC15CollectionStatsE", !29, i64 0, !87, i64 8, !87, i64 40, !147, i64 72, !81, i64 96, !81, i64 104, !83, i64 112, !83, i64 120, !20, i64 128, !20, i64 136, !20, i64 144, !20, i64 152, !20, i64 160, !20, i64 168}
!147 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !148, i64 0}
!148 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !149, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !150, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !151, i64 0, !151, i64 8, !151, i64 16}
!151 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!152 = !{!146, !20, i64 160}
!153 = !{!146, !20, i64 168}
!154 = !{!146, !20, i64 136}
!155 = !{!156, !39, i64 7664}
!156 = !{!"_ZTSN6hermes2vm7HadesGCE", !64, i64 0, !20, i64 720, !20, i64 728, !157, i64 736, !162, i64 760, !164, i64 776, !55, i64 808, !165, i64 816, !39, i64 840, !28, i64 848, !96, i64 7520, !170, i64 7560, !172, i64 7568, !178, i64 7632, !24, i64 7633, !179, i64 7640, !186, i64 7648, !24, i64 7656, !24, i64 7657, !24, i64 7658, !24, i64 7659, !39, i64 7664, !38, i64 7672, !193, i64 7688, !193, i64 7696, !84, i64 7704, !84, i64 7864, !38, i64 8024, !20, i64 8040, !199, i64 8048, !20, i64 8096, !202, i64 8104}
!157 = !{!"_ZTSSt6vectorImSaImEE", !158, i64 0}
!158 = !{!"_ZTSSt12_Vector_baseImSaImEE", !159, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !160, i64 0}
!160 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !161, i64 0, !161, i64 8, !161, i64 16}
!161 = !{!"p1 long", !10, i64 0}
!162 = !{!"_ZTSSt10shared_ptrIN6hermes2vm15StorageProviderEE", !163, i64 0}
!163 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm15StorageProviderELN9__gnu_cxx12_Lock_policyE2EE", !110, i64 0, !71, i64 8}
!164 = !{!"_ZTSN6hermes2vm7HadesGC11HeapSegmentE", !128, i64 0}
!165 = !{!"_ZTSSt6vectorIPN6hermes2vm6GCCellESaIS3_EE", !166, i64 0}
!166 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm6GCCellESaIS3_EE", !167, i64 0}
!167 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6GCCellESaIS3_EE12_Vector_implE", !168, i64 0}
!168 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6GCCellESaIS3_EE17_Vector_impl_dataE", !169, i64 0, !169, i64 8, !169, i64 16}
!169 = !{!"p2 _ZTSN6hermes2vm6GCCellE", !35, i64 0}
!170 = !{!"_ZTSSt6atomicIbE", !171, i64 0}
end_hunk_1

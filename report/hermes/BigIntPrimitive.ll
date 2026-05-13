inline.NumInlined: 309
inline.NumDeleted: 127
begin_hunk_0_@_ZN6hermes2vm15BigIntPrimitive6divideERNS0_7RuntimeENS0_6HandleIS1_EES5_:bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !120
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %2, align 8, !tbaa !51
  %i.f = and i64 %.sroa.0.0.copyload.i.i10, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !123
  %i.k = tail call noundef i32 @_ZN6hermes6bigint16divideResultSizeENS0_18ImmutableBigIntRefES1_(ptr nonnull %i.c, i32 %i.e, ptr nonnull %i.h, i32 %i.j) #8 ; 3 uses
  %i.l = icmp ugt i32 %i.k, 1024
  br i1 %i.l, label %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, label %bb.b

_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.m, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 28, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !42
  store ptr @.str.2, ptr %3, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.p, align 8, !tbaa !43
  %i.q = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %_ZN6hermes2vm15BigIntPrimitive8binaryOpERNS0_7RuntimeEPFNS_6bigint15OperationStatusENS4_16MutableBigIntRefENS4_18ImmutableBigIntRefES7_ENS0_6HandleIS1_EESB_j.exit

bb.b:                                             ; preds = %bb.a
  %i.r = shl nuw nsw i32 %i.k, 3
  %i.s = add nuw nsw i32 %i.r, 8                  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = zext nneg i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.w, %i.y
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.aa = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.z, i32 noundef %i.s) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.w, ptr %i.t, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %i.aa, %bb.c ], [ %i.u, %bb.d ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i32 %i.k, ptr %i.ac, align 4, !tbaa !27
  %i.ad = or disjoint i32 %i.s, 1291845632
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !126
  %.sroa.0.0.copyload.i.i14.i = load i64, ptr %2, align 8, !tbaa !51
  %i.ak = and i64 %.sroa.0.0.copyload.i.i14.i, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3, !noalias !129
  %i.ap = tail call noundef i32 @_ZN6hermes6bigint6divideENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr nonnull %i.ae, ptr nonnull %i.ac, ptr nonnull %i.ah, i32 %i.aj, ptr nonnull %i.am, i32 %i.ao) #8, !inline_history !95 ; 2 uses
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !44

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.ap)
  br label %_ZN6hermes2vm15BigIntPrimitive8binaryOpERNS0_7RuntimeEPFNS_6bigint15OperationStatusENS4_16MutableBigIntRefENS4_18ImmutableBigIntRefES7_ENS0_6HandleIS1_EESB_j.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = ptrtoint ptr %i.ab to i64
  %i.as = or i64 %i.ar, -562949953421312
  br label %_ZN6hermes2vm15BigIntPrimitive8binaryOpERNS0_7RuntimeEPFNS_6bigint15OperationStatusENS4_16MutableBigIntRefENS4_18ImmutableBigIntRefES7_ENS0_6HandleIS1_EESB_j.exit

_ZN6hermes2vm15BigIntPrimitive8binaryOpERNS0_7RuntimeEPFNS_6bigint15OperationStatusENS4_16MutableBigIntRefENS4_18ImmutableBigIntRefES7_ENS0_6HandleIS1_EESB_j.exit: ; preds = %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, %bb.f, %bb.g
  %.sroa.024.0.i = phi i32 [ %i.aq, %bb.f ], [ 1, %bb.g ], [ 0, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ]
  %.sroa.425.0.i = phi i64 [ undef, %bb.f ], [ %i.as, %bb.g ], [ undef, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.024.0.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.425.0.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

declare noundef i32 @_ZN6hermes6bigint16divideResultSizeENS0_18ImmutableBigIntRefES1_(ptr, i32, ptr, i32) local_unnamed_addr #4

declare noundef i32 @_ZN6hermes6bigint6divideENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr, ptr, ptr, i32, ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive9remainderERNS0_7RuntimeENS0_6HandleIS1_EES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !132
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %2, align 8, !tbaa !51
  %i.f = and i64 %.sroa.0.0.copyload.i.i10, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !135
  %i.k = tail call noundef i32 @_ZN6hermes6bigint19remainderResultSizeENS0_18ImmutableBigIntRefES1_(ptr nonnull %i.c, i32 %i.e, ptr nonnull %i.h, i32 %i.j) #8 ; 3 uses
  %i.l = icmp ugt i32 %i.k, 1024
  br i1 %i.l, label %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, label %bb.b

_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.m, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 28, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !42
  store ptr @.str.2, ptr %3, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.p, align 8, !tbaa !43
  %i.q = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %_ZN6hermes2vm15BigIntPrimitive8binaryOpERNS0_7RuntimeEPFNS_6bigint15OperationStatusENS4_16MutableBigIntRefENS4_18ImmutableBigIntRefES7_ENS0_6HandleIS1_EESB_j.exit

bb.b:                                             ; preds = %bb.a
  %i.r = shl nuw nsw i32 %i.k, 3
  %i.s = add nuw nsw i32 %i.r, 8                  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = zext nneg i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.w, %i.y
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.aa = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.z, i32 noundef %i.s) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.w, ptr %i.t, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %i.aa, %bb.c ], [ %i.u, %bb.d ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i32 %i.k, ptr %i.ac, align 4, !tbaa !27
  %i.ad = or disjoint i32 %i.s, 1291845632
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !138
  %.sroa.0.0.copyload.i.i14.i = load i64, ptr %2, align 8, !tbaa !51
  %i.ak = and i64 %.sroa.0.0.copyload.i.i14.i, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3, !noalias !141
  %i.ap = tail call noundef i32 @_ZN6hermes6bigint9remainderENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr nonnull %i.ae, ptr nonnull %i.ac, ptr nonnull %i.ah, i32 %i.aj, ptr nonnull %i.am, i32 %i.ao) #8, !inline_history !95 ; 2 uses
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !44

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.ap)
  br label %_ZN6hermes2vm15BigIntPrimitive8binaryOpERNS0_7RuntimeEPFNS_6bigint15OperationStatusENS4_16MutableBigIntRefENS4_18ImmutableBigIntRefES7_ENS0_6HandleIS1_EESB_j.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = ptrtoint ptr %i.ab to i64
  %i.as = or i64 %i.ar, -562949953421312
  br label %_ZN6hermes2vm15BigIntPrimitive8binaryOpERNS0_7RuntimeEPFNS_6bigint15OperationStatusENS4_16MutableBigIntRefENS4_18ImmutableBigIntRefES7_ENS0_6HandleIS1_EESB_j.exit

_ZN6hermes2vm15BigIntPrimitive8binaryOpERNS0_7RuntimeEPFNS_6bigint15OperationStatusENS4_16MutableBigIntRefENS4_18ImmutableBigIntRefES7_ENS0_6HandleIS1_EESB_j.exit: ; preds = %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, %bb.f, %bb.g
  %.sroa.024.0.i = phi i32 [ %i.aq, %bb.f ], [ 1, %bb.g ], [ 0, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ]
  %.sroa.425.0.i = phi i64 [ undef, %bb.f ], [ %i.as, %bb.g ], [ undef, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.024.0.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.425.0.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

declare noundef i32 @_ZN6hermes6bigint19remainderResultSizeENS0_18ImmutableBigIntRefES1_(ptr, i32, ptr, i32) local_unnamed_addr #4

declare noundef i32 @_ZN6hermes6bigint9remainderENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr, ptr, ptr, i32, ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive12exponentiateERNS0_7RuntimeENS0_6HandleIS1_EES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.hermes::bigint::TmpStorage", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 1024, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !144
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !146
  store i32 0, ptr %i.c, align 8, !tbaa !147
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull %i.b, i64 noundef 1024, i64 noundef 8) #8
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !144 ; 4 uses
  store i32 1024, ptr %i.c, align 8, !tbaa !147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %.pre.i.i, i8 0, i64 8192, i1 false), !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %5 = load i32, ptr %i.a, align 4, !tbaa !3
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %6
  store ptr %7, ptr %i.e, align 8, !tbaa !148
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.f = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !156
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %2, align 8, !tbaa !51
  %i.k = and i64 %.sroa.0.0.copyload.i.i15, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3, !noalias !159
  %i.p = call noundef i32 @_ZN6hermes6bigint12exponentiateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr nonnull %.pre.i.i, ptr nonnull %i.a, ptr nonnull %i.h, i32 %i.j, ptr nonnull %i.m, i32 %i.o) #8 ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.q = call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.p)
  br label %_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE.exit

bb.c:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.s = shl i32 %i.r, 3                          ; 3 uses
  %i.t = zext i32 %i.s to i64
  %i.u = and i32 %i.r, 536870911
  %i.v = icmp ugt i32 %i.s, 8199
  br i1 %i.v, label %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, label %bb.d

_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 28, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.y, align 8, !tbaa !42
  store ptr @.str.2, ptr %3, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.z, align 8, !tbaa !43
  %i.aa = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = add nuw nsw i32 %i.s, 8                 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.af, %i.ah
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.e, label %bb.f, !prof !36

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.aj = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ai, i32 noundef %i.ab) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = phi ptr [ %i.aj, %bb.e ], [ %i.ad, %bb.f ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  store i32 %i.u, ptr %i.al, align 4, !tbaa !27
  %i.am = or disjoint i32 %i.ab, 1291845632
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !37
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = call noundef i32 @_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE(ptr nonnull %i.ao, ptr nonnull %i.al, ptr nonnull %.pre.i.i, i64 %i.t) #8
  %i.aq = call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.ap)
  %i.ar = or i64 %i.an, -562949953421312
  br label %_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE.exit

_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE.exit: ; preds = %bb.g, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, %bb.b
  %.sroa.023.0 = phi i32 [ %i.q, %bb.b ], [ 0, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ], [ %i.ar, %bb.g ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !144   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.b
  br i1 %i.at, label %_ZN6hermes6bigint10TmpStorageD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE.exit
  call void @free(ptr noundef %i.as) #8
  br label %_ZN6hermes6bigint10TmpStorageD2Ev.exit

_ZN6hermes6bigint10TmpStorageD2Ev.exit:           ; preds = %_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.023.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes6bigint12exponentiateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr, ptr, ptr, i32, ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive10bitwiseANDERNS0_7RuntimeENS0_6HandleIS1_EES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !162
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %2, align 8, !tbaa !51
  %i.f = and i64 %.sroa.0.0.copyload.i.i10, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !165
  %i.k = tail call noundef i32 @_ZN6hermes6bigint20bitwiseANDResultSizeENS0_18ImmutableBigIntRefES1_(ptr nonnull %i.c, i32 %i.e, ptr nonnull %i.h, i32 %i.j) #8 ; 3 uses
  %i.l = icmp ugt i32 %i.k, 1024
  br i1 %i.l, label %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, label %bb.b

_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.m, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 28, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !42
  store ptr @.str.2, ptr %3, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.p, align 8, !tbaa !43
  %i.q = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %_ZN6hermes2vm15BigIntPrimitive8binaryOpERNS0_7RuntimeEPFNS_6bigint15OperationStatusENS4_16MutableBigIntRefENS4_18ImmutableBigIntRefES7_ENS0_6HandleIS1_EESB_j.exit

bb.b:                                             ; preds = %bb.a
  %i.r = shl nuw nsw i32 %i.k, 3
  %i.s = add nuw nsw i32 %i.r, 8                  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = zext nneg i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.w, %i.y
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.aa = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.z, i32 noundef %i.s) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.w, ptr %i.t, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %i.aa, %bb.c ], [ %i.u, %bb.d ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i32 %i.k, ptr %i.ac, align 4, !tbaa !27
  %i.ad = or disjoint i32 %i.s, 1291845632
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !168
  %.sroa.0.0.copyload.i.i14.i = load i64, ptr %2, align 8, !tbaa !51
  %i.ak = and i64 %.sroa.0.0.copyload.i.i14.i, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3, !noalias !171
  %i.ap = tail call noundef i32 @_ZN6hermes6bigint10bitwiseANDENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr nonnull %i.ae, ptr nonnull %i.ac, ptr nonnull %i.ah, i32 %i.aj, ptr nonnull %i.am, i32 %i.ao) #8, !inline_history !95 ; 2 uses
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !44

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.ap)
  br label %_ZN6hermes2vm15BigIntPrimitive8binaryOpERNS0_7RuntimeEPFNS_6bigint15OperationStatusENS4_16MutableBigIntRefENS4_18ImmutableBigIntRefES7_ENS0_6HandleIS1_EESB_j.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = ptrtoint ptr %i.ab to i64
  %i.as = or i64 %i.ar, -562949953421312
  br label %_ZN6hermes2vm15BigIntPrimitive8binaryOpERNS0_7RuntimeEPFNS_6bigint15OperationStatusENS4_16MutableBigIntRefENS4_18ImmutableBigIntRefES7_ENS0_6HandleIS1_EESB_j.exit

_ZN6hermes2vm15BigIntPrimitive8binaryOpERNS0_7RuntimeEPFNS_6bigint15OperationStatusENS4_16MutableBigIntRefENS4_18ImmutableBigIntRefES7_ENS0_6HandleIS1_EESB_j.exit: ; preds = %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, %bb.f, %bb.g
  %.sroa.024.0.i = phi i32 [ %i.aq, %bb.f ], [ 1, %bb.g ], [ 0, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ]
  %.sroa.425.0.i = phi i64 [ undef, %bb.f ], [ %i.as, %bb.g ], [ undef, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.024.0.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.425.0.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

declare noundef i32 @_ZN6hermes6bigint20bitwiseANDResultSizeENS0_18ImmutableBigIntRefES1_(ptr, i32, ptr, i32) local_unnamed_addr #4

declare noundef i32 @_ZN6hermes6bigint10bitwiseANDENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr, ptr, ptr, i32, ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive9bitwiseORERNS0_7RuntimeENS0_6HandleIS1_EES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
end_hunk_0

inline.NumInlined: 1072
inline.NumDeleted: 582
begin_hunk_0_@_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.k, %i.m
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.o = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.n, i32 noundef 16) #13
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit

bb.e:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.i, align 8, !tbaa !66
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit: ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store double %0, ptr %i.q, align 8, !tbaa !29
  store i32 402653200, ptr %i.p, align 8, !tbaa !40
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = or i32 %i.u, 3
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit, %bb.b
  %.sroa.0.0 = phi i32 [ %i.h, %bb.b ], [ %i.v, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm7JSArray25createAndAllocPropStorageERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN6hermes2vm7JSArray24createNoAllocPropStorageERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, i32 noundef %3, i32 noundef %4) ; 3 uses
  %.not = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !33
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !90   ; 2 uses
  %i.f = icmp ult i32 %i.e, 6
  br i1 %i.f, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %i.e, -5                         ; 2 uses
  %i.h = tail call { i32, i64 } @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.g, i32 noundef %i.g) ; 2 uses
  %i.i = extractvalue { i32, i64 } %i.h, 0
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN6hermes2vm8JSObject19allocatePropStorageENS0_6HandleIS1_EERNS0_7RuntimeEj.exit, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i32, i64 } %i.h, 1        ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !33
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = and i64 %i.q, 562949949227008
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = icmp eq ptr %i.p, %i.s
  br i1 %i.t, label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i, label %bb.e, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.u = and i64 %i.k, 281474976710655
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.w = inttoptr i64 %i.u to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef %i.w) #13
  br label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i: ; preds = %bb.e, %bb.d
  %i.x = ptrtoint ptr %0 to i64
  %i.y = sub i64 %i.k, %i.x
  %i.z = trunc i64 %i.y to i32
  store i32 %i.z, ptr %i.n, align 4, !tbaa !3
  br label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit

_ZN6hermes2vm8JSObject19allocatePropStorageENS0_6HandleIS1_EERNS0_7RuntimeEj.exit: ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #14
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit: ; preds = %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.c = tail call ptr @_ZN6hermes2vm7JSArray24createNoAllocPropStorageERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %1, i32 noundef %2)
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 258) i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, i32 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  %i.c = bitcast i64 %i.a to double               ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.d, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.d = fptoui double %i.c to i64                ; 2 uses
  %i.e = shl i64 %i.d, 1
  %i.f = ashr exact i64 %i.e, 1
  %i.g = sitofp i64 %i.f to double
  %i.h = fcmp une double %i.c, %i.g
  %i.i = trunc i64 %i.d to i32
  br i1 %i.h, label %bb.c, label %_ZN6hermes16truncateToUInt32Ed.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.c) #13
  br label %_ZN6hermes16truncateToUInt32Ed.exit

bb.d:                                             ; preds = %bb.a
  %i.k = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #13 ; 2 uses
  %i.l = extractvalue { i32, i64 } %i.k, 0
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge, label %bb.e, !prof !32

bb.e:                                             ; preds = %bb.d
  %i.n = extractvalue { i32, i64 } %i.k, 1
  %i.o = bitcast i64 %i.n to double               ; 4 uses
  %i.p = fptoui double %i.o to i64                ; 2 uses
  %i.q = shl i64 %i.p, 1
  %i.r = ashr exact i64 %i.q, 1
  %i.s = sitofp i64 %i.r to double
  %i.t = fcmp une double %i.o, %i.s
  %i.u = trunc i64 %i.p to i32
  br i1 %i.t, label %bb.f, label %_ZN6hermes16truncateToUInt32Ed.exit19

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.o) #13
  br label %_ZN6hermes16truncateToUInt32Ed.exit19

_ZN6hermes16truncateToUInt32Ed.exit19:            ; preds = %bb.e, %bb.f
  %.1.i.i17 = phi i32 [ %i.u, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.w = load i64, ptr %2, align 8, !tbaa !100
  %.mask.i = and i64 %i.w, -281474976710656
  %i.x = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.x, label %_ZN6hermes16truncateToUInt32Ed.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes16truncateToUInt32Ed.exit19
  %i.y = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #13 ; 2 uses
  %i.z = extractvalue { i32, i64 } %i.y, 0
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.critedge, label %bb.h, !prof !32

bb.h:                                             ; preds = %bb.g
  %i.ab = extractvalue { i32, i64 } %i.y, 1
  %i.ac = bitcast i64 %i.ab to double
  br label %_ZN6hermes16truncateToUInt32Ed.exit

_ZN6hermes16truncateToUInt32Ed.exit:              ; preds = %bb.h, %_ZN6hermes16truncateToUInt32Ed.exit19, %bb.c, %bb.b
  %.2 = phi double [ %i.c, %bb.c ], [ %i.ac, %bb.h ], [ %i.c, %bb.b ], [ %i.o, %_ZN6hermes16truncateToUInt32Ed.exit19 ]
  %.1 = phi i32 [ %i.j, %bb.c ], [ %.1.i.i17, %bb.h ], [ %i.i, %bb.b ], [ %.1.i.i17, %_ZN6hermes16truncateToUInt32Ed.exit19 ] ; 2 uses
  %i.ad = uitofp i32 %.1 to double
  %i.ae = fcmp une double %.2, %i.ad
  br i1 %i.ae, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes16truncateToUInt32Ed.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.af, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 20, ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ah, align 8, !tbaa !39
  store ptr @.str.2, ptr %4, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ai, align 8, !tbaa !41
  %i.aj = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  %i.ak = and i32 %i.aj, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.critedge

bb.i:                                             ; preds = %_ZN6hermes16truncateToUInt32Ed.exit
  %i.al = tail call i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.1, i32 %3)
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.g, %bb.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.028.1 = phi i32 [ %i.ak, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.al, %bb.i ], [ 0, %bb.d ], [ 0, %bb.g ]
  ret i32 %.sroa.028.1
}

declare { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 258) i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, i32 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %4 = alloca %"class.llvh::SmallVector.184", align 8 ; 9 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %6 = alloca %class.anon, align 8                ; 7 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %11 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !33
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 4, !tbaa !3 ; 3 uses
  %i.e = and i32 %.sroa.0.0.copyload.i.i, 7
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.g = ashr i32 %.sroa.0.0.copyload.i.i, 3
  %i.h = sitofp i32 %i.g to double
  br label %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = and i32 %.sroa.0.0.copyload.i.i, -8
  %i.j = ptrtoint ptr %1 to i64
  %i.k = zext i32 %i.i to i64
  %i.l = add i64 %i.k, %i.j
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !29
  br label %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit

_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi double [ %i.h, %bb.b ], [ %i.o, %bb.c ]
  %i.p = fptoui double %.0.i.i to i32             ; 2 uses
  %.not = icmp ult i32 %2, %i.p
  br i1 %.not, label %bb.j, label %bb.d, !prof !32

bb.d:                                             ; preds = %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit
  %i.q = uitofp i32 %2 to double                  ; 2 uses
  %i.r = shl i32 %2, 3                            ; 2 uses
  %i.s = ashr exact i32 %i.r, 3
  %i.t = bitcast double %i.q to i64
  %i.u = sitofp i32 %i.s to double
  %i.v = bitcast double %i.u to i64
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.x = or disjoint i32 %i.r, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !68
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.aa, %i.ac
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.g, label %bb.h, !prof !32

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ae = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ad, i32 noundef 16) #13
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !66
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i: ; preds = %bb.h, %bb.g
  %i.af = phi ptr [ %i.ae, %bb.g ], [ %i.z, %bb.h ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store double %i.q, ptr %i.ag, align 8, !tbaa !29
  store i32 402653200, ptr %i.af, align 8, !tbaa !40
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = or i32 %i.ak, 3
  %.sroa.0.0.copyload.i.i.i35.pre = load i64, ptr %0, align 8, !tbaa !33
  %.pre98.a = and i64 %.sroa.0.0.copyload.i.i.i35.pre, 281474976710655
  %.pre100 = inttoptr i64 %.pre98.a to ptr
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit: ; preds = %bb.e, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i
  %.pre-phi101 = phi ptr [ %i.c, %bb.e ], [ %.pre100, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i ]
  %.sroa.0.0.i = phi i32 [ %i.x, %bb.e ], [ %i.al, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre-phi101, i64 32 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = and i64 %i.ap, 562949949227008
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = icmp eq ptr %i.ao, %i.ar
  br i1 %i.as, label %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit, label %bb.i, !prof !28

bb.i:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.am, i32 %.sroa.0.0.i) #13
  br label %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit

_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit: ; preds = %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit, %bb.i
  store i32 %.sroa.0.0.i, ptr %i.am, align 4, !tbaa !26
  br label %bb.x

bb.j:                                             ; preds = %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 2
  %.not31 = icmp eq i32 %i.aw, 0
  br i1 %.not31, label %..loopexit_crit_edge, label %bb.k, !prof !28

..loopexit_crit_edge:                             ; preds = %bb.j
  %.pre102 = ptrtoint ptr %1 to i64
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i32, ptr %.sroa_idx, align 4
  %.sroa.speculated61 = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 %2) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.p) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bb = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.bc = icmp ugt i32 %.sroa.speculated, %.sroa.speculated61
  br i1 %i.bc, label %.lr.ph117.preheader, label %.loopexit

.lr.ph117.preheader:                              ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bd = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.be = add i64 %i.bd, %i.bb
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16392
  br label %.lr.ph117

bb.l:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl8unsafeAtERNS0_7RuntimeEj.exit
  %i.bh = icmp ugt i32 %i.bi, %.sroa.speculated61
  br i1 %i.bh, label %.lr.ph117, label %.loopexit, !llvm.loop !102

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %bb.l
  %.029115 = phi i32 [ %i.bi, %bb.l ], [ %.sroa.speculated, %.lr.ph117.preheader ] ; 3 uses
  %i.bi = add i32 %.029115, -1                    ; 3 uses
  %i.bj = sub i32 %i.bi, %i.ay                    ; 4 uses
  %i.bk = icmp ult i32 %i.bj, 4096
  br i1 %i.bk, label %_ZNK6hermes2vm9ArrayImpl8unsafeAtERNS0_7RuntimeEj.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph117
  %i.bl = add i32 %i.bj, -4096
  %i.bm = lshr i32 %i.bl, 10
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !26
  %i.bq = zext i32 %i.bp to i64
  %i.br = add i64 %i.bq, %i.bb
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = and i32 %i.bj, 1023
  br label %_ZNK6hermes2vm9ArrayImpl8unsafeAtERNS0_7RuntimeEj.exit

_ZNK6hermes2vm9ArrayImpl8unsafeAtERNS0_7RuntimeEj.exit: ; preds = %.lr.ph117, %bb.m
  %.sink8.i.i = phi ptr [ %i.bs, %bb.m ], [ %i.bf, %.lr.ph117 ]
  %.sink7.i.i = phi i32 [ %i.bt, %bb.m ], [ %i.bj, %.lr.ph117 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sink8.i.i, i64 8
  %i.bv = zext nneg i32 %.sink7.i.i to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %.sroa.0.0.i.i = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.bx = icmp eq i32 %.sroa.0.0.i.i, 7
  br i1 %i.bx, label %bb.l, label %bb.n, !llvm.loop !102

bb.n:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl8unsafeAtERNS0_7RuntimeEj.exit
  store i32 %.029115, ptr %i.a, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %..loopexit_crit_edge, %bb.n
  %.pre-phi103 = phi i64 [ %.pre102, %..loopexit_crit_edge ], [ %i.bb, %bb.n ], [ %i.bb, %bb.k ], [ %i.bb, %bb.l ]
  %i.by = phi i32 [ %2, %..loopexit_crit_edge ], [ %.029115, %bb.n ], [ %2, %bb.k ], [ %2, %bb.l ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i40 = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.ca = zext i32 %.sroa.0.0.copyload.i.i40 to i64
  %i.cb = add i64 %.pre-phi103, %i.ca
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  %i.ce = load i8, ptr %i.cd, align 2
  %i.cf = and i8 %i.ce, 4
  %.not86 = icmp eq i8 %i.cf, 0
  br i1 %.not86, label %bb.s, label %bb.o, !prof !28

bb.o:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.cg, ptr %4, align 8, !tbaa !103
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.ch, align 8, !tbaa !104
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.ci, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %1, ptr %5, align 8, !tbaa !106
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !42
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !107
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !103
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 4, ptr %i.cq, align 4, !tbaa !105
  store ptr %i.cn, ptr %i.co, align 8
  store i32 1, ptr %i.cp, align 8, !tbaa !104
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.cn, ptr %i.cr, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %i.cm, ptr %i.cs, align 8, !tbaa !56
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 3 uses
  store i32 0, ptr %i.ct, align 8, !tbaa !108
  store ptr %5, ptr %i.ck, align 8, !tbaa !42
  %i.cu = call ptr @_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr %1, ptr %6, align 8, !tbaa !109
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.a, ptr %i.cv, align 8, !tbaa !111
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.cw, align 8, !tbaa !113
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %i.cx, align 8, !tbaa !115
  call fastcc void @"_ZN6hermes2vm11HiddenClass15forEachPropertyIZNS0_7JSArray9setLengthENS0_6HandleIS3_EERNS0_7RuntimeEjNS0_11PropOpFlagsEE3$_0EEvNS4_IS1_EES7_RKT_"(ptr %i.cu, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.cy = load ptr, ptr %4, align 8, !tbaa !103, !noalias !116 ; 2 uses
  %i.cz = load i32, ptr %i.ch, align 8, !tbaa !104, !noalias !116 ; 2 uses
  %.not8789 = icmp eq i32 %i.cz, 0
  br i1 %.not8789, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.da = zext i32 %i.cz to i64
  %.idx = shl nuw nsw i64 %i.da, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.r, %bb.o
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.dc = load ptr, ptr %4, align 8, !tbaa !103   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cg
  br i1 %i.dd, label %_ZN4llvh11SmallVectorISt4pairIjN6hermes2vm8SymbolIDEELj8EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.dc) #13
  br label %_ZN4llvh11SmallVectorISt4pairIjN6hermes2vm8SymbolIDEELj8EED2Ev.exit

_ZN4llvh11SmallVectorISt4pairIjN6hermes2vm8SymbolIDEELj8EED2Ev.exit: ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.pre.a = load i32, ptr %i.a, align 4, !tbaa !3
  %.sroa.0.0.copyload.i.i43.pre = load i64, ptr %0, align 8, !tbaa !33
  %.pre95 = and i64 %.sroa.0.0.copyload.i.i43.pre, 281474976710655
  %.pre96.a = inttoptr i64 %.pre95 to ptr
  br label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %.sroa.052.090 = phi ptr [ %12, %bb.r ], [ %i.db, %.lr.ph.preheader ] ; 2 uses
  %12 = getelementptr inbounds i8, ptr %.sroa.052.090, i64 -8 ; 3 uses
  %13 = load i32, ptr %12, align 4, !tbaa !119
  %i.de = load i32, ptr %i.a, align 4, !tbaa !3
  %.not34 = icmp ult i32 %13, %i.de
  br i1 %.not34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.df = load ptr, ptr %i.cr, align 8, !tbaa !46
  %i.dg = load i32, ptr %i.ct, align 8, !tbaa !108 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.052.090, i64 -4
  %.sroa.02.0.copyload = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.di = call i32 @_ZN6hermes2vm8JSObject11deleteNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %.sroa.02.0.copyload, i32 0) #13 ; 0 uses
  %i.dj = zext i32 %i.dg to i64
  %i.dk = load ptr, ptr %i.cm, align 8, !tbaa !103
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !121
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 128
  store i32 %i.dg, ptr %i.ct, align 8, !tbaa !108
  store ptr %i.dn, ptr %i.cs, align 8, !tbaa !56
  store ptr %i.df, ptr %i.cr, align 8, !tbaa !46
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %.not87 = icmp eq ptr %12, %i.cy
  br i1 %.not87, label %._crit_edge, label %.lr.ph, !llvm.loop !122

bb.s:                                             ; preds = %_ZN4llvh11SmallVectorISt4pairIjN6hermes2vm8SymbolIDEELj8EED2Ev.exit, %.loopexit
  %.pre-phi97 = phi ptr [ %.pre96.a, %_ZN4llvh11SmallVectorISt4pairIjN6hermes2vm8SymbolIDEELj8EED2Ev.exit ], [ %i.c, %.loopexit ]
  %i.do = phi i32 [ %.pre.a, %_ZN4llvh11SmallVectorISt4pairIjN6hermes2vm8SymbolIDEELj8EED2Ev.exit ], [ %i.by, %.loopexit ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.pre-phi97, i64 24
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !25
  %i.dr = icmp ult i32 %i.do, %i.dq
  br i1 %i.dr, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ds = call noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.do)
  %.not32 = icmp eq i32 %i.ds, 0
  br i1 %.not32, label %bb.w, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.t
  %.pre94 = load i32, ptr %i.a, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.s
  %i.dt = phi i32 [ %.pre94, %..critedge_crit_edge ], [ %i.do, %bb.s ]
  %i.du = uitofp i32 %i.dt to double
  %i.dv = call i32 @_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE(double noundef %i.du, ptr noundef nonnull align 8 dereferenceable(9816) %1) ; 2 uses
  %.sroa.0.0.copyload.i.i.i44 = load i64, ptr %0, align 8, !tbaa !33
  %i.dw = and i64 %.sroa.0.0.copyload.i.i.i44, 281474976710655
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !57
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = and i64 %i.eb, 562949949227008
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = icmp eq ptr %i.ea, %i.ed
  br i1 %i.ee, label %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit45, label %bb.u, !prof !28

bb.u:                                             ; preds = %.critedge
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ef, ptr noundef nonnull align 4 dereferenceable(4) %i.dy, i32 %i.dv) #13
  br label %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit45

_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit45: ; preds = %.critedge, %bb.u
  store i32 %i.dv, ptr %i.dy, align 4, !tbaa !26
  %i.eg = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not33 = icmp eq i32 %i.eg, %2
  br i1 %.not33, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit45
  %i.eh = trunc i32 %3 to i1
  br i1 %i.eh, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.w

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 1, ptr %i.ei, align 8, !tbaa !35
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 24, ptr %i.ej, align 8, !tbaa !38
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.ek, align 8, !tbaa !39
  store ptr @.str.3, ptr %9, align 8, !tbaa !40
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %i.el, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.em = add i32 %i.eg, -1                       ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 7, ptr %i.en, align 8, !tbaa !41
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.eo, align 8, !tbaa !35
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.ep, align 8, !tbaa !39
  %i.eq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %i.em) #13
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %i.er, ptr %i.es, align 8, !tbaa !38
  store i32 %i.em, ptr %10, align 8, !tbaa !40
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 1, ptr %i.et, align 8, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 1, ptr %i.eu, align 8, !tbaa !38
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.ev, align 8, !tbaa !39
  store ptr @.str.4, ptr %11, align 8, !tbaa !40
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 3, ptr %i.ew, align 8, !tbaa !41
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %11)
  %i.ex = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #13
  %i.ey = and i32 %i.ex, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.w

bb.w:                                             ; preds = %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit45, %bb.v, %bb.t, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.080.0 = phi i32 [ 0, %bb.t ], [ 1, %bb.v ], [ %i.ey, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 257, %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit
  %.sroa.080.1 = phi i32 [ %.sroa.080.0, %bb.w ], [ 257, %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit ]
  ret i32 %.sroa.080.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN6hermes2vm11HiddenClass15forEachPropertyIZNS0_7JSArray9setLengthENS0_6HandleIS3_EERNS0_7RuntimeEjNS0_11PropOpFlagsEE3$_0EEvNS4_IS1_EES7_RKT_"(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !33
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 4, !tbaa !123
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm11HiddenClass28initializeMissingPropertyMapENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13
  %.sroa.0.0.copyload.i.i5.pre = load i64, ptr %0, align 8, !tbaa !33
  %.pre11 = and i64 %.sroa.0.0.copyload.i.i5.pre, 281474976710655
  %.pre12 = inttoptr i64 %.pre11 to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi13 = phi ptr [ %.pre12, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.pre-phi13, i64 16
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.e, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.f = ptrtoint ptr %1 to i64
  %i.g = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.h = add i64 %i.g, %i.f
  %i.i = or i64 %i.h, -281474976710656
  %i.j = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !46
  store i64 %i.j, ptr %i.n, align 8, !tbaa !33
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.s = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.l, i64 %i.j) #13 ; 2 uses
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !42  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre9 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.sroa.0.0.copyload.i.i.i6.pre = load i64, ptr %i.s, align 8, !tbaa !33
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i.i6 = phi i64 [ %i.j, %bb.d ], [ %.sroa.0.0.copyload.i.i.i6.pre, %bb.e ]
  %i.t = phi ptr [ %i.r, %bb.d ], [ %.pre9, %bb.e ] ; 2 uses
  %i.u = phi ptr [ %i.l, %bb.d ], [ %.pre, %bb.e ] ; 6 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.s, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 208 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !108  ; 4 uses
  %i.y = and i64 %.sroa.0.0.copyload.i.i.i6, 281474976710655
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4 ; 2 uses
  %.not18.i = icmp eq i32 %i.ab, 0
  br i1 %.not18.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %.pre.i = zext i32 %i.x to i64
  br label %"_ZN6hermes2vm15DictPropertyMap15forEachPropertyIZNS0_7JSArray9setLengthENS0_6HandleIS3_EERNS0_7RuntimeEjNS0_11PropOpFlagsEE3$_0EEvNS4_IS1_EES7_RKT_.exit"

.lr.ph.i:                                         ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.ag = zext i32 %i.x to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.ai = zext i32 %i.ab to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %.sroa.0.0.copyload.i.i11.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !33
  %i.aj = and i64 %.sroa.0.0.copyload.i.i11.i, 281474976710655
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %indvars.iv.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !124 ; 3 uses
  %i.ao = icmp ult i32 %i.an, 536870910
  br i1 %i.ao, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
end_hunk_0

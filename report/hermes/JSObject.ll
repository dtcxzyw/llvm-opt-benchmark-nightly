inline.NumInlined: 2965
inline.NumDeleted: 1136
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm8JSObject8isSealedENS0_12PseudoHandleIS1_EERNS0_7RuntimeE:bb.a
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !42

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !46
  store i64 %i.z, ptr %i.q, align 8, !tbaa !40
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ad = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.z) #17
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i6 = phi ptr [ %i.q, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = tail call noundef zeroext i1 @_ZN6hermes2vm11HiddenClass21areAllNonConfigurableENS0_6HandleIS1_EERNS0_7RuntimeE(ptr %.0.i.i.i.i.i.i6, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %.sroa.0.0.copyload.i.i.i7 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !40
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i7, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = lshr i32 %i.ah, 24
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !319
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !520
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 0) #17, !inline_history !521
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i8 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !40
  %i.ap = and i64 %.sroa.0.0.copyload.i.i8, 281474976710655
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = or i32 %i.as, 2
  store i32 %i.at, ptr %i.ar, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit, %bb.h, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.i ], [ false, %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit ], [ false, %bb.h ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN6hermes2vm11HiddenClass21areAllNonConfigurableENS0_6HandleIS1_EERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm8JSObject8isFrozenENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %0 to i64
  %i.f = or i64 %i.e, -281474976710656            ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 2 uses
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !46
  store i64 %i.f, ptr %i.j, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.h, i64 %i.f) #17 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.o, align 8, !tbaa !40
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !43  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre17 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre19 = load ptr, ptr %.phi.trans.insert18, align 8, !tbaa !56
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.l, %bb.d ], [ %.pre19, %bb.e ]
  %i.q = phi ptr [ %i.n, %bb.d ], [ %.pre17, %bb.e ] ; 4 uses
  %i.r = phi ptr [ %i.h, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.f, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.j, %bb.d ], [ %i.o, %bb.e ] ; 3 uses
  %i.s = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.u, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.v = ptrtoint ptr %1 to i64
  %i.w = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.x = add i64 %i.w, %i.v
  %i.y = or i64 %i.x, -281474976710656
  %i.z = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.y ; 2 uses
  %i.aa = icmp ult ptr %i.q, %i.p
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !42

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !46
  store i64 %i.z, ptr %i.q, align 8, !tbaa !40
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ad = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.z) #17
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i6 = phi ptr [ %i.q, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = tail call noundef zeroext i1 @_ZN6hermes2vm11HiddenClass14areAllReadOnlyENS0_6HandleIS1_EERNS0_7RuntimeE(ptr %.0.i.i.i.i.i.i6, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %.sroa.0.0.copyload.i.i.i7 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !40
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i7, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = lshr i32 %i.ah, 24
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !319
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !520
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #17, !inline_history !521
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i8 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !40
  %i.ap = and i64 %.sroa.0.0.copyload.i.i8, 281474976710655
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = or i32 %i.as, 4
  store i32 %i.at, ptr %i.ar, align 4
  %.sroa.0.0.copyload.i.i9 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !40
  %i.au = and i64 %.sroa.0.0.copyload.i.i9, 281474976710655
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = or i32 %i.ax, 2
  store i32 %i.ay, ptr %i.aw, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit, %bb.h, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.i ], [ false, %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit ], [ false, %bb.h ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN6hermes2vm11HiddenClass14areAllReadOnlyENS0_6HandleIS1_EERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #3

declare void @_ZN6hermes2vm11HiddenClass11addPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsE(ptr dead_on_unwind writable sret(%"class.hermes::vm::CallResult.235") align 8, ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16) local_unnamed_addr #3

declare ptr @_ZN6hermes2vm11HiddenClass14updatePropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_15DictPropertyMap11PropertyPosENS0_13PropertyFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_(i64, i64) local_unnamed_addr #3

declare i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm21getForInPropertyNamesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERjS6_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.llvh::SmallSet.313", align 8 ; 16 uses
  %5 = alloca %"class.llvh::SmallSet.316", align 8 ; 19 uses
  %6 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %7 = alloca %"class.hermes::vm::MutableHandle.246", align 8 ; 16 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !40
  %i.h = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.j, align 4, !tbaa !3
  %i.k = ptrtoint ptr %0 to i64                   ; 19 uses
  %i.l = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = or i64 %i.m, -281474976710656            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 192 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 2 uses
  %i.u = icmp ult ptr %i.r, %i.t
  br i1 %i.u, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.q, align 8, !tbaa !46
  store i64 %i.n, ptr %i.r, align 8, !tbaa !40
  br label %_ZN6hermes2vm6HandleINS0_11HiddenClassEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.w = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.p, i64 %i.n) #17
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !43  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre114 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.phi.trans.insert115 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre116 = load ptr, ptr %.phi.trans.insert115, align 8, !tbaa !56
  br label %_ZN6hermes2vm6HandleINS0_11HiddenClassEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm6HandleINS0_11HiddenClassEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.t, %bb.b ], [ %.pre116, %bb.c ]
  %i.y = phi ptr [ %i.v, %bb.b ], [ %.pre114, %bb.c ] ; 4 uses
  %8 = phi ptr [ %i.p, %bb.b ], [ %.pre, %bb.c ]  ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.r, %bb.b ], [ %i.w, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.z = icmp ult ptr %i.y, %i.x
  br i1 %i.z, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %_ZN6hermes2vm6HandleINS0_11HiddenClassEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.aa, ptr %9, align 8, !tbaa !46
  store i64 -281474976710656, ptr %i.y, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEC2ERNS0_15HandleRootOwnerEPS4_.exit

bb.e:                                             ; preds = %_ZN6hermes2vm6HandleINS0_11HiddenClassEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ab = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %8, i64 -281474976710656) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEC2ERNS0_15HandleRootOwnerEPS4_.exit

_ZN6hermes2vm13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEC2ERNS0_15HandleRootOwnerEPS4_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  store ptr %.0.i.i.i.i.i.i, ptr %7, align 8, !tbaa !316
  %.sroa.0.0.copyload.i.i34 = load i64, ptr %1, align 8, !tbaa !40 ; 3 uses
  %i.ac = and i64 %.sroa.0.0.copyload.i.i34, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.sroa.0.0.copyload.i.i.i35 = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.af = zext i32 %.sroa.0.0.copyload.i.i.i35 to i64
  %i.ag = add i64 %i.af, %i.k
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  %i.aj = load i8, ptr %i.ai, align 2
  %i.ak = trunc i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEC2ERNS0_15HandleRootOwnerEPS4_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 168
  %or.cond99 = icmp eq i32 %i.an, 0
  br i1 %or.cond99, label %bb.g, label %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i36 = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !40
  %i.ao = and i64 %.sroa.0.0.copyload.i.i36, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %.sroa.0.0.copyload.i.i.i37 = load i32, ptr %i.aq, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i37, 0
  %i.ar = zext i32 %.sroa.0.0.copyload.i.i.i37 to i64
  %i.as = add i64 %i.ar, %i.k
  %i.at = or i64 %i.as, -281474976710656
  %i.au = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.at ; 2 uses
  store i64 %i.au, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !326
  %i.av = and i64 %i.au, 281474976710655
  %.not = icmp eq i64 %i.av, 0
  %.sroa.0.0.copyload.i.i42.pre117 = load i64, ptr %1, align 8, !tbaa !40 ; 2 uses
  br i1 %.not, label %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.09.0.copyload = load ptr, ptr %7, align 8 ; 3 uses
  %i.aw = and i64 %.sroa.0.0.copyload.i.i42.pre117, 281474976710655
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.ay, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.az = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.ba = add i64 %i.az, %i.k
  %i.bb = or i64 %i.ba, -281474976710656
  %i.bc = select i1 %.not.i.i.i.i.i.i, i64 -281474976710656, i64 %i.bb ; 3 uses
  %i.bd = load ptr, ptr %i.o, align 8, !tbaa !43  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 192 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !46 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !56
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !46
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bk = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bd, i64 %i.bc) #17 ; 2 uses
  %.sroa.0.0.copyload.i.i1542.pre.i = load i64, ptr %i.bk, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.copyload.i.i1542.i = phi i64 [ %i.bc, %bb.i ], [ %.sroa.0.0.copyload.i.i1542.pre.i, %bb.j ]
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.i ], [ %i.bk, %bb.j ]
  %i.bl = and i64 %.sroa.0.0.copyload.i.i1542.i, 281474976710655 ; 2 uses
  %.not43.i = icmp eq i64 %i.bl, 0
  br i1 %.not43.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i
  %.sroa.0.0.copyload.i.i2350.i = load i64, ptr %.sroa.09.0.copyload, align 8, !tbaa !40
  %i.bm = and i64 %.sroa.0.0.copyload.i.i2350.i, 281474976710655
  %i.bn = inttoptr i64 %i.bm to ptr
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit27.i

.lr.ph.i:                                         ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i, %.critedge14.i
  %.in.i = phi i64 [ %i.ct, %.critedge14.i ], [ %i.bl, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i ]
  %.01044.i = phi i32 [ %i.br, %.critedge14.i ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i ] ; 6 uses
  %i.bo = inttoptr i64 %.in.i to ptr              ; 3 uses
  %.sroa.0.0.copyload.i.i16.i = load i64, ptr %.sroa.09.0.copyload, align 8, !tbaa !40
  %i.bp = and i64 %.sroa.0.0.copyload.i.i16.i, 281474976710655
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = add i32 %.01044.i, 1                    ; 6 uses
  %i.bs = icmp ult i32 %.01044.i, 4096
  br i1 %i.bs, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bt = add i32 %.01044.i, -4096
  %i.bu = lshr i32 %i.bt, 10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 32776
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !326
  %i.bz = and i64 %i.by, 281474976710655
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = and i32 %.01044.i, 1023
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i: ; preds = %bb.k, %.lr.ph.i
  %.sink8.i.i = phi ptr [ %i.ca, %bb.k ], [ %i.bq, %.lr.ph.i ]
  %.sink7.i.i = phi i32 [ %i.cb, %bb.k ], [ %.01044.i, %.lr.ph.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink8.i.i, i64 8
  %i.cd = zext nneg i32 %.sink7.i.i to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %.sroa.0.0.i.i = load i64, ptr %i.ce, align 8, !tbaa !40 ; 2 uses
  %.mask.i.i = and i64 %.sroa.0.0.i.i, -140737488355328
  %i.cf = icmp eq i64 %.mask.i.i, -1548112371908608
  br i1 %i.cf, label %_ZN6hermes2vm12_GLOBAL__N_119matchesProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread, label %bb.l, !llvm.loop !522

bb.l:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i
  %i.cg = and i64 %.sroa.0.0.i.i, 281474976710655
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %.sroa.0.0.copyload.i.i.i18.i = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.cj = zext i32 %.sroa.0.0.copyload.i.i.i18.i to i64
  %i.ck = getelementptr i8, ptr %0, i64 %i.cj
  %.not12.i = icmp eq ptr %i.ck, %i.ch
  br i1 %.not12.i, label %bb.m, label %_ZN6hermes2vm12_GLOBAL__N_119matchesProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread, !llvm.loop !522

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = and i32 %i.cm, 128
  %.not40.i = icmp eq i32 %i.cn, 0
  br i1 %.not40.i, label %.critedge14.i, label %_ZN6hermes2vm12_GLOBAL__N_119matchesProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread, !llvm.loop !522

.critedge14.i:                                    ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.0.0.copyload.i.i.i21.i = load i32, ptr %i.co, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i22.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i21.i, 0
  %i.cp = zext i32 %.sroa.0.0.copyload.i.i.i21.i to i64
  %i.cq = add i64 %i.cp, %i.k
  %i.cr = or i64 %i.cq, -281474976710656
  %i.cs = select i1 %.not.i.i.i.i.i22.i, i64 -281474976710656, i64 %i.cr ; 2 uses
  store i64 %i.cs, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !326
  %i.ct = and i64 %i.cs, 281474976710655          ; 2 uses
  %.not.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge14.i
  %.sroa.0.0.copyload.i.i23.i = load i64, ptr %.sroa.09.0.copyload, align 8, !tbaa !40
  %i.cu = and i64 %.sroa.0.0.copyload.i.i23.i, 281474976710655
  %i.cv = inttoptr i64 %i.cu to ptr               ; 2 uses
  %i.cw = icmp ult i32 %i.br, 4096
  br i1 %i.cw, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit27.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.cx = add i32 %.01044.i, -4095
  %i.cy = lshr i32 %i.cx, 10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 32776
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !326
  %i.dd = and i64 %i.dc, 281474976710655
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = and i32 %i.br, 1023
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit27.i

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit27.i: ; preds = %bb.n, %._crit_edge.i, %._crit_edge.thread.i
  %.010.lcssa51.i = phi i32 [ %i.br, %bb.n ], [ %i.br, %._crit_edge.i ], [ 0, %._crit_edge.thread.i ]
  %.sink8.i24.i = phi ptr [ %i.de, %bb.n ], [ %i.cv, %._crit_edge.i ], [ %i.bn, %._crit_edge.thread.i ]
  %.sink7.i25.i = phi i32 [ %i.df, %bb.n ], [ %i.br, %._crit_edge.i ], [ 0, %._crit_edge.thread.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink8.i24.i, i64 8
  %i.dh = zext nneg i32 %.sink7.i25.i to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh
  %.sroa.0.0.i26.i = load i64, ptr %i.di, align 8, !tbaa !40
  %.mask.i28.i = and i64 %.sroa.0.0.i26.i, -140737488355328
  %i.dj = icmp eq i64 %.mask.i28.i, -1548112371908608
  br i1 %i.dj, label %_ZN6hermes2vm12_GLOBAL__N_119matchesProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit, label %_ZN6hermes2vm12_GLOBAL__N_119matchesProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread

_ZN6hermes2vm12_GLOBAL__N_119matchesProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread: ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i, %bb.l, %bb.m, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit27.i
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %bb.q

_ZN6hermes2vm12_GLOBAL__N_119matchesProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit: ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit27.i
  %i.dk = add i32 %.010.lcssa51.i, 1              ; 2 uses
  store i32 %i.dk, ptr %2, align 4, !tbaa !3
  %.not32 = icmp eq i32 %i.dk, 0
  br i1 %.not32, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_119matchesProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit
  %i.dl = load ptr, ptr %7, align 8, !tbaa !316   ; 2 uses
  %.sroa.0.0.copyload.i.i39 = load i64, ptr %i.dl, align 8, !tbaa !40
  %i.dm = and i64 %.sroa.0.0.copyload.i.i39, 281474976710655
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load atomic i32, ptr %i.do monotonic, align 4 ; 3 uses
  %i.dq = icmp ult i32 %i.dp, 4097
  br i1 %i.dq, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.p, !prof !42

bb.p:                                             ; preds = %bb.o
  %i.dr = add i32 %i.dp, -4097                    ; 2 uses
  %i.ds = shl i32 %i.dr, 10
  %i.dt = add i32 %i.ds, 4096
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 32776
  %i.dv = zext i32 %i.dr to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !326
  %i.dy = and i64 %i.dx, 281474976710655
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load atomic i32, ptr %i.ea monotonic, align 4
  %i.ec = add i32 %i.dt, %i.eb
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.o, %bb.p
  %.0.i = phi i32 [ %i.ec, %bb.p ], [ %i.dp, %bb.o ]
  store i32 %.0.i, ptr %3, align 4, !tbaa !3
  br label %bb.co

bb.q:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_119matchesProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread, %_ZN6hermes2vm12_GLOBAL__N_119matchesProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit
  %.sroa.0.0.copyload.i.i40 = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !40
  %i.ed = and i64 %.sroa.0.0.copyload.i.i40, 281474976710655
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 44 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !73
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = and i64 %i.ej, 562949949227008
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = icmp ne ptr %i.ei, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8489
  %i.eo = load i8, ptr %i.en, align 1, !range !10
  %i.ep = trunc nuw i8 %i.eo to i1
  %or.cond.i.i.i = select i1 %i.em, i1 %i.ep, i1 false, !prof !523
  br i1 %or.cond.i.i.i, label %bb.r, label %_ZN6hermes2vm11HiddenClass15clearForInCacheERNS0_7RuntimeE.exit, !prof !523

bb.r:                                             ; preds = %bb.q
  %i.eq = load i32, ptr %i.ef, align 4, !tbaa !3  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.i, label %_ZN6hermes2vm11HiddenClass15clearForInCacheERNS0_7RuntimeE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE(ptr noundef nonnull align 8 dereferenceable(8112) %i.eg, i32 %i.eq) #17
  br label %_ZN6hermes2vm11HiddenClass15clearForInCacheERNS0_7RuntimeE.exit

_ZN6hermes2vm11HiddenClass15clearForInCacheERNS0_7RuntimeE.exit: ; preds = %bb.q, %bb.r, %bb.s
  store i32 0, ptr %i.ef, align 4, !tbaa !3
  %i.er = load ptr, ptr %7, align 8, !tbaa !351
  store i64 -281474976710656, ptr %i.er, align 8, !tbaa !326
  %.sroa.0.0.copyload.i.i42.pre = load i64, ptr %1, align 8, !tbaa !40
  br label %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEC2ERNS0_15HandleRootOwnerEPS4_.exit, %bb.f, %bb.g, %_ZN6hermes2vm11HiddenClass15clearForInCacheERNS0_7RuntimeE.exit
  %.sroa.0.0.copyload.i.i42 = phi i64 [ %.sroa.0.0.copyload.i.i34, %_ZN6hermes2vm13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEC2ERNS0_15HandleRootOwnerEPS4_.exit ], [ %.sroa.0.0.copyload.i.i34, %bb.f ], [ %.sroa.0.0.copyload.i.i42.pre117, %bb.g ], [ %.sroa.0.0.copyload.i.i42.pre, %_ZN6hermes2vm11HiddenClass15clearForInCacheERNS0_7RuntimeE.exit ]
  %.sroa.0.0.copyload.i.i41 = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !40
  %i.es = and i64 %.sroa.0.0.copyload.i.i41, 281474976710655
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !58 ; 3 uses
  %i.ew = and i64 %.sroa.0.0.copyload.i.i42, 281474976710655
  %i.ex = inttoptr i64 %i.ew to ptr               ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %.sroa.0.0.copyload.i.i.i43 = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.ez = zext i32 %.sroa.0.0.copyload.i.i.i43 to i64
  %i.fa = add i64 %i.ez, %i.k
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 10
  %i.fd = load i8, ptr %i.fc, align 2
  %i.fe = trunc i8 %i.fd to i1
  br i1 %i.fe, label %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit46.thread, label %bb.t

bb.t:                                             ; preds = %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = and i32 %i.fg, 168
  %or.cond100 = icmp eq i32 %i.fh, 0
  br i1 %or.cond100, label %bb.u, label %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit46.thread

bb.u:                                             ; preds = %bb.t
  %i.fi = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15createLongLivedERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.ev) #17
  br label %bb.v

_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit46.thread: ; preds = %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread, %bb.t
  %i.fj = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.ev) #17
  br label %bb.v

bb.v:                                             ; preds = %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit46.thread, %bb.u
  %storemerge = phi ptr [ %i.fj, %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit46.thread ], [ %i.fi, %bb.u ] ; 2 uses
  %.not101 = icmp eq ptr %storemerge, inttoptr (i64 -1 to ptr)
  br i1 %.not101, label %bb.co, label %bb.w, !prof !39

bb.w:                                             ; preds = %bb.v
  %i.fk = ptrtoint ptr %storemerge to i64         ; 2 uses
  %i.fl = or i64 %i.fk, -281474976710656
  %i.fm = load ptr, ptr %7, align 8, !tbaa !351
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !326
  %.sroa.0.0.copyload.i.i.i47 = load i64, ptr %1, align 8, !tbaa !40
  %i.fn = and i64 %.sroa.0.0.copyload.i.i.i47, 281474976710655
  %i.fo = inttoptr i64 %i.fn to ptr               ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %.sroa.0.0.copyload.i.i.i.i48 = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fq = zext i32 %.sroa.0.0.copyload.i.i.i.i48 to i64
  %i.fr = add i64 %i.fq, %i.k
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 10
  %i.fu = load i8, ptr %i.ft, align 2
  %i.fv = trunc i8 %i.fu to i1
  br i1 %i.fv, label %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = and i32 %i.fx, 168
  %or.cond.i49 = icmp eq i32 %i.fy, 0
  br i1 %or.cond.i49, label %bb.z, label %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread.i

_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread.i: ; preds = %bb.x, %bb.w
  %i.fz = and i64 %i.fk, 281474976710655
  %i.ga = inttoptr i64 %i.fz to ptr               ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load atomic i32, ptr %i.gb monotonic, align 4 ; 3 uses
  %i.gd = icmp ult i32 %i.gc, 4097
  br i1 %i.gd, label %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread, label %bb.y, !prof !42

bb.y:                                             ; preds = %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread.i
  %i.ge = add i32 %i.gc, -4097                    ; 2 uses
  %i.gf = shl i32 %i.ge, 10
  %i.gg = add i32 %i.gf, 4096
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 32776
  %i.gi = zext i32 %i.ge to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !326
  %i.gl = and i64 %i.gk, 281474976710655
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = load atomic i32, ptr %i.gn monotonic, align 4
  %i.gp = add i32 %i.gg, %i.go
  br label %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread

_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread: ; preds = %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread.i, %bb.y
  %.0.i.i.i = phi i32 [ %i.gp, %bb.y ], [ %i.gc, %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit.thread.i ]
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE11shrinkRightERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %.0.i.i.i) #17
  br label %bb.al

bb.z:                                             ; preds = %bb.x
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.sroa.0.0.copyload.i.i.i25.i = load i32, ptr %i.gq, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i51 = icmp eq i32 %.sroa.0.0.copyload.i.i.i25.i, 0
  %i.gr = zext i32 %.sroa.0.0.copyload.i.i.i25.i to i64
  %i.gs = add i64 %i.gr, %i.k
  %i.gt = or i64 %i.gs, -281474976710656
  %i.gu = select i1 %.not.i.i.i.i.i.i51, i64 -281474976710656, i64 %i.gt ; 2 uses
  %i.gv = load ptr, ptr %i.o, align 8, !tbaa !43  ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 192 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !46 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 200
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !56 ; 2 uses
  %i.ha = icmp ult ptr %i.gx, %i.gz
  br i1 %i.ha, label %bb.aa, label %bb.ab, !prof !42

bb.aa:                                            ; preds = %bb.z
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  store ptr %i.hb, ptr %i.gw, align 8, !tbaa !46
  store i64 %i.gu, ptr %i.gx, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i52

bb.ab:                                            ; preds = %bb.z
  %i.hc = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.gv, i64 %i.gu) #17
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 192
  %.pre60.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  %.phi.trans.insert61.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 200
  %.pre62.i = load ptr, ptr %.phi.trans.insert61.i, align 8, !tbaa !56
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i52

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i52: ; preds = %bb.ab, %bb.aa
  %i.hd = phi ptr [ %i.gz, %bb.aa ], [ %.pre62.i, %bb.ab ]
  %i.he = phi ptr [ %i.hb, %bb.aa ], [ %.pre60.i, %bb.ab ] ; 4 uses
  %i.hf = phi ptr [ %i.gv, %bb.aa ], [ %.pre.i, %bb.ab ] ; 3 uses
  %.0.i.i.i.i.i.i.i53 = phi ptr [ %i.gx, %bb.aa ], [ %i.hc, %bb.ab ] ; 5 uses
  %i.hg = icmp ult ptr %i.he, %i.hd
  br i1 %i.hg, label %bb.ac, label %bb.ad, !prof !42

bb.ac:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i52
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 192
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  store ptr %i.hi, ptr %i.hh, align 8, !tbaa !46
  store i64 -1688849860263936, ptr %i.he, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i

bb.ad:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i52
  %i.hj = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.hf, i64 -1688849860263936) #17
  %.pre63.i = load ptr, ptr %i.o, align 8, !tbaa !43 ; 2 uses
  %.phi.trans.insert64.i = getelementptr inbounds nuw i8, ptr %.pre63.i, i64 192
  %.pre65.i = load ptr, ptr %.phi.trans.insert64.i, align 8, !tbaa !46
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i: ; preds = %bb.ad, %bb.ac
  %i.hk = phi ptr [ %i.hi, %bb.ac ], [ %.pre65.i, %bb.ad ] ; 4 uses
  %i.hl = phi ptr [ %i.hf, %bb.ac ], [ %.pre63.i, %bb.ad ] ; 6 uses
  %.0.i.i.i.i.i.i26.i = phi ptr [ %i.he, %bb.ac ], [ %i.hj, %bb.ad ] ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 192 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 208 ; 5 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !349 ; 6 uses
  %.sroa.0.0.copyload.i.i2758.i = load i64, ptr %.0.i.i.i.i.i.i.i53, align 8, !tbaa !40 ; 2 uses
  %i.hp = and i64 %.sroa.0.0.copyload.i.i2758.i, 281474976710655 ; 2 uses
  %.not59.i = icmp eq i64 %i.hp, 0
  br i1 %.not59.i, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.._crit_edge_crit_edge.i, label %.lr.ph.i54

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.._crit_edge_crit_edge.i: ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %.pre69.i = zext i32 %i.ho to i64
  br label %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit

.lr.ph.i54:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 3 uses
  %i.hr = zext i32 %i.ho to i64                   ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 200 ; 3 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ak, %.lr.ph.i54
  %.sroa.0.0.copyload.i.i3867.i = phi i64 [ %.sroa.0.0.copyload.i.i2758.i, %.lr.ph.i54 ], [ %i.ju, %bb.ak ]
  %.in.i55 = phi i64 [ %i.hp, %.lr.ph.i54 ], [ %i.jz, %bb.ak ]
  %i.ht = inttoptr i64 %.in.i55 to ptr            ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  %.sroa.0.0.copyload.i.i.i29.i = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hv = zext i32 %.sroa.0.0.copyload.i.i.i29.i to i64
  %i.hw = add i64 %i.hv, %i.k
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 10
  %i.hz = load i8, ptr %i.hy, align 2
  %i.ia = trunc i8 %i.hz to i1
  br i1 %i.ia, label %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit32.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 4 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4            ; 3 uses
  %i.id = and i32 %i.ic, 168
  %or.cond57.i = icmp eq i32 %i.id, 0
  br i1 %or.cond57.i, label %bb.ah, label %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit32.thread.i

_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit32.thread.i: ; preds = %bb.af, %bb.ae
  %i.ie = load ptr, ptr %7, align 8, !tbaa !316
  %.sroa.0.0.copyload.i.i33.i = load i64, ptr %i.ie, align 8, !tbaa !40
  %i.if = and i64 %.sroa.0.0.copyload.i.i33.i, 281474976710655
  %i.ig = inttoptr i64 %i.if to ptr               ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.ii = load atomic i32, ptr %i.ih monotonic, align 4 ; 3 uses
  %i.ij = icmp ult i32 %i.ii, 4097
  br i1 %i.ij, label %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread96, label %bb.ag, !prof !42

bb.ag:                                            ; preds = %_ZNK6hermes2vm8JSObject16shouldCacheForInERNS0_7RuntimeE.exit32.thread.i
  %i.ik = add i32 %i.ii, -4097                    ; 2 uses
  %i.il = shl i32 %i.ik, 10
  %i.im = add i32 %i.il, 4096
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 32776
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm21getForInPropertyNamesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERjS6_:bb.a
  br i1 %i.se, label %_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5countERKj.exit.thread.i, label %_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5countERKj.exit.i

_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5countERKj.exit.i: ; preds = %_ZNKSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPKSt13_Rb_tree_nodeIjEPKSt18_Rb_tree_node_baseRKj.exit.i.i.i.i
  %.19.i.i.i.i87.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.sd, ptr %.0811.i.i.i.i86.i, ptr %.012.i.i.i.i85.i
  %.19.i.i.i.i87.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i87.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.sf = load i32, ptr %.19.i.i.i.i87.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !3
  %.not174.i = icmp ugt i32 %i.sf, %i.rp
  br i1 %.not174.i, label %_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5countERKj.exit.thread.i, label %.thread149.i

_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5countERKj.exit.thread.i: ; preds = %_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5countERKj.exit.i, %_ZNKSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPKSt13_Rb_tree_nodeIjEPKSt18_Rb_tree_node_baseRKj.exit.i.i.i.i, %bb.bz, %_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5vfindERKj.exit.i.i
  %i.sg = load i64, ptr %i.mm, align 8, !tbaa !336
  %i.sh = icmp eq i64 %i.sg, 0
  %i.si = load i32, ptr %i.mg, align 8
  %.not176177.i = icmp eq i32 %i.si, 0
  %.not176.i = select i1 %i.sh, i1 %.not176177.i, i1 false
  br i1 %.not176.i, label %.critedge.thread147.i, label %bb.ca, !prof !42

bb.ca:                                            ; preds = %_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5countERKj.exit.thread.i
  %i.sj = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.0.i.i.i.i.i.i.i65) #17 ; 2 uses
  %i.sk = extractvalue { ptr, i64 } %i.sj, 0
  %i.sl = extractvalue { ptr, i64 } %i.sj, 1
  %i.sm = call i64 @_ZN6hermes2vm12toArrayIndexENS0_10StringViewE(ptr %i.sk, i64 %i.sl) #17 ; 2 uses
  %i.sn = and i64 %i.sm, 4294967296
  %.not179.i = icmp eq i64 %i.sn, 0
  br i1 %.not179.i, label %.critedge.thread147.i, label %.critedge.i, !prof !42

.critedge.i:                                      ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %.sroa.0108.0.extract.trunc.i = trunc i64 %i.sm to i32
  %i.so = uitofp i32 %.sroa.0108.0.extract.trunc.i to double
  store double %i.so, ptr %i.g, align 8, !tbaa !527
  %i.sp = call noundef i64 @_ZNK4llvh8SmallSetIdLj4ESt4lessIdEE5countERKd(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %.not180.i = icmp eq i64 %i.sp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br i1 %.not180.i, label %.critedge.thread147.i, label %.thread149.i, !prof !360

.critedge.thread147.i:                            ; preds = %.critedge.i, %bb.ca, %_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5countERKj.exit.thread.i, %_ZNK4llvh8SmallSetIdLj4ESt4lessIdEE5countERKd.exit.i
  %i.sq = call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.0.i.i.i.i.i.i.i65) #17
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %.loopexit.sink.split.i, label %bb.cb, !prof !39

.critedge.thread147.thread.i:                     ; preds = %bb.bv, %_ZNKSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE14_M_lower_boundEPKSt13_Rb_tree_nodeIdEPKSt18_Rb_tree_node_baseRKd.exit.i.i.i.i, %bb.bu
  %i.ss = call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.0.i.i.i.i.i.i.i65) #17
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %.loopexit.sink.split.i, label %bb.cb, !prof !39

bb.cb:                                            ; preds = %.critedge.thread147.thread.i, %.critedge.thread147.i
  %i.su = load i64, ptr %.0.i.i.i.i.i.i.i65, align 8 ; 2 uses
  %i.sv = icmp ult i64 %i.su, -1970324836974592
  br i1 %i.sv, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.su, ptr %i.a, align 8, !tbaa !527
  %i.sw = call i64 @_ZN4llvh8SmallSetIdLj4ESt4lessIdEE6insertERKd(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %"_ZZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEjENK3$_0clENS2_IS9_EENS2_INS0_8SymbolIDEEE.exit102.i"

bb.cd:                                            ; preds = %bb.cb
  %.sroa.0.0.copyload.i.i.i99.i = load i64, ptr %.0.i.i.i.i.i.i71.i, align 8, !tbaa !40
  %i.sx = trunc i64 %.sroa.0.0.copyload.i.i.i99.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 %i.sx, ptr %i.b, align 4, !tbaa !3
  %i.sy = call i64 @_ZN4llvh8SmallSetIjLj4ESt4lessIjEE6insertERKj(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.sz = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.0.i.i.i.i.i.i.i65) #17 ; 2 uses
  %i.ta = extractvalue { ptr, i64 } %i.sz, 0
  %i.tb = extractvalue { ptr, i64 } %i.sz, 1
  %i.tc = call i64 @_ZN6hermes2vm12toArrayIndexENS0_10StringViewE(ptr %i.ta, i64 %i.tb) #17 ; 2 uses
  %i.td = and i64 %i.tc, 4294967296
  %.not.i100.i = icmp eq i64 %i.td, 0
  br i1 %.not.i100.i, label %"_ZZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEjENK3$_0clENS2_IS9_EENS2_INS0_8SymbolIDEEE.exit102.i", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %.sroa.0.0.extract.trunc.i101.i = trunc i64 %i.tc to i32
  %i.te = uitofp i32 %.sroa.0.0.extract.trunc.i101.i to double
  store double %i.te, ptr %i.c, align 8, !tbaa !527
  %i.tf = call i64 @_ZN4llvh8SmallSetIdLj4ESt4lessIdEE6insertERKd(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %"_ZZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEjENK3$_0clENS2_IS9_EENS2_INS0_8SymbolIDEEE.exit102.i"

"_ZZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEjENK3$_0clENS2_IS9_EENS2_INS0_8SymbolIDEEE.exit102.i": ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.tg = add i32 %.1195.i, 1
  br label %.thread149.i

.thread149.i:                                     ; preds = %"_ZZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEjENK3$_0clENS2_IS9_EENS2_INS0_8SymbolIDEEE.exit102.i", %.critedge.i, %_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5countERKj.exit.i, %_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5vfindERKj.exit.i.i, %_ZNK4llvh8SmallSetIdLj4ESt4lessIdEE5countERKd.exit.i, %bb.bv, %"_ZZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEjENK3$_0clENS2_IS9_EENS2_INS0_8SymbolIDEEE.exit.i"
  %.4.i = phi i32 [ %i.qu, %"_ZZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEjENK3$_0clENS2_IS9_EENS2_INS0_8SymbolIDEEE.exit.i" ], [ %.1195.i, %_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5countERKj.exit.i ], [ %.1195.i, %.critedge.i ], [ %i.tg, %"_ZZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEjENK3$_0clENS2_IS9_EENS2_INS0_8SymbolIDEEE.exit102.i" ], [ %.1195.i, %_ZNK4llvh8SmallSetIdLj4ESt4lessIdEE5countERKd.exit.i ], [ %.1195.i, %_ZNK4llvh8SmallSetIjLj4ESt4lessIjEE5vfindERKj.exit.i.i ], [ %.1195.i, %bb.bv ] ; 2 uses
  %i.th = add nuw i32 %.063193.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.th, %i.nh
  br i1 %exitcond.not.i, label %.thread158.i, label %bb.av, !llvm.loop !531

.thread158.i:                                     ; preds = %.thread149.i, %bb.au
  %.1.lcssa.i = phi i32 [ %.0200.i, %bb.au ], [ %.4.i, %.thread149.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i103.i = load i64, ptr %.0.i.i.i.i.i.i72.i, align 8, !tbaa !40 ; 2 uses
  %i.ti = and i64 %.sroa.0.0.copyload.i.i.i.i103.i, 281474976710655
  %i.tj = inttoptr i64 %i.ti to ptr               ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 4
  %i.tl = load i32, ptr %i.tk, align 4
  %i.tm = and i32 %i.tl, 128
  %.not.i104.i = icmp eq i32 %i.tm, 0
  br i1 %.not.i104.i, label %bb.cf, label %bb.cg, !prof !42

bb.cf:                                            ; preds = %.thread158.i
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %.sroa.0.0.copyload.i.i.i.i105.i = load i32, ptr %i.tn, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i105.i, 0
  %i.to = zext i32 %.sroa.0.0.copyload.i.i.i.i105.i to i64
  %i.tp = add i64 %i.to, %i.k
  %i.tq = inttoptr i64 %i.tp to ptr
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.thread.i, label %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.i

bb.cg:                                            ; preds = %.thread158.i
  %i.tr = or i64 %.sroa.0.0.copyload.i.i.i.i103.i, -281474976710656 ; 2 uses
  %i.ts = load ptr, ptr %i.o, align 8, !tbaa !43  ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 192 ; 2 uses
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !46 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 200
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !56
  %i.tx = icmp ult ptr %i.tu, %i.tw
  br i1 %i.tx, label %bb.ch, label %bb.ci, !prof !42

bb.ch:                                            ; preds = %bb.cg
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  store ptr %i.ty, ptr %i.tt, align 8, !tbaa !46
  store i64 %i.tr, ptr %i.tu, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.tz = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ts, i64 %i.tr) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.tu, %bb.ch ], [ %i.tz, %bb.ci ]
  %i.ua = call ptr @_ZN6hermes2vm7JSProxy14getPrototypeOfENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0) #17
  br label %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.i

_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i, %bb.cf
  %.sroa.06.0.i.i = phi ptr [ %i.ua, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ %i.tq, %bb.cf ] ; 2 uses
  %.not182.i = icmp eq ptr %.sroa.06.0.i.i, inttoptr (i64 -1 to ptr)
  br i1 %.not182.i, label %.loopexit.sink.split.i, label %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.thread.i, !prof !532

_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.thread.i: ; preds = %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.i, %bb.cf
  %.sroa.06.0.i238.i = phi ptr [ %.sroa.06.0.i.i, %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.i ], [ null, %bb.cf ]
  %i.ub = ptrtoint ptr %.sroa.06.0.i238.i to i64
  %i.uc = or i64 %i.ub, -281474976710656
  store i64 %i.uc, ptr %.0.i.i.i.i.i.i72.i, align 8, !tbaa !326
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.sroa.0.0.copyload.i.i73.i = load i64, ptr %.0.i.i.i.i.i.i72.i, align 8, !tbaa !40
  %i.ud = and i64 %.sroa.0.0.copyload.i.i73.i, 281474976710655
  %.not.i70 = icmp eq i64 %i.ud, 0
  br i1 %.not.i70, label %.loopexit.i71, label %bb.at

.loopexit.sink.split.i:                           ; preds = %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.i, %bb.at, %.critedge.thread147.thread.i, %.critedge.thread147.i, %bb.bl, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.loopexit.i71

.loopexit.i71:                                    ; preds = %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.thread.i, %.loopexit.sink.split.i, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i67
  %i.ue = phi i1 [ true, %.loopexit.sink.split.i ], [ false, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i67 ], [ false, %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.thread.i ]
  %.sroa.7136.0.i = phi i32 [ undef, %.loopexit.sink.split.i ], [ %.0.i60, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.i67 ], [ %.1.lcssa.i, %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.thread.i ] ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ug = load ptr, ptr %i.mj, align 8, !tbaa !333
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE(ptr noundef nonnull align 8 dereferenceable(48) %i.uf, ptr noundef %i.ug)
  %i.uh = load ptr, ptr %5, align 8, !tbaa !329   ; 2 uses
  %i.ui = icmp eq ptr %i.uh, %i.mf
  br i1 %i.ui, label %_ZN4llvh8SmallSetIdLj4ESt4lessIdEED2Ev.exit.i, label %bb.cj

bb.cj:                                            ; preds = %.loopexit.i71
  call void @free(ptr noundef %i.uh) #17
  br label %_ZN4llvh8SmallSetIdLj4ESt4lessIdEED2Ev.exit.i

_ZN4llvh8SmallSetIdLj4ESt4lessIdEED2Ev.exit.i:    ; preds = %bb.cj, %.loopexit.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.uj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.uk = load ptr, ptr %i.mb, align 8, !tbaa !333
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.uj, ptr noundef %i.uk)
  %i.ul = load ptr, ptr %4, align 8, !tbaa !329   ; 2 uses
  %i.um = icmp eq ptr %i.ul, %i.lx
  br i1 %i.um, label %_ZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEj.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZN4llvh8SmallSetIdLj4ESt4lessIdEED2Ev.exit.i
  call void @free(ptr noundef %i.ul) #17
  br label %_ZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEj.exit

_ZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEj.exit: ; preds = %_ZN4llvh8SmallSetIdLj4ESt4lessIdEED2Ev.exit.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %i.ue, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEj.exit
  %.not33 = icmp eq i32 %.0.i60, 0
  store i32 %.sroa.7136.0.i, ptr %3, align 4, !tbaa !3
  %i.un = lshr i32 %.sroa.7136.0.i, 2
  %i.uo = icmp ugt i32 %i.un, %i.ev
  %or.cond = select i1 %.not33, i1 true, i1 %i.uo
  %.sroa.0.0.copyload.pre119 = load ptr, ptr %7, align 8 ; 3 uses
  br i1 %or.cond, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.sroa.0.0.copyload.i.i76 = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !40
  %i.up = and i64 %.sroa.0.0.copyload.i.i76, 281474976710655
  %i.uq = inttoptr i64 %i.up to ptr
  %.sroa.0.0.copyload.i.i.i77 = load i64, ptr %.sroa.0.0.copyload.pre119, align 8, !tbaa !40 ; 2 uses
  %i.ur = and i64 %.sroa.0.0.copyload.i.i.i77, 281474976710655 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 44 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !73
  %i.uv = ptrtoint ptr %i.us to i64
  %i.uw = and i64 %i.uv, 562949949227008
  %i.ux = inttoptr i64 %i.uw to ptr
  %i.uy = icmp eq ptr %i.uu, %i.ux
  br i1 %i.uy, label %_ZN6hermes2vm11HiddenClass13setForInCacheEPNS0_18SegmentedArrayBaseINS0_11HermesValueEEERNS0_7RuntimeE.exit, label %bb.cn, !prof !42

bb.cn:                                            ; preds = %bb.cm
  %i.uz = inttoptr i64 %i.ur to ptr
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.va, ptr noundef nonnull align 4 dereferenceable(4) %i.us, ptr noundef %i.uz) #17
  %.sroa.0.0.copyload.pre.pre = load ptr, ptr %7, align 8
  br label %_ZN6hermes2vm11HiddenClass13setForInCacheEPNS0_18SegmentedArrayBaseINS0_11HermesValueEEERNS0_7RuntimeE.exit

_ZN6hermes2vm11HiddenClass13setForInCacheEPNS0_18SegmentedArrayBaseINS0_11HermesValueEEERNS0_7RuntimeE.exit: ; preds = %bb.cm, %bb.cn
  %.sroa.0.0.copyload.pre = phi ptr [ %.sroa.0.0.copyload.pre119, %bb.cm ], [ %.sroa.0.0.copyload.pre.pre, %bb.cn ]
  %.not.i.i.i.i.i.i78 = icmp eq i64 %i.ur, 0
  %i.vb = sub i64 %.sroa.0.0.copyload.i.i.i77, %i.k
  %i.vc = trunc i64 %i.vb to i32
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i78, i32 0, i32 %i.vc
  store i32 %.sroa.0.0.i.i.i.i.i.i, ptr %i.us, align 4, !tbaa !3
  br label %bb.co

bb.co:                                            ; preds = %bb.cl, %_ZN6hermes2vm11HiddenClass13setForInCacheEPNS0_18SegmentedArrayBaseINS0_11HermesValueEEERNS0_7RuntimeE.exit, %bb.v, %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread93, %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit, %_ZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEj.exit, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %.sroa.089.2 = phi ptr [ %i.dl, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit ], [ inttoptr (i64 -1 to ptr), %bb.v ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm12_GLOBAL__N_115setProtoClassesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE.exit.thread93 ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm12_GLOBAL__N_122appendAllPropertyNamesENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeERNS0_13MutableHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEEj.exit ], [ %.sroa.0.0.copyload.pre, %_ZN6hermes2vm11HiddenClass13setForInCacheEPNS0_18SegmentedArrayBaseINS0_11HermesValueEEERNS0_7RuntimeE.exit ], [ %.sroa.0.0.copyload.pre119, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret ptr %.sroa.089.2
}

declare ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15createLongLivedERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #3

declare ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes2vm8JSObject19allocatePropStorageENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %2, 6
  br i1 %i.a, label %bb.e, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %2, -5                           ; 2 uses
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.b, i32 noundef %i.b) ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c, !prof !39

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { i32, i64 } %i.c, 1        ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.g = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = and i64 %i.l, 562949949227008
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = icmp eq ptr %i.k, %i.n
  br i1 %i.o, label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %i.f, 281474976710655
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.r = inttoptr i64 %i.p to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef %i.r) #17
  br label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit: ; preds = %bb.c, %bb.d
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.f, %i.s
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr %i.i, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit, %bb.b, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 1, %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 1027070
  br i1 %i.a, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i32 %1, 2
  %i.c = add nuw nsw i32 %i.b, 12
  %i.d = and i32 %i.c, 8388600                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = zext nneg i32 %i.d to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.h, %i.j
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !39

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.l = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.k, i32 noundef %i.d) #17
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread

bb.d:                                             ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !34
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread: ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.f, %bb.d ] ; 3 uses
  store i64 0, ptr %i.m, align 4
  %i.n = or disjoint i32 %i.d, 251658240
  store i32 %i.n, ptr %i.m, align 4, !tbaa !41
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = or i64 %i.o, -281474976710656
  br label %bb.e

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit: ; preds = %bb.a
  %i.q = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #17 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e, !prof !360

bb.e:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit
  %.sroa.0.0.i12 = phi i32 [ 1, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread ], [ %i.q, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  %.sroa.3.0.i10 = phi i64 [ %i.p, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread ], [ undef, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ] ; 2 uses
  %i.s = and i64 %.sroa.3.0.i10, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(8112) %i.u, i32 noundef %2) #17
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, %bb.e
  %.sroa.3.0.i11 = phi i64 [ %.sroa.3.0.i10, %bb.e ], [ undef, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  %.sroa.05.0 = phi i32 [ %.sroa.0.0.i12, %bb.e ], [ 0, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0.i11, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #3

declare { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #3

declare i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) local_unnamed_addr #3

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !533
  tail call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !534  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !535

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.sroa.410.0.extract.shift = lshr i64 %2, 32    ; 3 uses
  %.sroa.410.0.extract.trunc = trunc nuw i64 %.sroa.410.0.extract.shift to i32
  %i.a = and i64 %2, 1280
  %or.cond = icmp eq i64 %i.a, 0
  br i1 %or.cond, label %bb.e, label %bb.b, !prof !318

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = or i64 %i.b, -281474976710656            ; 2 uses
end_hunk_1

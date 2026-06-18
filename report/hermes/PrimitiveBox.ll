inline.NumInlined: 737
inline.NumDeleted: 464
begin_hunk_0_@_ZN6hermes2vm8JSString18setPrimitiveStringENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEE:bb.a
  %.not.i.i.i.i.i = icmp eq i64 %i.bn, 0
  %i.bw = sub i64 %.sroa.0.0.copyload.i.i.i9, %i.e
  %i.bx = trunc i64 %i.bw to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.bx
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.bm, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret void
}

declare ptr @_ZN6hermes2vm7Runtime18getCharacterStringEDs(ptr noundef nonnull align 8 dereferenceable(9816), i16 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32, ptr, i32) local_unnamed_addr #2

declare i64 @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816)) #2

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare i32 @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare i64 @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare i32 @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) #2

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm25JSStringIteratorBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 2, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !46
  br label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit

_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm16JSStringIterator2vtE, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.f) #4
  ret void
}

declare void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm16JSStringIterator6createERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9512
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.e, %i.g
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.i = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.h, i32 noundef 40) #4
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !62
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.c ] ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i, 281474976710655
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.o = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.p = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %i.o
  %i.q = trunc i64 %i.p to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.q
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.n, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  %i.s = sub i64 %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i, %i.o
  %i.t = trunc i64 %i.s to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i, i32 0, i32 %i.t
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i, ptr %i.r, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i5.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !19 ; 2 uses
  %i.w = and i64 %.sroa.0.0.copyload.i.i.i5.i.i.i.i.i.i, 281474976710655 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.w, 0
  %i.x = sub i64 %.sroa.0.0.copyload.i.i.i5.i.i.i.i.i.i, %i.o
  %i.y = trunc i64 %i.x to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.y
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.v, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = and i64 %i.ab, -4194304
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = icmp eq ptr %i.aa, %i.ad
  br i1 %i.ae, label %_ZN6hermes2vm7Runtime10makeAFixedINS0_16JSStringIteratorELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEERNS7_INS0_11HiddenClassEEERNS7_INS0_15StringPrimitiveEEEEEEPT_DpOT2_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ag = inttoptr i64 %i.w to ptr
  tail call void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef %i.ag) #4
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_16JSStringIteratorELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEERNS7_INS0_11HiddenClassEEERNS7_INS0_15StringPrimitiveEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_16JSStringIteratorELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEERNS7_INS0_11HiddenClassEEERNS7_INS0_15StringPrimitiveEEEEEEPT_DpOT2_.exit: ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 973078568, ptr %i.j, align 4, !tbaa !20
  store <4 x i32> <i32 0, i32 14, i32 14, i32 14>, ptr %i.ah, align 4, !tbaa !3
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm16JSStringIterator11nextElementENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [2 x i16], align 2                ; 6 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !19
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.e = ptrtoint ptr %1 to i64
  %i.f = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.g = add i64 %i.f, %i.e
  %i.h = or i64 %i.g, -844424930131968
  %i.i = select i1 %.not.i.i.i.i.i, i64 -844424930131968, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = icmp ult ptr %i.m, %i.o
  br i1 %i.p, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !30
  store i64 %i.i, ptr %i.m, align 8, !tbaa !19
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.r = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.k, i64 %i.i) #4 ; 2 uses
  %.pre = load i64, ptr %i.r, align 8, !tbaa !75
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.b, %bb.c
  %i.s = phi i64 [ %i.i, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.m, %bb.b ], [ %i.r, %bb.c ]
  %i.t = icmp ugt i64 %i.s, -844424930131969
  %i.u = and i64 %i.s, 281474976710655            ; 2 uses
  %i.v = icmp ne i64 %i.u, 0
  %i.w = and i1 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %i.x = tail call ptr @_ZN6hermes2vm22createIterResultObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, i1 noundef zeroext true) #4
  %.sroa.0.0.copyload.i = load i64, ptr %i.x, align 8, !tbaa !19
  br label %bb.ap

bb.e:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %.sroa.0.0.copyload.i.i39 = load i64, ptr %0, align 8, !tbaa !19
  %i.y = and i64 %.sroa.0.0.copyload.i.i39, 281474976710655
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !77 ; 5 uses
  %i.ac = inttoptr i64 %i.u to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = and i32 %i.ae, 2147483647               ; 2 uses
  %.not = icmp ult i32 %i.ab, %i.af
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = and i64 %i.ak, 562949949227008
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = icmp ne ptr %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.ap = load i8, ptr %i.ao, align 1, !range !44
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false, !prof !88
  br i1 %i.ar, label %bb.g, label %_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit, !prof !88

bb.g:                                             ; preds = %bb.f
  %i.as = load i32, ptr %i.ag, align 4, !tbaa !3  ; 2 uses
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ah, i32 %i.as) #4
  br label %_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit

_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit: ; preds = %bb.f, %bb.g, %bb.h
  store i32 0, ptr %i.ag, align 4, !tbaa !3
  %i.at = tail call ptr @_ZN6hermes2vm22createIterResultObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, i1 noundef zeroext true) #4
  %.sroa.0.0.copyload.i42 = load i64, ptr %i.at, align 8, !tbaa !19
  br label %bb.ap

bb.i:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !27  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 192 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !30 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 200
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.az = icmp ult ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !30
  store i64 -844424930131968, ptr %i.aw, align 8, !tbaa !19
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.au, i64 -844424930131968) #4
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i.i43 = phi ptr [ %i.aw, %bb.j ], [ %i.bb, %bb.k ] ; 4 uses
  %.sroa.0.0.copyload.i.i44 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !19
  %i.bc = and i64 %.sroa.0.0.copyload.i.i44, 281474976710655
  %i.bd = inttoptr i64 %i.bc to ptr               ; 17 uses
  %i.be = load i32, ptr %i.bd, align 4            ; 6 uses
  %i.bf = and i32 %i.be, 16777216
  %i.bg = icmp eq i32 %i.bf, 0                    ; 2 uses
  %i.bh = icmp ugt i32 %i.be, 150994943           ; 4 uses
  br i1 %i.bg, label %bb.l, label %bb.r

bb.l:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  br i1 %i.bh, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !13
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i

bb.n:                                             ; preds = %bb.l
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.be, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i.i, label %bb.q [
    i32 134217728, label %bb.o
    i32 67108864, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i

bb.q:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bm, align 8, !tbaa !19
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !13
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.0.i.i = phi ptr [ %i.bj, %bb.m ], [ %i.bk, %bb.o ], [ %i.bl, %bb.p ], [ %i.bq, %bb.q ]
  %i.br = zext nneg i32 %i.ab to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !20
  %i.bu = sext i8 %i.bt to i16
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit

bb.r:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  br i1 %i.bh, label %bb.s, label %bb.t, !prof !12

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i

bb.t:                                             ; preds = %bb.r
  %.mask.i.i.i.i.i.i.i.i3.i = and i32 %i.be, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i3.i, label %bb.w [
    i32 117440512, label %bb.u
    i32 50331648, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i

bb.v:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i

bb.w:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.0.0.copyload.i.i.i5.i = load i64, ptr %i.bz, align 8, !tbaa !19
  %i.ca = and i64 %.sroa.0.0.copyload.i.i.i5.i, 281474976710655
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i

_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.s
  %.0.i4.i = phi ptr [ %i.bw, %bb.s ], [ %i.bx, %bb.u ], [ %i.by, %bb.v ], [ %i.cd, %bb.w ]
  %i.ce = zext nneg i32 %i.ab to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.0.i4.i, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !25
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit

_ZNK6hermes2vm15StringPrimitive2atEj.exit:        ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i
  %.0.i = phi i16 [ %i.bu, %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i ], [ %i.cg, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i ] ; 4 uses
  %i.ch = add i16 %.0.i, 9216
  %or.cond = icmp ult i16 %i.ch, -1024
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive2atEj.exit
  %i.ci = add nuw nsw i32 %i.ab, 1                ; 3 uses
  %i.cj = icmp eq i32 %i.ci, %i.af
  br i1 %i.cj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %_ZNK6hermes2vm15StringPrimitive2atEj.exit
  %i.ck = tail call ptr @_ZN6hermes2vm7Runtime18getCharacterStringEDs(ptr noundef nonnull align 8 dereferenceable(9816) %1, i16 noundef zeroext %.0.i) #4
  %.sroa.0.0.copyload.i.i45 = load i64, ptr %i.ck, align 8, !tbaa !19
  %i.cl = and i64 %.sroa.0.0.copyload.i.i45, 281474976710655 ; 2 uses
  %i.cm = or disjoint i64 %i.cl, -844424930131968
  store i64 %i.cm, ptr %.0.i.i.i.i.i.i43, align 8, !tbaa !75
  br label %.critedge

bb.z:                                             ; preds = %bb.x
  br i1 %i.bg, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bh, label %bb.ab, label %bb.ac, !prof !12

bb.ab:                                            ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !13
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i53

bb.ac:                                            ; preds = %bb.aa
  %.mask.i.i.i.i.i.i.i.i.i52 = and i32 %i.be, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i.i52, label %bb.af [
    i32 134217728, label %bb.ad
    i32 67108864, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i53

bb.ae:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i53

bb.af:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.0.0.copyload.i.i.i.i55 = load i64, ptr %i.cr, align 8, !tbaa !19
  %i.cs = and i64 %.sroa.0.0.copyload.i.i.i.i55, 281474976710655
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !13
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i53

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i53: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab
  %.0.i.i54 = phi ptr [ %i.co, %bb.ab ], [ %i.cp, %bb.ad ], [ %i.cq, %bb.ae ], [ %i.cv, %bb.af ]
  %i.cw = zext nneg i32 %i.ci to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !20
  %i.cz = sext i8 %i.cy to i16
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit56

bb.ag:                                            ; preds = %bb.z
  br i1 %i.bh, label %bb.ah, label %bb.ai, !prof !12

bb.ah:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !21
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i48

bb.ai:                                            ; preds = %bb.ag
  %.mask.i.i.i.i.i.i.i.i3.i47 = and i32 %i.be, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i3.i47, label %bb.al [
    i32 117440512, label %bb.aj
    i32 50331648, label %bb.ak
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm16JSStringIterator11nextElementENS0_6HandleIS1_EERNS0_7RuntimeE:bb.a
  store i32 %i.eb, ptr %i.ee, align 4, !tbaa !77
  %i.ef = call ptr @_ZN6hermes2vm22createIterResultObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i43, i1 noundef zeroext false) #4
  %.sroa.0.0.copyload.i60 = load i64, ptr %i.ef, align 8, !tbaa !19
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge, %.thread, %_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit, %bb.d
  %.sroa.081.2 = phi i32 [ 1, %bb.d ], [ 1, %_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit ], [ 1, %.critedge ], [ 0, %.thread ]
  %.sroa.5.1 = phi i64 [ %.sroa.0.0.copyload.i, %bb.d ], [ %.sroa.0.0.copyload.i42, %_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit ], [ %.sroa.0.0.copyload.i60, %.critedge ], [ undef, %.thread ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.081.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @_ZN6hermes2vm22createIterResultObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm17JSBigIntBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 1, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !46
  br label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit

_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm8JSBigInt2vtE, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull %i.f) #4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm8JSBigInt6createERNS0_7RuntimeENS0_6HandleINS0_15BigIntPrimitiveEEENS4_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9504
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #4
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !62
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !19 ; 2 uses
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i, 281474976710655
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.n = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.o = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %i.n
  %i.p = trunc i64 %i.o to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.p
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.m, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.r = sub i64 %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i, %i.n
  %i.s = trunc i64 %i.r to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i, i32 0, i32 %i.s
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i, ptr %i.q, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i5.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !19 ; 2 uses
  %i.v = and i64 %.sroa.0.0.copyload.i.i.i5.i.i.i.i.i.i, 281474976710655 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.v, 0
  %i.w = sub i64 %.sroa.0.0.copyload.i.i.i5.i.i.i.i.i.i, %i.n
  %i.x = trunc i64 %i.w to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.x
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.u, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !67
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = and i64 %i.aa, -4194304
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = icmp eq ptr %i.z, %i.ac
  br i1 %i.ad, label %_ZN6hermes2vm7Runtime10makeAFixedINS0_8JSBigIntELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_15BigIntPrimitiveEEERNS7_INS0_8JSObjectEEERNS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.af = inttoptr i64 %i.v to ptr
  tail call void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef %i.af) #4
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_8JSBigIntELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_15BigIntPrimitiveEEERNS7_INS0_8JSObjectEEERNS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_8JSBigIntELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_15BigIntPrimitiveEEERNS7_INS0_8JSObjectEEERNS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i, %bb.d
  store i32 1124073512, ptr %i.i, align 4, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !27 ; 3 uses
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store <4 x i32> splat (i32 14), ptr %.01320.i.ptr.i.i, align 4, !tbaa !3
  %i.ah = ptrtoint ptr %i.i to i64
  %i.ai = or i64 %i.ah, -281474976710656          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.an = icmp ult ptr %i.ak, %i.am
  br i1 %i.an, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %_ZN6hermes2vm7Runtime10makeAFixedINS0_8JSBigIntELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_15BigIntPrimitiveEEERNS7_INS0_8JSObjectEEERNS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !30
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !19
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_8JSBigIntEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime10makeAFixedINS0_8JSBigIntELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_15BigIntPrimitiveEEERNS7_INS0_8JSObjectEEERNS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit
  %i.ap = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %.val, i64 %i.ai) #4
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_8JSBigIntEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_8JSBigIntEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ap, %bb.f ]
  ret ptr %.0.i.i.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm17JSNumberBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 3, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !46
  br label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit

_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm8JSNumber2vtE, ptr %i.e, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm8JSNumber6createERNS0_7RuntimeEdNS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, double noundef %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #4
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_8JSNumberELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RdRNS0_6HandleINS0_8JSObjectEEERNS8_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !62
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_8JSNumberELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RdRNS0_6HandleINS0_8JSObjectEEERNS8_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_8JSNumberELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RdRNS0_6HandleINS0_8JSObjectEEERNS8_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9520
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !19 ; 2 uses
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i3.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i3.i.i.i.i.i.i, 281474976710655
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.n = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.o = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %i.n
  %i.p = trunc i64 %i.o to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.p
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.m, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.r = sub i64 %.sroa.0.0.copyload.i.i.i3.i.i.i.i.i.i, %i.n
  %i.s = trunc i64 %i.r to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i, i32 0, i32 %i.s
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i, ptr %i.q, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store double %1, ptr %i.u, align 8, !tbaa !89
  store i32 939524136, ptr %i.h, align 8, !tbaa !20
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 8, !tbaa !3
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !3
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm18JSBooleanBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 1, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !46
  br label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit

_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm9JSBoolean2vtE, ptr %i.e, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm9JSBoolean6createERNS0_7RuntimeEbNS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i1 noundef zeroext %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #4
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_9JSBooleanELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RbRNS0_6HandleINS0_8JSObjectEEERNS8_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !62
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_9JSBooleanELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RbRNS0_6HandleINS0_8JSObjectEEERNS8_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_9JSBooleanELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RbRNS0_6HandleINS0_8JSObjectEEERNS8_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9504
  %i.j = zext i1 %1 to i8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !19 ; 2 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i, 281474976710655
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.o = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.p = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %i.o
  %i.q = trunc i64 %i.p to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.q
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.n, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  %i.s = sub i64 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i, %i.o
  %i.t = trunc i64 %i.s to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i, i32 0, i32 %i.t
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i, ptr %i.r, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i8 %i.j, ptr %i.v, align 4, !tbaa !91
  store i32 905969704, ptr %i.h, align 4, !tbaa !20
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store <4 x i32> splat (i32 14), ptr %.01320.i.ptr.i.i, align 4, !tbaa !3
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm17JSSymbolBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 1, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !46
  br label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit

_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm8JSSymbol2vtE, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKNS0_10GCSymbolIDE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull %i.f) #4
  ret void
}

declare void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKNS0_10GCSymbolIDE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm8JSSymbol6createERNS0_7RuntimeENS0_8SymbolIDENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #4
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_8JSSymbolELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_8SymbolIDERNS0_6HandleINS0_8JSObjectEEERNS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !62
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_8JSSymbolELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_8SymbolIDERNS0_6HandleINS0_8JSObjectEEERNS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_8JSSymbolELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_8SymbolIDERNS0_6HandleINS0_8JSObjectEEERNS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9504
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !19 ; 2 uses
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i3.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i3.i.i.i.i.i.i, 281474976710655
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.n = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.o = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %i.n
  %i.p = trunc i64 %i.o to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.p
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.m, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.r = sub i64 %.sroa.0.0.copyload.i.i.i3.i.i.i.i.i.i, %i.n
  %i.s = trunc i64 %i.r to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i, i32 0, i32 %i.s
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i, ptr %i.q, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 %1, ptr %i.u, align 4, !tbaa !3
  store i32 956301352, ptr %i.h, align 4, !tbaa !20
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store <4 x i32> splat (i32 14), ptr %.01320.i.ptr.i.i, align 4, !tbaa !3
  ret ptr %i.h
}

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE(ptr noundef nonnull align 8 dereferenceable(8112), i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!7 = !{!8, !4, i64 4}
!8 = !{!"_ZTSN6hermes2vm15StringPrimitiveE", !9, i64 0, !4, i64 4}
!9 = !{!"_ZTSN6hermes2vm23VariableSizeRuntimeCellE", !10, i64 0}
!10 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!14, !16, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !18, i64 8, !5, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!22, !24, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE", !23, i64 0, !18, i64 8, !5, i64 16}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE12_Alloc_hiderE", !24, i64 0}
!24 = !{!"p1 char16_t", !17, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"char16_t", !5, i64 0}
!27 = !{!28, !29, i64 8}
!28 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !29, i64 8}
!29 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !17, i64 0}
!30 = !{!31, !39, i64 192}
!31 = !{!"_ZTSN6hermes2vm7GCScopeE", !32, i64 0, !29, i64 8, !5, i64 16, !33, i64 144, !39, i64 192, !39, i64 200, !4, i64 208}
!32 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !17, i64 0}
!33 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !34, i64 0, !38, i64 16}
!34 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !35, i64 0}
!35 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !36, i64 0}
!36 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !37, i64 0}
!37 = !{!"_ZTSN4llvh15SmallVectorBaseE", !17, i64 0, !4, i64 8, !4, i64 12}
!38 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!39 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !17, i64 0}
!40 = !{!31, !39, i64 200}
!41 = !{!42, !43, i64 4}
!42 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !43, i64 4}
!43 = !{!"bool", !5, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!43, !43, i64 0}
!47 = !{!48, !61, i64 216}
!48 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !16, i64 0, !49, i64 8, !49, i64 56, !49, i64 104, !49, i64 152, !58, i64 200, !42, i64 208, !61, i64 216}
!49 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !50, i64 0}
!50 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !51, i64 0}
!51 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !52, i64 0, !54, i64 8}
!52 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !53, i64 0}
!53 = !{!"_ZTSSt4lessIhE"}
!54 = !{!"_ZTSSt15_Rb_tree_header", !55, i64 0, !18, i64 32}
!55 = !{!"_ZTSSt18_Rb_tree_node_base", !56, i64 0, !57, i64 8, !57, i64 16, !57, i64 24}
!56 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!57 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !17, i64 0}
!58 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !59, i64 0, !43, i64 4}
!59 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !60, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!60 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !5, i64 0}
!61 = !{!"p1 _ZTSN6hermes2vm6VTableE", !17, i64 0}
!62 = !{!63, !16, i64 16}
!63 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !64, i64 0, !16, i64 16, !16, i64 24}
!64 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !16, i64 0, !65, i64 8}
!65 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !17, i64 0}
!66 = !{!63, !16, i64 24}
!67 = !{!64, !16, i64 0}
!68 = !{!69, !4, i64 4}
!69 = !{!"_ZTSN6hermes2vm18PropertyDescriptorE", !5, i64 0, !4, i64 4}
!70 = !{!71, !72, i64 8}
!71 = !{!"_ZTSN6hermes2vm11BoxedDoubleE", !10, i64 0, !72, i64 8}
!72 = !{!"double", !5, i64 0}
!73 = !{!74, !4, i64 0}
!74 = !{!"_ZTSN6hermes2vm13HermesValue32E", !4, i64 0}
!75 = !{!76, !18, i64 0}
!76 = !{!"_ZTSN6hermes2vm11HermesValueE", !18, i64 0}
!77 = !{!78, !4, i64 24}
!78 = !{!"_ZTSN6hermes2vm16JSStringIteratorE", !79, i64 0, !87, i64 20, !4, i64 24}
!79 = !{!"_ZTSN6hermes2vm8JSObjectE", !10, i64 0, !80, i64 4, !81, i64 8, !85, i64 12, !86, i64 16}
!80 = !{!"_ZTSN6hermes2vm11ObjectFlagsE", !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 1}
!81 = !{!"_ZTSN6hermes2vm9GCPointerINS0_8JSObjectEEE", !82, i64 0}
!82 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !83, i64 0}
!83 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !84, i64 0}
!84 = !{!"_ZTSN6hermes2vm12BasedPointerE", !4, i64 0}
!85 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !82, i64 0}
!86 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !82, i64 0}
!87 = !{!"_ZTSN6hermes2vm9GCPointerINS0_15StringPrimitiveEEE", !82, i64 0}
!88 = !{!"branch_weights", i32 1, i32 4001}
!89 = !{!90, !72, i64 24}
!90 = !{!"_ZTSN6hermes2vm8JSNumberE", !79, i64 0, !72, i64 24}
!91 = !{!92, !43, i64 20}
!92 = !{!"_ZTSN6hermes2vm9JSBooleanE", !79, i64 0, !43, i64 20}
end_hunk_1

inline.NumInlined: 1775
inline.NumDeleted: 700
begin_hunk_0_@_ZN6hermes2vm23objectPreventExtensionsEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !15, !noalias !136
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !19 ; 3 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, -436207616
  %i.j = icmp ult i32 %i.i, 855638016
  %spec.select.i = select i1 %i.j, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.k = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !12 ; 2 uses
  %i.l = icmp ugt i64 %i.k, -844424930131969
  %i.m = and i64 %i.k, 281474976710655
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit.thread: ; preds = %bb.a
  %i.p = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !12 ; 2 uses
  %i.q = icmp ugt i64 %i.p, -844424930131969
  %i.r = and i64 %i.p, 281474976710655
  %i.s = icmp ne i64 %i.r, 0
  %i.t = and i1 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit.thread, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %.sroa.03.0.i14 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit.thread ], [ %.sroa.03.0.i, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ]
  %i.u = tail call i32 @_ZN6hermes2vm8JSObject17preventExtensionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_11PropOpFlagsE(ptr nonnull %.sroa.03.0.i14, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 1) #9
  %.mask = and i32 %i.u, 255
  %i.v = icmp eq i32 %.mask, 0
  br i1 %i.v, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %bb.d, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.a, align 8, !tbaa !20
  %.not15 = icmp eq i32 %i.w, 0
  br i1 %.not15, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %2, align 8, !tbaa !15, !noalias !139
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.sroa.0.0.copyload.i7 = load i64, ptr %i.y, align 8, !tbaa !19
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit.thread, %bb.c, %bb.d, %bb.e
  %.sroa.011.1 = phi i32 [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit.thread ], [ 0, %bb.c ], [ 1, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ]
  %.sroa.412.1 = phi i64 [ -1688849860263936, %bb.d ], [ %.sroa.0.0.copyload.i7, %bb.e ], [ -1688849860263936, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit.thread ], [ undef, %bb.c ], [ %.sroa.0.0.copyload.i, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.011.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.412.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm8objectIsEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !15, !noalias !142
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %.not8 = icmp eq i32 %i.b, 1
  br i1 %.not8, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5, label %bb.b

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.e = load ptr, ptr %2, align 8, !tbaa !15, !noalias !145
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -16
  %.sroa.0.0.copyload.i4 = load i64, ptr %i.f, align 8, !tbaa !19
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5

_ZNK6hermes2vm10NativeArgs6getArgEj.exit5:        ; preds = %bb.a, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.b
  %.sroa.0.0.i7 = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload.i, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ], [ -1688849860263936, %bb.a ]
  %.sroa.0.0.i3 = phi i64 [ %.sroa.0.0.copyload.i4, %bb.b ], [ -1688849860263936, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ], [ -1688849860263936, %bb.a ]
  %i.g = tail call noundef zeroext i1 @_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_(i64 %.sroa.0.0.i7, i64 %.sroa.0.0.i3) #9
  %i.h = zext i1 %i.g to i64
  %i.i = or disjoint i64 %i.h, -1407374883553280
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.i, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm14objectIsSealedEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !15, !noalias !148
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, -436207616
  %i.j = icmp ult i32 %i.i, 855638016
  %spec.select.i = select i1 %i.j, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ]
  %i.k = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !12 ; 2 uses
  %i.l = icmp ugt i64 %i.k, -844424930131969
  %i.m = and i64 %i.k, 281474976710655            ; 2 uses
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.p = inttoptr i64 %i.m to ptr
  %i.q = tail call noundef zeroext i1 @_ZN6hermes2vm8JSObject8isSealedENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(9816) %1) #9
  %i.r = zext i1 %i.q to i64
  %i.s = or disjoint i64 %i.r, -1407374883553280
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, %bb.c
  %.sroa.3.0 = phi i64 [ %i.s, %bb.c ], [ -1407374883553279, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ]
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm14objectIsFrozenEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !15, !noalias !151
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, -436207616
  %i.j = icmp ult i32 %i.i, 855638016
  %spec.select.i = select i1 %i.j, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ]
  %i.k = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !12 ; 2 uses
  %i.l = icmp ugt i64 %i.k, -844424930131969
  %i.m = and i64 %i.k, 281474976710655            ; 2 uses
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.p = inttoptr i64 %i.m to ptr
  %i.q = tail call noundef zeroext i1 @_ZN6hermes2vm8JSObject8isFrozenENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(9816) %1) #9
  %i.r = zext i1 %i.q to i64
  %i.s = or disjoint i64 %i.r, -1407374883553280
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, %bb.c
  %.sroa.3.0 = phi i64 [ %i.s, %bb.c ], [ -1407374883553279, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ]
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18objectIsExtensibleEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !15, !noalias !154
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %bb.b, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, -436207616
  %i.j = icmp ult i32 %i.i, 855638016
  br i1 %i.j, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.k = tail call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(9816) %1) #9 ; 2 uses
  %.mask = and i32 %i.k, 255
  %i.l = icmp eq i32 %.mask, 0
  br i1 %i.l, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %bb.c, !prof !46

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit
  %i.m = lshr i32 %i.k, 8
  %.lobit = and i32 %i.m, 1
  %i.n = zext nneg i32 %.lobit to i64
  %i.o = or disjoint i64 %i.n, -1407374883553280
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.a, %bb.c, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.b
  %.sroa.06.1 = phi i32 [ 0, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit ], [ 1, %bb.b ], [ 1, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ], [ 1, %bb.c ], [ 1, %bb.a ]
  %.sroa.4.1 = phi i64 [ undef, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit ], [ -1407374883553280, %bb.b ], [ -1407374883553280, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ], [ %i.o, %bb.c ], [ -1407374883553280, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.06.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10objectKeysEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i32, i64 } %i.e, 1
  %i.i = or i64 %i.h, -281474976710656            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = icmp ult ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !40
  store i64 %i.i, ptr %i.m, align 8, !tbaa !19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.k, i64 %i.i) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.r, %bb.d ]
  %i.s = tail call { i32, i64 } @_ZN6hermes2vm27enumerableOwnProperties_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_27EnumerableOwnPropertiesKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, i32 noundef 0) ; 2 uses
  %i.t = extractvalue { i32, i64 } %i.s, 0
  %i.u = extractvalue { i32, i64 } %i.s, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %.sroa.06.0 = phi i32 [ %i.t, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.u, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.06.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm12objectValuesEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i32, i64 } %i.e, 1
  %i.i = or i64 %i.h, -281474976710656            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = icmp ult ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !40
  store i64 %i.i, ptr %i.m, align 8, !tbaa !19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.k, i64 %i.i) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.r, %bb.d ]
  %i.s = tail call { i32, i64 } @_ZN6hermes2vm27enumerableOwnProperties_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_27EnumerableOwnPropertiesKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, i32 noundef 1) ; 2 uses
  %i.t = extractvalue { i32, i64 } %i.s, 0
  %i.u = extractvalue { i32, i64 } %i.s, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %.sroa.06.0 = phi i32 [ %i.t, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.u, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.06.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm13objectEntriesEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i32, i64 } %i.e, 1
  %i.i = or i64 %i.h, -281474976710656            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = icmp ult ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !40
  store i64 %i.i, ptr %i.m, align 8, !tbaa !19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.k, i64 %i.i) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.r, %bb.d ]
  %i.s = tail call { i32, i64 } @_ZN6hermes2vm27enumerableOwnProperties_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_27EnumerableOwnPropertiesKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, i32 noundef 2) ; 2 uses
  %i.t = extractvalue { i32, i64 } %i.s, 0
  %i.u = extractvalue { i32, i64 } %i.s, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %.sroa.06.0 = phi i32 [ %i.t, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.u, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.06.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm12objectCreateEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !15, !noalias !157
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !19 ; 3 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, -436207616
  %i.j = icmp ult i32 %i.i, 855638016
  %spec.select.i = select i1 %i.j, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm27getOwnPropertyKeysAsStringsENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_12OwnKeysFlagsE:bb.a
  store i64 %.sroa.05.0.i, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !12
  %.mask.i = and i64 %.sroa.05.0.i, -281474976710656
  %i.ch = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.ch, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
  %.sroa.05.0.i42 = phi i64 [ %.sroa.05.0.i.ph, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread ], [ %.sroa.05.0.i, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ]
  %.mask.i25 = and i64 %.sroa.05.0.i42, -140737488355328
  %i.ci = icmp eq i64 %.mask.i25, -1266637395197952
  br i1 %i.ci, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i) #9
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = or i64 %i.ck, -844424930131968          ; 2 uses
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !26  ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 192 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 200
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41
  %i.cr = icmp ult ptr %i.co, %i.cq
  br i1 %i.cr, label %bb.r, label %bb.s, !prof !47

bb.r:                                             ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !40
  store i64 %i.cl, ptr %i.co, align 8, !tbaa !19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.s:                                             ; preds = %bb.q
  %i.ct = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cm, i64 %i.cl) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.r, %bb.s
  %.0.i.i.i.i.i.i26 = phi ptr [ %i.co, %bb.r ], [ %i.ct, %bb.s ]
  %i.cu = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.043, ptr %.0.i.i.i.i.i.i26) #9 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, %bb.p, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.cv = add nuw i32 %.043, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.cv, %i.x
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !166

bb.u:                                             ; preds = %bb.a, %._crit_edge
  %.sroa.038.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %.sroa.0.0.copyload.i, %._crit_edge ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.038.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_10NativeArgsENS0_11PropOpFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef readonly captures(none) dead_on_return %1, i32 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"union.hermes::vm::DefinePropertyFlags", align 4 ; 5 uses
  %5 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !15, !noalias !167
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, -436207616
  %i.j = icmp ult i32 %i.i, 855638016
  %spec.select.i = select i1 %i.j, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.k = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !12 ; 2 uses
  %i.l = icmp ugt i64 %i.k, -844424930131969
  %i.m = and i64 %i.k, 281474976710655
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.p, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 44, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.r, align 8, !tbaa !52
  store ptr @.str, ptr %3, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.s, align 8, !tbaa !54
  %i.t = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  %i.u = and i32 %i.t, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.j

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.v = icmp ugt i32 %i.b, 1
  %i.w = load ptr, ptr %1, align 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.sroa.02.0.i = select i1 %i.v, ptr %i.x, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 3 uses
  %i.y = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !12
  %i.z = icmp ugt i64 %i.y, -281474976710657
  br i1 %i.z, label %bb.d, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.sroa.02.0.i)
  br label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.c, %bb.d
  %.sroa.02.0.i13 = phi ptr [ %i.aa, %bb.d ], [ %.sroa.02.0.i, %bb.c ] ; 2 uses
  %.not20 = icmp eq ptr %.sroa.02.0.i13, inttoptr (i64 -1 to ptr)
  br i1 %.not20, label %bb.j, label %bb.e, !prof !46

bb.e:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 192 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !47

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !40
  store i64 -1688849860263936, ptr %i.ae, align 8, !tbaa !19
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ac, i64 -1688849860263936) #9
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.g ]
  store ptr %.0.i.i.i.i.i.i, ptr %5, align 8, !tbaa !64
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !20
  %i.al = icmp ugt i32 %i.ak, 2
  %i.am = load ptr, ptr %1, align 8
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -24
  %.sroa.02.0.i14 = select i1 %i.al, ptr %i.an, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.ao = call noundef i32 @_ZN6hermes2vm20toPropertyDescriptorENS0_6HandleINS0_11HermesValueEEERNS0_7RuntimeERNS0_19DefinePropertyFlagsERNS0_13MutableHandleIS2_EE(ptr nonnull %.sroa.02.0.i14, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.02.0.copyload = load i32, ptr %4, align 4, !tbaa !53
  %.sroa.01.0.copyload = load ptr, ptr %5, align 8
  %i.aq = call i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr nonnull %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.sroa.02.0.i13, i32 %.sroa.02.0.copyload, ptr %.sroa.01.0.copyload, i32 %2) #9
  %i.ar = and i32 %i.aq, 65535
  br label %bb.i

bb.i:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.h
  %.sroa.016.0 = phi i32 [ %i.ar, %bb.h ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.016.2 = phi i32 [ %i.u, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.016.0, %bb.i ], [ 0, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ]
  ret i32 %.sroa.016.2
}

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm20toPropertyDescriptorENS0_6HandleINS0_11HermesValueEEERNS0_7RuntimeERNS0_19DefinePropertyFlagsERNS0_13MutableHandleIS2_EE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, i64 } @_ZN6hermes2vmL30objectDefinePropertiesInternalERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  %5 = alloca %"class.llvh::SmallVector.196", align 8 ; 10 uses
  %6 = alloca %"class.hermes::vm::MutableHandle.151", align 8 ; 4 uses
  %7 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 8 ; 9 uses
  %8 = alloca %"union.hermes::vm::DefinePropertyFlags", align 4 ; 6 uses
  %9 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 6 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !19 ; 3 uses
  %i.a = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.a, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add i32 %i.d, -436207616
  %i.f = icmp ult i32 %i.e, 855638016
  br i1 %i.f, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.g, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 46, ptr %i.h, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !52
  store ptr @.str.10, ptr %3, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.j, align 8, !tbaa !54
  %i.k = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.as

_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.l = or i64 %.sroa.0.0.copyload.i.i, -281474976710656 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !40
  store i64 %i.l, ptr %i.p, align 8, !tbaa !19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.d:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit
  %i.u = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.n, i64 %i.l) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.u, %bb.d ] ; 2 uses
  %i.v = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %2) #9 ; 2 uses
  %i.w = extractvalue { i32, i64 } %i.v, 0
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.as, label %bb.e, !prof !46

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %i.y = extractvalue { i32, i64 } %i.v, 1
  %i.z = or i64 %i.y, -281474976710656            ; 3 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !26  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 192 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.af = icmp ult ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g, !prof !47

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !40
  store i64 %i.z, ptr %i.ac, align 8, !tbaa !19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.aa, i64 %i.z) #9 ; 2 uses
  %.sroa.0.0.copyload.i.i79.pre = load i64, ptr %i.ah, align 8, !tbaa !19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.copyload.i.i79 = phi i64 [ %i.z, %bb.f ], [ %.sroa.0.0.copyload.i.i79.pre, %bb.g ]
  %.0.i.i.i.i.i.i71 = phi ptr [ %i.ac, %bb.f ], [ %i.ah, %bb.g ] ; 7 uses
  %i.ai = and i64 %.sroa.0.0.copyload.i.i79, 281474976710655
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = lshr i32 %i.al, 5
  %i.an = and i32 %i.am, 4
  %.sroa.0.0.insert.ext.i85 = or disjoint i32 %i.an, 3
  %i.ao = tail call ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr nonnull %.0.i.i.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.insert.ext.i85) #9 ; 4 uses
  %.not = icmp eq ptr %i.ao, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.as, label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %0, ptr %4, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !26
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.av, align 4, !tbaa !38
  store ptr %i.as, ptr %i.at, align 8
  store i32 1, ptr %i.au, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.ar, ptr %i.ax, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i32 0, ptr %i.ay, align 8, !tbaa !42
  store ptr %4, ptr %i.m, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.az, ptr %5, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 4, ptr %i.bb, align 4, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 -1688849860263936, ptr %i.as, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.bd, ptr %i.aw, align 8, !tbaa !40
  store i64 -1266636858327041, ptr %i.bc, align 8, !tbaa !19
  %.sroa.0.0.copyload.i.i89.pre = load i64, ptr %i.ao, align 8, !tbaa !19
  store ptr %i.bc, ptr %6, align 8, !tbaa !64
  %i.be = and i64 %.sroa.0.0.copyload.i.i89.pre, 281474976710655
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !163 ; 2 uses
  %.not65172.not = icmp eq i32 %i.bh, 0
  br i1 %.not65172.not, label %.critedge70, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.bi = ptrtoint ptr %0 to i64                  ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.thread160
  %.0154173 = phi i32 [ 0, %.lr.ph ], [ %i.ff, %.thread160 ] ; 5 uses
  %.sroa.0.0.copyload.i.i90 = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.bk = and i64 %.sroa.0.0.copyload.i.i90, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr               ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !102 ; 2 uses
  %.not.i = icmp uge i32 %.0154173, %i.bn
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp ult i32 %.0154173, %i.bp
  %or.cond.i = select i1 %.not.i, i1 %i.bq, i1 false
  br i1 %or.cond.i, label %bb.i, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bs = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.bt = add i64 %i.bs, %i.bi
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = sub nuw i32 %.0154173, %i.bn            ; 4 uses
  %i.bw = icmp ult i32 %i.bv, 4096
  br i1 %i.bw, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = add i32 %i.bv, -4096
  %i.by = lshr i32 %i.bx, 10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16392
  %i.ca = zext nneg i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !112
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add i64 %i.cd, %i.bi
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = and i32 %i.bv, 1023
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit: ; preds = %bb.i, %bb.j
  %.sink8.i.i = phi ptr [ %i.cf, %bb.j ], [ %i.bu, %bb.i ]
  %.sink7.i.i = phi i32 [ %i.cg, %bb.j ], [ %i.bv, %bb.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sink8.i.i, i64 8
  %i.ci = zext nneg i32 %.sink7.i.i to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ci
  %.sroa.0.0.i.i = load i32, ptr %i.cj, align 4, !tbaa !3 ; 9 uses
  %i.ck = trunc i32 %.sroa.0.0.i.i to i8
  %i.cl = and i8 %i.ck, 15
  switch i8 %i.cl, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.unreachabledefault [
    i8 0, label %bb.k
    i8 8, label %bb.k
    i8 1, label %bb.l
    i8 9, label %bb.l
    i8 2, label %bb.m
    i8 10, label %bb.m
    i8 3, label %bb.n
    i8 11, label %bb.n
    i8 4, label %bb.o
    i8 12, label %bb.o
    i8 5, label %bb.p
    i8 13, label %bb.p
    i8 6, label %bb.q
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
    i8 7, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread
    i8 15, label %bb.r
  ]

bb.k:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i, 0
  %i.cm = zext i32 %.sroa.0.0.i.i to i64
  %i.cn = add i64 %i.cm, %i.bi
  %i.co = or i64 %i.cn, -281474976710656
end_hunk_1

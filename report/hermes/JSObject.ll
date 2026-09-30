Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSObject?download=true
inline.NumInlined: 2965
inline.NumDeleted: 1136
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm8JSObject6freezeENS0_6HandleIS1_EERNS0_7RuntimeE:bb.a
  %i.g = icmp eq i32 %.mask, 0
  br i1 %i.g, label %bb.g, label %bb.b, !prof !41

.critedge:                                        ; preds = %bb.a
  %i.h = or i32 %i.d, 1
  store i32 %i.h, ptr %i.c, align 4
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %_ZN6hermes2vm8JSObject17preventExtensionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_11PropOpFlagsE.exit
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !42
  %i.i = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 4
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.0.0.copyload.i.i.i8 = load i32, ptr %i.n, align 4, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i8, 0
  %i.o = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.p = zext i32 %.sroa.0.0.copyload.i.i.i8 to i64
  %i.q = add i64 %i.p, %i.o
  %i.r = or i64 %i.q, -281474976710656
  %i.s = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !57
  store i64 %i.s, ptr %i.w, align 8, !tbaa !42
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.u, i64 %i.s) #17
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.ab, %bb.e ]
  %i.ac = tail call ptr @_ZN6hermes2vm11HiddenClass15makeAllReadOnlyENS0_6HandleIS1_EERNS0_7RuntimeE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  %.sroa.0.0.copyload.i.i9 = load i64, ptr %0, align 8, !tbaa !42
  %i.ad = and i64 %.sroa.0.0.copyload.i.i9, 281474976710655
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 3 uses
  %.sroa.0.0.copyload.i.i.i10 = load i64, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !74
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = and i64 %i.ai, 562949949227008
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = icmp eq ptr %i.ah, %i.ak
  br i1 %i.al, label %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.f, !prof !44

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i10, 281474976710655
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ao = inttoptr i64 %i.am to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.af, ptr noundef %i.ao) #17
  %.sroa.0.0.copyload.i.i11.pre = load i64, ptr %0, align 8, !tbaa !42
  %.pre = and i64 %.sroa.0.0.copyload.i.i11.pre, 281474976710655
  %.pre21 = inttoptr i64 %.pre to ptr
  br label %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit, %bb.f
  %.pre-phi22 = phi ptr [ %i.ae, %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit ], [ %.pre21, %bb.f ]
  %i.ap = sub i64 %.sroa.0.0.copyload.i.i.i10, %i.o
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.af, align 4, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre-phi22, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = or i32 %i.as, 4
  store i32 %i.at, ptr %i.ar, align 4
  %.sroa.0.0.copyload.i.i12 = load i64, ptr %0, align 8, !tbaa !42
  %i.au = and i64 %.sroa.0.0.copyload.i.i12, 281474976710655
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = or i32 %i.ax, 2
  store i32 %i.ay, ptr %i.aw, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZN6hermes2vm8JSObject17preventExtensionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_11PropOpFlagsE.exit, %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit
  %.0 = phi i32 [ 1, %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit ], [ 0, %_ZN6hermes2vm8JSObject17preventExtensionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_11PropOpFlagsE.exit ], [ 1, %bb.b ]
  ret i32 %.0
}

declare ptr @_ZN6hermes2vm11HiddenClass15makeAllReadOnlyENS0_6HandleIS1_EERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm8JSObject37updatePropertyFlagsWithoutTransitionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_13PropertyFlagsES6_NS_8OptValueIN4llvh8ArrayRefINS0_8SymbolIDEEEEE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i16 %2, i16 %3, ptr nofree noundef readonly byval(%"class.hermes::OptValue.232") align 8 captures(none) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !42
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = or i64 %i.f, -281474976710656
  %i.h = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.k, align 8, !tbaa !57
  store i64 %i.h, ptr %i.l, align 8, !tbaa !42
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.q = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.j, i64 %i.h) #17
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.l, %bb.b ], [ %i.q, %bb.c ]
  %i.r = tail call ptr @_ZN6hermes2vm11HiddenClass37updatePropertyFlagsWithoutTransitionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_13PropertyFlagsES6_NS_8OptValueIN4llvh8ArrayRefINS0_8SymbolIDEEEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i16 %2, i16 %3, ptr noundef nonnull byval(%"class.hermes::OptValue.232") align 8 %4) #17
  %.sroa.0.0.copyload.i.i8 = load i64, ptr %0, align 8, !tbaa !42
  %i.s = and i64 %.sroa.0.0.copyload.i.i8, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 3 uses
  %.sroa.0.0.copyload.i.i.i9 = load i64, ptr %i.r, align 8, !tbaa !42 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = and i64 %i.x, 562949949227008
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = icmp eq ptr %i.w, %i.z
  br i1 %i.aa, label %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.d, !prof !44

bb.d:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i9, 281474976710655
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ad = inttoptr i64 %i.ab to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef %i.ad) #17
  br label %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit, %bb.d
  %i.ae = sub i64 %.sroa.0.0.copyload.i.i.i9, %i.d
  %i.af = trunc i64 %i.ae to i32
  store i32 %i.af, ptr %i.u, align 4, !tbaa !23
  ret void
}

declare ptr @_ZN6hermes2vm11HiddenClass37updatePropertyFlagsWithoutTransitionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_13PropertyFlagsES6_NS_8OptValueIN4llvh8ArrayRefINS0_8SymbolIDEEEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i16, i16, ptr noundef byval(%"class.hermes::OptValue.232") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 128
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = or i64 %i.d, -281474976710656            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !57
  store i64 %i.e, ptr %i.i, align 8, !tbaa !42
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.e) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.n, %bb.d ]
  %i.o = tail call i32 @_ZN6hermes2vm7JSProxy12isExtensibleENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  %i.p = and i32 %i.o, 65535
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %2 = and i32 %i.b, 1
  %.not.i = icmp eq i32 %2, 0
  %3 = select i1 %.not.i, i32 257, i32 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %.sroa.04.0 = phi i32 [ %i.p, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %3, %bb.e ]
  ret i32 %.sroa.04.0
}

declare i32 @_ZN6hermes2vm7JSProxy12isExtensibleENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm8JSObject8isSealedENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 2
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !57
  store i64 %i.f, ptr %i.j, align 8, !tbaa !42
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.h, i64 %i.f) #17 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.o, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !47  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !57
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre17 = load ptr, ptr %.phi.trans.insert16, align 8, !tbaa !58
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.l, %bb.d ], [ %.pre17, %bb.e ]
  %i.q = phi ptr [ %i.n, %bb.d ], [ %.pre15, %bb.e ] ; 4 uses
  %i.r = phi ptr [ %i.h, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.f, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.j, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.s = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.u, align 4, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.v = ptrtoint ptr %1 to i64
  %i.w = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.x = add i64 %i.w, %i.v
  %i.y = or i64 %i.x, -281474976710656
  %i.z = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.y ; 2 uses
  %i.aa = icmp ult ptr %i.q, %i.p
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !44

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !57
  store i64 %i.z, ptr %i.q, align 8, !tbaa !42
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ad = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.z) #17
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i6 = phi ptr [ %i.q, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = tail call noundef zeroext i1 @_ZN6hermes2vm11HiddenClass21areAllNonConfigurableENS0_6HandleIS1_EERNS0_7RuntimeE(ptr %.0.i.i.i.i.i.i6, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %.sroa.0.0.copyload.i.i.i7 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !42
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i7, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = lshr i32 %i.ah, 24
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !318
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !363
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 0) #17, !inline_history !11
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i8 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !42
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !57
  store i64 %i.f, ptr %i.j, align 8, !tbaa !42
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.h, i64 %i.f) #17 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.o, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !47  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre17 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !57
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre19 = load ptr, ptr %.phi.trans.insert18, align 8, !tbaa !58
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
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.u, align 4, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.v = ptrtoint ptr %1 to i64
  %i.w = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.x = add i64 %i.w, %i.v
  %i.y = or i64 %i.x, -281474976710656
  %i.z = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.y ; 2 uses
  %i.aa = icmp ult ptr %i.q, %i.p
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !44

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !57
  store i64 %i.z, ptr %i.q, align 8, !tbaa !42
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ad = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.z) #17
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i6 = phi ptr [ %i.q, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = tail call noundef zeroext i1 @_ZN6hermes2vm11HiddenClass14areAllReadOnlyENS0_6HandleIS1_EERNS0_7RuntimeE(ptr %.0.i.i.i.i.i.i6, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %.sroa.0.0.copyload.i.i.i7 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !42
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i7, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = lshr i32 %i.ah, 24
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !318
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
end_hunk_0

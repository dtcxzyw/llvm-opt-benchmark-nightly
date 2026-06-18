inline.NumInlined: 692
inline.NumDeleted: 349
begin_hunk_0_@_ZN6hermes2vm24mapIteratorPrototypeNextEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a

_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !31 ; 2 uses
  %.pre8 = and i64 %.pre, 281474976710655
  %i.g = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEEbNS0_11HermesValueE.exit.i ], [ %.pre8, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEEbNS0_11HermesValueE.exit.i ], [ %i.g, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.i = icmp ne i64 %.pre-phi, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 59, ptr %i.l, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !37
  store ptr @.str.14, ptr %3, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !39
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.c

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_17JSMapIteratorImplILNS0_8CellKindE50EEEEENS0_6HandleIT_EEv.exit
  %i.p = tail call { i32, i64 } @_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE50EE11nextElementENS0_6HandleIS3_EERNS0_7RuntimeE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) ; 2 uses
  %i.q = extractvalue { i32, i64 } %i.p, 0
  %i.r = extractvalue { i32, i64 } %i.p, 1
  %i.s = icmp ne i32 %i.q, 0                      ; 2 uses
  %spec.select = zext i1 %i.s to i32
  %spec.select7 = select i1 %i.s, i64 %i.r, i64 undef, !prof !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.05.1 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select, %bb.b ]
  %.sroa.46.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select7, %bb.b ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.05.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.46.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE50EE11nextElementENS0_6HandleIS3_EERNS0_7RuntimeE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !12
  store i64 -1688849860263936, ptr %i.d, align 8, !tbaa !24
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.b, i64 -1688849860263936) #5
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.c ] ; 8 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !24
  %i.j = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i8, ptr %i.l, align 4, !tbaa !119, !range !108, !noundef !109
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.0.0.copyload.i.i26 = load i32, ptr %i.p, align 4, !tbaa !3
  %i.q = ptrtoint ptr %1 to i64                   ; 8 uses
  %i.r = zext i32 %.sroa.0.0.copyload.i.i26 to i64
  %i.s = add i64 %i.r, %i.q
  %i.t = inttoptr i64 %i.s to ptr
  %.sroa.0.0.copyload.i.i28 = load i32, ptr %i.o, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i28, 0
  %i.u = zext i32 %.sroa.0.0.copyload.i.i28 to i64
  %i.v = add i64 %i.u, %i.q
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = select i1 %.not.i.i.i.i, ptr null, ptr %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.y, align 4, !tbaa !3
  %i.z = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.aa = add i64 %i.z, %i.q
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = tail call noundef ptr @_ZNK6hermes2vm14OrderedHashMap12iteratorNextERNS0_7RuntimeEPNS0_12HashMapEntryE(ptr noundef nonnull align 4 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.x) #5 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.ag = ptrtoint ptr %i.o to i64
  %i.ah = and i64 %i.ag, 562949949227008
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = icmp eq ptr %i.af, %i.ai
  br i1 %i.aj, label %_ZN6hermes2vm9GCPointerINS0_12HashMapEntryEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef %i.ac) #5
  br label %_ZN6hermes2vm9GCPointerINS0_12HashMapEntryEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_12HashMapEntryEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %bb.d, %bb.e
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  %i.ak = ptrtoint ptr %i.ac to i64
  %i.al = sub i64 %i.ak, %i.q
  %i.am = trunc i64 %i.al to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.am
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.o, align 4, !tbaa !3
  %.sroa.0.0.copyload.i.i29 = load i64, ptr %0, align 8, !tbaa !24
  %i.an = and i64 %.sroa.0.0.copyload.i.i29, 281474976710655
  %i.ao = inttoptr i64 %i.an to ptr               ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !120 ; 3 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm9GCPointerINS0_12HashMapEntryEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !52
  switch i32 %i.as, label %bb.n [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.at = zext i32 %i.aq to i64
  %i.au = add i64 %i.at, %i.q
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.08.0.copyload = load i64, ptr %i.aw, align 8, !tbaa !24
  store i64 %.sroa.08.0.copyload, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !31
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.ax = zext i32 %i.aq to i64
  %i.ay = add i64 %i.ax, %i.q
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.07.0.copyload = load i64, ptr %i.ba, align 8, !tbaa !24
  store i64 %.sroa.07.0.copyload, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !31
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.bb = tail call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 2, i32 noundef 2) #5 ; 4 uses
  %.not67 = icmp eq ptr %i.bb, inttoptr (i64 -1 to ptr)
  br i1 %.not67, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i35 = load i64, ptr %0, align 8, !tbaa !24
  %i.bc = and i64 %.sroa.0.0.copyload.i.i35, 281474976710655
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.0.0.copyload.i.i36 = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bf = zext i32 %.sroa.0.0.copyload.i.i36 to i64
  %i.bg = add i64 %i.bf, %i.q
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.06.0.copyload = load i64, ptr %i.bi, align 8, !tbaa !24
  store i64 %.sroa.06.0.copyload, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !31
  %i.bj = tail call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.bb, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 0, ptr nonnull %.0.i.i.i.i.i.i) #5 ; 0 uses
  %.sroa.0.0.copyload.i.i37 = load i64, ptr %0, align 8, !tbaa !24
  %i.bk = and i64 %.sroa.0.0.copyload.i.i37, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %.sroa.0.0.copyload.i.i38 = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bn = zext i32 %.sroa.0.0.copyload.i.i38 to i64
  %i.bo = add i64 %i.bn, %i.q
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.04.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !24
  store i64 %.sroa.04.0.copyload, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !31
  %i.br = tail call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.bb, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1, ptr nonnull %.0.i.i.i.i.i.i) #5 ; 0 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.bb, align 8, !tbaa !24
  store i64 %.sroa.0.0.copyload.i, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !31
  br label %bb.n

bb.k:                                             ; preds = %_ZN6hermes2vm9GCPointerINS0_12HashMapEntryEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i8 1, ptr %i.bs, align 4, !tbaa !119
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 20 ; 3 uses
  %i.bu = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = and i64 %i.bv, 562949949227008
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = icmp ne ptr %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.ca = load i8, ptr %i.bz, align 1, !range !108
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = select i1 %i.by, i1 %i.cb, i1 false
  br i1 %i.cc, label %bb.l, label %_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.cd = load i32, ptr %i.bt, align 4, !tbaa !3  ; 2 uses
  %.not.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i, label %_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ad, i32 %i.cd) #5
  br label %_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit

_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i32 0, ptr %i.bt, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit, %bb.h, %bb.g, %bb.f, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.0.0.copyload.i.i41 = load i64, ptr %0, align 8, !tbaa !24
  %i.ce = and i64 %.sroa.0.0.copyload.i.i41, 281474976710655
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !119, !range !108, !noundef !109
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = tail call ptr @_ZN6hermes2vm22createIterResultObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, i1 noundef zeroext %i.ci) #5
  %.sroa.0.0.copyload.i42 = load i64, ptr %i.cj, align 8, !tbaa !24
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.n
  %.sroa.066.1 = phi i32 [ 1, %bb.n ], [ 0, %bb.i ]
  %.sroa.3.0 = phi i64 [ %.sroa.0.0.copyload.i42, %bb.n ], [ undef, %bb.i ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.066.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm14defineAccessorERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEESF_bb(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, i32, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32, ptr, i32) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #4

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_9JSMapImplILNS0_8CellKindE48EEEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS8_EEPv(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef) #2

declare ptr @_ZN6hermes2vm14OrderedHashMap6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm11getIteratorERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEN4llvh8OptionalINS3_INS0_8CallableEEEEE(ptr dead_on_unwind writable sret(%"class.hermes::vm::CallResult.176") align 8, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i8) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm12iteratorStepERNS0_7RuntimeERKNS0_14IteratorRecordE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm23iteratorCloseAndRethrowERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i64, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN6hermes2vm14OrderedHashMap5clearERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm14OrderedHashMap5eraseENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes2vm14OrderedHashMap12iteratorNextERNS0_7RuntimeEPNS0_12HashMapEntryE(ptr noundef nonnull align 4 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i64, i64, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN6hermes2vm14OrderedHashMap3getENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm14OrderedHashMap3hasENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm14OrderedHashMap6insertENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm22createIterResultObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_17CompressedPointerE(ptr noundef nonnull align 8 dereferenceable(8112), i32) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !10, i64 8}
!10 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !21, i64 192}
!13 = !{!"_ZTSN6hermes2vm7GCScopeE", !14, i64 0, !10, i64 8, !5, i64 16, !15, i64 144, !21, i64 192, !21, i64 200, !4, i64 208}
!14 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !11, i64 0}
!15 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !16, i64 0, !20, i64 16}
!16 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !17, i64 0}
!17 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !18, i64 0}
!18 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !19, i64 0}
!19 = !{!"_ZTSN4llvh15SmallVectorBaseE", !11, i64 0, !4, i64 8, !4, i64 12}
!20 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!21 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !11, i64 0}
!22 = !{!13, !21, i64 200}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{!27, !21, i64 0}
!27 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !21, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!30 = distinct !{!30, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!31 = !{!32, !25, i64 0}
!32 = !{!"_ZTSN6hermes2vm11HermesValueE", !25, i64 0}
!33 = !{!34, !35, i64 24}
!34 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !35, i64 8, !5, i64 16, !35, i64 24, !25, i64 32, !25, i64 40}
!35 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!36 = !{!34, !25, i64 32}
!37 = !{!34, !25, i64 40}
!38 = !{!5, !5, i64 0}
!39 = !{!34, !35, i64 8}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!42 = distinct !{!42, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!43 = !{!44, !4, i64 8}
!44 = !{!"_ZTSN6hermes2vm10NativeArgsE", !27, i64 0, !4, i64 8, !21, i64 16}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!47 = distinct !{!47, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !50, i64 0, !51, i64 8}
!50 = !{!"p1 omnipotent char", !11, i64 0}
!51 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !11, i64 0}
!52 = !{!53, !65, i64 28}
!53 = !{!"_ZTSN6hermes2vm17JSMapIteratorImplILNS0_8CellKindE50EEE", !54, i64 0, !63, i64 20, !64, i64 24, !65, i64 28, !66, i64 32}
!54 = !{!"_ZTSN6hermes2vm8JSObjectE", !55, i64 0, !56, i64 4, !57, i64 8, !61, i64 12, !62, i64 16}
!55 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!56 = !{!"_ZTSN6hermes2vm11ObjectFlagsE", !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 1}
!57 = !{!"_ZTSN6hermes2vm9GCPointerINS0_8JSObjectEEE", !58, i64 0}
!58 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !59, i64 0}
!59 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !60, i64 0}
!60 = !{!"_ZTSN6hermes2vm12BasedPointerE", !4, i64 0}
!61 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !58, i64 0}
!62 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !58, i64 0}
!63 = !{!"_ZTSN6hermes2vm9GCPointerINS0_9JSMapImplILNS0_8CellKindE48EEEEE", !58, i64 0}
!64 = !{!"_ZTSN6hermes2vm9GCPointerINS0_12HashMapEntryEEE", !58, i64 0}
!65 = !{!"_ZTSN6hermes2vm13IterationKindE", !5, i64 0}
!66 = !{!"bool", !5, i64 0}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!69 = distinct !{!69, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!72 = distinct !{!72, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!75 = distinct !{!75, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!78 = distinct !{!78, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!81 = distinct !{!81, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!84 = distinct !{!84, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!85 = !{!86, !4, i64 20}
!86 = !{!"_ZTSN6hermes2vm14OrderedHashMapE", !55, i64 0, !62, i64 4, !64, i64 8, !64, i64 12, !4, i64 16, !4, i64 20}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!89 = distinct !{!89, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!90 = !{!14, !14, i64 0}
!91 = !{!13, !10, i64 8}
!92 = !{!19, !11, i64 0}
!93 = !{!19, !4, i64 12}
!94 = !{!19, !4, i64 8}
!95 = !{!13, !4, i64 208}
!96 = !{!44, !21, i64 16}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!99 = distinct !{!99, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!102 = distinct !{!102, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!103 = !{!104, !66, i64 16}
!104 = !{!"_ZTSN4llvh8OptionalIN6hermes2vm14IteratorRecordEEE", !105, i64 0}
!105 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageIN6hermes2vm14IteratorRecordELb0EEE", !106, i64 0, !66, i64 16}
!106 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIN6hermes2vm14IteratorRecordEcccccccccEE", !107, i64 0}
!107 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm16EEE", !5, i64 0}
!108 = !{i8 0, i8 2}
!109 = !{}
!110 = !{!"branch_weights", i32 1, i32 127}
!111 = !{!21, !21, i64 0}
!112 = !{!"branch_weights", i32 127, i32 255873}
!113 = distinct !{!113, !114}
!114 = !{!"llvm.loop.mustprogress"}
!115 = distinct !{!115, !114}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!118 = distinct !{!118, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!119 = !{!53, !66, i64 32}
!120 = !{!60, !4, i64 0}
end_hunk_0

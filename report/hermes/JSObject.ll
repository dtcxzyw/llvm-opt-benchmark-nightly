inline.NumInlined: 2965
inline.NumDeleted: 1136
begin_hunk_0_@_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv:bb.a
  %i.h = load i32, ptr %i.g, align 4, !noalias !385 ; 2 uses
  %i.i = icmp ugt i32 %i.h, 150994943
  br i1 %i.i, label %bb.d, label %bb.e, !prof !39

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !388, !noalias !385
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.h, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.n, align 8, !tbaa !40, !noalias !385
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !388, !noalias !385
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.0.i.sink.i.i = phi ptr [ %i.e, %bb.b ], [ %i.k, %bb.d ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.r, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !389, !noalias !385 ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.v, align 8, !tbaa !305, !alias.scope !385
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.u, ptr %i.w, align 8, !tbaa !308, !alias.scope !385
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !309, !alias.scope !385
  %i.y = icmp eq i32 %i.t, 0
  br i1 %i.y, label %_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i
  %i.z = and i32 %i.b, 1073741823
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.aa
  store ptr %i.ab, ptr %0, align 8, !tbaa !41, !alias.scope !385
  br label %_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit.i

_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit.i: ; preds = %bb.i, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i
  %.sink.i.i = phi i32 [ 3, %bb.i ], [ 1, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !310, !alias.scope !385
  br label %_ZNK6hermes2vm10StringView7toTwineEv.exit

bb.j:                                             ; preds = %bb.a
  %.not.i1.i = icmp samesign ult i32 %i.b, 1073741824
  %i.ad = load ptr, ptr %1, align 8, !tbaa !41, !noalias !385 ; 2 uses
  br i1 %.not.i1.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.ad, align 8, !tbaa !40, !noalias !385
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.af = inttoptr i64 %i.ae to ptr               ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !noalias !385 ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, 150994943
  br i1 %i.ah, label %bb.l, label %bb.m, !prof !39

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !391, !noalias !385
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.m:                                             ; preds = %bb.k
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.ag, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.p [
    i32 117440512, label %bb.n
    i32 50331648, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.am, align 8, !tbaa !40, !noalias !385
  %i.an = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !391, !noalias !385
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %.0.i.sink.i4.i = phi ptr [ %i.ad, %bb.j ], [ %i.aj, %bb.l ], [ %i.ak, %bb.n ], [ %i.al, %bb.o ], [ %i.aq, %bb.p ]
  %i.ar = and i32 %i.b, 1073741823
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !389, !noalias !385
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.ax, align 8, !tbaa !310, !alias.scope !385
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.ay, align 8, !tbaa !305, !alias.scope !385
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aw, ptr %i.az, align 8, !tbaa !308, !alias.scope !385
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ba, align 8, !tbaa !309, !alias.scope !385
  store ptr %i.at, ptr %0, align 8, !tbaa !41, !alias.scope !385
  br label %_ZNK6hermes2vm10StringView7toTwineEv.exit

_ZNK6hermes2vm10StringView7toTwineEv.exit:        ; preds = %_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit.i, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i
  ret void
}

declare { i32, i64 } @_ZN6hermes2vm7JSProxy8getNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm8JSObject17getNamedOrIndexedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i32 %3) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.g = tail call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.f, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = tail call i64 @_ZN6hermes2vm12toArrayIndexENS0_10StringViewE(ptr %i.h, i64 %i.i) #17 ; 2 uses
  %i.k = and i64 %i.j, 4294967296
  %.not22 = icmp eq i64 %i.k, 0
  br i1 %.not22, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.extract.trunc = trunc i64 %i.j to i32
  %i.l = uitofp i32 %.sroa.0.0.extract.trunc to double ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !46
  store double %i.l, ptr %i.p, align 8, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = bitcast double %i.l to i64
  %i.v = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.n, i64 %i.u) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.v, %bb.e ]
  %i.w = tail call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, ptr nonnull %0)
  br label %bb.g

.thread:                                          ; preds = %bb.b, %bb.a
  %i.x = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr nonnull %0, i32 %3, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.pn = phi { i32, i64 } [ %i.x, %.thread ], [ %i.w, %bb.f ]
  ret { i32, i64 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.hermes::vm::HermesValue32", align 4 ; 4 uses
  %5 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::MutableHandle.214", align 8 ; 4 uses
  %7 = alloca %"class.hermes::vm::MutableHandle.209", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16
  %.not = icmp ne i32 %i.e, 0
  %.pr.pre92 = load i64, ptr %2, align 8, !tbaa !40 ; 3 uses
  %i.f = icmp ult i64 %.pr.pre92, -1970324836974592
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, label %.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit: ; preds = %bb.a
  %i.g = bitcast i64 %.pr.pre92 to double         ; 2 uses
  %i.h = fptoui double %i.g to i32                ; 3 uses
  %i.i = uitofp i32 %i.h to double
  %i.j = fcmp oeq double %i.g, %i.i
  %i.k = icmp ne i32 %i.h, -1
  %or.cond.i.i = and i1 %i.k, %i.j
  %i.l = zext i32 %i.h to i64
  %i.m = or disjoint i64 %i.l, 4294967296
  %i.n = trunc nuw nsw i64 %i.m to i40
  %i.o = select i1 %or.cond.i.i, i40 %i.n, i40 0  ; 2 uses
  %.not87 = icmp samesign ult i40 %i.o, 4294967296
  br i1 %.not87, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit
  %.sroa.073.0.extract.trunc = trunc i40 %i.o to i32
  %i.p = load i32, ptr %i.b, align 4
  %i.q = lshr i32 %i.p, 24
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !319
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !320
  %i.w = tail call i64 %i.v(ptr nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.073.0.extract.trunc) #17, !inline_history !325 ; 2 uses
  %.mask.i = and i64 %i.w, -140737488355328
  %i.x = icmp eq i64 %.mask.i, -1970324836974592
  br i1 %i.x, label %..threadthread-pre-split_crit_edge, label %bb.w, !prof !39

..threadthread-pre-split_crit_edge:               ; preds = %bb.b
  %.pr.pre = load i64, ptr %2, align 8, !tbaa !326
  br label %.thread

.thread:                                          ; preds = %bb.a, %..threadthread-pre-split_crit_edge
  %i.y = phi i64 [ %.pr.pre92, %bb.a ], [ %.pr.pre, %..threadthread-pre-split_crit_edge ]
  %i.z = icmp ugt i64 %i.y, -281474976710657
  br i1 %i.z, label %bb.c, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !395

bb.c:                                             ; preds = %.thread
  %i.aa = tail call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2)
  br label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, %.thread, %bb.c
  %.sroa.02.0.i = phi ptr [ %i.aa, %bb.c ], [ %2, %.thread ], [ %2, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit ] ; 4 uses
  %.not88 = icmp eq ptr %.sroa.02.0.i, inttoptr (i64 -1 to ptr)
  br i1 %.not88, label %bb.w, label %bb.d, !prof !39

bb.d:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i32 0, ptr %5, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.ab, align 4, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56 ; 2 uses
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !46
  store i64 -281474976710656, ptr %i.af, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 -281474976710656) #17
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre94 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.phi.trans.insert95 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre96 = load ptr, ptr %.phi.trans.insert95, align 8, !tbaa !56
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.e, %bb.f
  %i.al = phi ptr [ %i.ah, %bb.e ], [ %.pre96, %bb.f ]
  %i.am = phi ptr [ %i.aj, %bb.e ], [ %.pre94, %bb.f ] ; 4 uses
  %i.an = phi ptr [ %i.ad, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.af, %bb.e ], [ %i.ak, %bb.f ] ; 4 uses
  store ptr %.0.i.i.i.i.i.i, ptr %6, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ao = icmp ult ptr %i.am, %i.al
  br i1 %i.ao, label %bb.g, label %bb.h, !prof !42

bb.g:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !46
  store i64 -1266636858327041, ptr %i.am, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.h:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ar = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.an, i64 -1266636858327041) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i53 = phi ptr [ %i.am, %bb.g ], [ %i.ar, %bb.h ]
  store ptr %.0.i.i.i.i.i.i53, ptr %7, align 8, !tbaa !316
  %i.as = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit, label %bb.i, !prof !39

bb.i:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.au = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !326 ; 2 uses
  %i.av = icmp ugt i64 %i.au, -844424930131969
  %i.aw = and i64 %i.au, 281474976710655          ; 3 uses
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = and i1 %i.av, %i.ax
  br i1 %i.ay, label %bb.j, label %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit

bb.j:                                             ; preds = %bb.i
  %i.az = load i16, ptr %5, align 8               ; 3 uses
  %i.ba = and i16 %i.az, 256
  %.not46 = icmp eq i16 %i.ba, 0
  %i.bb = and i16 %i.az, 1296
  %or.cond52 = icmp eq i16 %i.bb, 0
  br i1 %or.cond52, label %bb.k, label %.critedge51, !prof !369

bb.k:                                             ; preds = %bb.j
  %i.bc = inttoptr i64 %i.aw to ptr               ; 4 uses
  %.sroa.017.0.copyload = load i64, ptr %5, align 8 ; 4 uses
  %i.bd = and i64 %.sroa.017.0.copyload, 32
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !39

bb.l:                                             ; preds = %bb.k
  %.sroa.35.0.extract.shift.i = lshr i64 %.sroa.017.0.copyload, 32
  %.sroa.35.0.extract.trunc.i = trunc nuw i64 %.sroa.35.0.extract.shift.i to i32
  %i.be = load i32, ptr %i.bc, align 4
  %i.bf = lshr i32 %i.be, 24
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !319
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !320
  %i.bl = call i64 %i.bk(ptr nonnull %i.bc, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.35.0.extract.trunc.i) #17, !inline_history !324
  br label %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %.sroa.1.0.extract.shift.i.i = lshr i64 %.sroa.017.0.copyload, 32 ; 2 uses
  %i.bm = icmp ult i64 %.sroa.017.0.copyload, 21474836480
  br i1 %i.bm, label %bb.n, label %bb.o, !prof !42

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bp = ptrtoint ptr %1 to i64
  %i.bq = zext i32 %.sroa.0.0.copyload.i.i.i.i.i to i64
  %i.br = add i64 %i.bq, %i.bp
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = add nuw nsw i64 %.sroa.1.0.extract.shift.i.i, 4294967291
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = and i64 %i.bt, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i: ; preds = %bb.o, %bb.n
  %.sink6.i.i.i = phi i64 [ %i.bv, %bb.o ], [ %.sroa.1.0.extract.shift.i.i, %bb.n ]
  %.sink.i.i.i = phi ptr [ %i.bu, %bb.o ], [ %i.bn, %bb.n ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i, i64 %.sink6.i.i.i
  %.sroa.0.0.i.i.i = load i32, ptr %i.bw, align 4, !tbaa !3
  store i32 %.sroa.0.0.i.i.i, ptr %4, align 4
  %i.bx = call i64 @_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(9816) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit

.critedge51:                                      ; preds = %bb.j
  %i.by = and i16 %i.az, 16
  %.not45 = icmp eq i16 %i.by, 0
  br i1 %.not45, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.critedge51
  %i.bz = inttoptr i64 %i.aw to ptr
  %.sroa.012.0.copyload = load i64, ptr %5, align 8
  %i.ca = call i64 @_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE(ptr nonnull %i.bz, ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %.sroa.012.0.copyload)
  %i.cb = and i64 %i.ca, 281474976710655
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !315
  %.not89 = icmp eq i32 %i.ce, 0
  br i1 %.not89, label %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = call ptr @_ZN6hermes2vm7Runtime10makeHandleINS0_8CallableEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cd)
  %i.cg = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall0ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEEb(ptr %i.cf, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %3, i1 noundef zeroext false) #17 ; 2 uses
  %i.ch = extractvalue { i32, i64 } %i.cg, 0
  %i.ci = extractvalue { i32, i64 } %i.cg, 1
  br label %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit

bb.r:                                             ; preds = %.critedge51
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_:bb.a
  %spec.select86 = select i1 %i.cv, i64 %i.cu, i64 -1688849860263936
  br label %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit

bb.u:                                             ; preds = %bb.r
  %i.cw = call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i) ; 2 uses
  %.not91 = icmp eq ptr %i.cw, inttoptr (i64 -1 to ptr)
  br i1 %.not91, label %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = call { i32, i64 } @_ZN6hermes2vm7JSProxy11getComputedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEES8_(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.cw, ptr %3) #17 ; 2 uses
  %i.cy = extractvalue { i32, i64 } %i.cx, 0
  %i.cz = extractvalue { i32, i64 } %i.cx, 1
  br label %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit

_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit: ; preds = %bb.t, %bb.s, %bb.v, %bb.u, %bb.p, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i, %bb.l, %bb.i, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.q
  %.sroa.076.6 = phi i32 [ 0, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ 1, %bb.i ], [ %spec.select, %bb.t ], [ 1, %bb.p ], [ %i.ch, %bb.q ], [ 1, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i ], [ 1, %bb.l ], [ 0, %bb.u ], [ 0, %bb.s ], [ %i.cy, %bb.v ]
  %.sroa.13.6 = phi i64 [ -1688849860263936, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ -1688849860263936, %bb.i ], [ %spec.select86, %bb.t ], [ -1688849860263936, %bb.p ], [ %i.ci, %bb.q ], [ %i.bx, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i ], [ %i.bl, %bb.l ], [ -1688849860263936, %bb.u ], [ -1688849860263936, %bb.s ], [ %i.cz, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.w

bb.w:                                             ; preds = %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %bb.b
  %.sroa.076.8 = phi i32 [ 1, %bb.b ], [ %.sroa.076.6, %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit ], [ 0, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ]
  %.sroa.13.8 = phi i64 [ %i.w, %bb.b ], [ %.sroa.13.6, %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit ], [ -1688849860263936, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.076.8, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.13.8, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.a, align 4, !tbaa !367
  %i.b = call noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %3, align 4
  %i.e = and i16 %i.d, 1024
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = or i64 %i.f, -281474976710656            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !46
  store i64 %i.g, ptr %i.k, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.i, i64 %i.g) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %bb.d ], [ %i.p, %bb.e ]
  %i.q = call i32 @_ZN6hermes2vm7JSProxy8hasNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17
  %i.r = and i32 %i.q, 65535
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %.sroa.0.0 = phi i32 [ %i.r, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit ], [ 1, %bb.a ], [ 257, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.sroa.0.0
}

declare i32 @_ZN6hermes2vm7JSProxy8hasNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject17hasNamedOrIndexedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 4 ; 6 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.g = tail call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.f, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = tail call i64 @_ZN6hermes2vm12toArrayIndexENS0_10StringViewE(ptr %i.h, i64 %i.i) #17 ; 2 uses
  %i.k = and i64 %i.j, 4294967296
  %.not23 = icmp eq i64 %i.k, 0
  br i1 %.not23, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i12 = load i64, ptr %0, align 8, !tbaa !40
  %i.l = and i64 %.sroa.0.0.copyload.i.i12, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.j to i32
  %i.n = load i32, ptr %i.m, align 4
  %i.o = lshr i32 %i.n, 24
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !396
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.0.0.extract.trunc) #17, !inline_history !397
  br i1 %i.u, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i13 = load i64, ptr %0, align 8, !tbaa !40
  %i.v = and i64 %.sroa.0.0.copyload.i.i13, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 16
  %.not11 = icmp eq i32 %i.z, 0
  br i1 %.not11, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.aa, align 4, !tbaa !367
  %i.ab = call noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.ad = load i16, ptr %3, align 4
  %i.ae = and i16 %i.ad, 1024
  %.not.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i, label %_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE.exit, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.af, -281474976710656          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 192 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !46 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 200
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56
  %i.an = icmp ult ptr %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %bb.h, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !46
  store i64 %i.ag, ptr %i.ak, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ap = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ai, i64 %i.ag) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %bb.h ]
  %i.aq = call i32 @_ZN6hermes2vm7JSProxy8hasNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDE(ptr %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17
  %i.ar = and i32 %i.aq, 65535
  br label %_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE.exit

_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE.exit: ; preds = %.thread, %bb.e, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit.i
  %.sroa.0.0.i = phi i32 [ %i.ar, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit.i ], [ 1, %.thread ], [ 257, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.c, %_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE.exit
  %.sroa.017.1 = phi i32 [ %.sroa.0.0.i, %_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE.exit ], [ 257, %bb.c ], [ 1, %bb.d ]
  ret i32 %.sroa.017.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject11hasComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 6 uses
  %4 = alloca %"class.hermes::vm::MutableHandle.209", align 8 ; 4 uses
  %5 = alloca %"class.hermes::vm::MutableHandle.214", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16
  %.not = icmp ne i32 %i.e, 0
  %.pr.pre37 = load i64, ptr %2, align 8, !tbaa !40 ; 3 uses
  %i.f = icmp ult i64 %.pr.pre37, -1970324836974592
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, label %.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit: ; preds = %bb.a
  %i.g = bitcast i64 %.pr.pre37 to double         ; 2 uses
  %i.h = fptoui double %i.g to i32                ; 3 uses
  %i.i = uitofp i32 %i.h to double
  %i.j = fcmp oeq double %i.g, %i.i
  %i.k = icmp ne i32 %i.h, -1
  %or.cond.i.i = and i1 %i.k, %i.j
  %i.l = zext i32 %i.h to i64
  %i.m = or disjoint i64 %i.l, 4294967296
  %i.n = trunc nuw nsw i64 %i.m to i40
  %i.o = select i1 %or.cond.i.i, i40 %i.n, i40 0  ; 2 uses
  %.not34 = icmp samesign ult i40 %i.o, 4294967296
  br i1 %.not34, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit
  %.sroa.019.0.extract.trunc = trunc i40 %i.o to i32
  %i.p = load i32, ptr %i.b, align 4
  %i.q = lshr i32 %i.p, 24
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !319
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !396
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.019.0.extract.trunc) #17, !inline_history !397
  br i1 %i.w, label %bb.n, label %..threadthread-pre-split_crit_edge

..threadthread-pre-split_crit_edge:               ; preds = %bb.b
  %.pr.pre = load i64, ptr %2, align 8, !tbaa !326
  br label %.thread

.thread:                                          ; preds = %bb.a, %..threadthread-pre-split_crit_edge
  %i.x = phi i64 [ %.pr.pre37, %bb.a ], [ %.pr.pre, %..threadthread-pre-split_crit_edge ]
  %i.y = icmp ugt i64 %i.x, -281474976710657
  br i1 %i.y, label %bb.c, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !398

bb.c:                                             ; preds = %.thread
  %i.z = tail call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2)
  br label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, %.thread, %bb.c
  %.sroa.02.0.i = phi ptr [ %i.z, %bb.c ], [ %2, %.thread ], [ %2, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit ] ; 3 uses
  %.not35 = icmp eq ptr %.sroa.02.0.i, inttoptr (i64 -1 to ptr)
  br i1 %.not35, label %bb.n, label %bb.d, !prof !39

bb.d:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.aa, align 4, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 192 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !46
  store i64 -1266636858327041, ptr %i.ae, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ac, i64 -1266636858327041) #17
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre39 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre41 = load ptr, ptr %.phi.trans.insert40, align 8, !tbaa !56
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.e, %bb.f
  %i.ak = phi ptr [ %i.ag, %bb.e ], [ %.pre41, %bb.f ]
  %i.al = phi ptr [ %i.ai, %bb.e ], [ %.pre39, %bb.f ] ; 4 uses
  %i.am = phi ptr [ %i.ac, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.aj, %bb.f ]
  store ptr %.0.i.i.i.i.i.i, ptr %4, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.an = icmp ult ptr %i.al, %i.ak
  br i1 %i.an, label %bb.g, label %bb.h, !prof !42

bb.g:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !46
  store i64 -281474976710656, ptr %i.al, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.h:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.aq = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.am, i64 -281474976710656) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i17 = phi ptr [ %i.al, %bb.g ], [ %i.aq, %bb.h ] ; 3 uses
  store ptr %.0.i.i.i.i.i.i17, ptr %5, align 8, !tbaa !316
  %i.ar = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.at = load i64, ptr %.0.i.i.i.i.i.i17, align 8, !tbaa !326 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ay = load i16, ptr %3, align 4
  %i.az = and i16 %i.ay, 1024
  %.not15 = icmp eq i16 %i.az, 0
  br i1 %.not15, label %bb.m, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.ba = call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i) ; 2 uses
  %.not36 = icmp eq ptr %i.ba, inttoptr (i64 -1 to ptr)
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = call i32 @_ZN6hermes2vm7JSProxy11hasComputedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr nonnull %.0.i.i.i.i.i.i17, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.ba) #17
  %i.bc = and i32 %i.bb, 65535
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit, %bb.l
  %.sroa.023.3 = phi i32 [ %i.bc, %bb.l ], [ 256, %bb.k ], [ 256, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit ], [ 1, %bb.i ], [ 257, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.n

bb.n:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %bb.m, %bb.b
  %.sroa.023.5 = phi i32 [ 257, %bb.b ], [ %.sroa.023.3, %bb.m ], [ 256, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ]
  ret i32 %.sroa.023.5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3, ptr %4, i32 %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 12 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %11 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %13 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %14 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %15 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %16 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %17 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %18 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %19 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %20 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %21 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %22 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %23 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %24 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %25 = alloca %"class.hermes::vm::MutableHandle.209", align 8 ; 3 uses
  %26 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 5 uses
  %27 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %28 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %29 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %30 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %31 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %32 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i32 0, ptr %6, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 -1, ptr %i.a, align 4, !tbaa !367
  %i.b = call noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 14, ptr noundef nonnull align 4 dereferenceable(8) %6) ; 5 uses
  %.not = icmp eq ptr %i.b, null
  %.sroa.0.0.copyload.i.i.i134.pre = load i64, ptr %0, align 8, !tbaa !40 ; 3 uses
  br i1 %.not, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i.i.i134.pre, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr                 ; 10 uses
  %i.e = icmp ne ptr %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %..critedge112_crit_edge, label %bb.c, !prof !39

..critedge112_crit_edge:                          ; preds = %bb.b
  %.pre = load i16, ptr %6, align 8
  br label %.critedge112

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %4, align 8, !tbaa !326
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i.i134.pre, %i.f
  %.pre269 = load i16, ptr %6, align 8            ; 2 uses
  %i.h = and i16 %.pre269, 1364
  %or.cond253 = icmp eq i16 %i.h, 4
  %or.cond = select i1 %i.g, i1 %or.cond253, i1 false, !prof !399
  br i1 %or.cond, label %bb.d, label %.critedge112, !prof !399

end_hunk_1
begin_hunk_2_@_ZN6hermes2vm8JSObject14addOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.03.0.copyload.i.i.ph, ptr %i.au, align 8, !tbaa !41, !alias.scope !486
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.ph55, ptr %i.av, align 8, !tbaa !305, !alias.scope !486
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 25, ptr %i.aw, align 8, !tbaa !308, !alias.scope !486
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.ph, ptr %i.ax, align 8, !tbaa !309, !alias.scope !486
  br label %bb.t

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit:     ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i
  store ptr @.str.32, ptr %7, align 8, !tbaa !41
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !384
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %.sroa.559.0..sroa_idx, align 8, !tbaa !384
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 25, ptr %.sroa.660.0..sroa_idx, align 8, !tbaa !40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !310, !noalias !491 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  switch i32 %.pre, label %bb.t [
    i32 0, label %bb.r
    i32 1, label %bb.s
  ]

bb.r:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ay, align 8, !tbaa !310, !alias.scope !498
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.az, align 8, !tbaa !305, !alias.scope !498
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false), !alias.scope !498
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit21

bb.s:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  store ptr @.str.16, ptr %6, align 8, !tbaa !41
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !384
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %.sroa.649.0..sroa_idx, align 8, !tbaa !384
  %.sroa.750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 1, ptr %.sroa.750.0..sroa_idx, align 8, !tbaa !40
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !40
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit21

bb.t:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  %i.bb = phi i32 [ 3, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread ], [ %.pre, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !308, !noalias !491
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !309, !noalias !491
  %i.bg = add i64 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !noalias !491
  %i.bj = icmp eq i32 %i.bi, 1                    ; 2 uses
  %.sroa.06.0.copyload.i.i15 = load ptr, ptr %7, align 8, !noalias !491
  %.0.i.i16 = select i1 %i.bj, i32 %i.bb, i32 2
  %.sroa.06.0.i.i17 = select i1 %i.bj, ptr %.sroa.06.0.copyload.i.i15, ptr %7
  store ptr %.sroa.06.0.i.i17, ptr %6, align 8, !tbaa !41, !alias.scope !491
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0.i.i16, ptr %i.bk, align 8, !tbaa !310, !alias.scope !491
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.16, ptr %i.bl, align 8, !tbaa !41, !alias.scope !491
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 3, ptr %i.bm, align 8, !tbaa !305, !alias.scope !491
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.bg, ptr %i.bn, align 8, !tbaa !308, !alias.scope !491
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 1, ptr %i.bo, align 8, !tbaa !309, !alias.scope !491
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit21

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit21:   ; preds = %bb.r, %bb.s, %bb.t
  %i.bp = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  %i.bq = and i32 %i.bp, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  %.sroa.033.0.extract.trunc = trunc i32 %3 to i16 ; 3 uses
  %i.br = and i16 %.sroa.033.0.extract.trunc, 192
  %.not48 = icmp eq i16 %i.br, 0                  ; 2 uses
  %i.bs = and i16 %.sroa.033.0.extract.trunc, -17
  %spec.select = select i1 %.not48, i16 %.sroa.033.0.extract.trunc, i16 %i.bs ; 5 uses
  %spec.select46 = select i1 %.not48, i16 0, i16 16
  %i.bt = and i16 %spec.select, 8
  %.not = icmp eq i16 %i.bt, 0
  %i.bu = shl i16 %spec.select, 1                 ; 3 uses
  %i.bv = and i16 %i.bu, 2
  %i.bw = select i1 %.not, i16 0, i16 %i.bv
  %i.bx = and i16 %spec.select, 16
  %.not11 = icmp eq i16 %i.bx, 0
  %i.by = and i16 %i.bu, 4
  %i.bz = select i1 %.not11, i16 0, i16 %i.by
  %i.ca = and i16 %spec.select, 32
  %.not12 = icmp eq i16 %i.ca, 0
  %i.cb = and i16 %i.bu, 8
  %i.cc = select i1 %.not12, i16 0, i16 %i.cb
  %i.cd = lshr i16 %spec.select, 3
  %i.ce = and i16 %i.cd, 64
  %.sroa.0.1 = or disjoint i16 %i.ce, %spec.select46
  %.sroa.0.2 = or disjoint i16 %.sroa.0.1, %i.bw
  %.sroa.0.3 = or disjoint i16 %.sroa.0.2, %i.bz
  %i.cf = or disjoint i16 %.sroa.0.3, %i.cc
  %i.cg = tail call noundef i32 @_ZN6hermes2vm8JSObject18addOwnPropertyImplENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 %i.cf, ptr %4)
  %i.ch = icmp eq i32 %i.cg, 0
  %spec.select47 = select i1 %i.ch, i32 0, i32 257
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit21
  %.sroa.040.1 = phi i32 [ 1, %bb.b ], [ %i.bq, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit21 ], [ %spec.select47, %bb.u ]
  ret i32 %.sroa.040.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject17putNamedOrIndexedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.g = tail call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.f, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = tail call i64 @_ZN6hermes2vm12toArrayIndexENS0_10StringViewE(ptr %i.h, i64 %i.i) #17 ; 2 uses
  %i.k = and i64 %i.j, 4294967296
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.extract.trunc = trunc i64 %i.j to i32
  %i.l = uitofp i32 %.sroa.0.0.extract.trunc to double ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !46
  store double %i.l, ptr %i.p, align 8, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = bitcast double %i.l to i64
  %i.v = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.n, i64 %i.u) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.v, %bb.e ]
  %i.w = tail call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, ptr %3, ptr nonnull %0, i32 %4)
  br label %bb.g

.thread:                                          ; preds = %bb.b, %bb.a
  %i.x = tail call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3, ptr nonnull %0, i32 %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.sroa.022.1 = phi i32 [ %i.x, %.thread ], [ %i.w, %bb.f ]
  ret i32 %.sroa.022.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3, ptr %4, i32 %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 8 ; 9 uses
  %8 = alloca %"class.hermes::vm::MutableHandle.214", align 8 ; 4 uses
  %9 = alloca %"class.hermes::vm::MutableHandle.209", align 8 ; 5 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %11 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %13 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %14 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 6 uses
  %15 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 8 ; 10 uses
  %16 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %17 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16
  %.not = icmp ne i32 %i.e, 0
  %.pr.pre472 = load i64, ptr %2, align 8, !tbaa !40 ; 3 uses
  %i.f = icmp ult i64 %.pr.pre472, -1970324836974592
  %or.cond523 = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond523, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, label %.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit: ; preds = %bb.a
  %i.g = bitcast i64 %.pr.pre472 to double        ; 2 uses
  %i.h = fptoui double %i.g to i32                ; 3 uses
  %i.i = uitofp i32 %i.h to double
  %i.j = fcmp oeq double %i.g, %i.i
  %i.k = icmp ne i32 %i.h, -1
  %or.cond.i.i = and i1 %i.k, %i.j
  %i.l = zext i32 %i.h to i64
  %i.m = or disjoint i64 %i.l, 4294967296
  %i.n = trunc nuw nsw i64 %i.m to i40
  %i.o = select i1 %or.cond.i.i, i40 %i.n, i40 0  ; 2 uses
  %.not436 = icmp samesign ult i40 %i.o, 4294967296
  br i1 %.not436, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit
  %i.p = load i64, ptr %4, align 8, !tbaa !326
  %i.q = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.p
  br i1 %i.q, label %bb.c, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.0309.0.extract.trunc = trunc i40 %i.o to i32 ; 2 uses
  %i.r = load i32, ptr %i.b, align 4
  %i.s = lshr i32 %i.r, 24
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !319
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !396
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.0309.0.extract.trunc) #17, !inline_history !397
  br i1 %i.y, label %bb.d, label %..threadthread-pre-split_crit_edge

..threadthread-pre-split_crit_edge:               ; preds = %bb.c
  %.pr.pre = load i64, ptr %2, align 8, !tbaa !326
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i172 = load i64, ptr %0, align 8, !tbaa !40
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i172, 281474976710655
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = lshr i32 %i.ab, 24
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !319
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !501
  %i.ai = tail call i32 %i.ah(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.0309.0.extract.trunc, ptr %3) #17, !inline_history !502 ; 2 uses
  %.mask = and i32 %i.ai, 255
  %i.aj = icmp eq i32 %.mask, 0
  br i1 %i.aj, label %bb.bw, label %bb.e, !prof !39

bb.e:                                             ; preds = %bb.d
  %i.ak = and i32 %i.ai, 256
  %.not437 = icmp eq i32 %i.ak, 0
  br i1 %.not437, label %bb.f, label %bb.bw, !prof !39

bb.f:                                             ; preds = %bb.e
  %i.al = trunc i32 %5 to i1
  br i1 %i.al, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.bw

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.am, align 8, !tbaa !305
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 35, ptr %i.an, align 8, !tbaa !308
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.ao, align 8, !tbaa !309
  store ptr @.str.18, ptr %6, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.ap, align 8, !tbaa !310
  %i.aq = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  %i.ar = and i32 %i.aq, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bw

.thread:                                          ; preds = %bb.a, %..threadthread-pre-split_crit_edge
  %i.as = phi i64 [ %.pr.pre472, %bb.a ], [ %.pr.pre, %..threadthread-pre-split_crit_edge ]
  %i.at = icmp ugt i64 %i.as, -281474976710657
  br i1 %i.at, label %bb.g, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !503

bb.g:                                             ; preds = %.thread
  %i.au = tail call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2)
  br label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, %bb.b, %.thread, %bb.g
  %.sroa.02.0.i = phi ptr [ %i.au, %bb.g ], [ %2, %.thread ], [ %2, %bb.b ], [ %2, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit ] ; 13 uses
  %.not438 = icmp eq ptr %.sroa.02.0.i, inttoptr (i64 -1 to ptr)
  br i1 %.not438, label %bb.bw, label %bb.h, !prof !39

bb.h:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store i32 0, ptr %7, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 -1, ptr %i.av, align 4, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !43 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 192 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56 ; 2 uses
  %i.bc = icmp ult ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !46
  store i64 -281474976710656, ptr %i.az, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.be = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ax, i64 -281474976710656) #17
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !43 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre474 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.phi.trans.insert475 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre476 = load ptr, ptr %.phi.trans.insert475, align 8, !tbaa !56
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.i, %bb.j
  %i.bf = phi ptr [ %i.bb, %bb.i ], [ %.pre476, %bb.j ]
  %i.bg = phi ptr [ %i.bd, %bb.i ], [ %.pre474, %bb.j ] ; 4 uses
  %i.bh = phi ptr [ %i.ax, %bb.i ], [ %.pre, %bb.j ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.az, %bb.i ], [ %i.be, %bb.j ] ; 3 uses
  store ptr %.0.i.i.i.i.i.i, ptr %8, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.bi = icmp ult ptr %i.bg, %i.bf
  br i1 %i.bi, label %bb.k, label %bb.l, !prof !42

bb.k:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 192
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !46
  store i64 -1266636858327041, ptr %i.bg, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.l:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.bl = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bh, i64 -1266636858327041) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i.i173 = phi ptr [ %i.bg, %bb.k ], [ %i.bl, %bb.l ]
  store ptr %.0.i.i.i.i.i.i173, ptr %9, align 8, !tbaa !316
  %i.bm = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.critedge164, label %bb.m, !prof !39

bb.m:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.bo = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !326 ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, -844424930131969
  %i.bq = and i64 %i.bo, 281474976710655          ; 2 uses
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = and i1 %i.bp, %i.br
  %.sroa.0.0.copyload.i.i.i196.pre = load i64, ptr %0, align 8, !tbaa !40 ; 4 uses
  br i1 %i.bs, label %bb.n, label %bb.ai

bb.n:                                             ; preds = %bb.m
  %i.bt = xor i64 %.sroa.0.0.copyload.i.i.i196.pre, %i.bo
  %i.bu = and i64 %i.bt, 281474976710655
  %i.bv = icmp ne i64 %i.bu, 0                    ; 2 uses
  br i1 %i.bv, label %..critedge156_crit_edge, label %bb.o, !prof !39

..critedge156_crit_edge:                          ; preds = %bb.n
  %.pre477 = load i16, ptr %7, align 8
  br label %.critedge156

bb.o:                                             ; preds = %bb.n
  %i.bw = load i64, ptr %4, align 8, !tbaa !326
  %i.bx = icmp eq i64 %.sroa.0.0.copyload.i.i.i196.pre, %i.bw
  %.pre478 = load i16, ptr %7, align 8            ; 2 uses
  %i.by = and i16 %.pre478, 1364
  %or.cond428 = icmp eq i16 %i.by, 4
  %or.cond524 = select i1 %i.bx, i1 %or.cond428, i1 false, !prof !399
  br i1 %or.cond524, label %bb.p, label %.critedge156, !prof !399

bb.p:                                             ; preds = %bb.o
  %.sroa.078.0.copyload = load i64, ptr %7, align 8 ; 3 uses
  %i.bz = and i64 %.sroa.078.0.copyload, 32
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %_ZN6hermes2vm8JSObject26setComputedSlotValueUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE.exit.thread, label %_ZN6hermes2vm8JSObject26setComputedSlotValueUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE.exit, !prof !39

_ZN6hermes2vm8JSObject26setComputedSlotValueUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE.exit.thread: ; preds = %bb.p
  %.sroa.0.0.copyload.i.i.i176 = load i64, ptr %3, align 8, !tbaa !40
  %i.ca = call i32 @_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE(i64 %.sroa.0.0.copyload.i.i.i176, ptr noundef nonnull align 8 dereferenceable(9816) %1)
  %.sroa.0.0.copyload.i.i8.i = load i64, ptr %0, align 8, !tbaa !40
  %i.cb = and i64 %.sroa.0.0.copyload.i.i8.i, 281474976710655
  %i.cc = inttoptr i64 %i.cb to ptr
  call void @_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E(ptr noundef %i.cc, ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %.sroa.078.0.copyload, i32 %i.ca)
  br label %bb.q

_ZN6hermes2vm8JSObject26setComputedSlotValueUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE.exit: ; preds = %bb.p
  %.sroa.311.0.extract.shift.i = lshr i64 %.sroa.078.0.copyload, 32
  %.sroa.311.0.extract.trunc.i = trunc nuw i64 %.sroa.311.0.extract.shift.i to i32
  %i.cd = and i64 %.sroa.0.0.copyload.i.i.i196.pre, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
end_hunk_2

inline.NumInlined: 472
inline.NumDeleted: 326
begin_hunk_0_@_ZN6hermes2vm24JSCallableProxyBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  store i8 1, ptr %i.a, align 4, !tbaa !283
  br label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit

_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm23NativeFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm15JSCallableProxy2vtE, ptr %i.e, align 8, !tbaa !284
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.f) #6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.g) #6
  ret void
}

declare void @_ZN6hermes2vm23NativeFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm15JSCallableProxy6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !299
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !252

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 48) #6
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_15JSCallableProxyELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_NS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !298
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_15JSCallableProxyELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_NS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_15JSCallableProxyELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_NS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !7 ; 2 uses
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !7 ; 2 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i.i, 281474976710655
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.n = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.o = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.n
  %i.p = trunc i64 %i.o to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.p
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.m, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.r = sub i64 %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i.i, %i.n
  %i.s = trunc i64 %i.r to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.s
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i, ptr %i.q, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr @_ZN6hermes2vm15JSCallableProxy16_proxyNativeCallEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr %i.u, align 8, !tbaa !300
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 0, ptr %i.w, align 4
  store i32 1191182384, ptr %i.h, align 8, !tbaa !258
  store i32 128, ptr %i.l, align 4
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm15JSCallableProxy19setTargetAndHandlerERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readonly captures(none) %2, ptr readonly captures(none) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !7 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !311  ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = and i64 %i.f, -4194304
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = icmp eq ptr %i.e, %i.h
  br i1 %i.i, label %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.b, !prof !270

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.b to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef %i.j) #6
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !311
  br label %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.e, %bb.a ], [ %.pre, %bb.b ]
  %.not.i.i.i.i.i = icmp eq i64 %i.b, 0
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %.sroa.0.0.copyload.i.i, %i.l
  %i.n = trunc i64 %i.m to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.n
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %.sroa.0.0.copyload.i.i5 = load i64, ptr %3, align 8, !tbaa !7 ; 2 uses
  %i.p = and i64 %.sroa.0.0.copyload.i.i5, 281474976710655 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = and i64 %i.q, -4194304
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = icmp eq ptr %i.k, %i.s
  br i1 %i.t, label %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit8, label %bb.c, !prof !270

bb.c:                                             ; preds = %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit
  %i.u = inttoptr i64 %i.p to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef %i.u) #6
  br label %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit8

_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit8: ; preds = %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, %bb.c
  %.not.i.i.i.i.i6 = icmp eq i64 %i.p, 0
  %i.v = sub i64 %.sroa.0.0.copyload.i.i5, %i.l
  %i.w = trunc i64 %i.v to i32
  %.sroa.0.0.i.i.i.i.i7 = select i1 %.not.i.i.i.i.i6, i32 0, i32 %i.w
  store i32 %.sroa.0.0.i.i.i.i.i7, ptr %i.o, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.e = load i64, ptr %i.d, align 8, !tbaa !251
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !252

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #6
  %i.h = and i32 %i.g, 255
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.i, align 8, !tbaa !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  %i.j = ptrtoint ptr %1 to i64
  %i.k = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.l = add i64 %i.k, %i.j
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = select i1 %.not.i.i.i.i, ptr null, ptr %i.m
  %i.o = tail call i32 @_ZN6hermes2vm13isConstructorERNS0_7RuntimeEPNS0_8CallableE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.n) #6
  %i.p = and i32 %i.o, 65535
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.05.0 = phi i32 [ %i.h, %bb.b ], [ %i.p, %bb.c ]
  %i.q = load i64, ptr %i.a, align 8, !tbaa !9
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.a, align 8, !tbaa !9
  ret i32 %.sroa.05.0
}

declare noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #0

declare i32 @_ZN6hermes2vm13isConstructorERNS0_7RuntimeEPNS0_8CallableE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15JSCallableProxy16_proxyNativeCallEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #1 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  store ptr %1, ptr %3, align 8, !tbaa !312
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !260
  store ptr %i.c, ptr %i.a, align 8, !tbaa !313
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !314
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !315
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !316
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !261
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !269
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !317
  store ptr %3, ptr %i.b, align 8, !tbaa !260
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9472 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !318 ; 7 uses
  %.sroa.0.0.copyload.i125 = ptrtoaddr ptr %.sroa.0.0.copyload.i to i64
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.m, align 8, !tbaa !7
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN6hermes2vm6detail5slotsEPNS0_8JSObjectE(ptr noundef %i.o) #6 ; 2 uses
  %.sroa.0.0.copyload.i.i.i39 = load i32, ptr %i.p, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i39, 0
  %i.q = ptrtoint ptr %1 to i64                   ; 8 uses
  %i.r = zext i32 %.sroa.0.0.copyload.i.i.i39 to i64
  %i.s = add i64 %i.r, %i.q
  %i.t = or i64 %i.s, -281474976710656
  %i.u = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !260  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !261  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !269  ; 2 uses
  %i.aa = icmp ult ptr %i.x, %i.z
  br i1 %i.aa, label %bb.b, label %bb.c, !prof !270

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !261
  store i64 %i.u, ptr %i.x, align 8, !tbaa !7
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.v, i64 %i.u) #6
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !260 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre114 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !261
  %.phi.trans.insert115 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre116 = load ptr, ptr %.phi.trans.insert115, align 8, !tbaa !269
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.b, %bb.c
  %i.ad = phi ptr [ %i.z, %bb.b ], [ %.pre116, %bb.c ]
  %i.ae = phi ptr [ %i.ab, %bb.b ], [ %.pre114, %bb.c ] ; 4 uses
  %i.af = phi ptr [ %i.v, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %i.ac, %bb.c ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.0.0.copyload.i.i.i40 = load i32, ptr %i.ag, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq i32 %.sroa.0.0.copyload.i.i.i40, 0
  %i.ah = zext i32 %.sroa.0.0.copyload.i.i.i40 to i64
  %i.ai = add i64 %i.ah, %i.q
  %i.aj = or i64 %i.ai, -281474976710656
  %i.ak = select i1 %.not.i.i.i.i.i41, i64 -281474976710656, i64 %i.aj ; 2 uses
  %i.al = icmp ult ptr %i.ae, %i.ad
  br i1 %i.al, label %bb.d, label %bb.e, !prof !270

bb.d:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.an, ptr %i.am, align 8, !tbaa !261
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !7
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43

bb.e:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %i.ao = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.af, i64 %i.ak) #6
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i42 = phi ptr [ %i.ae, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -40 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !319
  %.mask.i.i = and i64 %i.aq, -140737488355328
  %.not = icmp eq i64 %.mask.i.i, -1688849860263936
  %i.ar = select i1 %.not, i32 136, i32 425
  %i.as = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ar) #6 ; 4 uses
  %.not109 = icmp eq ptr %i.as, inttoptr (i64 -1 to ptr)
  br i1 %.not109, label %bb.ae, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43
  %i.at = load i64, ptr %i.as, align 8, !tbaa !319 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -32 ; 5 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !319 ; 3 uses
  %i.ba = trunc i64 %i.az to i32                  ; 3 uses
  br i1 %i.ax, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i44 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !7
  %.sroa.020.0.copyload = load i64, ptr %i.ap, align 8, !tbaa !7
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -56 ; 6 uses
  %.sroa.019.0.copyload = load i64, ptr %i.bb, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 9448 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !320 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !9
  %i.bg = add i64 %i.bf, 1                        ; 2 uses
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !9
  %i.bh = call noundef i32 @llvm.uadd.sat.i32(i32 %i.ba, i32 7)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 9440
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !321
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = lshr exact i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = zext i32 %i.bh to i64                   ; 2 uses
  %i.bq = add nuw nsw i64 %i.bp, 32
  %i.br = icmp samesign ugt i64 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = icmp ugt i64 %i.bg, %i.bt
  %.not31.i = select i1 %i.br, i1 true, i1 %i.bu
  br i1 %.not31.i, label %bb.h, label %bb.i, !prof !252

bb.h:                                             ; preds = %bb.g
  %i.bv = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bp ; 7 uses
  store ptr %i.bw, ptr %i.bc, align 8, !tbaa !320
  %.sroa.02.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !318
  %i.bx = ptrtoint ptr %.sroa.02.0.copyload.i to i64
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !319
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -24
  %i.ca = and i64 %i.az, 4294967295
  %i.cb = or disjoint i64 %i.ca, -1125899906842624
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 -32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !319
  %i.cd = getelementptr inbounds i8, ptr %i.bw, i64 -40
  store i64 %.sroa.020.0.copyload, ptr %i.cd, align 8, !tbaa !319
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 -48
  store i64 %.sroa.0.0.copyload.i44, ptr %i.ce, align 8, !tbaa !319
  %i.cf = getelementptr inbounds i8, ptr %i.bw, i64 -56 ; 5 uses
  store i64 %.sroa.019.0.copyload, ptr %i.cf, align 8, !tbaa !319
  %i.cg = load i64, ptr %i.ay, align 8, !tbaa !319
  %i.ch = and i64 %i.cg, 4294967295               ; 3 uses
  %.neg.i.i = mul nsw i64 %i.ch, -8
  %i.ci = getelementptr inbounds i8, ptr %i.bb, i64 %.neg.i.i
  %.not1.i.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not1.i.i.i.i.i, label %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.cj = add nuw nsw i64 %i.ch, 2305843009213693951
  %i.ck = and i64 %i.cj, 2305843009213693951      ; 2 uses
  %5 = add nuw nsw i64 %i.ck, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ck, 19
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %6 = add i64 %.sroa.0.0.copyload.i125, -56
  %7 = and i64 %i.az, 4294967295
  %umin = call i64 @llvm.umin.i64(i64 %7, i64 4294967288)
  %8 = shl nuw nsw i64 %umin, 3
  %9 = add i64 %8, %i.bl
  %10 = sub i64 %6, %9
  %diff.check = icmp ult i64 %10, 32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %5, 4611686018427387900        ; 3 uses
  %11 = mul i64 %n.vec, -8                        ; 2 uses
  %12 = getelementptr i8, ptr %i.bb, i64 %11
  %13 = getelementptr i8, ptr %i.cf, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %14 = mul i64 %index, -8                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %14 ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.cf, i64 %14 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cm = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <2 x i64>, ptr %i.cl, align 8, !noalias !322
  %wide.load127 = load <2 x i64>, ptr %i.cm, align 8, !noalias !322
  %i.cn = getelementptr inbounds i8, ptr %next.gep126, i64 -16
  %i.co = getelementptr inbounds i8, ptr %next.gep126, i64 -32
  store <2 x i64> %wide.load, ptr %i.cn, align 8, !noalias !322
  store <2 x i64> %wide.load127, ptr %i.co, align 8, !noalias !322
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !333

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit, label %.lr.ph.i.i.i.i.i.preheader132

.lr.ph.i.i.i.i.i.preheader132:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.sroa.03.0.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.i.preheader ], [ %12, %middle.block ]
  %storemerge2.i.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.i.i.i.i.i.preheader ], [ %13, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader132, %.lr.ph.i.i.i.i.i
  %.sroa.03.0.i.i.i.i = phi ptr [ %16, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.0.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader132 ]
  %storemerge2.i.i.i.i.i = phi ptr [ %15, %.lr.ph.i.i.i.i.i ], [ %storemerge2.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader132 ]
  %15 = getelementptr inbounds i8, ptr %storemerge2.i.i.i.i.i, i64 -8 ; 2 uses
  %16 = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i, i64 -8 ; 3 uses
  %17 = load i64, ptr %16, align 8, !noalias !322
  store i64 %17, ptr %15, align 8, !noalias !322
  %.not.i.i.i.i.i46 = icmp eq ptr %16, %i.ci
  br i1 %.not.i.i.i.i.i46, label %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !337

_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.i
  %.sroa.0.0.copyload.i.i.i47 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !7
  %i.cq = and i64 %.sroa.0.0.copyload.i.i.i47, 281474976710655
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = lshr i32 %i.cs, 24
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !271
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !338
  %i.cz = call { i32, i64 } %i.cy(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #6, !inline_history !339 ; 2 uses
  %i.da = extractvalue { i32, i64 } %i.cz, 0
  %i.db = extractvalue { i32, i64 } %i.cz, 1
  %i.dc = icmp ne i32 %i.da, 0                    ; 2 uses
  %spec.select = zext i1 %i.dc to i32
  %spec.select106 = select i1 %i.dc, i64 %i.db, i64 undef, !prof !270
  br label %bb.j

bb.j:                                             ; preds = %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit, %bb.h
  %.sroa.0103.1 = phi i32 [ %i.bv, %bb.h ], [ %spec.select, %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit ]
  %.sroa.11104.1 = phi i64 [ undef, %bb.h ], [ %spec.select106, %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit ]
  %i.dd = load i64, ptr %i.be, align 8, !tbaa !9
  %i.de = add i64 %i.dd, -1
  store i64 %i.de, ptr %i.be, align 8, !tbaa !9
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !320
  br label %bb.ae

bb.k:                                             ; preds = %bb.f
  %i.df = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ba, i32 noundef %i.ba) #6 ; 5 uses
  %.not110 = icmp eq ptr %i.df, inttoptr (i64 -1 to ptr)
  br i1 %.not110, label %bb.ae, label %bb.l, !prof !252

bb.l:                                             ; preds = %bb.k
  %i.dg = load i64, ptr %i.ay, align 8, !tbaa !319
  %i.dh = trunc i64 %i.dg to i32
  %i.di = call noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr %i.df, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.dh) #6 ; 0 uses
  %i.dj = load i64, ptr %i.ay, align 8, !tbaa !319
  %i.dk = and i64 %i.dj, 4294967295
  %.not113 = icmp eq i64 %i.dk, 0
  br i1 %.not113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 1632
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit, %bb.l
  %i.dp = load i64, ptr %i.ap, align 8, !tbaa !319 ; 2 uses
  %.mask.i.i49 = and i64 %i.dp, -140737488355328
  %.not111 = icmp eq i64 %.mask.i.i49, -1688849860263936
  %.sroa.0.0.copyload.i55 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !7 ; 2 uses
  br i1 %.not111, label %bb.ad, label %bb.ab

bb.m:                                             ; preds = %.lr.ph, %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit
  %.0112 = phi i32 [ 0, %.lr.ph ], [ %i.gd, %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit ] ; 3 uses
  %i.dq = sext i32 %.0112 to i64
  %i.dr = sub nsw i64 0, %i.dq
  %i.ds = getelementptr [8 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -64
  %.sroa.012.0.copyload = load i64, ptr %i.dt, align 8, !tbaa !7 ; 9 uses
  %i.du = ashr i64 %.sroa.012.0.copyload, 47
  switch i64 %i.du, label %bb.u [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.n
    i64 -11, label %bb.o
    i64 -10, label %bb.p
    i64 -9, label %bb.q
    i64 -6, label %bb.r
    i64 -5, label %bb.r
    i64 -4, label %bb.s
    i64 -3, label %bb.s
    i64 -2, label %bb.t
    i64 -1, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.o:                                             ; preds = %bb.m
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.p:                                             ; preds = %bb.m
  %i.dv = trunc i64 %.sroa.012.0.copyload to i1
  %i.dw = select i1 %i.dv, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.q:                                             ; preds = %bb.m
  %i.dx = trunc i64 %.sroa.012.0.copyload to i32
  %i.dy = shl i32 %i.dx, 3
  %i.dz = or disjoint i32 %i.dy, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.r:                                             ; preds = %bb.m, %bb.m
  %i.ea = sub i64 %.sroa.012.0.copyload, %i.q
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = or i32 %i.eb, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.s:                                             ; preds = %bb.m, %bb.m
  %i.ed = sub i64 %.sroa.012.0.copyload, %i.q
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = or i32 %i.ee, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.t:                                             ; preds = %bb.m, %bb.m
  %i.eg = sub i64 %.sroa.012.0.copyload, %i.q
  %i.eh = trunc i64 %i.eg to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.u:                                             ; preds = %bb.m
  %i.ei = bitcast i64 %.sroa.012.0.copyload to double
  %i.ej = fptosi double %i.ei to i32
  %i.ek = shl i32 %i.ej, 3                        ; 2 uses
  %i.el = ashr exact i32 %i.ek, 3
  %i.em = sitofp i32 %i.el to double
  %i.en = bitcast double %i.em to i64
  %i.eo = icmp eq i64 %.sroa.012.0.copyload, %i.en
  br i1 %i.eo, label %bb.v, label %bb.w, !prof !270

bb.v:                                             ; preds = %bb.u
  %i.ep = or disjoint i32 %i.ek, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.w:                                             ; preds = %bb.u
  %i.eq = load ptr, ptr %i.dl, align 8, !tbaa !298 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.es = load ptr, ptr %i.dm, align 8, !tbaa !299
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.er, %i.es
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.x, label %bb.y, !prof !252

bb.x:                                             ; preds = %bb.w
  %i.et = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dn, i32 noundef 16) #6
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.y:                                             ; preds = %bb.w
  store ptr %i.er, ptr %i.dl, align 8, !tbaa !298
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.y, %bb.x
  %i.eu = phi ptr [ %i.et, %bb.x ], [ %i.eq, %bb.y ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 %.sroa.012.0.copyload, ptr %i.ev, align 8, !tbaa !340
  store i32 402653200, ptr %i.eu, align 8, !tbaa !258
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ew, %i.q
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = or i32 %i.ey, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.v, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.sroa.04.0.i = phi i32 [ 7, %bb.m ], [ %i.eh, %bb.t ], [ 14, %bb.n ], [ 15, %bb.o ], [ %i.dw, %bb.p ], [ %i.dz, %bb.q ], [ %i.ec, %bb.r ], [ %i.ef, %bb.s ], [ %i.ep, %bb.v ], [ %i.ez, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i50 = load i64, ptr %i.df, align 8, !tbaa !7
  %i.fa = and i64 %.sroa.0.0.copyload.i.i.i50, 281474976710655
  %i.fb = inttoptr i64 %i.fa to ptr               ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.fc, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.fd = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.fe = add i64 %i.fd, %i.q
  %i.ff = inttoptr i64 %i.fe to ptr               ; 2 uses
  %i.fg = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 20
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !342
  %i.fj = sub i32 %.0112, %i.fi                   ; 4 uses
  %i.fk = icmp ult i32 %i.fj, 4096
  br i1 %i.fk, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i, label %bb.z, !prof !270

bb.z:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.fl = add i32 %i.fj, -4096
  %i.fm = lshr i32 %i.fl, 10
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 16392
  %i.fo = zext nneg i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !345
  %i.fr = zext i32 %i.fq to i64
  %i.fs = add i64 %i.fr, %i.q
  %i.ft = inttoptr i64 %i.fs to ptr
  %i.fu = and i32 %i.fj, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i: ; preds = %bb.z, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %.sink6.i.i.i.i = phi ptr [ %i.ft, %bb.z ], [ %i.fg, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit ]
  %.sink5.i.i.i.i = phi i32 [ %i.fu, %bb.z ], [ %i.fj, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i, i64 8
  %i.fw = zext nneg i32 %.sink5.i.i.i.i to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.fw ; 3 uses
  %i.fy = load ptr, ptr %i.do, align 8, !tbaa !311
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = and i64 %i.fz, -4194304
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = icmp eq ptr %i.fy, %i.gb
  br i1 %i.gc, label %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit, label %bb.aa, !prof !270

bb.aa:                                            ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.dn, ptr noundef nonnull align 4 dereferenceable(4) %i.fx, i32 %.sroa.04.0.i) #6
  br label %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit

_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i, %bb.aa
  store i32 %.sroa.04.0.i, ptr %i.fx, align 4, !tbaa !345
  %i.gd = add nuw i32 %.0112, 1                   ; 2 uses
  %i.ge = load i64, ptr %i.ay, align 8, !tbaa !319
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = icmp ult i32 %i.gd, %i.gf
  br i1 %i.gg, label %bb.m, label %._crit_edge, !llvm.loop !347

bb.ab:                                            ; preds = %._crit_edge
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.df, align 8, !tbaa !7
  %i.gh = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr nonnull %i.as, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i42, i64 %.sroa.0.0.copyload.i55, i64 %.sroa.0.0.copyload.i52, i64 %i.dp, i1 noundef zeroext false) #6 ; 2 uses
  %i.gi = extractvalue { i32, i64 } %i.gh, 0
  %i.gj = extractvalue { i32, i64 } %i.gh, 1      ; 3 uses
  %i.gk = icmp eq i32 %i.gi, 0
  br i1 %i.gk, label %bb.ae, label %bb.ac, !prof !252

bb.ac:                                            ; preds = %bb.ab
  %i.gl = icmp ugt i64 %i.gj, -844424930131969
  br i1 %i.gl, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit: ; preds = %bb.ac
  %i.gm = and i64 %i.gj, 281474976710655
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = add i32 %i.go, -436207616
  %i.gq = icmp ult i32 %i.gp, 855638016
  br i1 %i.gq, label %bb.ae, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.ac, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.gr, align 8, !tbaa !253
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 40, ptr %i.gs, align 8, !tbaa !256
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.gt, align 8, !tbaa !257
  store ptr @.str.2, ptr %4, align 8, !tbaa !258
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.gu, align 8, !tbaa !259
  %i.gv = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge
  %i.gw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -56
  %.sroa.02.0.copyload = load i64, ptr %i.gw, align 8, !tbaa !7
  %.sroa.0.0.copyload.i56 = load i64, ptr %i.df, align 8, !tbaa !7
  %i.gx = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr nonnull %i.as, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i42, i64 %.sroa.0.0.copyload.i55, i64 %.sroa.02.0.copyload, i64 %.sroa.0.0.copyload.i56, i1 noundef zeroext false) #6 ; 2 uses
  %i.gy = extractvalue { i32, i64 } %i.gx, 0
  %i.gz = extractvalue { i32, i64 } %i.gx, 1
  %i.ha = icmp ne i32 %i.gy, 0                    ; 2 uses
  %spec.select107 = zext i1 %i.ha to i32
  %spec.select108 = select i1 %i.ha, i64 %i.gz, i64 undef, !prof !270
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.k, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread, %bb.ab, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43, %bb.j
  %.sroa.0103.6 = phi i32 [ %.sroa.0103.1, %bb.j ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43 ], [ 0, %bb.k ], [ 1, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit ], [ %i.gv, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread ], [ 0, %bb.ab ], [ %spec.select107, %bb.ad ]
  %.sroa.11104.6 = phi i64 [ %.sroa.11104.1, %bb.j ], [ undef, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43 ], [ undef, %bb.k ], [ %i.gj, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit ], [ undef, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread ], [ undef, %bb.ab ], [ %spec.select108, %bb.ad ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0103.6, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.11104.6, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef nonnull align 4 dereferenceable(8) ptr @_ZN6hermes2vm6detail5slotsEPNS0_8JSObjectE(ptr noundef) local_unnamed_addr #0

declare ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #0

declare ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #0

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i64, i64, i1 noundef zeroext) local_unnamed_addr #0

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #3

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #0

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !8, i64 9480}
!10 = !{!"_ZTSN6hermes2vm7RuntimeE", !11, i64 0, !14, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !15, i64 480, !15, i64 488, !15, i64 496, !15, i64 504, !15, i64 512, !15, i64 520, !15, i64 528, !15, i64 536, !15, i64 544, !15, i64 552, !15, i64 560, !15, i64 568, !15, i64 576, !15, i64 584, !15, i64 592, !15, i64 600, !15, i64 608, !15, i64 616, !15, i64 624, !15, i64 632, !15, i64 640, !15, i64 648, !15, i64 656, !15, i64 664, !15, i64 672, !15, i64 680, !15, i64 688, !15, i64 696, !15, i64 704, !15, i64 712, !15, i64 720, !15, i64 728, !15, i64 736, !17, i64 744, !17, i64 752, !18, i64 760, !24, i64 824, !24, i64 824, !24, i64 824, !24, i64 824, !24, i64 824, !25, i64 825, !26, i64 832, !33, i64 840, !38, i64 856, !158, i64 8968, !163, i64 8992, !168, i64 9016, !168, i64 9040, !24, i64 9064, !24, i64 9065, !24, i64 9066, !24, i64 9067, !24, i64 9068, !24, i64 9069, !24, i64 9070, !5, i64 9071, !24, i64 9072, !24, i64 9073, !4, i64 9076, !55, i64 9080, !5, i64 9088, !60, i64 9224, !4, i64 9232, !173, i64 9240, !188, i64 9328, !193, i64 9360, !200, i64 9368, !200, i64 9376, !201, i64 9384, !202, i64 9392, !207, i64 9408, !208, i64 9416, !210, i64 9432, !210, i64 9440, !210, i64 9448, !44, i64 9456, !211, i64 9472, !212, i64 9480, !213, i64 9496, !5, i64 9560, !214, i64 9568, !218, i64 9592, !223, i64 9616, !24, i64 9640, !228, i64 9648, !4, i64 9728, !4, i64 9732, !235, i64 9736, !242, i64 9744, !244, i64 9752, !249, i64 9776, !250, i64 9808}
!11 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !12, i64 8}
!12 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"_ZTSN6hermes2vm6GCBase11GCCallbacksE"}
!15 = !{!"_ZTSN6hermes2vm17PinnedHermesValueE", !16, i64 0}
!16 = !{!"_ZTSN6hermes2vm11HermesValueE", !8, i64 0}
!17 = !{!"p1 _ZTSN6hermes2vm8JSObjectE", !13, i64 0}
!18 = !{!"_ZTSN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEE", !19, i64 0, !23, i64 16}
!19 = !{!"_ZTSN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEE", !20, i64 0}
!20 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EEE", !21, i64 0}
!21 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEvEE", !22, i64 0}
!22 = !{!"_ZTSN4llvh15SmallVectorBaseE", !13, i64 0, !4, i64 8, !4, i64 12}
!23 = !{!"_ZTSN4llvh18SmallVectorStorageIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEE", !5, i64 0}
!24 = !{!"bool", !5, i64 0}
!25 = !{!"_ZTSN6hermes2vm14SynthTraceModeE", !5, i64 0}
!26 = !{!"_ZTSSt10unique_ptrIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EE", !27, i64 0}
!27 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_ELb1ELb1EE", !28, i64 0}
!28 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EE", !29, i64 0}
!29 = !{!"_ZTSSt5tupleIJPN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EEE", !30, i64 0}
!30 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EEE", !31, i64 0}
!31 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm16SamplingProfilerELb0EE", !32, i64 0}
!32 = !{!"p1 _ZTSN6hermes2vm16SamplingProfilerE", !13, i64 0}
!33 = !{!"_ZTSSt10shared_ptrIN6hermes2vm16TimeLimitMonitorEE", !34, i64 0}
!34 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm16TimeLimitMonitorELN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0, !36, i64 8}
!35 = !{!"p1 _ZTSN6hermes2vm16TimeLimitMonitorE", !13, i64 0}
!36 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!38 = !{!"_ZTSN6hermes2vm9GCStorageE", !39, i64 0}
!39 = !{!"_ZTSN6hermes2vm7HadesGCE", !40, i64 0, !8, i64 720, !8, i64 728, !84, i64 736, !89, i64 760, !92, i64 776, !95, i64 808, !98, i64 816, !60, i64 840, !104, i64 848, !73, i64 7520, !124, i64 7560, !126, i64 7568, !132, i64 7632, !24, i64 7633, !133, i64 7640, !140, i64 7648, !24, i64 7656, !24, i64 7657, !24, i64 7658, !24, i64 7659, !60, i64 7664, !67, i64 7672, !147, i64 7688, !147, i64 7696, !58, i64 7704, !58, i64 7864, !67, i64 8024, !8, i64 8040, !154, i64 8048, !8, i64 8096, !157, i64 8104}
!40 = !{!"_ZTSN6hermes2vm6GCBaseE", !4, i64 8, !8, i64 16, !41, i64 24, !42, i64 32, !43, i64 40, !44, i64 48, !47, i64 64, !48, i64 72, !50, i64 104, !24, i64 128, !24, i64 129, !24, i64 130, !24, i64 131, !55, i64 136, !57, i64 144, !8, i64 152, !8, i64 160, !58, i64 168, !62, i64 328, !65, i64 360, !69, i64 408, !72, i64 456, !5, i64 656, !83, i64 680, !4, i64 712, !24, i64 716}
!41 = !{!"_ZTSN6hermes2vm11GCExecTraceE"}
!42 = !{!"p1 _ZTSN6hermes2vm6GCBase11GCCallbacksE", !13, i64 0}
!43 = !{!"p1 _ZTSN6hermes2vm11PointerBaseE", !13, i64 0}
!44 = !{!"_ZTSSt10shared_ptrIN6hermes2vm12CrashManagerEE", !45, i64 0}
!45 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0, !36, i64 8}
!46 = !{!"p1 _ZTSN6hermes2vm12CrashManagerE", !13, i64 0}
!47 = !{!"_ZTSN6hermes2vm6GCBase8HeapKindE", !5, i64 0}
!48 = !{!"_ZTSSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEE", !49, i64 0, !13, i64 24}
!49 = !{!"_ZTSSt14_Function_base", !5, i64 0, !13, i64 16}
!50 = !{!"_ZTSSt6vectorIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE12_Vector_implE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"p1 _ZTSN6hermes2vm16GCAnalyticsEventE", !13, i64 0}
!55 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !56, i64 0}
!56 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !8, i64 0}
!57 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !8, i64 0}
!58 = !{!"_ZTSN6hermes2vm6GCBase19CumulativeHeapStatsE", !4, i64 0, !59, i64 8, !59, i64 48, !4, i64 88, !61, i64 96, !61, i64 128}
!59 = !{!"_ZTSN6hermes16StatsAccumulatorIddEE", !4, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32}
!60 = !{!"double", !5, i64 0}
!61 = !{!"_ZTSN6hermes16StatsAccumulatorIjmEE", !4, i64 0, !8, i64 8, !4, i64 16, !4, i64 20, !60, i64 24}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !63, i64 0, !8, i64 8, !5, i64 16}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !64, i64 0}
!64 = !{!"p1 omnipotent char", !13, i64 0}
!65 = !{!"_ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EEE", !66, i64 0, !8, i64 8, !67, i64 16, !68, i64 32, !60, i64 40}
!66 = !{!"p1 _ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EE5ChunkE", !13, i64 0}
!67 = !{!"_ZTSN6hermes24ExponentialMovingAverageE", !60, i64 0, !60, i64 8}
!68 = !{!"p1 _ZTSN6hermes2vm11WeakRefSlotE", !13, i64 0}
!69 = !{!"_ZTSN6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EEE", !70, i64 0, !8, i64 8, !67, i64 16, !71, i64 32, !60, i64 40}
!70 = !{!"p1 _ZTSN6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE5ChunkE", !13, i64 0}
!71 = !{!"p1 _ZTSN6hermes2vm16WeakMapEntrySlotE", !13, i64 0}
!72 = !{!"_ZTSN6hermes2vm6GCBase9IDTrackerE", !73, i64 0, !4, i64 40, !75, i64 48, !75, i64 72, !77, i64 96, !79, i64 120, !75, i64 144, !81, i64 168, !24, i64 192}
!73 = !{!"_ZTSSt15recursive_mutex", !74, i64 0}
!74 = !{!"_ZTSSt22__recursive_mutex_base", !5, i64 0}
!75 = !{!"_ZTSN4llvh8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEE", !76, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!76 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjjEE", !13, i64 0}
!77 = !{!"_ZTSN4llvh8DenseMapIPKvjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEE", !78, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!78 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPKvjEE", !13, i64 0}
!79 = !{!"_ZTSN4llvh8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS2_EEEE", !80, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!80 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjNS_11SmallVectorIjLj1EEEEE", !13, i64 0}
!81 = !{!"_ZTSN4llvh8DenseMapIdjN6hermes2vm6GCBase9IDTracker16DoubleComparatorENS_6detail12DenseMapPairIdjEEEE", !82, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!82 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIdjEE", !13, i64 0}
!83 = !{!"_ZTSSt8functionIFvRN6hermes2vm17GCTripwireContextEEE", !49, i64 0, !13, i64 24}
!84 = !{!"_ZTSSt6vectorImSaImEE", !85, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseImSaImEE", !86, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !88, i64 0, !88, i64 8, !88, i64 16}
!88 = !{!"p1 long", !13, i64 0}
!89 = !{!"_ZTSSt10shared_ptrIN6hermes2vm15StorageProviderEE", !90, i64 0}
!90 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm15StorageProviderELN9__gnu_cxx12_Lock_policyE2EE", !91, i64 0, !36, i64 8}
!91 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !13, i64 0}
!92 = !{!"_ZTSN6hermes2vm7HadesGC11HeapSegmentE", !93, i64 0}
!93 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !94, i64 0, !64, i64 16, !64, i64 24}
!94 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !64, i64 0, !91, i64 8}
!95 = !{!"_ZTSN6hermes2vm27AssignableCompressedPointerE", !96, i64 0}
!96 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !97, i64 0}
!97 = !{!"_ZTSN6hermes2vm12BasedPointerE", !4, i64 0}
!98 = !{!"_ZTSSt6vectorIPN6hermes2vm6GCCellESaIS3_EE", !99, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm6GCCellESaIS3_EE", !100, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6GCCellESaIS3_EE12_Vector_implE", !101, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6GCCellESaIS3_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!102 = !{!"p2 _ZTSN6hermes2vm6GCCellE", !103, i64 0}
!103 = !{!"any p2 pointer", !13, i64 0}
!104 = !{!"_ZTSN6hermes2vm7HadesGC6OldGenE", !105, i64 0, !106, i64 8, !67, i64 88, !8, i64 104, !8, i64 112, !113, i64 120, !115, i64 160, !122, i64 240, !123, i64 6648}
!105 = !{!"p1 _ZTSN6hermes2vm7HadesGCE", !13, i64 0}
!106 = !{!"_ZTSSt5dequeIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE", !107, i64 0}
!107 = !{!"_ZTSSt11_Deque_baseIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE", !108, i64 0}
!108 = !{!"_ZTSNSt11_Deque_baseIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE11_Deque_implE", !109, i64 0}
!109 = !{!"_ZTSNSt11_Deque_baseIN6hermes2vm7HadesGC11HeapSegmentESaIS3_EE16_Deque_impl_dataE", !110, i64 0, !8, i64 8, !111, i64 16, !111, i64 48}
!110 = !{!"p2 _ZTSN6hermes2vm7HadesGC11HeapSegmentE", !103, i64 0}
!111 = !{!"_ZTSSt15_Deque_iteratorIN6hermes2vm7HadesGC11HeapSegmentERS3_PS3_E", !112, i64 0, !112, i64 8, !112, i64 16, !110, i64 24}
!112 = !{!"p1 _ZTSN6hermes2vm7HadesGC11HeapSegmentE", !13, i64 0}
!113 = !{!"_ZTSN6hermes8BitArrayILm267ELm8EEE", !114, i64 0}
!114 = !{!"_ZTSSt5arrayImLm5EE", !5, i64 0}
!115 = !{!"_ZTSSt5dequeISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE", !116, i64 0}
!116 = !{!"_ZTSSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE", !117, i64 0}
!117 = !{!"_ZTSNSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE11_Deque_implE", !118, i64 0}
!118 = !{!"_ZTSNSt11_Deque_baseISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EESaIS6_EE16_Deque_impl_dataE", !119, i64 0, !8, i64 8, !120, i64 16, !120, i64 48}
!119 = !{!"p2 _ZTSSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EE", !103, i64 0}
!120 = !{!"_ZTSSt15_Deque_iteratorISt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EERS6_PS6_E", !121, i64 0, !121, i64 8, !121, i64 16, !119, i64 24}
!121 = !{!"p1 _ZTSSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EE", !13, i64 0}
!122 = !{!"_ZTSSt5arrayIN6hermes2vm7HadesGC6OldGen13SegmentBucketELm267EE", !5, i64 0}
!123 = !{!"_ZTSN6hermes2vm7HadesGC6OldGen13SweepIteratorE", !8, i64 0, !8, i64 8, !8, i64 16}
!124 = !{!"_ZTSSt6atomicIbE", !125, i64 0}
!125 = !{!"_ZTSSt13__atomic_baseIbE", !24, i64 0}
!126 = !{!"_ZTSNSt3_V222condition_variable_anyE", !127, i64 0, !129, i64 48}
!127 = !{!"_ZTSSt18condition_variable", !128, i64 0}
!128 = !{!"_ZTSSt9__condvar", !5, i64 0}
!129 = !{!"_ZTSSt10shared_ptrISt5mutexE", !130, i64 0}
!130 = !{!"_ZTSSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EE", !131, i64 0, !36, i64 8}
!131 = !{!"p1 _ZTSSt5mutex", !13, i64 0}
!132 = !{!"_ZTSN6hermes2vm7HadesGC5PhaseE", !5, i64 0}
!133 = !{!"_ZTSSt10unique_ptrIN6hermes2vm7HadesGC12MarkAcceptorESt14default_deleteIS3_EE", !134, i64 0}
!134 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm7HadesGC12MarkAcceptorESt14default_deleteIS3_ELb1ELb1EE", !135, i64 0}
!135 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm7HadesGC12MarkAcceptorESt14default_deleteIS3_EE", !136, i64 0}
!136 = !{!"_ZTSSt5tupleIJPN6hermes2vm7HadesGC12MarkAcceptorESt14default_deleteIS3_EEE", !137, i64 0}
!137 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm7HadesGC12MarkAcceptorESt14default_deleteIS3_EEE", !138, i64 0}
!138 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm7HadesGC12MarkAcceptorELb0EE", !139, i64 0}
!139 = !{!"p1 _ZTSN6hermes2vm7HadesGC12MarkAcceptorE", !13, i64 0}
!140 = !{!"_ZTSSt10unique_ptrIN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_EE", !141, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_ELb1ELb1EE", !142, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_EE", !143, i64 0}
!143 = !{!"_ZTSSt5tupleIJPN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_EEE", !144, i64 0}
!144 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm7HadesGC8ExecutorESt14default_deleteIS3_EEE", !145, i64 0}
!145 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm7HadesGC8ExecutorELb0EE", !146, i64 0}
!146 = !{!"p1 _ZTSN6hermes2vm7HadesGC8ExecutorE", !13, i64 0}
!147 = !{!"_ZTSSt10unique_ptrIN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_EE", !148, i64 0}
!148 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_ELb1ELb1EE", !149, i64 0}
!149 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_EE", !150, i64 0}
!150 = !{!"_ZTSSt5tupleIJPN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_EEE", !151, i64 0}
!151 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm7HadesGC15CollectionStatsESt14default_deleteIS3_EEE", !152, i64 0}
!152 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm7HadesGC15CollectionStatsELb0EE", !153, i64 0}
!153 = !{!"p1 _ZTSN6hermes2vm7HadesGC15CollectionStatsE", !13, i64 0}
!154 = !{!"_ZTSN6hermes2vm7HadesGC14CompacteeStateE", !13, i64 0, !95, i64 8, !13, i64 16, !95, i64 24, !155, i64 32}
!155 = !{!"_ZTSSt10shared_ptrIN6hermes2vm7HadesGC11HeapSegmentEE", !156, i64 0}
!156 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm7HadesGC11HeapSegmentELN9__gnu_cxx12_Lock_policyE2EE", !112, i64 0, !36, i64 8}
!157 = !{!"_ZTSN6hermes2vm7HadesGC9NativeIDsE", !4, i64 0, !4, i64 4}
!158 = !{!"_ZTSSt6vectorISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE", !159, i64 0}
!159 = !{!"_ZTSSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE", !160, i64 0}
!160 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE12_Vector_implE", !161, i64 0}
!161 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE17_Vector_impl_dataE", !162, i64 0, !162, i64 8, !162, i64 16}
!162 = !{!"p1 _ZTSSt8functionIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEE", !13, i64 0}
!163 = !{!"_ZTSSt6vectorISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE", !164, i64 0}
!164 = !{!"_ZTSSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE", !165, i64 0}
!165 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE12_Vector_implE", !166, i64 0}
!166 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE17_Vector_impl_dataE", !167, i64 0, !167, i64 8, !167, i64 16}
!167 = !{!"p1 _ZTSSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEE", !13, i64 0}
!168 = !{!"_ZTSSt6vectorISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE", !169, i64 0}
!169 = !{!"_ZTSSt12_Vector_baseISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE", !170, i64 0}
!170 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE12_Vector_implE", !171, i64 0}
!171 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvRN6hermes2vm12HeapSnapshotEEESaIS6_EE17_Vector_impl_dataE", !172, i64 0, !172, i64 8, !172, i64 16}
!172 = !{!"p1 _ZTSSt8functionIFvRN6hermes2vm12HeapSnapshotEEE", !13, i64 0}
!173 = !{!"_ZTSN6hermes2vm15IdentifierTableE", !174, i64 0, !180, i64 24, !183, i64 48, !4, i64 80}
!174 = !{!"_ZTSN6hermes2vm15IdentifierTable18ConservativeVectorINS1_11LookupEntryEEE", !175, i64 0}
!175 = !{!"_ZTSSt6vectorIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE", !176, i64 0}
!176 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE", !177, i64 0}
!177 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE12_Vector_implE", !178, i64 0}
!178 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE17_Vector_impl_dataE", !179, i64 0, !179, i64 8, !179, i64 16}
!179 = !{!"p1 _ZTSN6hermes2vm15IdentifierTable11LookupEntryE", !13, i64 0}
!180 = !{!"_ZTSN4llvh9BitVectorE", !181, i64 0, !4, i64 16}
!181 = !{!"_ZTSN4llvh15MutableArrayRefImEE", !182, i64 0}
!182 = !{!"_ZTSN4llvh8ArrayRefImEE", !88, i64 0, !8, i64 8}
!183 = !{!"_ZTSN6hermes2vm6detail19IdentifierHashTableE", !184, i64 0, !187, i64 16, !4, i64 24, !4, i64 28}
!184 = !{!"_ZTSN6hermes12CompactTableE", !185, i64 0}
!185 = !{!"_ZTSN6hermes12CompactArrayE", !4, i64 0, !186, i64 4, !64, i64 8}
!186 = !{!"_ZTSN6hermes12CompactArray5ScaleE", !5, i64 0}
!187 = !{!"p1 _ZTSN6hermes2vm15IdentifierTableE", !13, i64 0}
!188 = !{!"_ZTSN6hermes2vm14SymbolRegistryE", !15, i64 0, !189, i64 8}
!189 = !{!"_ZTSN4llvh8DenseSetIN6hermes2vm8SymbolIDENS_12DenseMapInfoIS3_EEEE", !190, i64 0}
!190 = !{!"_ZTSN4llvh6detail12DenseSetImplIN6hermes2vm8SymbolIDENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_EE", !191, i64 0}
!191 = !{!"_ZTSN4llvh8DenseMapIN6hermes2vm8SymbolIDENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEEE", !192, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!192 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIN6hermes2vm8SymbolIDEEE", !13, i64 0}
!193 = !{!"_ZTSSt10unique_ptrIN6hermes2vm12JSLibStorageESt14default_deleteIS2_EE", !194, i64 0}
!194 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm12JSLibStorageESt14default_deleteIS2_ELb1ELb1EE", !195, i64 0}
!195 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm12JSLibStorageESt14default_deleteIS2_EE", !196, i64 0}
!196 = !{!"_ZTSSt5tupleIJPN6hermes2vm12JSLibStorageESt14default_deleteIS2_EEE", !197, i64 0}
!197 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm12JSLibStorageESt14default_deleteIS2_EEE", !198, i64 0}
!198 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm12JSLibStorageELb0EE", !199, i64 0}
!199 = !{!"p1 _ZTSN6hermes2vm12JSLibStorageE", !13, i64 0}
!200 = !{!"p1 _ZTSN6hermes2vm9CodeBlockE", !13, i64 0}
!201 = !{!"p1 _ZTSN6hermes2vm13RuntimeModuleE", !13, i64 0}
!202 = !{!"_ZTSN4llvh12simple_ilistIN6hermes2vm13RuntimeModuleEJEEE", !203, i64 0}
!203 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes2vm13RuntimeModuleELb0ELb0EvEEEE", !204, i64 0}
!204 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes2vm13RuntimeModuleELb0ELb0EvEEEE", !205, i64 0}
!205 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !206, i64 0, !206, i64 8}
!206 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !13, i64 0}
!207 = !{!"_ZTSN6hermes2vm14CrashTraceNoopE"}
!208 = !{!"_ZTSN4llvh15MutableArrayRefIN6hermes2vm17PinnedHermesValueEEE", !209, i64 0}
!209 = !{!"_ZTSN4llvh8ArrayRefIN6hermes2vm17PinnedHermesValueEEE", !210, i64 0, !8, i64 8}
!210 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !13, i64 0}
!211 = !{!"_ZTSN6hermes2vm14StackFramePtrTILb0EEE", !210, i64 0}
!212 = !{!"_ZTSN6hermes18StackOverflowGuardE", !8, i64 0, !8, i64 8}
!213 = !{!"_ZTSSt5arrayIN6hermes2vm17PinnedHermesValueELm8EE", !5, i64 0}
!214 = !{!"_ZTSSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE", !215, i64 0}
!215 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE", !216, i64 0}
!216 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE12_Vector_implE", !217, i64 0}
!217 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE17_Vector_impl_dataE", !210, i64 0, !210, i64 8, !210, i64 16}
!218 = !{!"_ZTSSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE", !219, i64 0}
!219 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE", !220, i64 0}
!220 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE12_Vector_implE", !221, i64 0}
!221 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE17_Vector_impl_dataE", !222, i64 0, !222, i64 8, !222, i64 16}
!222 = !{!"p2 _ZTSN6hermes2vm8JSObjectE", !103, i64 0}
!223 = !{!"_ZTSSt6vectorIPN6hermes2vm8CallableESaIS3_EE", !224, i64 0}
!224 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE", !225, i64 0}
!225 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE12_Vector_implE", !226, i64 0}
!226 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE17_Vector_impl_dataE", !227, i64 0, !227, i64 8, !227, i64 16}
!227 = !{!"p2 _ZTSN6hermes2vm8CallableE", !103, i64 0}
!228 = !{!"_ZTSSt5dequeIPN6hermes2vm8CallableESaIS3_EE", !229, i64 0}
!229 = !{!"_ZTSSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE", !230, i64 0}
!230 = !{!"_ZTSNSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE11_Deque_implE", !231, i64 0}
!231 = !{!"_ZTSNSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE16_Deque_impl_dataE", !232, i64 0, !8, i64 8, !234, i64 16, !234, i64 48}
!232 = !{!"p3 _ZTSN6hermes2vm8CallableE", !233, i64 0}
!233 = !{!"any p3 pointer", !103, i64 0}
!234 = !{!"_ZTSSt15_Deque_iteratorIPN6hermes2vm8CallableERS3_PS3_E", !227, i64 0, !227, i64 8, !227, i64 16, !232, i64 24}
!235 = !{!"_ZTSSt10unique_ptrIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EE", !236, i64 0}
!236 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_ELb1ELb1EE", !237, i64 0}
!237 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EE", !238, i64 0}
!238 = !{!"_ZTSSt5tupleIJPN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EEE", !239, i64 0}
!239 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EEE", !240, i64 0}
!240 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm20CodeCoverageProfilerELb0EE", !241, i64 0}
!241 = !{!"p1 _ZTSN6hermes2vm20CodeCoverageProfilerE", !13, i64 0}
!242 = !{!"_ZTSSt6atomicIhE", !243, i64 0}
!243 = !{!"_ZTSSt13__atomic_baseIhE", !5, i64 0}
!244 = !{!"_ZTSSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE", !245, i64 0}
!245 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE", !246, i64 0}
!246 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE12_Vector_implE", !247, i64 0}
!247 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE17_Vector_impl_dataE", !248, i64 0, !248, i64 8, !248, i64 16}
!248 = !{!"p1 _ZTSSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEE", !13, i64 0}
!249 = !{!"_ZTSSt8functionIFvN6hermes2vm11GCEventKindEPKcEE", !49, i64 0, !13, i64 24}
!250 = !{!"p1 _ZTSN6hermes4inst4InstE", !13, i64 0}
!251 = !{!212, !8, i64 8}
!252 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!253 = !{!254, !255, i64 24}
!254 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !255, i64 8, !5, i64 16, !255, i64 24, !8, i64 32, !8, i64 40}
!255 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!256 = !{!254, !8, i64 32}
!257 = !{!254, !8, i64 40}
!258 = !{!5, !5, i64 0}
!259 = !{!254, !255, i64 8}
!260 = !{!11, !12, i64 8}
!261 = !{!262, !210, i64 192}
!262 = !{!"_ZTSN6hermes2vm7GCScopeE", !263, i64 0, !12, i64 8, !5, i64 16, !264, i64 144, !210, i64 192, !210, i64 200, !4, i64 208}
!263 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !13, i64 0}
!264 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !265, i64 0, !268, i64 16}
!265 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !266, i64 0}
!266 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !267, i64 0}
!267 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !22, i64 0}
!268 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!269 = !{!262, !210, i64 200}
!270 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!271 = !{!272, !272, i64 0}
!272 = !{!"p1 _ZTSN6hermes2vm6VTableE", !13, i64 0}
!273 = !{!274, !13, i64 96}
!274 = !{!"_ZTSN6hermes2vm14CallableVTableE", !275, i64 0, !13, i64 96, !13, i64 104}
!275 = !{!"_ZTSN6hermes2vm12ObjectVTableE", !276, i64 0, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88}
!276 = !{!"_ZTSN6hermes2vm6VTableE", !8, i64 0, !277, i64 8, !4, i64 12, !13, i64 16, !13, i64 24, !13, i64 32}
!277 = !{!"_ZTSN6hermes2vm8CellKindE", !5, i64 0}
!278 = distinct !{null}
!279 = !{!280, !24, i64 4}
!280 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !24, i64 4}
!281 = !{i8 0, i8 2}
!282 = !{}
!283 = !{!24, !24, i64 0}
!284 = !{!285, !272, i64 216}
!285 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !64, i64 0, !286, i64 8, !286, i64 56, !286, i64 104, !286, i64 152, !295, i64 200, !280, i64 208, !272, i64 216}
!286 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !287, i64 0}
!287 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !288, i64 0}
!288 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !289, i64 0, !291, i64 8}
!289 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !290, i64 0}
!290 = !{!"_ZTSSt4lessIhE"}
!291 = !{!"_ZTSSt15_Rb_tree_header", !292, i64 0, !8, i64 32}
!292 = !{!"_ZTSSt18_Rb_tree_node_base", !293, i64 0, !294, i64 8, !294, i64 16, !294, i64 24}
!293 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!294 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!295 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !296, i64 0, !24, i64 4}
!296 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !297, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!297 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !5, i64 0}
!298 = !{!93, !64, i64 16}
!299 = !{!93, !64, i64 24}
!300 = !{!301, !13, i64 32}
!301 = !{!"_ZTSN6hermes2vm14NativeFunctionE", !302, i64 0, !13, i64 24, !13, i64 32}
!302 = !{!"_ZTSN6hermes2vm8CallableE", !303, i64 0, !310, i64 20}
!303 = !{!"_ZTSN6hermes2vm8JSObjectE", !304, i64 0, !305, i64 4, !306, i64 8, !308, i64 12, !309, i64 16}
!304 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!305 = !{!"_ZTSN6hermes2vm11ObjectFlagsE", !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 1}
!306 = !{!"_ZTSN6hermes2vm9GCPointerINS0_8JSObjectEEE", !307, i64 0}
!307 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !96, i64 0}
!308 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !307, i64 0}
!309 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !307, i64 0}
!310 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11EnvironmentEEE", !307, i64 0}
!311 = !{!94, !64, i64 0}
!312 = !{!263, !263, i64 0}
!313 = !{!262, !12, i64 8}
!314 = !{!22, !13, i64 0}
!315 = !{!22, !4, i64 12}
!316 = !{!22, !4, i64 8}
!317 = !{!262, !4, i64 208}
!318 = !{!210, !210, i64 0}
!319 = !{!16, !8, i64 0}
!320 = !{!10, !210, i64 9448}
!321 = !{!10, !210, i64 9440}
!322 = !{!323, !325, !327, !329, !331}
!323 = distinct !{!323, !324, !"_ZSt16__do_uninit_copyISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEES5_ET0_T_S7_S6_: argument 0"}
!324 = distinct !{!324, !"_ZSt16__do_uninit_copyISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEES5_ET0_T_S7_S6_"}
!325 = distinct !{!325, !326, !"_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEES7_EET0_T_S9_S8_: argument 0"}
!326 = distinct !{!326, !"_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEES7_EET0_T_S9_S8_"}
!327 = distinct !{!327, !328, !"_ZSt18uninitialized_copyISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEES5_ET0_T_S7_S6_: argument 0"}
!328 = distinct !{!328, !"_ZSt18uninitialized_copyISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEES5_ET0_T_S7_S6_"}
!329 = distinct !{!329, !330, !"_ZSt22__uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_St26random_access_iterator_tag: argument 0"}
!330 = distinct !{!330, !"_ZSt22__uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_St26random_access_iterator_tag"}
!331 = distinct !{!331, !332, !"_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_: argument 0"}
!332 = distinct !{!332, !"_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_"}
!333 = distinct !{!333, !334, !335, !336}
!334 = !{!"llvm.loop.mustprogress"}
!335 = !{!"llvm.loop.isvectorized", i32 1}
!336 = !{!"llvm.loop.unroll.runtime.disable"}
!337 = distinct !{!337, !334, !335}
!338 = !{!274, !13, i64 104}
!339 = distinct !{null}
!340 = !{!341, !60, i64 8}
!341 = !{!"_ZTSN6hermes2vm11BoxedDoubleE", !304, i64 0, !60, i64 8}
!342 = !{!343, !4, i64 20}
!343 = !{!"_ZTSN6hermes2vm9ArrayImplE", !303, i64 0, !4, i64 20, !4, i64 24, !344, i64 28}
!344 = !{!"_ZTSN6hermes2vm9GCPointerINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEE", !307, i64 0}
!345 = !{!346, !4, i64 0}
!346 = !{!"_ZTSN6hermes2vm13HermesValue32E", !4, i64 0}
!347 = distinct !{!347, !334}
end_hunk_0

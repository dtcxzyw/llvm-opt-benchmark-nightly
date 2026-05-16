inline.NumInlined: 472
inline.NumDeleted: 326
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.180" = type { [79 x ptr] }
%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"class.hermes::vm::GCScope" = type <{ ptr, ptr, [128 x i8], %"class.llvh::SmallVector.165", ptr, ptr, i32, [4 x i8] }>
%"class.llvh::SmallVector.165" = type { %"class.llvh::SmallVectorImpl.166", %"struct.llvh::SmallVectorStorage.169" }
%"class.llvh::SmallVectorImpl.166" = type { %"class.llvh::SmallVectorTemplateBase.167" }
%"class.llvh::SmallVectorTemplateBase.167" = type { %"class.llvh::SmallVectorTemplateCommon.168" }
%"class.llvh::SmallVectorTemplateCommon.168" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.169" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.170"] }
%"struct.llvh::AlignedCharArrayUnion.170" = type { %"struct.llvh::AlignedCharArray.171" }
%"struct.llvh::AlignedCharArray.171" = type { [8 x i8] }

@_ZN6hermes2vm15JSCallableProxy2vtE = hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 71, i32 48, ptr null, ptr null, ptr null, ptr @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE, ptr @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE, ptr @_ZN6hermes2vm15JSCallableProxy14_newObjectImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeENS2_INS0_8JSObjectEEE, ptr @_ZN6hermes2vm14NativeFunction9_callImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE }, align 8
@.str = private unnamed_addr constant [8 x i8] c"@target\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"@handler\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Proxy construct trap returned non-Object\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Function is not a constructor\00", align 1
@_ZN6hermes2vm6VTable11vtableArrayE = external local_unnamed_addr global %"struct.std::array.180", align 8
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external local_unnamed_addr global %"class.hermes::vm::PinnedHermesValue", align 8

declare i64 @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816)) #0

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #0

declare i32 @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #0

declare i64 @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #0

declare i32 @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) #0

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #0

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #0

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm15JSCallableProxy14_newObjectImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeENS2_INS0_8JSObjectEEE(ptr readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) #1 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !7
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
  br label %_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.0.0.copyload.i.i.i6 = load i32, ptr %i.k, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i6, 0
  %i.l = ptrtoint ptr %1 to i64
  %i.m = zext i32 %.sroa.0.0.copyload.i.i.i6 to i64
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.o
  %i.q = tail call i32 @_ZN6hermes2vm13isConstructorERNS0_7RuntimeEPNS0_8CallableE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.p) #6
  br label %_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE.exit

_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE.exit: ; preds = %bb.b, %bb.c
  %.sroa.05.0.i = phi i32 [ %i.h, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.r = load i64, ptr %i.a, align 8, !tbaa !9
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.a, align 8, !tbaa !9
  %.mask = and i32 %.sroa.05.0.i, 255
  %i.t = icmp eq i32 %.mask, 0
  br i1 %i.t, label %bb.h, label %bb.d, !prof !252

bb.d:                                             ; preds = %_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE.exit
  %i.u = and i32 %.sroa.05.0.i, 256
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.e

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.v, align 8, !tbaa !253
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 29, ptr %i.w, align 8, !tbaa !256
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !257
  store ptr @.str.3, ptr %3, align 8, !tbaa !258
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.y, align 8, !tbaa !259
  %i.z = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i7 = load i64, ptr %0, align 8, !tbaa !7
  %i.aa = and i64 %.sroa.0.0.copyload.i.i.i7, 281474976710655
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZN6hermes2vm6detail5slotsEPNS0_8JSObjectE(ptr noundef %i.ab) #6
  %.sroa.0.0.copyload.i.i.i8 = load i32, ptr %i.ac, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq i32 %.sroa.0.0.copyload.i.i.i8, 0
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = zext i32 %.sroa.0.0.copyload.i.i.i8 to i64
  %i.af = add i64 %i.ae, %i.ad
  %i.ag = or i64 %i.af, -281474976710656
  %i.ah = select i1 %.not.i.i.i.i.i9, i64 -281474976710656, i64 %i.ag ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !260 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 192 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !261 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 200
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !269
  %i.ao = icmp ult ptr %i.al, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g, !prof !270

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !261
  store i64 %i.ah, ptr %i.al, align 8, !tbaa !7
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.aj, i64 %i.ah) #6 ; 2 uses
  %.sroa.0.0.copyload.i.i.i10.pre = load i64, ptr %i.aq, align 8, !tbaa !7
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.copyload.i.i.i10 = phi i64 [ %i.ah, %bb.f ], [ %.sroa.0.0.copyload.i.i.i10.pre, %bb.g ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.al, %bb.f ], [ %i.aq, %bb.g ]
  %i.ar = and i64 %.sroa.0.0.copyload.i.i.i10, 281474976710655
  %i.as = inttoptr i64 %i.ar to ptr
  %4 = load i32, ptr %i.as, align 4
  %5 = lshr i32 %4, 24
  %i.at = zext nneg i32 %5 to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !271
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !273
  %i.ay = tail call ptr %i.ax(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) #6, !inline_history !278
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE.exit, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.015.0 = phi ptr [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.ay, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE.exit ]
  ret ptr %.sroa.015.0
}

declare { i32, i64 } @_ZN6hermes2vm14NativeFunction9_callImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) #0

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm24JSCallableProxyBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !279, !range !281, !noundef !282
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 5, ptr %i.d, align 8, !tbaa !3
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
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm15JSCallableProxy16_proxyNativeCallEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
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
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ck, 19
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.cm = add i64 %.sroa.0.0.copyload.i125, -56
  %i.cn = and i64 %i.az, 4294967295
  %umin = call i64 @llvm.umin.i64(i64 %i.cn, i64 4294967288)
  %i.co = shl nuw nsw i64 %umin, 3
  %i.cp = add i64 %i.co, %i.bl
  %i.cq = sub i64 %i.cm, %i.cp
  %diff.check = icmp ult i64 %i.cq, 32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cl, 4611686018427387900     ; 3 uses
  %i.cr = mul i64 %n.vec, -8                      ; 2 uses
  %i.cs = getelementptr i8, ptr %i.bb, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cf, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.cu ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.cf, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cw = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <2 x i64>, ptr %i.cv, align 8, !noalias !322
  %wide.load127 = load <2 x i64>, ptr %i.cw, align 8, !noalias !322
  %i.cx = getelementptr inbounds i8, ptr %next.gep126, i64 -16
  %i.cy = getelementptr inbounds i8, ptr %next.gep126, i64 -32
  store <2 x i64> %wide.load, ptr %i.cx, align 8, !noalias !322
  store <2 x i64> %wide.load127, ptr %i.cy, align 8, !noalias !322
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !333

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit, label %.lr.ph.i.i.i.i.i.preheader132

.lr.ph.i.i.i.i.i.preheader132:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.sroa.03.0.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %middle.block ]
  %storemerge2.i.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader132, %.lr.ph.i.i.i.i.i
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.0.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader132 ]
  %storemerge2.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i ], [ %storemerge2.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader132 ]
  %i.da = getelementptr inbounds i8, ptr %storemerge2.i.i.i.i.i, i64 -8 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i, i64 -8 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !noalias !322
  store i64 %i.dc, ptr %i.da, align 8, !noalias !322
  %.not.i.i.i.i.i46 = icmp eq ptr %i.db, %i.ci
  br i1 %.not.i.i.i.i.i46, label %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !337

_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.i
  %.sroa.0.0.copyload.i.i.i47 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !7
  %i.dd = and i64 %.sroa.0.0.copyload.i.i.i47, 281474976710655
  %i.de = inttoptr i64 %i.dd to ptr
  %5 = load i32, ptr %i.de, align 4
  %6 = lshr i32 %5, 24
  %i.df = zext nneg i32 %6 to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !271
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !338
  %i.dk = call { i32, i64 } %i.dj(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #6, !inline_history !339 ; 2 uses
  %i.dl = extractvalue { i32, i64 } %i.dk, 0
  %i.dm = extractvalue { i32, i64 } %i.dk, 1
  %i.dn = icmp ne i32 %i.dl, 0                    ; 2 uses
  %spec.select = zext i1 %i.dn to i32
  %spec.select106 = select i1 %i.dn, i64 %i.dm, i64 undef, !prof !270
  br label %bb.j

bb.j:                                             ; preds = %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit, %bb.h
  %.sroa.0103.1 = phi i32 [ %i.bv, %bb.h ], [ %spec.select, %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit ]
  %.sroa.11104.1 = phi i64 [ undef, %bb.h ], [ %spec.select106, %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit ]
  %i.do = load i64, ptr %i.be, align 8, !tbaa !9
  %i.dp = add i64 %i.do, -1
  store i64 %i.dp, ptr %i.be, align 8, !tbaa !9
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !320
  br label %bb.ae

bb.k:                                             ; preds = %bb.f
  %i.dq = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ba, i32 noundef %i.ba) #6 ; 5 uses
  %.not110 = icmp eq ptr %i.dq, inttoptr (i64 -1 to ptr)
  br i1 %.not110, label %bb.ae, label %bb.l, !prof !252

bb.l:                                             ; preds = %bb.k
  %i.dr = load i64, ptr %i.ay, align 8, !tbaa !319
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = call noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr %i.dq, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ds) #6 ; 0 uses
  %i.du = load i64, ptr %i.ay, align 8, !tbaa !319
  %i.dv = and i64 %i.du, 4294967295
  %.not113 = icmp eq i64 %i.dv, 0
  br i1 %.not113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 1632
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit, %bb.l
  %i.ea = load i64, ptr %i.ap, align 8, !tbaa !319 ; 2 uses
  %.mask.i.i49 = and i64 %i.ea, -140737488355328
  %.not111 = icmp eq i64 %.mask.i.i49, -1688849860263936
  %.sroa.0.0.copyload.i55 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !7 ; 2 uses
  br i1 %.not111, label %bb.ad, label %bb.ab

bb.m:                                             ; preds = %.lr.ph, %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit
  %.0112 = phi i32 [ 0, %.lr.ph ], [ %i.go, %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit ] ; 3 uses
  %i.eb = sext i32 %.0112 to i64
  %i.ec = sub nsw i64 0, %i.eb
  %i.ed = getelementptr [8 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 -64
  %.sroa.012.0.copyload = load i64, ptr %i.ee, align 8, !tbaa !7 ; 9 uses
  %i.ef = ashr i64 %.sroa.012.0.copyload, 47
  switch i64 %i.ef, label %bb.u [
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
  %i.eg = trunc i64 %.sroa.012.0.copyload to i1
  %i.eh = select i1 %i.eg, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.q:                                             ; preds = %bb.m
  %i.ei = trunc i64 %.sroa.012.0.copyload to i32
  %i.ej = shl i32 %i.ei, 3
  %i.ek = or disjoint i32 %i.ej, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.r:                                             ; preds = %bb.m, %bb.m
  %i.el = sub i64 %.sroa.012.0.copyload, %i.q
  %i.em = trunc i64 %i.el to i32
  %i.en = or i32 %i.em, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.s:                                             ; preds = %bb.m, %bb.m
  %i.eo = sub i64 %.sroa.012.0.copyload, %i.q
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = or i32 %i.ep, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.t:                                             ; preds = %bb.m, %bb.m
  %i.er = sub i64 %.sroa.012.0.copyload, %i.q
  %i.es = trunc i64 %i.er to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.u:                                             ; preds = %bb.m
  %i.et = bitcast i64 %.sroa.012.0.copyload to double
  %i.eu = fptosi double %i.et to i32
  %i.ev = shl i32 %i.eu, 3                        ; 2 uses
  %i.ew = ashr exact i32 %i.ev, 3
  %i.ex = sitofp i32 %i.ew to double
  %i.ey = bitcast double %i.ex to i64
  %i.ez = icmp eq i64 %.sroa.012.0.copyload, %i.ey
  br i1 %i.ez, label %bb.v, label %bb.w, !prof !270

bb.v:                                             ; preds = %bb.u
  %i.fa = or disjoint i32 %i.ev, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.w:                                             ; preds = %bb.u
  %i.fb = load ptr, ptr %i.dw, align 8, !tbaa !298 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fd = load ptr, ptr %i.dx, align 8, !tbaa !299
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.fc, %i.fd
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.x, label %bb.y, !prof !252

bb.x:                                             ; preds = %bb.w
  %i.fe = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dy, i32 noundef 16) #6
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.y:                                             ; preds = %bb.w
  store ptr %i.fc, ptr %i.dw, align 8, !tbaa !298
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.y, %bb.x
  %i.ff = phi ptr [ %i.fe, %bb.x ], [ %i.fb, %bb.y ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i64 %.sroa.012.0.copyload, ptr %i.fg, align 8, !tbaa !340
  store i32 402653200, ptr %i.ff, align 8, !tbaa !258
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fh, %i.q
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = or i32 %i.fj, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.v, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.sroa.04.0.i = phi i32 [ 7, %bb.m ], [ %i.es, %bb.t ], [ 14, %bb.n ], [ 15, %bb.o ], [ %i.eh, %bb.p ], [ %i.ek, %bb.q ], [ %i.en, %bb.r ], [ %i.eq, %bb.s ], [ %i.fa, %bb.v ], [ %i.fk, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i50 = load i64, ptr %i.dq, align 8, !tbaa !7
  %i.fl = and i64 %.sroa.0.0.copyload.i.i.i50, 281474976710655
  %i.fm = inttoptr i64 %i.fl to ptr               ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.fn, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.fo = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.fp = add i64 %i.fo, %i.q
  %i.fq = inttoptr i64 %i.fp to ptr               ; 2 uses
  %i.fr = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !342
  %i.fu = sub i32 %.0112, %i.ft                   ; 4 uses
  %i.fv = icmp ult i32 %i.fu, 4096
  br i1 %i.fv, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i, label %bb.z, !prof !270

bb.z:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.fw = add i32 %i.fu, -4096
  %i.fx = lshr i32 %i.fw, 10
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 16392
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !345
  %i.gc = zext i32 %i.gb to i64
  %i.gd = add i64 %i.gc, %i.q
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = and i32 %i.fu, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i: ; preds = %bb.z, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %.sink6.i.i.i.i = phi ptr [ %i.ge, %bb.z ], [ %i.fr, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit ]
  %.sink5.i.i.i.i = phi i32 [ %i.gf, %bb.z ], [ %i.fu, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i, i64 8
  %i.gh = zext nneg i32 %.sink5.i.i.i.i to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gh ; 3 uses
  %i.gj = load ptr, ptr %i.dz, align 8, !tbaa !311
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = and i64 %i.gk, -4194304
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = icmp eq ptr %i.gj, %i.gm
  br i1 %i.gn, label %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit, label %bb.aa, !prof !270

bb.aa:                                            ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.dy, ptr noundef nonnull align 4 dereferenceable(4) %i.gi, i32 %.sroa.04.0.i) #6
  br label %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit

_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i, %bb.aa
  store i32 %.sroa.04.0.i, ptr %i.gi, align 4, !tbaa !345
  %i.go = add nuw i32 %.0112, 1                   ; 2 uses
  %i.gp = load i64, ptr %i.ay, align 8, !tbaa !319
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = icmp ult i32 %i.go, %i.gq
  br i1 %i.gr, label %bb.m, label %._crit_edge, !llvm.loop !347

bb.ab:                                            ; preds = %._crit_edge
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.dq, align 8, !tbaa !7
  %i.gs = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr nonnull %i.as, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i42, i64 %.sroa.0.0.copyload.i55, i64 %.sroa.0.0.copyload.i52, i64 %i.ea, i1 noundef zeroext false) #6 ; 2 uses
  %i.gt = extractvalue { i32, i64 } %i.gs, 0
  %i.gu = extractvalue { i32, i64 } %i.gs, 1      ; 3 uses
  %i.gv = icmp eq i32 %i.gt, 0
  br i1 %i.gv, label %bb.ae, label %bb.ac, !prof !252

bb.ac:                                            ; preds = %bb.ab
  %i.gw = icmp ugt i64 %i.gu, -844424930131969
  br i1 %i.gw, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit: ; preds = %bb.ac
  %i.gx = and i64 %i.gu, 281474976710655
  %i.gy = inttoptr i64 %i.gx to ptr
  %7 = load i32, ptr %i.gy, align 4
  %8 = add i32 %7, -436207616
  %i.gz = icmp ult i32 %8, 855638016
  br i1 %i.gz, label %bb.ae, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.ac, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ha, align 8, !tbaa !253
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 40, ptr %i.hb, align 8, !tbaa !256
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.hc, align 8, !tbaa !257
  store ptr @.str.2, ptr %4, align 8, !tbaa !258
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.hd, align 8, !tbaa !259
  %i.he = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge
  %i.hf = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -56
  %.sroa.02.0.copyload = load i64, ptr %i.hf, align 8, !tbaa !7
  %.sroa.0.0.copyload.i56 = load i64, ptr %i.dq, align 8, !tbaa !7
  %i.hg = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr nonnull %i.as, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i42, i64 %.sroa.0.0.copyload.i55, i64 %.sroa.02.0.copyload, i64 %.sroa.0.0.copyload.i56, i1 noundef zeroext false) #6 ; 2 uses
  %i.hh = extractvalue { i32, i64 } %i.hg, 0
  %i.hi = extractvalue { i32, i64 } %i.hg, 1
  %i.hj = icmp ne i32 %i.hh, 0                    ; 2 uses
  %spec.select107 = zext i1 %i.hj to i32
  %spec.select108 = select i1 %i.hj, i64 %i.hi, i64 undef, !prof !270
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.k, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread, %bb.ab, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43, %bb.j
  %.sroa.0103.6 = phi i32 [ %.sroa.0103.1, %bb.j ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43 ], [ 0, %bb.k ], [ 1, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit ], [ %i.he, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread ], [ 0, %bb.ab ], [ %spec.select107, %bb.ad ]
  %.sroa.11104.6 = phi i64 [ %.sroa.11104.1, %bb.j ], [ undef, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43 ], [ undef, %bb.k ], [ %i.gu, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit ], [ undef, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread ], [ undef, %bb.ab ], [ %spec.select108, %bb.ad ]
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
end_hunk_1

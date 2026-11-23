Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSCallableProxy?download=true
inline.NumInlined: 472
inline.NumDeleted: 326
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
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

@_ZN6hermes2vm15JSCallableProxy2vtE = hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 71, i32 48, ptr null, ptr null, ptr null, ptr @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE, ptr @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE, ptr @_ZN6hermes2vm15JSCallableProxy14_newObjectImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeENS2_INS0_8JSObjectEEE, ptr @_ZN6hermes2vm14NativeFunction9_callImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE }, align 8, !guid !7
@.str = private unnamed_addr constant [8 x i8] c"@target\00", align 1, !guid !8
@.str.1 = private unnamed_addr constant [9 x i8] c"@handler\00", align 1, !guid !9
@.str.2 = private unnamed_addr constant [41 x i8] c"Proxy construct trap returned non-Object\00", align 1, !guid !10
@.str.3 = private unnamed_addr constant [30 x i8] c"Function is not a constructor\00", align 1, !guid !11
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
define hidden ptr @_ZN6hermes2vm15JSCallableProxy14_newObjectImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeENS2_INS0_8JSObjectEEE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) #1 align 2 !guid !293 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !255
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !255
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.e = load i64, ptr %i.d, align 8, !tbaa !256
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %4, label %bb.b, !prof !257

4:                                                ; preds = %bb.a
  %5 = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #6
  %6 = and i32 %5, 255
  br label %_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.0.0.copyload.i.i.i6 = load i32, ptr %i.i, align 4, !tbaa !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i6, 0
  %i.j = ptrtoint ptr %1 to i64
  %i.k = zext i32 %.sroa.0.0.copyload.i.i.i6 to i64
  %i.l = add i64 %i.k, %i.j
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.m
  %i.o = tail call i32 @_ZN6hermes2vm13isConstructorERNS0_7RuntimeEPNS0_8CallableE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.n) #6
  br label %_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE.exit

_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE.exit: ; preds = %4, %bb.b
  %.sroa.05.0.i = phi i32 [ %6, %4 ], [ %i.o, %bb.b ] ; 2 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !255
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.a, align 8, !tbaa !255
  %.mask.a = and i32 %.sroa.05.0.i, 255
  %i.r = icmp eq i32 %.mask.a, 0
  br i1 %i.r, label %bb.g, label %bb.c, !prof !257

bb.c:                                             ; preds = %_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE.exit
  %i.s = and i32 %.sroa.05.0.i, 256
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.d

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.t, align 8, !tbaa !260
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 29, ptr %i.u, align 8, !tbaa !261
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !262
  store ptr @.str.3, ptr %3, align 8, !tbaa !263
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !264
  %i.x = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i7 = load i64, ptr %0, align 8, !tbaa !13
  %i.y = and i64 %.sroa.0.0.copyload.i.i.i7, 281474976710655
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZN6hermes2vm6detail5slotsEPNS0_8JSObjectE(ptr noundef %i.z) #6
  %.sroa.0.0.copyload.i.i.i8 = load i32, ptr %i.aa, align 4, !tbaa !6 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq i32 %.sroa.0.0.copyload.i.i.i8, 0
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = zext i32 %.sroa.0.0.copyload.i.i.i8 to i64
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = or i64 %i.ad, -281474976710656
  %i.af = select i1 %.not.i.i.i.i.i9, i64 -281474976710656, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !265 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !273 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !274
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %bb.f, !prof !275

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !273
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !13
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ah, i64 %i.af) #6 ; 2 uses
  %.sroa.0.0.copyload.i.i.i10.pre = load i64, ptr %i.ao, align 8, !tbaa !13
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.copyload.i.i.i10 = phi i64 [ %i.af, %bb.e ], [ %.sroa.0.0.copyload.i.i.i10.pre, %bb.f ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.ao, %bb.f ]
  %i.ap = and i64 %.sroa.0.0.copyload.i.i.i10, 281474976710655
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = lshr i32 %i.ar, 24
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !277
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !294
  %i.ay = tail call ptr %i.ax(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) #6, !inline_history !292
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE.exit, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.015.0 = phi ptr [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.ay, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE.exit ]
  ret ptr %.sroa.015.0
}

declare { i32, i64 } @_ZN6hermes2vm14NativeFunction9_callImplENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) #0

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm24JSCallableProxyBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #1 !guid !295 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !297, !range !298, !noundef !299
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 5, ptr %i.d, align 8, !tbaa !6
  store i8 1, ptr %i.a, align 4, !tbaa !300
  br label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit

_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm23NativeFunctionBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm15JSCallableProxy2vtE, ptr %i.e, align 8, !tbaa !314
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
define hidden noundef ptr @_ZN6hermes2vm15JSCallableProxy6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #1 align 2 !guid !315 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !283
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !257

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 48) #6
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_15JSCallableProxyELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_NS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !282
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_15JSCallableProxyELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_NS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_15JSCallableProxyELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_NS0_6HandleINS0_8JSObjectEEENS7_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i.i, 281474976710655
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.n = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.o = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.n
  %i.p = trunc i64 %i.o to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.p
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.m, align 4, !tbaa !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.r = sub i64 %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i.i, %i.n
  %i.s = trunc i64 %i.r to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.s
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i, ptr %i.q, align 4, !tbaa !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr @_ZN6hermes2vm15JSCallableProxy16_proxyNativeCallEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr %i.u, align 8, !tbaa !319
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 0, ptr %i.w, align 4
  store i32 1191182384, ptr %i.h, align 8, !tbaa !263
  store i32 128, ptr %i.l, align 4
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm15JSCallableProxy19setTargetAndHandlerERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #1 align 2 !guid !320 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !13 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !291  ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = and i64 %i.f, -4194304
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = icmp eq ptr %i.e, %i.h
  br i1 %i.i, label %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.b, !prof !275

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.b to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef %i.j) #6
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !291
  br label %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.e, %bb.a ], [ %.pre, %bb.b ]
  %.not.i.i.i.i.i = icmp eq i64 %i.b, 0
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %.sroa.0.0.copyload.i.i, %i.l
  %i.n = trunc i64 %i.m to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.n
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %.sroa.0.0.copyload.i.i5 = load i64, ptr %3, align 8, !tbaa !13 ; 2 uses
  %i.p = and i64 %.sroa.0.0.copyload.i.i5, 281474976710655 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = and i64 %i.q, -4194304
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = icmp eq ptr %i.k, %i.s
  br i1 %i.t, label %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit8, label %bb.c, !prof !275

bb.c:                                             ; preds = %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit
  %i.u = inttoptr i64 %i.p to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef %i.u) #6
  br label %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit8

_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit8: ; preds = %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, %bb.c
  %.not.i.i.i.i.i6 = icmp eq i64 %i.p, 0
  %i.v = sub i64 %.sroa.0.0.copyload.i.i5, %i.l
  %i.w = trunc i64 %i.v to i32
  %.sroa.0.0.i.i.i.i.i7 = select i1 %.not.i.i.i.i.i6, i32 0, i32 %i.w
  store i32 %.sroa.0.0.i.i.i.i.i7, ptr %i.o, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm15JSCallableProxy13isConstructorERNS0_7RuntimeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 align 2 !guid !321 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !255
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !255
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.e = load i64, ptr %i.d, align 8, !tbaa !256
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !257

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #6
  %2 = and i32 %i.g, 255
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.h, align 8, !tbaa !6 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  %i.i = ptrtoint ptr %1 to i64
  %i.j = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.k = add i64 %i.j, %i.i
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = select i1 %.not.i.i.i.i, ptr null, ptr %i.l
  %i.n = tail call i32 @_ZN6hermes2vm13isConstructorERNS0_7RuntimeEPNS0_8CallableE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.m) #6
  %i.o = and i32 %i.n, 65535
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.05.0 = phi i32 [ %2, %bb.b ], [ %i.o, %bb.c ]
  %i.p = load i64, ptr %i.a, align 8, !tbaa !255
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.a, align 8, !tbaa !255
  ret i32 %.sroa.05.0
}

declare noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #0

declare i32 @_ZN6hermes2vm13isConstructorERNS0_7RuntimeEPNS0_8CallableE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15JSCallableProxy16_proxyNativeCallEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readnone captures(none) dead_on_return %2) #1 align 2 !guid !336 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  store ptr %1, ptr %3, align 8, !tbaa !337
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !265
  store ptr %i.c, ptr %i.a, align 8, !tbaa !338
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !339
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !340
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !341
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !273
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !274
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !342
  store ptr %3, ptr %i.b, align 8, !tbaa !265
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9472 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !343 ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.m, align 8, !tbaa !13
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN6hermes2vm6detail5slotsEPNS0_8JSObjectE(ptr noundef %i.o) #6 ; 2 uses
  %.sroa.0.0.copyload.i.i.i39 = load i32, ptr %i.p, align 4, !tbaa !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i39, 0
  %i.q = ptrtoint ptr %1 to i64                   ; 8 uses
  %i.r = zext i32 %.sroa.0.0.copyload.i.i.i39 to i64
  %i.s = add i64 %i.r, %i.q
  %i.t = or i64 %i.s, -281474976710656
  %i.u = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !265  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !273  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !274  ; 2 uses
  %i.aa = icmp ult ptr %i.x, %i.z
  br i1 %i.aa, label %bb.b, label %bb.c, !prof !275

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !273
  store i64 %i.u, ptr %i.x, align 8, !tbaa !13
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.v, i64 %i.u) #6
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !265 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre114 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !273
  %.phi.trans.insert115 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre116 = load ptr, ptr %.phi.trans.insert115, align 8, !tbaa !274
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.b, %bb.c
  %i.ad = phi ptr [ %i.z, %bb.b ], [ %.pre116, %bb.c ]
  %i.ae = phi ptr [ %i.ab, %bb.b ], [ %.pre114, %bb.c ] ; 4 uses
  %i.af = phi ptr [ %i.v, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %i.ac, %bb.c ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.0.0.copyload.i.i.i40 = load i32, ptr %i.ag, align 4, !tbaa !6 ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq i32 %.sroa.0.0.copyload.i.i.i40, 0
  %i.ah = zext i32 %.sroa.0.0.copyload.i.i.i40 to i64
  %i.ai = add i64 %i.ah, %i.q
  %i.aj = or i64 %i.ai, -281474976710656
  %i.ak = select i1 %.not.i.i.i.i.i41, i64 -281474976710656, i64 %i.aj ; 2 uses
  %i.al = icmp ult ptr %i.ae, %i.ad
  br i1 %i.al, label %bb.d, label %bb.e, !prof !275

bb.d:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.an, ptr %i.am, align 8, !tbaa !273
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !13
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43

bb.e:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %i.ao = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.af, i64 %i.ak) #6
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i42 = phi ptr [ %i.ae, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -40 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !344
  %.mask.i.i = and i64 %i.aq, -140737488355328
  %.not = icmp eq i64 %.mask.i.i, -1688849860263936
  %i.ar = select i1 %.not, i32 136, i32 425
  %i.as = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ar) #6 ; 4 uses
  %.not109 = icmp eq ptr %i.as, inttoptr (i64 -1 to ptr)
  br i1 %.not109, label %bb.ae, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit43
  %i.at = load i64, ptr %i.as, align 8, !tbaa !344 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -32 ; 5 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !344 ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 3 uses
  br i1 %i.ax, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i44 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !13
  %.sroa.020.0.copyload = load i64, ptr %i.ap, align 8, !tbaa !13
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -56 ; 4 uses
  %.sroa.019.0.copyload = load i64, ptr %i.bb, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 9448 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !345 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !255
  %i.bg = add i64 %i.bf, 1                        ; 2 uses
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !255
  %i.bh = call noundef i32 @llvm.uadd.sat.i32(i32 %i.ba, i32 7)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 9440
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !346
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bd to i64
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
  br i1 %.not31.i, label %bb.h, label %bb.i, !prof !257

bb.h:                                             ; preds = %bb.g
  %i.bv = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bp ; 7 uses
  store ptr %i.bw, ptr %i.bc, align 8, !tbaa !345
  %.sroa.02.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !343
  %i.bx = ptrtoint ptr %.sroa.02.0.copyload.i to i64
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !344
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -24
  %i.ca = and i64 %i.az, 4294967295
  %i.cb = or disjoint i64 %i.ca, -1125899906842624
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 -32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !344
  %i.cd = getelementptr inbounds i8, ptr %i.bw, i64 -40
  store i64 %.sroa.020.0.copyload, ptr %i.cd, align 8, !tbaa !344
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 -48
  store i64 %.sroa.0.0.copyload.i44, ptr %i.ce, align 8, !tbaa !344
  %i.cf = getelementptr inbounds i8, ptr %i.bw, i64 -56 ; 3 uses
  store i64 %.sroa.019.0.copyload, ptr %i.cf, align 8, !tbaa !344
  %i.cg = load i64, ptr %i.ay, align 8, !tbaa !344 ; 2 uses
  %i.ch = and i64 %i.cg, 4294967295               ; 3 uses
  %.neg.i.i = mul nsw i64 %i.ch, -8
  %i.ci = getelementptr inbounds i8, ptr %i.bb, i64 %.neg.i.i
  %.not1.i.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not1.i.i.i.i.i, label %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.cj = add nuw nsw i64 %i.ch, 2305843009213693951
  %i.ck = and i64 %i.cj, 2305843009213693951
  %xtraiter = and i64 %i.cg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.03.0.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %i.bb, %.lr.ph.i.i.i.i.i.preheader ]
  %storemerge2.i.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.prol ], [ %i.cf, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cl = getelementptr inbounds i8, ptr %storemerge2.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !347
  store i64 %i.cn, ptr %i.cl, align 8, !noalias !347
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !332

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.03.0.i.i.i.i.unr = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %storemerge2.i.i.i.i.i.unr = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.i.prol ]
  %i.co = icmp samesign ult i64 %i.ck, 7
  br i1 %i.co, label %_ZSt20uninitialized_copy_nISt16reverse_iteratorIPN6hermes2vm17PinnedHermesValueEEjS5_ET1_T_T0_S6_.exit, label %.lr.ph.i.i.i.i.i
end_hunk_0

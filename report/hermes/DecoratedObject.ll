inline.NumInlined: 265
inline.NumDeleted: 206
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::Handle" = type { %"class.hermes::vm::HandleBase" }
%"class.hermes::vm::HandleBase" = type { ptr }
%"class.hermes::vm::Handle.163" = type { %"class.hermes::vm::HandleBase" }

$_ZN6hermes2vm15DecoratedObject10DecorationD2Ev = comdat any

$_ZN6hermes2vm15DecoratedObject10DecorationD0Ev = comdat any

$_ZN6hermes2vm8JSObject19allocatePropStorageENS0_6HandleIS1_EERNS0_7RuntimeEj = comdat any

$_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj = comdat any

$_ZN6hermes2vm7HadesGC5makeAINS0_15DecoratedObjectELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENS8_INS0_11HiddenClassEEESt10unique_ptrINS3_10DecorationESt14default_deleteISF_EEEEEPT_jDpOT3_ = comdat any

@_ZN6hermes2vm15DecoratedObject2vtE = hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 27, i32 40, ptr @_ZN6hermes2vm15DecoratedObject13_finalizeImplEPNS0_6GCCellERNS0_7HadesGCE, ptr @_ZN6hermes2vm15DecoratedObject15_mallocSizeImplEPNS0_6GCCellE, ptr null, ptr @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE, ptr @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE }, align 8
@_ZTVN6hermes2vm15DecoratedObject10DecorationE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6hermes2vm15DecoratedObject10DecorationE, ptr @_ZN6hermes2vm15DecoratedObject10DecorationD2Ev, ptr @_ZN6hermes2vm15DecoratedObject10DecorationD0Ev, ptr @_ZNK6hermes2vm15DecoratedObject10Decoration13getMallocSizeEv] }, align 8
@_ZTIN6hermes2vm15DecoratedObject10DecorationE = hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6hermes2vm15DecoratedObject10DecorationE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6hermes2vm15DecoratedObject10DecorationE = hidden constant [42 x i8] c"N6hermes2vm15DecoratedObject10DecorationE\00", align 1
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unhandled out of memory exception\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK6hermes2vm15DecoratedObject10Decoration13getMallocSizeEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i64 8
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm15DecoratedObject13_finalizeImplEPNS0_6GCCellERNS0_7HadesGCE(ptr noundef readonly captures(none) %0, ptr nonnull readnone align 8 captures(none) %1) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6hermes2vm15DecoratedObjectD2Ev.exit, label %_ZNKSt14default_deleteIN6hermes2vm15DecoratedObject10DecorationEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN6hermes2vm15DecoratedObject10DecorationEEclEPS3_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #9, !inline_history !12
  br label %_ZN6hermes2vm15DecoratedObjectD2Ev.exit

_ZN6hermes2vm15DecoratedObjectD2Ev.exit:          ; preds = %bb.a, %_ZNKSt14default_deleteIN6hermes2vm15DecoratedObject10DecorationEEclEPS3_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN6hermes2vm15DecoratedObject15_mallocSizeImplEPNS0_6GCCellE(ptr noundef readonly captures(none) %0) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %spec.select = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %spec.select
}

declare i64 @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816)) #2

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare i32 @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare i64 @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare i32 @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) #2

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm24DecoratedObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !13, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 3, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !18
  br label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit

_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm15DecoratedObject2vtE, ptr %i.e, align 8, !tbaa !19
  ret void
}

declare void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm15DecoratedObject6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEESt10unique_ptrINS1_10DecorationESt14default_deleteIS8_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr noundef nonnull %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.hermes::vm::Handle", align 8 ; 2 uses
  %5 = alloca %"class.hermes::vm::Handle.163", align 8 ; 4 uses
  store ptr %1, ptr %4, align 8
  %i.a = add i32 %3, 3                            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9496
  %i.c = zext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  store ptr %i.d, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.f = call noundef ptr @_ZN6hermes2vm7HadesGC5makeAINS0_15DecoratedObjectELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENS8_INS0_11HiddenClassEEESt10unique_ptrINS3_10DecorationESt14default_deleteISF_EEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.e, i32 noundef 40, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !3
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !3
  %i.g = icmp ult i32 %i.a, 6
  br i1 %i.g, label %_ZN6hermes2vm8JSObject19allocatePropStorageENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = or i64 %i.h, -281474976710656            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.p = icmp ult ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %bb.d, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !40
  store i64 %i.i, ptr %i.m, align 8, !tbaa !51
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.k, i64 %i.i) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = call noundef i32 @_ZN6hermes2vm8JSObject19allocatePropStorageENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.a)
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN6hermes2vm8JSObject19allocatePropStorageENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj.exit.thread, label %bb.e, !prof !52

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !51
  %i.u = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.v = inttoptr i64 %i.u to ptr
  br label %_ZN6hermes2vm8JSObject19allocatePropStorageENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj.exit

_ZN6hermes2vm8JSObject19allocatePropStorageENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj.exit: ; preds = %bb.a, %bb.e
  %.sroa.06.0.i = phi ptr [ %i.f, %bb.a ], [ %i.v, %bb.e ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.0.i, inttoptr (i64 -1 to ptr)
  br i1 %.not.i, label %_ZN6hermes2vm8JSObject19allocatePropStorageENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj.exit.thread, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_12PseudoHandleINS0_8JSObjectEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit, !prof !53

_ZN6hermes2vm8JSObject19allocatePropStorageENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj.exit.thread: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i, %_ZN6hermes2vm8JSObject19allocatePropStorageENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj.exit
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.1) #10
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_12PseudoHandleINS0_8JSObjectEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit: ; preds = %_ZN6hermes2vm8JSObject19allocatePropStorageENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj.exit
  ret ptr %.sroa.06.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15DecoratedObject10DecorationD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15DecoratedObject10DecorationD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #11
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes2vm8JSObject19allocatePropStorageENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %2, 6
  br i1 %i.a, label %bb.e, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %2, -5                           ; 2 uses
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.b, i32 noundef %i.b) ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { i32, i64 } %i.c, 1        ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !51
  %i.g = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = and i64 %i.l, 562949949227008
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = icmp eq ptr %i.k, %i.n
  br i1 %i.o, label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit, label %bb.d, !prof !36

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %i.f, 281474976710655
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.r = inttoptr i64 %i.p to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef %i.r) #9
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

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 1027070
  br i1 %i.a, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, label %bb.b, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i32 %1, 2
  %i.c = add nuw nsw i32 %i.b, 12
  %i.d = and i32 %i.c, 8388600                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.g = zext nneg i32 %i.d to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.h, %i.j
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.l = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.k, i32 noundef %i.d) #9
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread

bb.d:                                             ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !57
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread: ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.f, %bb.d ] ; 3 uses
  store i64 0, ptr %i.m, align 4
  %i.n = or disjoint i32 %i.d, 251658240
  store i32 %i.n, ptr %i.m, align 4, !tbaa !60
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = or i64 %i.o, -281474976710656
  br label %bb.e

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit: ; preds = %bb.a
  %i.q = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #9 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e, !prof !61

bb.e:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit
  %.sroa.0.0.i12 = phi i32 [ 1, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread ], [ %i.q, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  %.sroa.3.0.i10 = phi i64 [ %i.p, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread ], [ undef, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ] ; 2 uses
  %i.s = and i64 %.sroa.3.0.i10, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(8112) %i.u, i32 noundef %2) #9
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, %bb.e
  %.sroa.3.0.i11 = phi i64 [ %.sroa.3.0.i10, %bb.e ], [ undef, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  %.sroa.05.0 = phi i32 [ %.sroa.0.0.i12, %bb.e ], [ 0, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0.i11, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes2vm7HadesGC5makeAINS0_15DecoratedObjectELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENS8_INS0_11HiddenClassEEESt10unique_ptrINS3_10DecorationESt14default_deleteISF_EEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59
  %.not.i.not.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i, label %bb.b, label %bb.c, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 noundef %1) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  %.not.i4.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %i.k, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !62
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE1EEEPvj.exit

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !69   ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #12 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %i.h, ptr %i.aa, align 8, !tbaa !67
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #11
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !69
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !62
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !66
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE1EEEPvj.exit

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE1EEEPvj.exit: ; preds = %bb.e, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %.sroa.01.0.copyload.i = load ptr, ptr %3, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %4, align 8
  %i.ae = load i64, ptr %5, align 8, !tbaa !7
  store ptr null, ptr %5, align 8, !tbaa !7
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.01.0.copyload.i, align 8, !tbaa !51 ; 2 uses
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !51 ; 2 uses
  %i.ag = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  %i.aj = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ak = sub i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.al
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.ai, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.not.i.i.i.i.i7.i.i.i.i = icmp eq i64 %i.ag, 0
  %i.an = sub i64 %.sroa.0.0.copyload.i.i.i2.i.i, %i.aj
  %i.ao = trunc i64 %i.an to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i, i32 0, i32 %i.ao
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i, ptr %i.am, align 4, !tbaa !3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.ae, ptr %i.aq, align 8, !tbaa !7
  %i.ar = and i32 %1, 16777215
  %i.as = or disjoint i32 %i.ar, 452984832
  store i32 %i.as, ptr %i.h, align 8, !tbaa !60
  ret ptr %i.h
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { builtin nounwind allocsize(0) }

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
!8 = !{!"p1 _ZTSN6hermes2vm15DecoratedObject10DecorationE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = distinct !{null, null, null}
!13 = !{!14, !15, i64 4}
!14 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !15, i64 4}
!15 = !{!"bool", !5, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!15, !15, i64 0}
!19 = !{!20, !35, i64 216}
!20 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !21, i64 0, !22, i64 8, !22, i64 56, !22, i64 104, !22, i64 152, !32, i64 200, !14, i64 208, !35, i64 216}
!21 = !{!"p1 omnipotent char", !9, i64 0}
!22 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !23, i64 0}
!23 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !24, i64 0}
!24 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !25, i64 0, !27, i64 8}
!25 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !26, i64 0}
!26 = !{!"_ZTSSt4lessIhE"}
!27 = !{!"_ZTSSt15_Rb_tree_header", !28, i64 0, !31, i64 32}
!28 = !{!"_ZTSSt18_Rb_tree_node_base", !29, i64 0, !30, i64 8, !30, i64 16, !30, i64 24}
!29 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!30 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!31 = !{!"long", !5, i64 0}
!32 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !33, i64 0, !15, i64 4}
!33 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !34, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!34 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !5, i64 0}
!35 = !{!"p1 _ZTSN6hermes2vm6VTableE", !9, i64 0}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!38, !39, i64 8}
!38 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !39, i64 8}
!39 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !9, i64 0}
!40 = !{!41, !49, i64 192}
!41 = !{!"_ZTSN6hermes2vm7GCScopeE", !42, i64 0, !39, i64 8, !5, i64 16, !43, i64 144, !49, i64 192, !49, i64 200, !4, i64 208}
!42 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !9, i64 0}
!43 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !44, i64 0, !48, i64 16}
!44 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !45, i64 0}
!45 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !46, i64 0}
!46 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !47, i64 0}
!47 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!48 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!49 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !9, i64 0}
!50 = !{!41, !49, i64 200}
!51 = !{!31, !31, i64 0}
!52 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!53 = !{!"branch_weights", !"expected", i32 1072669, i32 2146410979}
!54 = !{!55, !21, i64 0}
!55 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !21, i64 0, !56, i64 8}
!56 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !9, i64 0}
!57 = !{!58, !21, i64 16}
!58 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !55, i64 0, !21, i64 16, !21, i64 24}
!59 = !{!58, !21, i64 24}
!60 = !{!5, !5, i64 0}
!61 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!62 = !{!63, !64, i64 8}
!63 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6GCCellESaIS3_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p2 _ZTSN6hermes2vm6GCCellE", !65, i64 0}
!65 = !{!"any p2 pointer", !9, i64 0}
!66 = !{!63, !64, i64 16}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTSN6hermes2vm6GCCellE", !9, i64 0}
!69 = !{!63, !64, i64 0}
end_hunk_0

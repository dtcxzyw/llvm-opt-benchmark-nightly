inline.NumInlined: 737
inline.NumDeleted: 464
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"struct.hermes::vm::NamedPropertyDescriptor" = type { %"struct.hermes::vm::PropertyDescriptor" }
%"struct.hermes::vm::PropertyDescriptor" = type { %union.anon.162, i32 }
%union.anon.162 = type { i32 }

@_ZN6hermes2vm8JSString2vtE = hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 55, i32 40, ptr null, ptr null, ptr null, ptr @_ZN6hermes2vm8JSString23_getOwnIndexedRangeImplEPNS0_8JSObjectERNS0_7RuntimeE, ptr @_ZN6hermes2vm8JSString19_haveOwnIndexedImplEPNS0_8JSObjectERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSString31_getOwnIndexedPropertyFlagsImplEPNS0_8JSObjectERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSString18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSString18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm8JSString21_deleteOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE }, align 8
@_ZN6hermes2vm16JSStringIterator2vtE = hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 58, i32 40, ptr null, ptr null, ptr null, ptr @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE, ptr @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE }, align 8
@.str = private unnamed_addr constant [15 x i8] c"iteratedString\00", align 1
@_ZN6hermes2vm8JSBigInt2vtE = hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 67, i32 40, ptr null, ptr null, ptr null, ptr @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE, ptr @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE }, align 8
@_ZN6hermes2vm8JSNumber2vtE = hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 56, i32 40, ptr null, ptr null, ptr null, ptr @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE, ptr @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE }, align 8
@_ZN6hermes2vm9JSBoolean2vtE = hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 54, i32 40, ptr null, ptr null, ptr null, ptr @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE, ptr @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE }, align 8
@_ZN6hermes2vm8JSSymbol2vtE = hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 57, i32 40, ptr null, ptr null, ptr null, ptr @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE, ptr @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE }, align 8
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 9223372032559808513) i64 @_ZN6hermes2vm8JSString23_getOwnIndexedRangeImplEPNS0_8JSObjectERNS0_7RuntimeE(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.a, align 4, !tbaa !3
  %i.b = ptrtoint ptr %1 to i64
  %i.c = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.d = add i64 %i.c, %i.b
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = and i32 %i.g, 2147483647
  %.sroa.2.0.insert.ext = zext nneg i32 %i.h to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  ret i64 %.sroa.2.0.insert.shift
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm8JSString19_haveOwnIndexedImplEPNS0_8JSObjectERNS0_7RuntimeEj(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.a, align 4, !tbaa !3
  %i.b = ptrtoint ptr %1 to i64
  %i.c = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.d = add i64 %i.c, %i.b
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = and i32 %i.g, 2147483647
  %i.i = icmp ult i32 %2, %i.h
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 65539) i32 @_ZN6hermes2vm8JSString31_getOwnIndexedPropertyFlagsImplEPNS0_8JSObjectERNS0_7RuntimeEj(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.a, align 4, !tbaa !3
  %i.b = ptrtoint ptr %1 to i64
  %i.c = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.d = add i64 %i.c, %i.b
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = and i32 %i.g, 2147483647
  %i.i = icmp ult i32 %2, %i.h
  %.sroa.04.0.insert.insert = select i1 %i.i, i32 65538, i32 0
  ret i32 %.sroa.04.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN6hermes2vm8JSString18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.a, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.b = ptrtoint ptr %1 to i64
  %i.c = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.d = add i64 %i.c, %i.b
  %i.e = inttoptr i64 %i.d to ptr                 ; 7 uses
  %i.f = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = and i32 %i.h, 2147483647
  %i.j = icmp ult i32 %2, %i.i
  br i1 %i.j, label %bb.b, label %bb.o, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.e, align 4              ; 3 uses
  %i.l = and i32 %i.k, 16777216
  %i.m = icmp eq i32 %i.l, 0
  %3 = lshr i32 %i.k, 24
  %4 = trunc nuw i32 %3 to i8                     ; 2 uses
  %i.n = icmp ugt i32 %i.k, 150994943             ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i

bb.e:                                             ; preds = %bb.c
  switch i8 %4, label %bb.h [
    i8 8, label %bb.f
    i8 4, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !19
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.0.i.i = phi ptr [ %i.p, %bb.d ], [ %i.q, %bb.f ], [ %i.r, %bb.g ], [ %i.w, %bb.h ]
  %i.x = zext nneg i32 %2 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20
  %i.aa = sext i8 %i.z to i16
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit

bb.i:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i

bb.k:                                             ; preds = %bb.i
  switch i8 %4, label %bb.n [
    i8 7, label %bb.l
    i8 3, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i

bb.n:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i5.i = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ag = and i64 %.sroa.0.0.copyload.i.i.i5.i, 281474976710655
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i

_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %.0.i4.i = phi ptr [ %i.ac, %bb.j ], [ %i.ad, %bb.l ], [ %i.ae, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = zext nneg i32 %2 to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.0.i4.i, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !25
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit

_ZNK6hermes2vm15StringPrimitive2atEj.exit:        ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i
  %.0.i = phi i16 [ %i.aa, %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i ], [ %i.am, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i ]
  %i.an = tail call ptr @_ZN6hermes2vm7Runtime18getCharacterStringEDs(ptr noundef nonnull align 8 dereferenceable(9816) %1, i16 noundef zeroext %.0.i) #4
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 8, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNK6hermes2vm15StringPrimitive2atEj.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload.i, %_ZNK6hermes2vm15StringPrimitive2atEj.exit ], [ -1970324836974592, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSString18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) #1 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !19
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.c, align 4, !tbaa !3
  %i.d = ptrtoint ptr %1 to i64
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = and i32 %i.i, 2147483647
  %i.k = icmp ult i32 %2, %i.j
  br i1 %i.k, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = uitofp i32 %2 to double                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !30
  store double %i.l, ptr %i.p, align 8, !tbaa !19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.u = bitcast double %i.l to i64
  %i.v = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.n, i64 %i.u) #4
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.v, %bb.d ]
  %i.w = tail call ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #4
  %.sroa.0.0.copyload.i.i.i12 = load i64, ptr %i.w, align 8, !tbaa !19
  %i.x = trunc i64 %.sroa.0.0.copyload.i.i.i12 to i32
  %i.y = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.x, i32 319, ptr %3, i32 0) #4
  %i.z = and i32 %i.y, 65535
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %.sroa.015.0 = phi i32 [ %i.z, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ 1, %bb.a ]
  ret i32 %.sroa.015.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm8JSString21_deleteOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !19
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.c, align 4, !tbaa !3
  %i.d = ptrtoint ptr %1 to i64
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = and i32 %i.i, 2147483647
  %i.k = icmp uge i32 %2, %i.j
  ret i1 %i.k
}

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm17JSStringBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #1 {
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
  store ptr @_ZN6hermes2vm8JSString2vtE, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull %i.f) #4
  ret void
}

declare void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm8JSString6createERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEENS4_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr readonly captures(none) %2) local_unnamed_addr #1 align 2 {
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
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
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
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm25JSStringIteratorBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE:bb.a
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm16JSStringIterator2vtE, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.f) #4
  ret void
}

declare void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm16JSStringIterator6createERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1) local_unnamed_addr #1 align 2 {
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
define hidden { i32, i64 } @_ZN6hermes2vm16JSStringIterator11nextElementENS0_6HandleIS1_EERNS0_7RuntimeE(ptr readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 align 2 {
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
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.g, label %_ZN6hermes2vm13GCPointerBase7setNullERNS0_7HadesGCE.exit, !prof !12

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
  %i.be = load i32, ptr %i.bd, align 4            ; 3 uses
  %i.bf = and i32 %i.be, 16777216
  %i.bg = icmp eq i32 %i.bf, 0                    ; 2 uses
  %2 = lshr i32 %i.be, 24
  %3 = trunc nuw i32 %2 to i8                     ; 4 uses
  %i.bh = icmp ugt i32 %i.be, 150994943           ; 4 uses
  br i1 %i.bg, label %bb.l, label %bb.r

bb.l:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  br i1 %i.bh, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !13
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i

bb.n:                                             ; preds = %bb.l
  switch i8 %3, label %bb.q [
    i8 8, label %bb.o
    i8 4, label %bb.p
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
  switch i8 %3, label %bb.w [
    i8 7, label %bb.u
    i8 3, label %bb.v
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
  switch i8 %3, label %bb.af [
    i8 8, label %bb.ad
    i8 4, label %bb.ae
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
  switch i8 %3, label %bb.al [
    i8 7, label %bb.aj
    i8 3, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i48

bb.ak:                                            ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i48

bb.al:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.0.0.copyload.i.i.i5.i51 = load i64, ptr %i.de, align 8, !tbaa !19
  %i.df = and i64 %.sroa.0.0.copyload.i.i.i5.i51, 281474976710655
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !21
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i48

_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i48: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  %.0.i4.i49 = phi ptr [ %i.db, %bb.ah ], [ %i.dc, %bb.aj ], [ %i.dd, %bb.ak ], [ %i.di, %bb.al ]
  %i.dj = zext nneg i32 %i.ci to i64
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.0.i4.i49, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !25
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit56

_ZNK6hermes2vm15StringPrimitive2atEj.exit56:      ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i53, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i48
  %.0.i50 = phi i16 [ %i.cz, %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i53 ], [ %i.dl, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i48 ] ; 2 uses
  %i.dm = add i16 %.0.i50, 8192
  %or.cond6 = icmp ult i16 %i.dm, -1024
  br i1 %or.cond6, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive2atEj.exit56
  %i.dn = tail call ptr @_ZN6hermes2vm7Runtime18getCharacterStringEDs(ptr noundef nonnull align 8 dereferenceable(9816) %1, i16 noundef zeroext %.0.i) #4
  %.sroa.0.0.copyload.i.i57.a = load i64, ptr %i.dn, align 8, !tbaa !19
  %i.do = and i64 %.sroa.0.0.copyload.i.i57.a, 281474976710655 ; 2 uses
  %i.dp = or disjoint i64 %i.do, -844424930131968
  store i64 %i.dp, ptr %.0.i.i.i.i.i.i43, align 8, !tbaa !75
  br label %.critedge

bb.an:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive2atEj.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i16 %.0.i, ptr %i.a, align 2, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %.0.i50, ptr %i.dq, align 2, !tbaa !25
  %i.dr = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 2) #4 ; 2 uses
  %i.ds = extractvalue { i32, i64 } %i.dr, 0
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %.thread, label %bb.ao, !prof !12

.thread:                                          ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.du = extractvalue { i32, i64 } %i.dr, 1
  %i.dv = and i64 %i.du, 281474976710655          ; 2 uses
  %i.dw = or disjoint i64 %i.dv, -844424930131968
  store i64 %i.dw, ptr %.0.i.i.i.i.i.i43, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.critedge

.critedge:                                        ; preds = %bb.ao, %bb.am, %bb.y
  %.sroa.0.0.copyload.i.i58 = phi i64 [ %i.dv, %bb.ao ], [ %i.do, %bb.am ], [ %i.cl, %bb.y ]
  %i.dx = inttoptr i64 %.sroa.0.0.copyload.i.i58 to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !7
  %i.ea = and i32 %i.dz, 2147483647
  %i.eb = add nuw i32 %i.ea, %i.ab
  %.sroa.0.0.copyload.i.i59 = load i64, ptr %0, align 8, !tbaa !19
  %i.ec = and i64 %.sroa.0.0.copyload.i.i59, 281474976710655
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
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
define hidden ptr @_ZN6hermes2vm8JSBigInt6createERNS0_7RuntimeENS0_6HandleINS0_15BigIntPrimitiveEEENS4_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1, ptr readonly captures(none) %2) local_unnamed_addr #1 align 2 {
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
end_hunk_1
